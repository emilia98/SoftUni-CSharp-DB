using P01_HospitalDatabase.Data.Models;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Text;

namespace P01_HospitalDatabase.Data
{
    public class HospitalContext : DbContext
    {
        public HospitalContext()
        {
        }

        public HospitalContext(DbContextOptions<HospitalContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Patient>(e =>
            {
                e.Property(p => p.FirstName).IsUnicode(true);
                e.Property(p => p.LastName).IsUnicode(true);
                e.Property(p => p.Address).IsUnicode(true);
                e.Property(p => p.Email).IsUnicode(false);
            });

            modelBuilder.Entity<Visitation>(e =>
            {
                e.Property(p => p.Comments).IsUnicode(true);
            });

            modelBuilder.Entity<Diagnose>(e =>
            {
                e.Property(p => p.Name).IsUnicode(true);
                e.Property(p => p.Comments).IsUnicode(true);
            });

            modelBuilder.Entity<Medicament>(e =>
            {
                e.Property(p => p.Name).IsUnicode(true);
            });

            modelBuilder.Entity<Doctor>(e =>
            {
                e.Property(p => p.Name).IsUnicode(true);
                e.Property(p => p.Specialty).IsUnicode(true);
            });

        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(@"Server=(local)\SQLEXPRESS;Database=HospitalDB;Integrated Security=true");
            }
        }

        public DbSet<Patient> Patients { get; set; }

        public DbSet<Visitation> Visitations { get; set; }

        public DbSet<Diagnose> Diagnoses { get; set; }

        public DbSet<Medicament> Medicaments { get; set; }

        public DbSet<Doctor> Doctor { get; set; }
    }
}
