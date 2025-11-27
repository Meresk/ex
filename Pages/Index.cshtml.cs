using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace ex.Pages;

public class IndexModel : PageModel
{
    public string UserRole { get; set; }
    
    public IActionResult OnGet()
    {
        UserRole = HttpContext.Session.GetString("UserRole");

        if (string.IsNullOrEmpty(UserRole))
        {
            return RedirectToPage("Login");
        }

        return Page();
    }
}