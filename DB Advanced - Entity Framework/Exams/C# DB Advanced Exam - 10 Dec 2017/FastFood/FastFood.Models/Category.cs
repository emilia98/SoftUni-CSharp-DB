using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace FastFood.Models
{
    [Table("Categories")]
    public class Category
    {
        [Key]
        public int Id { get; set; }

        [Required]
        [StringLength(30)]
        [MinLength(3)]
        public string Name { get; set; }

        public HashSet<Item> Items { get; set; } = new HashSet<Item>();
    }
}
