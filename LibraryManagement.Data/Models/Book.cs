namespace LibraryManagement.Data.Models;

public class Book
{
    public int Id {get;set;}
    public string Title {get;set;} = "";
    public int PublishYear{get;set;}
    public int Pages{get;set;}
    public string Isbn {get;set;} = "";
    public int PublisherId {get;set;}
    public Publisher Publisher { get; set; } = null!;
    public List<Author> Authors { get; set; } = new();
    public List<Genre> Genres { get; set; } = new();
    public List<BookCopy> Copies { get; set; } = new();
}




