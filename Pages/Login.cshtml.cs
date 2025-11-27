using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace ex.Pages;

public class LoginModel : PageModel
{
    private readonly AppDbContext _context;
    
    public LoginModel(AppDbContext context)
    {
        _context = context;
    }

    public IActionResult OnPostLogin(string username, string password)
    {
        // типо запрос к БД
        var user = _context.Users
            .FirstOrDefault(u => u.Login == username && u.Password == password);

        if (user != null)
        {
            // Нашли пользователя - сохраняем роль
            HttpContext.Session.SetString("UserRole", user.Role);
            HttpContext.Session.SetString("UserName", user.FullName);
            return RedirectToPage("Index");
        }
        
        // Сохраняем роль в сессии если все ок
        HttpContext.Session.SetString("UserRole", user.Role);
        
        return RedirectToPage("Index");
    }
    
    // заходим как гость
    public IActionResult OnPostGuest()
    {
        HttpContext.Session.SetString("UserRole", "Guest");
        return RedirectToPage("Index");
    }

    public IActionResult OnGetLogout()
    {
        HttpContext.Session.Remove("UserRole");
        return RedirectToPage("Index");
    }
}