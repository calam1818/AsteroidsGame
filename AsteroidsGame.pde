//your variable declarations here
ArrayList<Bullet> bul=new ArrayList<Bullet>();
ArrayList<asteroid> ast=new ArrayList<asteroid>();
Spaceship bob=new Spaceship();
Star [] bub;
public void setup() 
{
  //your code here
  size(500,500);
  background(0);
  for(int i =0;i<10;i++){
    ast.add(new asteroid());
  }
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
 bob.move();
 bob.show();
   for(int i =0;i<ast.size();i++){
  ast.get(i).move();
  ast.get(i).show();
 float d=dist(bob.getX(),bob.getY(),ast.get(i).getX(),ast.get(i).getY());
 if(d<10){
   ast.remove(i);
 }
  }
  for(int k =0;k<bub.length;k++){
  bub[k].show();
  }
  for(int j =0;j<bul.size();j++){
    bul.get(j).move();
    bul.get(j).show();

  }
  for(int p=0;p<bul.size();p++){
    for(int e=0;e<ast.size();e++){
            float c=dist(bul.get(p).getX(),bul.get(p).getY(),ast.get(e).getX(),ast.get(e).getY());
 if(c<10){
   ast.remove(e);
   bul.remove(p);
   break;
 }
    }
  }
  

  if(keyPressed){
    if(key=='h'){
    bob.hyperspace();
    
    //bob.myXspeed=x;
  }
  }
  if(keyPressed){
  if(key=='a'){
    bob.turn(-5);
     //bul.add(new Bullet(bob));
  }
  }
  if(keyPressed){
  if(key=='d'){
    bob.turn(5);
     //bul.add(new Bullet(bob));
  }
  }
  if(keyPressed){
  if(key=='s'){
    bob.turn(-180);
     //bul.add(new Bullet(bob));
  }
  }
  if(keyPressed){
  if(key=='w'){
    bob.turn(90);
     //bul.add(new Bullet(bob));
  }
  }
  if(keyPressed){
  if(key==' '){
    bob.accelerate(0.050);
    bul.add(new Bullet(bob));
  }
  } 
   
  
   }
