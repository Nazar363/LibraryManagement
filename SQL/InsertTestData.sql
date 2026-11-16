USE LibraryDb
GO
INSERT INTO Publisher (Name) 
VALUES (N'Видавництво Старого Лева'),(N'А-БА-БА-ГА-ЛА-МА-ГА'),(N'Фоліо'),(N'Клуб Сімейного Дозвілля'),(N'Наш Формат');
INSERT INTO Genre (Name)
VALUES (N'Фентезі'), (N'Детектив'), (N'Історичний роман'), (N'Поезія'), (N'Науково-популярна'), (N'Класика');
INSERT INTO Author (FullName)
VALUES (N'Іван Франко'), (N'Леся Українка'), (N'Тарас Шевченко'), (N'Ліна Костенко'), (N'Сергій Жадан'), (N'Оксана Забужко'), (N'Юваль Ной Харарі'), (N'Стівен Кінг'), (N'Джордж Орвелл'), (N'Артур Конан Дойл');
GO
INSERT INTO Book (Title,PublishYear,Pages,Isbn,PublisherId)
VALUES
(N'Кобзар', 1840, 480, N'ISBN-0001', 2),
(N'Лісова пісня', 1911, 160, N'ISBN-0002', 1),
(N'Захар Беркут', 1883, 224, N'ISBN-0003', 3),
(N'Маруся Чурай', 1979, 192, N'ISBN-0004', 2),
(N'Інтернат', 2017, 352, N'ISBN-0005', 3),
(N'Польові дослідження з українського сексу', 1996, 192, N'ISBN-0006', 1),
(N'Sapiens. Людина розумна', 2011, 512, N'ISBN-0007', 4),
(N'Homo Deus', 2015, 464, N'ISBN-0008', 4),
(N'Сяйво', 1977, 464, N'ISBN-0009', 5),
(N'Воно', 1986, 1138, N'ISBN-0010', 5),
(N'1984', 1949, 328, N'ISBN-0011', 2),
(N'Ферма тварин', 1945, 144, N'ISBN-0012', 2),
(N'Пригоди Шерлока Холмса', 1892, 320, N'ISBN-0013', 3),
(N'Собака Баскервілів', 1902, 256, N'ISBN-0014', 3),
(N'Мойсей', 1905, 224, N'ISBN-0015', 1);
GO
INSERT INTO BookAuthor (BookId,AuthorId)
VALUES (1, 3), (2, 2), (3, 1), (4, 4), (5, 5), (6, 6), (7, 7), (8, 7),
(9, 8), (10, 8), (11, 9), (12, 9), (13, 10), (14, 10), (15, 1),
(5, 6), (10, 10);
GO
INSERT INTO BookGenre (BookId,GenreId)
VALUES (1, 4), (1, 6), (2, 4), (2, 6), (3, 3), (3, 6), (4, 4), (4, 3),
(5, 6), (6, 6), (7, 5), (8, 5), (9, 1), (10, 1), (11, 6), (12, 6),
(13, 2), (14, 2), (15, 4);
INSERT INTO BookCopy (BookId,InventoryNumber,Status)
VALUES (1, N'INV-001', N'Available'),
(1, N'INV-002', N'Available'),
(1, N'INV-003', N'Available'),
(2, N'INV-004', N'Available'),
(2, N'INV-005', N'Lost'),
(3, N'INV-006', N'Available'),
(3, N'INV-007', N'Available'),
(4, N'INV-008', N'Available'),
(5, N'INV-009', N'Available'),
(5, N'INV-010', N'Damaged'),
(6, N'INV-011', N'Available'),
(7, N'INV-012', N'Available'),
(7, N'INV-013', N'Available'),
(7, N'INV-014', N'Available'),
(8, N'INV-015', N'Available'),
(8, N'INV-016', N'Available'),
(9, N'INV-017', N'Available'),
(9, N'INV-018', N'Available'),
(9, N'INV-019', N'Available'),
(10, N'INV-020', N'Available'),
(10, N'INV-021', N'Available'),
(11, N'INV-022', N'Available'),
(11, N'INV-023', N'Available'),
(11, N'INV-024', N'Available'),
(12, N'INV-025', N'Available'),
(13, N'INV-026', N'Available'),
(13, N'INV-027', N'Available'),
(14, N'INV-028', N'Available'),
(15, N'INV-029', N'Available');
GO
INSERT INTO Reader (FullName, Email, Phone)
VALUES (N'Олександр Мельник', N'melnyk@example.com', N'+380501112233'),
(N'Марія Коваленко', N'kovalenko@example.com', N'+380672223344'),
(N'Андрій Бойко', N'boyko@example.com', NULL),
(N'Наталія Шевчук', N'shevchuk@example.com', N'+380933334455'),
(N'Василь Ткачук', N'tkachuk@example.com', N'+380504445566'),
(N'Ірина Кравець', N'kravets@example.com', NULL);
INSERT INTO Loan (BookCopyId, ReaderId, LoanDate, DueDate, ReturnDate)
VALUES (1, 1, '2026-10-01', '2026-10-15', '2026-10-14'),
(12, 2, '2026-10-05', '2026-10-19', '2026-10-20'),
(17, 3, '2026-10-20', '2026-11-03', NULL),
(22, 4, '2026-11-10', '2026-11-24', NULL),
(6, 5, '2026-11-12', '2026-11-26', NULL),
(2, 1, '2026-11-01', '2026-11-15', NULL);
UPDATE BookCopy 
SET Status = 'Borrowed'
WHERE Id IN(17,22,6,2)
GO