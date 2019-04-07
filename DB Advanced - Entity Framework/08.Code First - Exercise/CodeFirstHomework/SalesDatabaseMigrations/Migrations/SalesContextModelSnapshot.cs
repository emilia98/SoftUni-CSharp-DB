﻿// <auto-generated />
using System;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Infrastructure;
using Microsoft.EntityFrameworkCore.Metadata;
using Microsoft.EntityFrameworkCore.Storage.ValueConversion;
using P03_SalesDatabase.Data;

namespace SalesDatabaseMigrations.Migrations
{
    [DbContext(typeof(SalesContext))]
    partial class SalesContextModelSnapshot : ModelSnapshot
    {
        protected override void BuildModel(ModelBuilder modelBuilder)
        {
#pragma warning disable 612, 618
            modelBuilder
                .HasAnnotation("ProductVersion", "2.1.0-rtm-30799")
                .HasAnnotation("Relational:MaxIdentifierLength", 128)
                .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

            modelBuilder.Entity("P03_SalesDatabase.Data.Models.Customer", b =>
                {
                    b.Property<int>("CustomerId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("CreditCardNumber")
                        .IsRequired();

                    b.Property<string>("Email")
                        .IsRequired()
                        .HasMaxLength(80)
                        .IsUnicode(false);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(100)
                        .IsUnicode(true);

                    b.HasKey("CustomerId");

                    b.ToTable("Customers");

                    b.HasData(
                        new { CustomerId = 1, CreditCardNumber = "123-456-7890", Email = "pesho@pesho.bg", Name = "Пешо" }
                    );
                });

            modelBuilder.Entity("P03_SalesDatabase.Data.Models.Product", b =>
                {
                    b.Property<int>("ProductId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Description")
                        .ValueGeneratedOnAdd()
                        .HasMaxLength(250)
                        .IsUnicode(true)
                        .HasDefaultValue("No description");

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(50)
                        .IsUnicode(true);

                    b.Property<decimal>("Price");

                    b.Property<double>("Quantity");

                    b.HasKey("ProductId");

                    b.ToTable("Products");

                    b.HasData(
                        new { ProductId = 1, Name = "Cup", Price = 4.25m, Quantity = 12.0 }
                    );
                });

            modelBuilder.Entity("P03_SalesDatabase.Data.Models.Sale", b =>
                {
                    b.Property<int>("SaleId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<int>("CustomerId");

                    b.Property<DateTime>("Date")
                        .ValueGeneratedOnAdd()
                        .HasDefaultValueSql("GETDATE()");

                    b.Property<int>("ProductId");

                    b.Property<int>("StoreId");

                    b.HasKey("SaleId");

                    b.HasIndex("CustomerId");

                    b.HasIndex("ProductId");

                    b.HasIndex("StoreId");

                    b.ToTable("Sales");

                    b.HasData(
                        new { SaleId = 1, CustomerId = 1, Date = new DateTime(1, 1, 1, 0, 0, 0, 0, DateTimeKind.Unspecified), ProductId = 1, StoreId = 1 }
                    );
                });

            modelBuilder.Entity("P03_SalesDatabase.Data.Models.Store", b =>
                {
                    b.Property<int>("StoreId")
                        .ValueGeneratedOnAdd()
                        .HasAnnotation("SqlServer:ValueGenerationStrategy", SqlServerValueGenerationStrategy.IdentityColumn);

                    b.Property<string>("Name")
                        .IsRequired()
                        .HasMaxLength(80)
                        .IsUnicode(true);

                    b.HasKey("StoreId");

                    b.ToTable("Stores");

                    b.HasData(
                        new { StoreId = 1, Name = "Pesho's Computers" }
                    );
                });

            modelBuilder.Entity("P03_SalesDatabase.Data.Models.Sale", b =>
                {
                    b.HasOne("P03_SalesDatabase.Data.Models.Customer", "Customer")
                        .WithMany("Sales")
                        .HasForeignKey("CustomerId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("P03_SalesDatabase.Data.Models.Product", "Product")
                        .WithMany("Sales")
                        .HasForeignKey("ProductId")
                        .OnDelete(DeleteBehavior.Cascade);

                    b.HasOne("P03_SalesDatabase.Data.Models.Store", "Store")
                        .WithMany("Sales")
                        .HasForeignKey("StoreId")
                        .OnDelete(DeleteBehavior.Cascade);
                });
#pragma warning restore 612, 618
        }
    }
}
