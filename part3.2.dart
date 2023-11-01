mixin Swim {
void swim() {
print('Swimming...');
}
}
class Fish with Swim {}
void main() {
var fish = Fish();
fish.swim();
}
