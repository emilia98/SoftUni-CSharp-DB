using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Text;

namespace P01_HospitalDatabase.Data.Models
{
    [Table("PatientsMedicaments")]
    public class PatientMedicament
    {
        [Key]
        public int Id { get; set; }

        public int PatientId { get; set; }

        public int MedicamentId { get; set; }

        [ForeignKey(nameof(PatientId))]
        public Patient Patient { get; set; }

        [ForeignKey(nameof(MedicamentId))]
        public Medicament Medicament { get; set; }
    }
}
