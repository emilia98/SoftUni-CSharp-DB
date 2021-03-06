﻿using Microsoft.EntityFrameworkCore;
using P03_SalesDatabase.Data.Models;

namespace P03_SalesDatabase.Data
{
    public class SalesContext : DbContext
    {
        public SalesContext()
        {
        }

        public SalesContext(DbContextOptions<SalesContext> options) : base(options)
        {
        }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            modelBuilder.Entity<Product>(e => {
                e.Property(p => p.Name).IsUnicode(true);
            });

            modelBuilder.Entity<Customer>(e => {
                e.Property(p => p.Name).IsUnicode(true);
                e.Property(p => p.Email).IsUnicode(false);
            });

            modelBuilder.Entity<Store>(e => {
                e.Property(p => p.Name).IsUnicode(true);
            });
        }

        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            if (!optionsBuilder.IsConfigured)
            {
                optionsBuilder.UseSqlServer(@"Server=(local)\SQLEXPRESS;Database=SalesDB;Integrated Security=true");
            }
        }

        public DbSet<Customer> Customers { get; set; }

        public DbSet<Product> Products { get; set; }

        public DbSet<Sale> Sales { get; set; }

        public DbSet<Store> Stores { get; set; }
    }
}
