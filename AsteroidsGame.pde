Spaceship bob=new Spaceship();
Star [] bub;
public void setup()
{
  //your code here
  size(500,500);
  background(0);
  bub=new Star[100];
  for(int i =0;i<bub.length;i++){
    bub[i]=new Star();
  }
  //bob.turn(90);
  //bob.accelerate(0.2);
}
public void draw()
{
  //your code here
background(0);
  for(int i =0;i<bub.length;i++){
  bub[i].show();
  }
  if(keyPressed){
    if(key=='h'){
    bob.hyperspace();
    //bob.myXspeed=x;
  }
  }
  if(keyPressed){
  if(key=='a'){
    bob.turn(-10);
  }
  }
  if(keyPressed){
  if(key=='d'){
    bob.turn(10);
  }
  }
  if(keyPressed){
  if(key=='s'){
    bob.turn(-0.5);
  }
  }
  if(keyPressed){
  if(key=='w'){
    bob.turn(0.5);
  }
  }
  if(keyPressed){
  if(key==' '){
    bob.accelerate(0.1);
  }
  }
 
 
 bob.move();
 bob.show();
}

