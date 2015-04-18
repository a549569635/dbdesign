using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Entity;

public partial class Master : System.Web.UI.MasterPage
{
    private Employee _actUser = new Employee();
    private string _userName = "";
    private string _userID = "";
    private string _userInfo = "";

    public Employee ActUser
    {
        get
        {
            return _actUser;
        }

        set
        {
            _actUser = value;
        }
    }

    public string UserName
    {
        get
        {
            return _userName;
        }

        set
        {
            _userName = value;
        }
    }

    public string UserID
    {
        get
        {
            return _userID;
        }

        set
        {
            _userID = value;
        }
    }

    public string UserInfo
    {
        get
        {
            return _userInfo;
        }

        set
        {
            _userInfo = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            this.Response.Expires = -1;
        }

        if (Session["loginID"] != null)
        {
            init();
        }
        else if (Request.Cookies["rememberMe"] != null)
        {
            string result = LoginManager.getRemember(Request.Cookies["rememberMe"]["key"]);
            if (!result.Equals("fail"))
            {
                Session["loginID"] = result;
                init();
            }
            else
            {
                Response.Write("<script>alert('您还未登录，无法访问此页面！');window.location.href = '/User/Login.aspx';</script>");
                Response.End();
            }
        }
        else
        {
            Response.Write("<script>alert('您还未登录，无法访问此页面！');window.location.href = '/User/Login.aspx';</script>");
            Response.End();
        }
    }

    private void init()
    {
        ActUser = EmpManager.queryByID(Session["loginID"].ToString());
        UserID = ActUser.Empid;
        UserName = ActUser.Name;
        UserInfo = ActUser.Post;
        if (((!ActUser.Ismgr) && (Request.RawUrl.ToLower().Contains("manager"))) || ((!ActUser.Isadmin) && (Request.RawUrl.ToLower().Contains("admin"))))
        {
            Response.Write("<script>alert('您没有权限这么做！请重新登录。');window.location.href = '/User/Login.aspx';</script>");
            Response.End();
        }
    }

    protected void LogOut(object sender, EventArgs e)
    {
        Session.Clear();
        Response.Redirect("/User/Logout.aspx");
    }
}
