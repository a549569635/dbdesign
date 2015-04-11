using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for employee
/// </summary>
public class Employee
{

    private String _id;
    private String _name;
    private String _sex;
    private DateTime _birth;
    private string _learn;
    private string _post;
    private string _dept;
    private string _tel;
    private string _add;
    private string _email;
    private bool _state;
    private string _photoPath;
    private decimal _bonus;
    private decimal _atten;

    public string Id
    {
        get { return _id;}
        set { _id = value;}
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

    public string Sex
    {
        get
        {
            return _sex;
        }

        set
        {
            _sex = value;
        }
    }

    public Employee()
    {
        //
        // TODO: Add constructor logic here
        //
    }
}