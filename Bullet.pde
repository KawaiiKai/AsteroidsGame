class Bullet extends Floater
{
  public Bullet(Spaceship bob){
    myCenterX = bob.getCent();
    myCenterY = bob.getCente();
    myXspeed = bob.getSpeX(); 
    myYspeed = bob.getSpeY();
    myPointDirection = bob.getDir();
    accelerate(6);
    
    
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;
  }
  public void show(){
    noStroke();
    fill(255,0,0);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
   
}
public double getMidX()
       {
      return myCenterX;
      }
    public double getMidY()
      {
      return myCenterY;
      }
}
