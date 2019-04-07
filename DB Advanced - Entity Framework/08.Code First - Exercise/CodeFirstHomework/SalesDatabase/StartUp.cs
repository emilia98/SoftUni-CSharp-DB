using P03_SalesDatabase.Data;
using System;

namespace P03_SalesDatabase
{
    public class StartUp
    {
        static void Main()
        {
            using (var db = new SalesContext())
            {
                db.Database.EnsureCreated();
            }
        }
    }
}
