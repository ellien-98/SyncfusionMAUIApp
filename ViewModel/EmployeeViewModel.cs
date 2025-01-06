namespace SyncfusionMAUIApp
{
    using System.Collections.ObjectModel;

    public class EmployeeViewModel
    {
        public EmployeeViewModel()
        {
            this.EmployeeDetails = new ObservableCollection<EmployeeDetails>()
                {
                    new EmployeeDetails() { Category = "Employees", Country = "India", JobDescription = "Technical", JobGroup = "Testers", EmployeesCount = 100 },
                    new EmployeeDetails() { Category = "Employees", Country = "India", JobDescription = "HR Executives", EmployeesCount = 30 },
                    new EmployeeDetails() { Category = "Employees", Country = "India", JobDescription = "Accounts", EmployeesCount = 40 },
                };
        }
        public ObservableCollection<EmployeeDetails> EmployeeDetails
        {
            get;
            set;
        }
    }
}
