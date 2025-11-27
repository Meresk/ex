1. В program.cs вставляем -
builder.Services.AddSession();
app.UseSession();
app.UseAuthentication();

2. 