class Asteroid extends Floater  
{ 
  private double rotSpeed;
  public Asteroid() {
    corners = 6;
    xCorners = new int[]{-11,7,13,6,-11,-5};
    yCorners = new int[]{-8,-8,0,10,8,0};
    myCenterX = 250;
    myCenterY = 250;
    rotSpeed = (Math.random()*10)-5;
    myColor = color(125,125,125);   
    myCenterX = (int)(Math.random()*400);
    myCenterY = (int)(Math.random()*400);    
    myXspeed = (Math.random()*2+0.5); 
    myYspeed = (Math.random()*2+0.5);    
    myPointDirection = 0; 
  
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getCenterX(){
    return myCenterX;
  }
  public double getCenterY(){
    return myCenterY;
  }
}

