class Bullet extends Floater
{
  public Bullet(Spaceship e){
    myCenterX = e.getCent();
    myCenterY = e.getCente();
    myXspeed = e.getSpeX(); 
    myYspeed = e.getSpeY();
    myPointDirection = e.getDir();
    accelerate(.6);
    
    
  }
  public void show(){
    noStroke();
    fill(255,0,0);
    ellipse((float)myCenterX;(float)myCenterY,30,3);
}
