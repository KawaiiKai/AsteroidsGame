Spaceship bob = new Spaceship();
boolean acc = false;
boolean deacc = false
Star[] sky = new Star[200];
public void setup() 
{
  size(500,500);

  for(int i = 0; i < sky.length;i++){
    sky[i] = new Star();
  }
}
public void draw() 
{
  background(0);
   for(int i = 0; i < sky.length;i++){
    sky[i].show();
   }
   bob.show();
  if (acc == true)
  bob.acclerate(0.5);
  if (deacc == true)
  bob.acclerate(-0.5);
}
public void keyPressed()
{
  if( key == 'w')
  {
    acc = true;
  }
  if( key == 's')
  {
    deacc = true;
  }
  if( key == 'a')
  {
    bob.turn(-10);
  }
  if( key == 'd')
  {
    bob.turn(10);
  }
  if( key == 'h'){
   frameRate(12);
   bob.setXspeed(0);
   bob.setCenterX((int)(Math.random()*460)+20);
   bob.setCenterY((int)(Math.random()*460)+20);
   bob.fade();
  }
}
public void keyReleased()
{
  
  
  if( key == 'h'){
    bob.setXspeed(0);
    bob.setCenterX((int)(Math.random()*460)+20);
    bob.setCenterY((int)(Math.random()*460)+20);
    bob.unfade();
}
}
