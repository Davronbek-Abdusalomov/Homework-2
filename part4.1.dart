abstract class Vehicle {
double speed();
}
class Car extends Vehicle {
double maxSpeed;
Car(this.maxSpeed);
@override
double speed() {
return maxSpeed;
}
}
class Bike extends Vehicle {
double maxSpeed;
Bike(this.maxSpeed);
@override
double speed() {
return maxSpeed;
}
}
void main() {
var car = Car(200);
print("Car speed: ${car.speed()} km/h");
var bike = Bike(30);
print("Bike speed: ${bike.speed()} km/h");
}
