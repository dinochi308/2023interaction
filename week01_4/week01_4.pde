void setup(){
size(500,500);//視窗大小(寬,高);
background(255);
}

void draw(){
  if(mousePressed) {
  line(mouseX,mouseY,pmouseX,pmouseY);
 }
}

void keyPressed(){
  if(key=='1') stroke(255,0,0);//紅
  if(key=='2') stroke(0,255,0);//綠
  if(key=='3') stroke(0,0,255);//藍
  if(key=='S'||key=='s') save("output.png");
}
