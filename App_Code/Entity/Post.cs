using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Post
/// </summary>
public class Post
{
    private string postid;
    private string name;
    private string deptid;
    private string info;
    private decimal basesalary;

    public string Postid
    {
        get
        {
            return postid;
        }

        set
        {
            postid = value;
        }
    }

    public string Name
    {
        get
        {
            return name;
        }

        set
        {
            name = value;
        }
    }

    public string Deptid
    {
        get
        {
            return deptid;
        }

        set
        {
            deptid = value;
        }
    }

    public string Info
    {
        get
        {
            return info;
        }

        set
        {
            info = value;
        }
    }

    public decimal Basesalary
    {
        get
        {
            return basesalary;
        }

        set
        {
            basesalary = value;
        }
    }

    public Post()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}