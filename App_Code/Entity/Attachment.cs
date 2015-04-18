using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Attachment
/// </summary>
public class Attachment
{
    private string _md5;
    private string _path;
    private string _name;
    private string _info;

    public string Md5
    {
        get
        {
            return _md5;
        }

        set
        {
            _md5 = value;
        }
    }

    public string Path
    {
        get
        {
            return _path;
        }

        set
        {
            _path = value;
        }
    }

    public string Name
    {
        get
        {
            return _name;
        }

        set
        {
            _name = value;
        }
    }

    public string Info
    {
        get
        {
            return _info;
        }

        set
        {
            _info = value;
        }
    }

    public Attachment()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}