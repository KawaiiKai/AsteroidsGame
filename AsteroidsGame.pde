Spaceship bob = new Spaceship();
boolean acc = false;
boolean deacc = false;
boolean e = false;
boolean f = false;
boolean h =  false;
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
   bob.move();
   bob.show();
  if (acc == true)
 bob.accelerate(0.1);
if (deacc == true)
 bob.accelerate(-0.1);
 if (e == true)
 bob.turn(-5);
if (f == true)
 bob.turn(5);
if(h == true){
   frameRate(12);
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*460)+20);
   bob.setCenterY((int)(Math.random()*460)+20);
   bob.setDir(Math.random()*360);
   bob.fade();
   }
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
    e = true;
  }
  if( key == 'd')
  {
    f = true;
  }
  if( key == 'h'){
   h = true;
  }
}
public void keyReleased()
{
  
  if( key == 'w')
  {
  
    acc = false;
  }
  if( key == 's')
  {
    deacc = false;
  }
  if( key == 'a')
  {
    e = false;
  }
  if( key == 'd')
  {
    f = false;
  }
  if( key == 'h'){
    h = false;
    bob.unfade();
}
}
