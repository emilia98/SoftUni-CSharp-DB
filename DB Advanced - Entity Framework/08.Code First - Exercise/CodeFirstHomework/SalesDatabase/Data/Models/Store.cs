using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace P03_SalesDatabase.Data.Models
{
    [Table("Stores")]
    public class Store
    {
        [Key]
        public int StoreId { get; set; }
        
        [Required]
        [StringLength(80)]
        public string Name { get; set; }

        public HashSet<Sale> Sales { get; set; } = new HashSet<Sale>();
    }
}
