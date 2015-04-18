using System.Collections;
using System.Data.Common;
using System.Drawing.Imaging;
using DAL;
using Entity;

namespace BLL
{
    /// <summary>
    /// Summary description for EmpManager
    /// </summary>
    public class EmpManager
    {
        public static bool hasID(string ID)
        {
            DbHelper dbHelper = new DbHelper();
            string sql = "select count (empid) from employee where empid = '"+ID+"'";
            return (int)dbHelper.ExecuteScalar(sql) == 1;
        }

        public static ArrayList queryAll()
        {
            ArrayList list = null;
            DbHelper dbHelper = new DbHelper();
            string sql = "select * from employee";
            DbDataReader reader = dbHelper.ExecuteReader(sql);
            while (reader.Read())
            {
                list.Add(new Employee(reader));
            }
            return list;
        }

        public static Employee queryByID(string ID)
        {
            Employee emp = null;
            DbHelper dbHelper=new DbHelper();
            string sql = "select * from employee where empid='" + ID + "'";
            DbDataReader reader = dbHelper.ExecuteReader(sql);
            if (reader.Read())
            {
                emp=new Employee(reader);
            }
            return emp;
        }

    }
}