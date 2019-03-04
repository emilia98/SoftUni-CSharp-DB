using System;
using System.Collections.Generic;
using System.Data.SqlClient;

namespace AdoNET_Intro
{
    class StartUp
    {
        static void Main()
        {
            string connectionString = 
                @"Server=localhost\SQLEXPRESS;Database=SoftUni;User=adotest;Password=1234";
            IList<Employee> employees = new List<Employee>();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                connection.Open();

                using (SqlCommand command = new SqlCommand())
                {
                    command.CommandText = "SELECT TOP 10 * FROM Employees WHERE DepartmentId = @depId";
                    command.Connection = connection;

                    /* Do the same as command.Parameters.AddWithValue("@depId", 7)
                     * Sometimes this way of validation is better
                    SqlParameter parameter = new SqlParameter();
                    parameter.DbType = System.Data.DbType.Int32;
                    parameter.ParameterName = "@depId";
                    parameter.Value = 6;
                    */
                    command.Parameters.AddWithValue("@depId", 6);

                    // Use the ExecuteScalar method to retrieve a single value (for example, an aggregate value) from a database. 
                    int employeesCount = (int)command.ExecuteScalar();
                    Console.WriteLine($"There are {employeesCount} employees");

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        while(reader.Read())
                        {
                            employees.Add(new Employee()
                            {
                                FirstName = reader["FirstName"]?.ToString(),
                                MiddleName = reader["MiddleName"]?.ToString(),
                                LastName = reader[2]?.ToString()
                            });
                        }
                    }
                }
                // Not needed because of using 
               // connection.Close();
            }

            foreach(var employee in employees)
            {
                Console.WriteLine($"{employee.FirstName} {employee.MiddleName} {employee.LastName}");
            }
        }
    }
}
