using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Entity;

public partial class Manager_Leaverequest : System.Web.UI.Page
{
    private Employee actUser;

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
        
    }
}