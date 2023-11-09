PImage img;
int [][] pos = {{93,489},{246,524},{177,524},{160,490},{151,457},{195,490},{230,491},{263,490},{323,455},{297,488},{331,489},{366,490},{314,524},{281,523},{355,456},{390,456},{84,457},{187,457},{128,488},{221,457},{287,457},{212,523},{117,456},{143,524},{255,457},{110,523}};
void setup(){
  size(800,600);
  img = loadImage("keyboard.png");
  rectMode(CENTER);
}
void draw(){
  background(#FFFFF2);
  image(img,0,600-266);
  fill(255,0,0,128);
  rect(mouseX,mouseY,28,30,5);
  fill(0,255,0,128);
  for(int i=0;i<26;i++){
    if(typing.charAt(0)-'a'==i)rect(pos[i][0],pos[i][1],28,30,5);
    if(pressed[i]) rect(pos[i][0],pos[i][1],28,30,5);
  }
  fill(0);
  textSize(50);
  text(typing,50,50);
  text(typing.charAt(0),50,100);
}
String typing = "printf";
boolean [] pressed = new boolean[26];
void keyPressed(){
  if(key>='a'&&key<='z') pressed[key-'a'] = true;
}
void keyReleased(){
  if(key>='a'&&key<='z') pressed[key-'a'] = false;
}
void mousePressed(){
  print(mouseX,mouseY);
}
