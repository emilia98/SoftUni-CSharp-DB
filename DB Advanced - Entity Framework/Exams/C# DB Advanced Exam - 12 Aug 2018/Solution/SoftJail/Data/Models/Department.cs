﻿namespace SoftJail.Data.Models
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;

    public class Department
    {
        public Department()
        {
            this.Cells = new HashSet<Cell>();
            this.Officers = new HashSet<Officer>();
        }

        [Key]
        public int Id { get; set; }

        [Required]
        [MinLength(3)]
        [MaxLength(25)]
        public string Name { get; set; }

        public ICollection<Cell> Cells { get; set; }

        public ICollection<Officer> Officers { get; set; }
    }
}