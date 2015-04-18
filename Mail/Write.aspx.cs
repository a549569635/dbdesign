using System;
using BLL;
using Entity;

namespace Mail
{
    public partial class MailWrite : System.Web.UI.Page
    {
        private Employee actUser;
        private int _spanDrafts = 0;
        private int _spanInbox = 0;

        public Employee ActUser
        {
            get
            {
                return actUser;
            }

            set
            {
                actUser = value;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

            Master.Page.Header.Title = "海云天公司内部管理系统——首页";
            ActUser = Master.ActUser;
            UCTabDefault.SpanDrafts = _spanDrafts;
            UCTabDefault.SpanInbox = _spanInbox;
        }

        protected void toID_Check(object sender, EventArgs e)
        {
            toID_Tip.Visible = true;
            if (EmpManager.hasID(toID.Text))
            {
                submit.Enabled = true;
                toID_Tip.Text = "您输入的收件人可用！";
            }
            else
            {
                submit.Enabled = false;
                toID_Tip.Text = "您输入的收件人不存在！";
            }
        }

        

    }
}