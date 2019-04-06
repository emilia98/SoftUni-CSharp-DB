﻿using Microsoft.EntityFrameworkCore;
using P01_HospitalDatabase.Data;
using System;

namespace P01_HospitalDatabase
{
    public class StartUp
    {
        static void Main()
        {
            using (var db = new HospitalContext())
            {
                db.Database.EnsureCreated();
            }
        }
    }
}
