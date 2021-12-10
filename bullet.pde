class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX=theShip.getX();
    myCenterY=theShip.getY();
    myXspeed=theShip.getXspeed();
    myYspeed=theShip.getYspeed();
    myPointDirection=theShip.getPointDirection();
    accelerate(6);
}
public void show(){
  ellipse((float)myCenterX,(float)myCenterY,5,5);
  
}
public void move(){
   myCenterX += myXspeed;    
   myCenterY += myYspeed;   
    //for(int i =0;i<bul.size();i++){
     // if(bul.get(i).getX()<0||bul.get(i).getX()>500||bul.get(i).getY()<0||bul.get(i).getY()>500){
      //  bul.remove(i);
    //  }
     
   // }
  
}
     public float getX(){
    return myCenterX;
  }
  public float getY(){
    return  myCenterY;
  }

}
