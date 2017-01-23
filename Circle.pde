class Circle{
  PVector pos;
    float speed=5;
    float radius=20*(1+(int)random(4));
    color rang;
    int numtimes;
    int seed=(int)random(5000);
  Circle(int i,int nums){
    if(i%2==0)rang=color(#9CE273);
    else rang=color(#4D7E9E);
    numtimes=nums;
    pos=new PVector(random(-width/2,width/2),random(-height/2,height/2));
  }
  
  void update(){
    pos.x+=speed*(noise(seed+frameCount/200)-0.5);
    pos.y+=speed*(noise(seed+1000+frameCount/200)-0.5);
    
    if(pos.x>width/2 || pos.x<-width/2 || pos.y<-height/2 || pos.x>height/2){
      //circle bahar nikal gayi
      pos=new PVector(random(-width/2,width/2),random(-height/2,height/2));
    }
    
    for(int i=0;i<numtimes;i++){
      float distfromacirc=PVector.dist(jaydips[i].pos,pos);
      stroke(80);strokeWeight(0.5);
      if(distfromacirc<50)line(jaydips[i].pos.x,jaydips[i].pos.y,pos.x,pos.y);
    }
  }
  
  void show(){
    
    int opacity=(int)map(dist(pos.x,pos.y,0,0),0,width/1.414,155,0);
    if(dist(mouseX-width/2,mouseY-width/2,pos.x,pos.y)<radius)fill(#FF9999,opacity);
    else fill(rang,opacity);
    noStroke();
    ellipse(pos.x,pos.y,2*radius,2*radius);
    fill(100);
    rect(pos.x,pos.y,3,3);
    
    
  }
}