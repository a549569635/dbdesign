using System;
using System.Data;
using System.Data.Common;
using System.Runtime.Remoting.Metadata.W3cXsd2001;

namespace Entity
{
    /// <summary>
    /// Summary description for Employee
    /// </summary>
    public class Employee
    {

        private string _empid;
        private string _name;
        private string _sex;
        private DateTime _birth;
        private string _postid;
        private string _post;
        private string _tel;
        private string _add;
        private string _email;
        private bool _state;
        private bool _isadmin;
        private bool _ismgr;
        private string _photoPath;

        public string Empid
        {
            get { return _empid;}
            set { _empid = value;}
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

        public DateTime Birth
        {
            get
            {
                return _birth;
            }

            set
            {
                _birth = value;
            }
        }

        public string Postid
        {
            get
            {
                return _postid;
            }

            set
            {
                _postid = value;
            }
        }

        public string Post
        {
            get
            {
                return _post;
            }

            set
            {
                _post = value;
            }
        }

        public string Tel
        {
            get
            {
                return _tel;
            }

            set
            {
                _tel = value;
            }
        }

        public string Add
        {
            get
            {
                return _add;
            }

            set
            {
                _add = value;
            }
        }

        public string Email
        {
            get
            {
                return _email;
            }

            set
            {
                _email = value;
            }
        }

        public bool State
        {
            get
            {
                return _state;
            }

            set
            {
                _state = value;
            }
        }

        public bool Isadmin
        {
            get
            {
                return _isadmin;
            }

            set
            {
                _isadmin = value;
            }
        }

        public bool Ismgr
        {
            get
            {
                return _ismgr;
            }

            set
            {
                _ismgr = value;
            }
        }

        public string PhotoPath
        {
            get
            {
                return _photoPath;
            }

            set
            {
                _photoPath = value;
            }
        }

        public Employee()
        {
            //
            // TODO: Add constructor logic here
            //
        }

        public Employee(DbDataReader reader)
        {
            this.Empid = reader.GetString(0);
            this.Name = reader.GetString(1);
            this.Sex = reader.GetBoolean(2) ? "男" : "女";
            this.Birth = reader.GetDateTime(3);
            try
            {
                this.Postid = reader.GetString(4);
                this.Post = PostManager.queryNameByID(Postid);
            } catch (Exception) {}
            try
            {
                this.Tel = reader.GetString(5);
            }
            catch (Exception) { }
            try
            {
                this.Add = reader.GetString(6);
            }
            catch (Exception) { }
            try
            {
                this.Email = reader.GetString(7);
            }
            catch (Exception) { }
            this.Isadmin = reader.GetBoolean(8);
            this.Ismgr = reader.GetBoolean(9);
            this.PhotoPath = reader.GetString(10);
        }
    }
}