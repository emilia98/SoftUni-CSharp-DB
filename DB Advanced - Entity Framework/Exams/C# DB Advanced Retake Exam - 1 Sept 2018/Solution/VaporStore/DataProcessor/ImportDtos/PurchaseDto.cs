using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Text;
using System.Xml.Serialization;

namespace VaporStore.DataProcessor.ImportDtos
{
    //<Type>Digital</Type>
    //<Key>ZTZ3-0D2S-G4TJ</Key>
    //<Card>1833 5024 0553 6211</Card>
    //<Date>07/12/2016 05:49</Date>

    [XmlType("Purchase")]
    public class PurchaseDto
    {
        [XmlAttribute("title")]
        [Required]
        public string Title { get; set; }

        [XmlElement("Type")]
        [Required]
        public string Type { get; set; }

        [XmlElement("Key")]
        [Required]
        [RegularExpression("^([A-Z0-9]{4}-[A-Z0-9]{4}-[A-Z0-9]{4})$")]
        public string Key { get; set; }

        [XmlElement("Card")]
        [Required]
        public string Card { get; set; }
        
        [XmlElement("Date")]
        [Required]
        public string Date { get; set; }
    }
}
