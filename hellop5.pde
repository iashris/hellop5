int numz=20;
Circle[] jaydips=new Circle[1000];

void setup(){
  rectMode(CENTER);
  size(600,600);
  for(int i=0;i<numz;i++)jaydips[i]=new Circle(i,numz);
}
void draw(){
  translate(width/2,height/2);
  background(255);
  for(int i=0;i<numz;i++){
    jaydips[i].update();
    jaydips[i].show();
  }
    
}