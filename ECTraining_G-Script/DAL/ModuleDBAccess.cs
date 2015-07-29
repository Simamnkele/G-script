using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using System.Data.SqlClient;

namespace DAL
{
    public class ModuleDBAccess
    {
        public bool AddNewModule(Modules module)
        {
            SqlParameter[] parameters = new SqlParameter[]
            {
                
                new SqlParameter("@ModuleName", module.moduleName),
                new SqlParameter("@ModuleLevel", module.moduleLevel),
                new SqlParameter("@ModuleDuration", module.moduleDuration),
                new SqlParameter("@ModulePrice", module.modulePrice),
                new SqlParameter("@ModuleDescription", module.moduleDescription)
                
            };
            return DBHelper.ExecuteNonQuery("uspInsertNewModule", CommandType.StoredProcedure, parameters);
        }
        public bool UpdateModule(Modules module)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ModuleNo", module.moduleNo),
                new SqlParameter("@ModuleName", module.moduleName),
                new SqlParameter("@ModuleLevel", module.moduleLevel),
                new SqlParameter("@ModuleDuration", module.moduleDuration),
                new SqlParameter("@ModulePrice", module.modulePrice),
                new SqlParameter("@moduleDescription", module.moduleDescription)
                
            };
            return DBHelper.ExecuteNonQuery("uspUpdateModule", CommandType.StoredProcedure, param);
        }
        public List<Modules> GetModulesList()
        {
            List<Modules> ModulesList = null;

            using (DataTable table = DBHelper.ExecuteSelectCommand("uspGetAllModules", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    ModulesList = new List<Modules>();
                    foreach (DataRow row in table.Rows)
                    {
                        Modules module = new Modules();
                        module.moduleNo = Convert.ToInt32(row["ModuleNo"]);
                        module.moduleName = row["ModuleName"].ToString();
                        module.moduleLevel = row["ModuleLevel"].ToString();
                        module.moduleDuration = Convert.ToInt32(row["Moduleduration"]);
                        module.modulePrice = Convert.ToDouble(row["ModulePrice"]);
                        module.moduleDescription = row["ModuleDescription"].ToString();
                        ModulesList.Add(module);
                    }
                }//end if
            }//end using
            return ModulesList;
        }//end GetModuleList
        public bool DeleteModule(int moduleNo)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ModuleNo", moduleNo) 
                
            };
            return DBHelper.ExecuteNonQuery("uspDeleteModule", CommandType.StoredProcedure, param);
        }
        public List<Modules> GetModulesDeletedList()
        {
            List<Modules> ModulesDeletedList = null;

            using (DataTable table = DBHelper.ExecuteSelectCommand("uspGetDeletedModules", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    ModulesDeletedList = new List<Modules>();
                    foreach (DataRow row in table.Rows)
                    {
                        Modules module = new Modules();
                        module.moduleNo = Convert.ToInt32(row["ModuleNo"]);
                        module.moduleName = row["ModuleName"].ToString();
                        module.moduleLevel = row["ModuleLevel"].ToString();
                        module.moduleDuration = Convert.ToInt32(row["Moduleduration"]);
                        module.modulePrice = Convert.ToDouble(row["ModulePrice"]);
                        module.moduleDescription = row["ModuleDescription"].ToString();
                        ModulesDeletedList.Add(module);
                    }
                }//end if
            }//end using
            return ModulesDeletedList;
        }//end GetModuleList
        public bool ActivateModule(int moduleNo)
        {
            SqlParameter[] param = new SqlParameter[]
            {
                new SqlParameter("@ModuleNo", moduleNo) 
                
            };
            return DBHelper.ExecuteNonQuery("uspActivateModule", CommandType.StoredProcedure, param);
        }
        public List<Modules> GetModuleName()
        {
            List<Modules> ModuleNames = null;

            using (DataTable table = DBHelper.ExecuteSelectCommand("uspGetModuleName", CommandType.StoredProcedure))
            {
                if (table.Rows.Count > 0)
                {
                    ModuleNames = new List<Modules>();
                    foreach (DataRow row in table.Rows)
                    {
                        Modules module = new Modules();
                        module.moduleNo = Convert.ToInt32(row["ModuleNo"]);
                        module.moduleName = row["ModuleName"].ToString();
                        //module.moduleLevel = row["ModuleLevel"].ToString();
                        module.moduleDuration = Convert.ToInt32(row["Moduleduration"]);
                        module.modulePrice = Convert.ToDouble(row["ModulePrice"]);
                        module.moduleDescription = row["ModuleDescription"].ToString();
                        ModuleNames.Add(module);
                    }
                }//end if
            }//end using
            return ModuleNames;
        }//end GetModuleList
        public DataTable GetModuleDetails(int moduleNo)
        {
            DataTable module = new DataTable();
            SqlParameter[] parameter = new SqlParameter[]
            {
                new SqlParameter("@ModuleNo", moduleNo)
            };
            module = DBHelper.ExecuteParamerizedSelectCommand("uspGetModuleDetails", CommandType.StoredProcedure, parameter);
            
                //if(table.Rows.Count == 1)
                //{
                //    DataRow row = table.Rows[0];
                //    module = new Modules();
                //    module.moduleNo = Convert.ToInt32(row["ModuleNo"]);
                //    module.moduleName = row["ModuleName"].ToString();
                //    module.moduleDuration = Convert.ToInt32(row["ModuleDuration"]);
                //    module.modulePrice = Convert.ToDouble(row["ModulePrice"]);
                //    module.moduleDescription = row["ModuleDescription"].ToString();
                //}
            
            return module;
        }
        public DataTable GetModuleInfo(int moduleNo)
        {
            DataTable module = new DataTable();
            SqlParameter[] parameter = new SqlParameter[]
            {
                new SqlParameter("@ModuleNo", moduleNo)
            };
            module = DBHelper.ExecuteParamerizedSelectCommand("uspGetModuleInfo", CommandType.StoredProcedure, parameter);
            return module;
        }


    }
}
