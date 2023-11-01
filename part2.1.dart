class Animal {
String name;
int age;
Animal(this.name, this.age);
void describe() {
print('This is a $name and it is $age years old.');
}
}

void main() {
var animal = Animal('Dog', 5);
animal.describe();
}

