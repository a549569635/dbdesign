using System;

namespace Mail
{
    public partial class MailMail : System.Web.UI.Page
    {
        protected static int spanDrafts = 0;
        protected static int spanInbox = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogOut(object sender, EventArgs e)
        {
            throw new NotImplementedException();
        }
    }
}