using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using System.Configuration;

namespace DAL
{
    public class DBHelper
    {
        //public static string CONNECTION_STRING = ConfigurationManager.ConnectionStrings["ECTDB"].ConnectionString;
        const string CONNECTION_STRING = "server=localhost;database=ECTraining;Integrated Security=True";
        //==================================================================================================================================================================================================
        #region ExecuteScalarCommand()
        internal static DataTable ExecuteScalarCommand(string commandName, CommandType cmdType)
        {
            DataTable table = null;
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            table = new DataTable();
                            da.Fill(table);
                        }
                    }
                    catch (SqlException e)
                    {

                        MessageBox.Show(e.Message, "SQL");
                        throw;


                    }
                    catch (Exception EXC)
                    {
                        MessageBox.Show(EXC.Message, "OP");
                    }
                }
            }
            return table;
        }
        #endregion ExecuteScalarCommand()
        //==================================================================================================================================================================================================
        #region ExecuteParamerizedSelectCommand()
        internal static DataTable ExecuteParamerizedSelectCommand(string commandName, CommandType cmdType,
            SqlParameter[] param)
        {
            DataTable table = new DataTable();
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;
                    cmd.Parameters.AddRange(param);

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            da.Fill(table);
                        }
                    }
                    catch(SqlException e)
                    {
                        
                        MessageBox.Show(e.Message, "SQL");
                        throw;
                        

                    }
                    catch(Exception EXC)
                    {
                        MessageBox.Show(EXC.Message, "OP");
                    }
                }
            }
            return table;
        }
        #endregion ExecuteParamerizedSelectCommand()
        //==================================================================================================================================================================================================
        #region ExecuteNonQuery()
        internal static bool ExecuteNonQuery(string commandName, CommandType cmdType,
            SqlParameter[] pars)
        {
            int result = 0;
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;
                    cmd.Parameters.AddRange(pars);

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        result = cmd.ExecuteNonQuery();
                    }
                    catch (SqlException e)
                    {

                        MessageBox.Show(e.Message, "SQL");
                        throw;


                    }
                    catch (Exception EXC)
                    {
                        MessageBox.Show(EXC.Message, "OP");
                    }
                }
            }
            return result > 0;
        }
        #endregion ExecuteNonQuery()
        //==================================================================================================================================================================================================
        #region ExecuteSelectCommand()
        internal static DataTable ExecuteSelectCommand(string commandName, CommandType cmdType)
        {
            DataTable table = null;
            using (SqlConnection con = new SqlConnection(CONNECTION_STRING))
            {
                using (SqlCommand cmd = con.CreateCommand())
                {
                    cmd.CommandType = cmdType;
                    cmd.CommandText = commandName;

                    try
                    {
                        if (con.State != ConnectionState.Open)
                        {
                            con.Open();
                        }
                        using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                        {
                            table = new DataTable();
                            da.Fill(table);
                        }
                    }
                    catch (SqlException e)
                    {

                        MessageBox.Show(e.Message, "SQL");
                        throw;


                    }
                    catch (Exception EXC)
                    {
                        MessageBox.Show(EXC.Message, "OP");
                    }
                }
            }
            return table;
        }
        #endregion ExecuteSelectCommand()
        //==================================================================================================================================================================================================
    }//End class DBHelper

}//End namespace DAL
