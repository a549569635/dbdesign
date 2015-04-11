using System;
using System.Collections.Generic;
using System.IdentityModel.Tokens;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MailWrite : System.Web.UI.Page
{
    protected static int spanDrafts = 0;
    protected static int spanInbox = 0;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void toID_Check(object sender, EventArgs e)
    {
        var toid = toID.Text;
        toID_Tip.Visible = true;
        if (hasID())
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

    private bool hasID()
    {
        return false;
    }
}