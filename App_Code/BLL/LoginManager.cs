using System;
using System.Data.Common;
using DAL;

namespace BLL
{
    /// <summary>
    /// Summary description for Login
    /// </summary>
    public class LoginManager
    {
        private static char[] constant = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z' };

        public static string login(string ID, string passWD, bool rembMe)
        {
            //
            // TODO: Add constructor logic here
            //
            DbHelper dbh = new DbHelper();
            string sql = "select count(empid) from login where empid = '" + ID + "' and passwd = '" + passWD + "'";
            if ((int)dbh.ExecuteScalar(sql) == 1)
            {
                try
                {
                    if (rembMe)
                    {
                        string key = creatKey();
                        System.Diagnostics.Debug.Write(DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss"));
                        sql = "update login set lasttime = '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "', remember = '1', rembtime = '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "', secretkey = '"+key+"' where empid = '" + ID + "'";
                        if (dbh.ExecuteNonQuery(sql) == 1)
                            return key;
                    }
                    else
                    {
                        sql = "update login set lasttime = '" + DateTime.Now.ToString("yyyy-MM-dd hh:mm:ss") + "', remember = '0', rembtime = null, secretkey = null where empid = '" + ID + "'";
                        if (dbh.ExecuteNonQuery(sql) == 1)
                            return "pass";
                    }
                }
                catch (Exception)
                {
                    return "erro";
                }
            }
            return "fail";
        }

        public static string getRemember(string key)
        {
            DbHelper dbh =new DbHelper();
            string sql = "select empid from login where secretkey = '"+key+"' and remember = '1'";
            object result = dbh.ExecuteScalar(sql);
            if (result == null)
            {
                return "fail";
            }
            else
            {
                return (string)result;
            }
        }

        public static string creatKey()
        {
            string key = "";
            string sql = "";
            bool repeat = true;
            DbHelper dbh = new DbHelper();
            while (repeat)
            {
                System.Text.StringBuilder keyBuilder = new System.Text.StringBuilder(62);
                Random rd = new Random();
                for (int i = 0; i < 64; i++)
                {
                    keyBuilder.Append(constant[rd.Next(62)]);
                }
                key = keyBuilder.ToString();
                sql = "select count(empid) from login where secretkey = '" + key + "'";
                repeat = (int) dbh.ExecuteScalar(sql) > 0;
            }
            return key;
        }
    }
}