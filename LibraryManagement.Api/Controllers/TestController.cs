using LibraryManagement.Data.Data;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace LibraryManagement.Api.Controllers;

[ApiController]
[Route("api/test")]
public class TestController : ControllerBase
{
    private readonly AppDbContext _context;

    public TestController(AppDbContext context)
    {
        _context = context;
    }

    [HttpGet("books")]
    public async Task<IActionResult> GetBooks()
    {
        var books = await _context.Books
            .Select(b => new
            {
                b.Id,
                b.Title,
                Publisher = b.Publisher.Name,
                Authors = b.Authors.Select(a => a.FullName),
                Genres = b.Genres.Select(g => g.Name),
                Copies = b.Copies.Count
            })
            .ToListAsync();

        return Ok(books);
    }
}