using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;

namespace Cleveral.Models
{
    public class AlertsManager
    {
        public enum AlertStatus
        {
            ToBeVerified = 1,
            Processing = 2,
            Verified = 3
        }

        public DataTable GetAlerts(int Application, string Lang, string[] parameters, string[] values)
            {
            DataTable dt = new DataTable();
            DbManager db = new DbManager();
            string sqlFilters = "";

            try
            {
                db.Start();

                for (int i = 0; i < parameters.Length; i++)
                {
                    switch (parameters[i].ToLower())
                    {
                        case "idstatus":
                            sqlFilters += " AND " + parameters[i] + "=@" + (i+1);
                            break;
                        case "":
                            sqlFilters += "";
                            break;
                        default:
                            break;
                    } 
                }
                string sql = "SELECT TOP 4 COUNT(*) OVER() AS TotRecords, A.*, dec_Anomaly.Desc_" + Lang + " AS Anomaly, dec_TypeSubStructure.Desc_" + Lang + " AS TypeSubStructure, dec_AlertStatus.Desc_" + Lang + " AS AlertStatus, dec_City.Desc_it As City, dec_City.Plate " + System.Environment.NewLine + 
                    "FROM Alerts A" + System.Environment.NewLine + 
                    "INNER JOIN dec_Anomaly ON dec_Anomaly.Id=A.IdAnomaly" + System.Environment.NewLine + 
                    "INNER JOIN Structure S ON S.Id=A.IdStructure" + System.Environment.NewLine + 
                    "INNER JOIN dec_TypeSubStructure ON dec_TypeSubStructure.Id=S.IdTypeSubStructure" + System.Environment.NewLine + 
                    "LEFT JOIN dec_AlertStatus ON dec_AlertStatus.Id=A.IdStatus " + System.Environment.NewLine +
                    "LEFT JOIN dec_City ON dec_City.Id=S.IdCity " + System.Environment.NewLine +
                    "WHERE S.IdApplication='" + Application + "'" + sqlFilters + System.Environment.NewLine + 
                    " ORDER BY A.CreationDate Desc";
                dt = db.Access(sql, values);
            }
            catch {
                // TODO gestione errori
            }
            finally {
                db.Close();
            }
            return dt;
        } 
    }
}