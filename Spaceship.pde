class Spaceship extends Floater  
{   
    public Spaceship(){
      corners=4;
      xCorners=new int[corners];
      yCorners=new int[corners];
      xCorners[0]=-8;
      yCorners[0]=-8;
      xCorners[1]=16;
      yCorners[1]=0;
      xCorners[2]=-8;
      yCorners[2]=8;
      xCorners[3]=-2;
      yCorners[3]=0; 
      myColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
      myCenterX=250;
      myCenterY=250;
      myXspeed=0;
      myYspeed=0;
      myPointDirection=0;
  }
    public void hyperspace(){
       myCenterX=(float)(Math.random()*400);
      myCenterY=(float)(Math.random()*400);
      myXspeed=0;
      myYspeed=0;
      myPointDirection=(int)(Math.random()*360);
    }
      public float getX(){
    return myCenterX;
  }
  public float getY(){
    return  myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
  public double getXspeed(){
   return myXspeed; 
  }
   public double getYspeed(){
   return myYspeed; 
  }
} 
