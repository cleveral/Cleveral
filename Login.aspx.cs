using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Cleveral
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LoginButton.Click += new EventHandler(this.Logon_Click);
            SignupButton.Click += new EventHandler(this.Signup_Click);
        }

        void Logon_Click(object sender, EventArgs e)
        {
            if (Membership.ValidateUser(Username.Text, Password.Text))
            {
                FormsAuthentication.SetAuthCookie(Username.Text, Persist.Checked);
                FormsAuthentication.RedirectFromLoginPage
                   (Username.Text, Persist.Checked);
            }
            else
            {
                Msg.Text = "Invalid credentials. Please try again.";
            }
        }


        void Signup_Click(object sender, EventArgs e)
        {
            MembershipCreateStatus status;
            try
            {
                string usernameClear = (Name.Text + '.' + Surname.Text).ToLower();
                /*MembershipUser newUser = CreateUser(usernameClear, NewUserPassword.Text, Email.Text, "Question", "Answer", true, null, out status);

                if (newUser == null)
                {
                    Msg.Text = GetErrorMessage(status);
                }
                else
                {
                    Response.Redirect("login.aspx");
                }*/
            }
            catch
            {
                Msg.Text = "An exception occurred creating the user.";
            }
        }

        public string GetErrorMessage(MembershipCreateStatus status)
        {
            switch (status)
            {
                case MembershipCreateStatus.DuplicateUserName:
                    return "Username already exists. Please enter a different user name.";

                case MembershipCreateStatus.DuplicateEmail:
                    return "A username for that e-mail address already exists. Please enter a different e-mail address.";

                case MembershipCreateStatus.InvalidPassword:
                    return "The password provided is invalid. Please enter a valid password value.";

                case MembershipCreateStatus.InvalidEmail:
                    return "The e-mail address provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidAnswer:
                    return "The password retrieval answer provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidQuestion:
                    return "The password retrieval question provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.InvalidUserName:
                    return "The user name provided is invalid. Please check the value and try again.";

                case MembershipCreateStatus.ProviderError:
                    return "The authentication provider returned an error. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                case MembershipCreateStatus.UserRejected:
                    return "The user creation request has been canceled. Please verify your entry and try again. If the problem persists, please contact your system administrator.";

                default:
                    return "An unknown error occurred. Please verify your entry and try again. If the problem persists, please contact your system administrator.";
            }
        }

        public MembershipUser CreateUser(string username,
                 string password,
                 string email,
                 string passwordQuestion,
                 string passwordAnswer,
                 bool isApproved,
                 object providerUserKey,
                 out MembershipCreateStatus status)
        {
            ValidatePasswordEventArgs args =
              new ValidatePasswordEventArgs(username, password, true);

            MembershipUser u = Membership.GetUser(username, false);
            if (u == null)
            {
                DateTime createDate = DateTime.Now;

                if (providerUserKey == null)
                {
                    providerUserKey = Guid.NewGuid();
                }
                else
                {
                    if (!(providerUserKey is Guid))
                    {
                        status = MembershipCreateStatus.InvalidProviderUserKey;
                        return null;
                    }
                }

                Cleveral.Models.DbManager db = new Cleveral.Models.DbManager();
                DataTable dt = new DataTable();

                try
                {
                    db.Start();
                    string sql = "INSERT INTO Users " +
                          " (Username, Password, PasswordClear, Email, PasswordQuestion, " +
                          " PasswordAnswer, IsApproved," +
                          " Comment, CreationDate, LastPasswordChangedDate, LastActivityDate," +
                          " ApplicationName, IsLockedOut, LastLockedOutDate," +
                          " FailedPasswordAttemptCount, FailedPasswordAttemptWindowStart, " +
                          " FailedPasswordAnswerAttemptCount, FailedPasswordAnswerAttemptWindowStart)" +
                          " Values(@1, @2, @3, @4, @5, @6, @7, @8, @9, @10, @11, @12, @13, @14, @15, @16, @17, @18)";
                    dt = db.Access(sql, username, EncodePassword(password), password, email, passwordQuestion, EncodePassword(passwordAnswer), isApproved, "", createDate, createDate, createDate, "Cleveral", false, createDate, 0, createDate, 0, createDate);

                    if (dt.Rows.Count > 0)
                    {
                        status = MembershipCreateStatus.Success;
                    }
                    else
                    {
                        status = MembershipCreateStatus.UserRejected;
                    }
                }
                catch (Exception e)
                {
                    status = MembershipCreateStatus.ProviderError;
                }
                finally
                {
                    db.Close();
                }


                return Membership.GetUser(username, false);
            }
            else
            {
                status = MembershipCreateStatus.DuplicateUserName;
            }


            return null;
        }
        private string EncodePassword(string password)
        {
            string encodedPassword = password;


                HMACSHA1 hash = new HMACSHA1();
                hash.Key = HexToByte("C50B3C89CB21F4F1422FF158A5B42D0E8DB8CB5CDA1742572A487D9401E3400267682B202B746511891C1BAF47F8D25C07F6C39A104696DB51F17C529AD3CABE");
                encodedPassword =
                    Convert.ToBase64String(hash.ComputeHash(Encoding.Unicode.GetBytes(password)));

            return encodedPassword;
        }
        private byte[] HexToByte(string hexString)
        {
            byte[] returnBytes = new byte[hexString.Length / 2];
            for (int i = 0; i < returnBytes.Length; i++)
                returnBytes[i] = Convert.ToByte(hexString.Substring(i * 2, 2), 16);
            return returnBytes;
        }

    }
}
