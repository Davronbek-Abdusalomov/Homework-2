class Book {
String title;
String author;
int page;
Car(this.title, this.author, this.page);
void describe() {
print('This is a $title titled book. Its aouther is $author. Pages are $page.');
}
}

void main() {
var book = Book('ehson', "O'tkir Hoshimov", 202);
book.describe();
}