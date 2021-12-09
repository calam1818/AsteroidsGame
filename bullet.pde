class Bullet extends Floater{
  public Bullet(Spaceship theShip){
    myCenterX=theShip.getX();
    myCenterY=theShip.getY();
    myPointDirection=theShip.getPointDirection();
    accelerate(.6);
}
public void show(){
  ellipse((float)myCenterX,(float)myCenterY,5,5);
  
}
     public float getX(){
    return myCenterX;
  }
  public float getY(){
    return  myCenterY;
  }
}
