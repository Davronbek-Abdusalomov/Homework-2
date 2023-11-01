class Car {
String make;
String model;
Date year;
Car(this.make, this.model, this.year);
void describe() {
print('This is a $make. Its model is $model. Yezr is $year.');
}
}

void main() {
var car= Car('chevralet', "2", 2022);
car.describe();
}

