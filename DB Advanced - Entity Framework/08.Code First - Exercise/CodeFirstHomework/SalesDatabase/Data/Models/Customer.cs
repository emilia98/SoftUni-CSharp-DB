using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace P03_SalesDatabase.Data.Models
{
    [Table("Customers")]
    public class Customer
    {
        [Key]
        public int CustomerId { get; set; }

        [Required]
        [StringLength(100)]
        public string Name { get; set; }

        [Required]
        [StringLength(80)]
        public string Email { get; set; }

        [Required]
        public string CreditCardNumber { get; set; }

        public HashSet<Sale> Sales { get; set; } = new HashSet<Sale>();
    }
}
