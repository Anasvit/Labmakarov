using System;
using System.Collections.Generic;

namespace Lab3_Guselnikova.Models;

public partial class Status
{
    public int Id { get; set; }

    public string? Status1 { get; set; }

    public virtual ICollection<Order> Orders { get; set; } = new List<Order>();
}
