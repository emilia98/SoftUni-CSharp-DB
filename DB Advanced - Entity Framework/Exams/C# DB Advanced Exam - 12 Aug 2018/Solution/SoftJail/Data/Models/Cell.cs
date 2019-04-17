namespace SoftJail.Data.Models
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;

    public class Cell
    {
        public Cell()
        {
            this.Prisoners = new HashSet<Prisoner>();
        }

        [Key]
        // Id – integer, Primary Key
        public int Id { get; set; }

        [Required]
        [Range(1, 1000)]
        // CellNumber – integer in the range[1, 1000] (required)
        public int CellNumber { get; set; }

        [Required]
        // HasWindow – bool (required)
        public bool HasWindow { get; set; }
        
        [ForeignKey(nameof(Department))]
        // DepartmentId - integer, foreign key
        public int DepartmentId { get; set; }
        
        [Required]
        // Department – the cell's department (required)
        public Department Department { get; set; }

        // Prisoners - collection of type Prisoner
        public ICollection<Prisoner> Prisoners { get; set; }
    }
}