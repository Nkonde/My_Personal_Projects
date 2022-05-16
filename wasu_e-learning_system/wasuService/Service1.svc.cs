using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;

namespace wasuService
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "Service1" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select Service1.svc or Service1.svc.cs at the Solution Explorer and start debugging.
    public class Service1 : IService1
    {
        DataClasses1DataContext db = new DataClasses1DataContext();


		public int Login(string email, string password)
		{
			//check if the user's information is in the database
			var user = (from u in db.Tables
						where u.Admin_Email.Equals(email) && u.Admin_Password.Equals(password)
						select u).FirstOrDefault();

			if (user != null)
			{
				//Returns the user's id
				return user.Id;
			}
			else
			{
				return 0;
			}
		}

        public int Register(string email, string name, string identinyN, string grade, string password)
        {
            var checkuser = (from u in db.StudentWs
                             where u.S_Email.Equals(email)
                             select u).FirstOrDefault();

            if (checkuser == null)
            {
                var newUser = new StudentW
                {
                    S_Email = email,
                    S_Name= name,
                    S_ID= identinyN,
                    S_Grade=grade,
                    S_Password= password

                };
                db.StudentWs.InsertOnSubmit(newUser);

                try
                {
                    db.SubmitChanges();
                    return 1;
                }
                catch (Exception ex)
                {
                    ex.GetBaseException();
                    return -1;
                }
            }
            else
            {
                return 0;
            }
        }

    }
}
