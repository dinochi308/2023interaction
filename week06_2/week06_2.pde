void setup(){
  size(800,400);
  textSize(64);
}
String line ="Input: ";
void draw(){
  text(line,100,100);
}
void keyPressed(){
  line += key;
}
