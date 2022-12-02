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
    myColor = color(255,255,255);   
    myCenterX = (int)(Math.random()*250);
    myCenterY = (int)(Math.random()*250);    
    myXspeed = 1; 
    myYspeed = 1;    
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
//Asteroid bruh = new Asteroid();
//bruh.move();
//bruh.show();
//ArrayList <Asteroid> a;
//  a = new ArrayList <Asteroid>();
//  for(int i = 0; i < a.size(); i++){
//  a.get(i).move();
//  a.get(i).show();
//  float d = dist((float)bob.getX(),(float)bob.getY(),(float)a.get(i).getCenterX(),(float)a.get(i).getCenterY());
//    if(d < 10)
//    a.remove(i);
//  }
