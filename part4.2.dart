abstract class Instrument {
double play();
}
class Gitare extends Instrument {
double maxVoice;
Gitare(this.maxVoice);
@override
double play() {
return maxVoice;
}
}
class Piano extends Instrument {
double maxVoice;
Bike(this.maxVoive);
@override
double play() {
return maxVoice;
}
}
void main() {
var gitare = Gitare(200);
print("Gitare voice: ${gitare.play()} ");
var bike = Piano(30);
print("Piano voice: ${piano.play()} ");
}
