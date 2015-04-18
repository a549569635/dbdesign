using System;
using System.Web;
using System.Web.UI;
using BLL;

namespace User
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                this.Response.Expires = -1;
            }

        }

        protected void Submit_Click(object sender, EventArgs s)
        {
            string result = LoginManager.login(userID.Text, userPW.Text, rembMe.Checked);
            if (result.Equals("pass"))
            {
                Session["loginID"] = userID.Text;
                Response.Redirect("/Default.aspx");
            }
            else if(result.Equals("fail"))
            {
                Response.Write("<script language=javascript>alert('用户名或密码错误！')</script>");
            }
            else if (result.Equals("erro"))
            {
                Response.Write("<script language=javascript>alert('抱歉，我们遇到了一些错误，请刷新页面后重试')</script>");
            }
            else
            {
                Session["loginID"] = userID.Text;
                HttpCookie cookie = new HttpCookie("rememberMe");
                cookie.Expires = DateTime.Now.AddDays(7);
                cookie.Values.Add("key",result);
                Response.AppendCookie(cookie);
                Response.Redirect("/Default.aspx");
            }
        }
    }
}