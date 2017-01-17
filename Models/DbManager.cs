using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace Cleveral.Models
{
    public class DbManager
    {

        private string ConnectionString { get; set; }
        private SqlConnection Db { get; set; }

        public DbManager()
        {
            ConnectionString = System.Configuration.ConfigurationManager.
ConnectionStrings["CleveralConnection"].ConnectionString;
        }

        public void Start()
        {
            Db = new SqlConnection(
                    ConnectionString);
            Db.Open();
        }

        public DataTable Access(string sql)
        {
            DataTable dt = new DataTable();          

            SqlCommand cmd = new SqlCommand(sql, Db);

            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                dt.Load(reader);
            }


            return dt;
        }

        public DataTable Access(string sql, params object[] array)
        {
            string s = ClearSql(sql, array);
            return Access(s);
        }


        public void Close()
        {
            Db.Close();
        }

        private string ClearSql(string sql, params object[] array)
        {
            string s = sql;


            for (int i = array.Length - 1; i >= 0; i--)
            {
             if (s.Contains("@" + (i + 1))) {
                 string param = array[i].ToString().Replace("'", "''");
                 s = s.Replace("@" + (i + 1), "'" + param + "'");
             }  
            }

            return s;
        }

    }

    


    //public class DbConnection

    //{
    //    static void Main()
    //    {
    //        DataTable dt = new DataTable();

    //        string connectionString = System.Configuration.ConfigurationManager.
    //ConnectionStrings["CleveralConnection"].ConnectionString;

    //        SqlConnection conn = new SqlConnection(
    //            connectionString);

    //        try
    //        {
    //            conn.Open();

    //            SqlCommand cmd = new SqlCommand("select * from dec_Country", conn);

    //            using (SqlDataReader reader = cmd.ExecuteReader())
    //            {
    //                dt.Load(reader);
    //            }
    //        }
    //        finally
    //        {

    //            if (conn != null)
    //            {
    //                conn.Close();
    //            }
    //        }
    //    }

    //}
}