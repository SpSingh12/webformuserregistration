using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace userform
{
    class SQLSP
    {
        public string connectionString;
        private string v;

        public SQLSP()
        {
            this.connectionString = "Data Source=DESKTOP-54G4PFA;Initial Catalog=load_infotech;Integrated Security=True";
        }

        public SQLSP(string v)
        {
            this.v = v;
        }

        public DataTable selectDataTable(SqlCommand com)
        {

            DataTable datatable = new DataTable();

            using (SqlConnection con = new SqlConnection(connectionString))
            {

                using (SqlDataAdapter sda = new SqlDataAdapter())
                {

                    com.Connection = con;

                    sda.SelectCommand = com;

                    con.Open();

                    sda.Fill(datatable);



                    return datatable;



                }

            }





        }

        internal DataTable selectDataTable(string username, string email, string password)
        {
            throw new NotImplementedException();
        }

        public DataSet SelectDataSet(SqlCommand com)
        {

            try
            {

                DataSet dataset = new DataSet();

                using (SqlConnection con = new SqlConnection(connectionString))
                {

                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {

                        com.Connection = con;

                        sda.SelectCommand = com;

                        con.Open();

                        sda.Fill(dataset);

                        return dataset;

                    }

                }

            }

            catch (Exception e)
            {

                throw e;

            }

        }



        public DataTable selectDatatable(SqlCommand com)
        {

            try
            {

                DataTable dailyBusLog = new DataTable();

                using (SqlConnection con = new SqlConnection(connectionString))
                {

                    com.Connection = con;
                    com.CommandTimeout = 1000000;
                    SqlDataAdapter sda = new SqlDataAdapter(com);

                    sda.Fill(dailyBusLog);

                }

                return dailyBusLog;



            }

            catch (Exception ex)
            {

                throw ex;

            }





        }
        public int selectInt(SqlCommand com)
        {

            try
            {

                using (SqlConnection con = new SqlConnection(connectionString))
                {

                    com.Connection = con;

                    con.Open();

                    object o = com.ExecuteScalar();

                    if (o != null)
                    {

                        return int.Parse(o.ToString());

                    }

                    else
                    {

                        return 0;

                    }



                }

            }



            catch (Exception e)
            {

                throw e;

            }



        }

        public int DMLQuery(SqlCommand com)
        {



            using (SqlConnection con = new SqlConnection(connectionString))
            {

                com.Connection = con;

                con.Open();

                return com.ExecuteNonQuery();

            }
        }

        //this function is used for forget password
        public DataTable forgetPass(string uemail,string upassword)
        {
            try
            {
                using (SqlCommand com = new SqlCommand())
                {
                    com.CommandText = "[dbo].[forget_user]";
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@uemail", SqlDbType.VarChar).Value = uemail;
                    com.Parameters.AddWithValue("@upassword", SqlDbType.VarChar).Value = upassword;
                    return selectDatatable(com);
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }
        }
        //this query is used for delete

            public DataTable Deletequery(string uname)
        {
            try
            {
                using(SqlCommand com = new SqlCommand())
                {
                    com.CommandText = "[dbo].[del_user]";
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value = uname;
                    return selectDatatable(com);
                }
            }
            catch(SqlException ex)
            {
                throw ex;
            }
        }
        public DataTable updateQuery(string uname, string uemail, string upassword)
        {

            try
            {

                using (SqlCommand command = new SqlCommand())
                {

                    command.CommandText = "[dbo].[update_user]";
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value = uname;
                    command.Parameters.AddWithValue("@uemail", SqlDbType.VarChar).Value = uemail;
                    command.Parameters.AddWithValue("@upassword", SqlDbType.VarChar).Value = upassword;
                   return selectDatatable(command);

                }

            }

            catch (Exception ex)
            {

                throw ex;

            }

        }

        public DataTable getResultOnQuery(String yourQuery)
        {



            using (SqlCommand command = new SqlCommand(yourQuery))
            {

                return selectDatatable(command);

            }



        }

        //get the detail of useregistration
        public DataTable GetuserDetail()
        {
            try
            {
                using(SqlCommand com = new SqlCommand())
                {
                    com.CommandText = "[dbo].[read_user]";
                    com.CommandType = CommandType.StoredProcedure;

                    return selectDataTable(com);
                }
            }
            catch(SqlException ex)
            {
                throw ex;
            }
        }

        public int setResultOnQuery(String yourQuery)
        {

            try
            {

                using (SqlCommand command = new SqlCommand(yourQuery))
                {

                    return DMLQuery(command);

                }

            }

            catch (Exception ex)
            {

                throw ex;

            }

        }
        public DataTable GetEmpData(int empid)
        {
            try
            {
                using (SqlCommand com = new SqlCommand())
                {

                    com.CommandText = "[dbo].[Getemployee_Info]";
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Empid", SqlDbType.Int).Value = empid;








                    return selectDatatable(com);
                }
            }

            catch (Exception ex)
            { throw ex; }

        }

        public DataTable InsertForm(string uname, string uemail, string upassword)
        {
            try
            {
                using(SqlCommand com = new SqlCommand())
                {
                    com.CommandText = "[dbo].[insert_user]";
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@uname", SqlDbType.VarChar).Value = uname;
                    com.Parameters.AddWithValue("@uemail", SqlDbType.VarChar).Value = uemail;
                    com.Parameters.AddWithValue("@upassword", SqlDbType.VarChar).Value = upassword;
                    return selectDatatable(com);
                }
            }
            catch(Exception ex)
            {
                throw ex;
            }

        }
    }
}
