using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace FastFood.Models
{
    [Table("Items")]
    public class Item
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(30)]
        [MinLength(3)]
        public string Name { get; set; }

        [Required]
        public int CategoryId { get; set; }
    
        [ForeignKey(nameof(CategoryId))]
        public Category Category { get; set; }

        [Required]
        [Range(typeof(Decimal), "0.01", "Decimal.MaxValue")]
        public decimal Price { get; set; }

        public HashSet<OrderItem> OrderItems { get; set; } = new HashSet<OrderItem>();
    }
}
