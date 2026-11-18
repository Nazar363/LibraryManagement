namespace LibraryManagement.Data.Models;

public class BookCopy
{
    public int Id {get;set;}
    public int BookId {get;set;}
    public string InventoryNumber {get;set;} = "";
    public string Status {get;set;} = "Available";
    public Book Book {get;set;} = null!;
    public List<Loan> Loans { get; set; } = new();
}