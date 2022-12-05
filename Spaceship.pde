class Spaceship extends Floater  
{ 
  protected int o;
  public Spaceship() {
    o = 250;
    
    corners = 73;  //the number of corners, a triangular floater has 3   
    xCorners = new int[]{19,18,16,15,13,11,8,4,4,2,3,3,9,9,3,2,2,7,7,2,2,1,5,5,-4,-4,-3,-3,-2,-2,-3,-6,-11,-11,-7,-9,-10,-9,-7,-11,-11,-6,-3,-2,-2,-3,-3,-4,-4,5,5,1,2,2,7,7,2,2,3,9,9,3,3,2,4,4,8,11,13,15,16,18,19};   
    yCorners = new int[]{0,1,1,2,2,3,3,5,3,3,5,7,7,8,8,9,10,10,11,11,12,14,14,15,15,14,12,9,8,6,3,2,7,5,1,1,0,-1,-1,-5,-7,-2,-3,-6,-8,-9,-12,-14,-15,-15,-14,-14,-12,-11,-11,-10,-10,-9,-8,-8,-7,-7,-5,-3,-3,-5,-3,-3,-2,-2,-1,-1,0};
    myColor = color(255,255,255,o);   
    myCenterX = 250;
    myCenterY = 250;    
    myXspeed = 0; 
    myYspeed = 0;    
    myPointDirection = 0; 
      
  }
  public void fade(){
     myColor = color(255,255,255,o); 
     o = o - 15;
     if (o < 0)
     o = 100;
  }
  public void unfade(){
     o = 300;
     myColor = color(255,255,255,o); 
  }
  public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
  public void setCenterX(int x){
    myCenterX = x; 
  }
  public void setCenterY(int y){
    myCenterY = y; 
  }
  public void setDir(double a){
    myPointDirection = a;
  }

    public double getCent()
       {
      return myCenterX;
      }
    public double getCente()
      {
      return myCenterY;
      }
     public double getDir()
     {
       return myPointDirection;
     }
  public void fire(){
   
   float dRadians = (float)(getDir()*(Math.PI/180));
   translate((float)getCent(), (float)getCente());
   rotate(dRadians);
   beginShape();
   curveVertex(-12,0);
   curveVertex(-15,3);
   curveVertex(-20,0);
   curveVertex(-15,-3);
   curveVertex(-12,0);
   endShape();
   rotate(-1*dRadians);
   translate(-1*(float)getCent(), -1*(float)getCente());
   
 
  }
}
