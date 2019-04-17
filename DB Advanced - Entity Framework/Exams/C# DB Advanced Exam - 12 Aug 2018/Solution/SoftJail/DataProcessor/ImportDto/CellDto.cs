using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;

namespace SoftJail.DataProcessor.ImportDto
{
    public class CellDto
    {
        [Required]
        [Range(1, 1000)]
        // CellNumber – integer in the range[1, 1000] (required)
        public int CellNumber { get; set; }

        [Required]
        public bool HasWindow { get; set; }

    }
}
