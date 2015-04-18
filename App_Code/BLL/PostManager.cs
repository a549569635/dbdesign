using System;
using System.Collections.Generic;
using System.Data.Common;
using System.Linq;
using System.Web;
using DAL;
using Entity;

/// <summary>
/// Summary description for PostManager
/// </summary>
public class PostManager
{
    private static DbHelper dbh = new DbHelper();
    public static string queryNameByID(string ID)
    {
        string sql = "select name from post where postid='" + ID + "'";
        return dbh.ExecuteScalar(sql).ToString();
    }

    public static Post queryByID(string ID)
    {
        Post post = null;
        string sql = "select * from post where postid='" + ID + "'";
        DbDataReader reader = dbh.ExecuteReader(sql);
        if (reader.Read())
        {
            post=new Post();
        }
        return post;
    }
}