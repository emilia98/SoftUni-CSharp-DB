using Microsoft.EntityFrameworkCore;
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
                e.Property(p => p.Description)
                 .IsUnicode(true)
                 .HasDefaultValue("No description");
            });

            modelBuilder.Entity<Customer>(e => {
                e.Property(p => p.Name).IsUnicode(true);
                e.Property(p => p.Email).IsUnicode(false);
            });

            modelBuilder.Entity<Store>(e => {
                e.Property(p => p.Name).IsUnicode(true);
            });

            modelBuilder.Entity<Sale>(e =>
            {
                e.Property(p => p.Date).HasDefaultValueSql("GETDATE()");
            });

            modelBuilder.Entity<Product>().HasData(
               new Product()
               {
                   ProductId = 1,
                   Name = "Cup",
                   Price = 4.25m,
                   Quantity = 12
               });

            modelBuilder.Entity<Store>().HasData(
                new Store()
                {
                    StoreId = 1,
                    Name = "Pesho's Computers"
                }
             );

            modelBuilder.Entity<Customer>().HasData(
                new Customer()
                {
                    CustomerId = 1,
                    Name = "Пешо",
                    Email = "pesho@pesho.bg",
                    CreditCardNumber = "123-456-7890"
                }
             );
            
            modelBuilder.Entity<Sale>().HasData(
                new Sale()
                {
                    SaleId = 1,
                    CustomerId = 1,
                    StoreId = 1,
                    ProductId = 1
                }
             );
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
