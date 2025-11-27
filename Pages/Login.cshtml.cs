using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;

namespace ex.Pages;

public class LoginPageModel : PageModel
{
    public IActionResult OnPostLogin(string username, string password)
    {
        // типо запрос к БД
        string role = "Guest";
        if (username == "user" && password == "1") role = "User";
        else if (username == "manager" && password == "1") role = "Manager";  
        else if (username == "admin" && password == "1") role = "Admin";
        
        // Сохраняем роль в сессии если все ок
        HttpContext.Session.SetString("UserRole", role);
        
        return RedirectToPage("Index");
    }
    
    // заходим как гость
    public IActionResult OnPostGuest()
    {
        HttpContext.Session.SetString("UserRole", "Guest");
        return RedirectToPage("Index");
    }
}