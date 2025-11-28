using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace ex.Pages;

public class IndexModel : PageModel
{
    private readonly AppDbContext _context;
    
    public IndexModel(AppDbContext context)
    {
        _context = context;
    }

    public string UserRole { get; set; }
    public List<Product> Products { get; set; } = new List<Product>();

    [BindProperty(SupportsGet = true)]
    public string Search { get; set; }
    
    [BindProperty(SupportsGet = true)]
    public string Sort { get; set; }
    
    public IActionResult OnGet()
    {
        UserRole = HttpContext.Session.GetString("UserRole");

        // if (string.IsNullOrEmpty(UserRole))
        // {
        //     return RedirectToPage("Login");
        // }

        Products = _context.Products.ToList();

        if (!string.IsNullOrEmpty(Search))
        {
            Products = Products.Where(p => 
                (p.Title != null && p.Title.Contains(Search)) || 
                (p.Description != null && p.Description.Contains(Search))
            ).ToList();
        }
        
        // Сортировка
        Products = Sort switch
        {
            "price" => Products.OrderBy(p => p.Price).ToList(),
            "price_desc" => Products.OrderByDescending(p => p.Price).ToList(),
            _ => Products.OrderBy(p => p.Title ?? "").ToList() // null-safe сортировка
        };

        return Page();
    }
}