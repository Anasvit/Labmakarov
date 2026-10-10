using System;
using System.Collections.Generic;

namespace Lab3_Guselnikova.Models;

public partial class Manufacturer
{
    public int Id { get; set; }

    public string? Name { get; set; }

    public virtual ICollection<Product> Products { get; set; } = new List<Product>();
}
