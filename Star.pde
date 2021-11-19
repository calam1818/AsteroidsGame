class Star //note that this class does NOT extend Floater
{
  //member variables
  private int myColour,myX,myY;
  //constructor
  public Star(){
    myX=(int)(Math.random()*500);
    myY=(int)(Math.random()*500);
    myColour=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  //show()
 public void show(){
   noStroke();
   fill(myColour);
   
    ellipse(myX,myY,5,5);
  }
}

