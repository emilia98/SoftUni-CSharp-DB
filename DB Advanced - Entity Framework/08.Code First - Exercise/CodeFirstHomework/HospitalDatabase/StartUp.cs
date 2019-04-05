using Microsoft.EntityFrameworkCore;
using P01_HospitalDatabase.Data;
using System;

namespace P01_HospitalDatabase
{
    public class StartUp
    {
        static void Main()
        {
            /*
            LoggerFactory SqlCommandLoggerFactory = new LoggerFactory(
                new[] {
                     new ConsoleLoggerProvider((category, level) =>
                     category == DbLoggerCategory.Database.Command.Name &&
                     level == LogLevel.Information, true)
                });

            string connectionString = @"Server=(local)\SQLEXPRESS;Database=HospitalDB;Integrated Security=true";
            DbContextOptionsBuilder<HospitalContext> optionsBuilder = new DbContextOptionsBuilder<HospitalContext>();

            optionsBuilder
                .UseSqlServer(connectionString)
                .UseLoggerFactory(SqlCommandLoggerFactory)
                .EnableSensitiveDataLogging();
                */
            using (var db = new HospitalContext())
            {
                db.Database.EnsureCreated();
            }
        }
    }
}
