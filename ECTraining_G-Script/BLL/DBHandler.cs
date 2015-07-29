using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using DAL;

namespace BLL
{
    public class DBHandler
    {

        ModuleDBAccess moduleDBA = null;
        CourseDBAccess courseDBA = null;
        CourseModuleDBAccess cmDBA = null;

            public DBHandler()
            {
                moduleDBA = new ModuleDBAccess();
                courseDBA = new CourseDBAccess();
                cmDBA = new CourseModuleDBAccess();
            }
            public bool AddNewModule(Modules module)
            {
                return moduleDBA.AddNewModule(module);
            }
            public List<Modules> GetModulesList()
            {
                return moduleDBA.GetModulesList();
            }
            public bool DeleteModule(int moduleNo)
            {
                return moduleDBA.DeleteModule(moduleNo);
            }
            public bool UpdateModule(Modules module)
            {
                return moduleDBA.UpdateModule(module);
            }
            public List<Modules> GetModulesDeleteList()
            {
                return moduleDBA.GetModulesDeletedList();
            }
            public bool ActivateModule(int moduleNo)
            {
                return moduleDBA.ActivateModule(moduleNo);
            }
            public List<Modules> GetModuleNames()
            {
                return moduleDBA.GetModuleName();
            }
            public DataTable GetModuleDetails(int moduleNo)
            {
                return moduleDBA.GetModuleDetails(moduleNo);
            }
            public bool AddNewCourse(Course course)
            {
                return courseDBA.AddCourse(course);
            }
            public DataTable GetMaxCourseNo()
            {
                return courseDBA.GetMaxCourseNo();
            }
            public bool InserModulesForCourse(int moduleNo)
            {
                return cmDBA.InserModulesForCourse(moduleNo);
            }
            public bool UpdateCourse(Course course)
            {
                return courseDBA.UpdateCourse(course);
            }
        public DataTable GetModuleInfo(int moduleNo)
            {
                return moduleDBA.GetModuleInfo(moduleNo);
            }

        
        //Simamnkele Phenya - Processes.
        #region
        public bool CreateQuotation(Quotation quotation)
        { ClientQuotationHandler myHandler = new ClientQuotationHandler(); return myHandler.CreateQuotation(quotation); }

        public bool UpdateQuotation(Quotation quotation)
        { ClientQuotationHandler myHandler = new ClientQuotationHandler(); return myHandler.UpdateQuotation(quotation); }

        public bool DeleteQuotation(int QuotationID)
        { ClientQuotationHandler myHandler = new ClientQuotationHandler(); return myHandler.DeleteQuotation(QuotationID); }

        public bool CreateCompany(Company company)
        { CompanyHandler myHandler = new CompanyHandler(); return myHandler.CreateCompany(company); }

        public bool UpdateCompanyDeatails(Company company)
        { CompanyHandler myHandler = new CompanyHandler(); return myHandler.UpdateCompanyDetails(company); }

        public List<Company> GetCompanyDetails(string userId)
        { CompanyHandler myHandler = new CompanyHandler(); return myHandler.GetCompanyDetails(userId); }
        #endregion
        //End

    }
    }

