﻿namespace VaporStore.Data.Models
{
    using System.Collections.Generic;
    using System.ComponentModel.DataAnnotations;
    using System.ComponentModel.DataAnnotations.Schema;
    using VaporStore.Data.Models.Enums;

    public class Card
    {
        public Card()
        {
            this.Purchases = new HashSet<Purchase>();
        }

        [Key]
        public int Id { get; set; }

        [Required]
        [RegularExpression("^([0-9]{4}\\s+[0-9]{4}\\s+[0-9]{4}\\s+[0-9]{4})$")]
        public string Number { get; set; }

        [Required]
        [RegularExpression("^([0-9]{3})$")]
        public string Cvc { get; set; }

        [Required]
        public CardType Type { get; set; }

        [Required]
        [ForeignKey(nameof(User))]
        public int UserId { get; set; }
        
        public User User { get; set; }

        public ICollection<Purchase> Purchases { get; set; }
    }
}