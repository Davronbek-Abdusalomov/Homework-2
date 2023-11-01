abstract class Device {
double powerOn();
}
class Laptop extends Device {
double maxSpeed;
Laptop(this.maxSpeed);
@override
double powerOn() {
return maxSpeed;
}
}
class Phone extends Device {
double maxSpeed;
Phone(this.maxSpeed);
@override
double powerOn() {
return maxSpeed;
}
}
void main() {
var laptop = Laptop(200);
print("Max speed: ${laptop.powerOn()} min");
var phone = Phone(30);
print("Max speed: ${phone.powerOn()} min");
}
