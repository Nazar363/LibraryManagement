namespace LibraryManagement.Data.Models;

public class Loan
{
    public int Id {get;set;}
    public int BookCopyId {get;set;}
    public BookCopy BookCopy {get;set;} = null!;
    public int ReaderId {get;set;}
    public Reader Reader {get;set;} = null!;
    public DateTime LoanDate {get;set;}
    public DateTime DueDate {get;set;}
    public DateTime? ReturnDate {get;set;}
}