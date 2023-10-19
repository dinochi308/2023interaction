void setup(){
  size(800,400);
  textSize(64);
}
String line ="";
void draw(){
  background(0);
  text("Input: "+line,100,100);
}
void keyPressed(){
  if(key>='A' && key<='Z') line += key;
  if(key>='a' && key<='z') line += key; 
}
