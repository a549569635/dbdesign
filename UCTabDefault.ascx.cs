using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UCTabDefault : System.Web.UI.UserControl
{
    private int _spanDrafts = 0;
    private int _spanInbox = 0;

    public int SpanDrafts
    {
        get
        {
            return _spanDrafts;
        }

        set
        {
            _spanDrafts = value;
        }
    }

    public int SpanInbox
    {
        get
        {
            return _spanInbox;
        }

        set
        {
            _spanInbox = value;
        }
    }

    protected void Page_Load(object sender, EventArgs e)
    {

    }
}