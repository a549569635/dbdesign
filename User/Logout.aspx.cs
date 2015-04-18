using System;
using System.Threading;

namespace User
{
    public partial class Logout : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int count = 10;
            while (Session["loginID"] != null)
            {
                if (count > 0)
                    Session.Clear();
                Response.Write("<script>alert('抱歉，我们遇到了一些问题，暂时无法为您退出登录\n我们将关闭此页面，请您之后重试。'); window.opener=null; window.open('', '_self'); window.close();</script>");
            }
        }
    }
}