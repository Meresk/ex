using System.ComponentModel.DataAnnotations.Schema;

[Table("Product")]
public class Product
{
    public int Id { get; set; }
    public string? Article { get; set; }
    public string? Title { get; set; }
    public string? Unit { get; set; }
    public decimal Price { get; set; }
    public string? Producer { get; set; }
    public string? Manufacturer { get; set; }
    public string? Category { get; set; }
    public int Discount { get; set; }
    public int Amount { get; set; }
    public string? Description { get; set; }
    public string? Photo { get; set; }
}