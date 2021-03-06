﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using BLL;
using Entity;

public partial class Default : System.Web.UI.Page
{

    private Employee _actUser = new Employee();
    private int _spanDrafts = 3;
    private int _spanInbox = 12;

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

    protected void Page_Load(object sender, EventArgs e)
    {
        Master.Page.Header.Title = "海云天公司内部管理系统——首页";
        ActUser = Master.ActUser;
        UCTabDefault.SpanDrafts = _spanDrafts;
        UCTabDefault.SpanInbox = _spanInbox;
    }
}