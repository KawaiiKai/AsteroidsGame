Spaceship bob = new Spaceship();
ArrayList <Asteroid> a = new ArrayList <Asteroid>();
ArrayList <Bullet> b = new ArrayList<Bullet>();
boolean acc = false;
boolean deacc = false;
boolean e = false;
boolean f = false;
boolean he =  false;
boolean fe = false;
boolean shoot = false;
int score = 0;
int fr = 4;
Star[] sky = new Star[200];
public void setup() 
{
  size(500,500);

  for(int i = 0; i < sky.length;i++){
    sky[i] = new Star();
  }
  for(int i = 0; i < 25;i++){
  a.add(new Asteroid());
  }
}
  
public void draw() 
{
  background(0);
   for(int i = 0; i < sky.length;i++){
    sky[i].show();
   }
  for(int i = 0; i < a.size(); i++){
  a.get(i).move();
  a.get(i).show();
  float d = dist((float)bob.getCent(),(float)bob.getCente(),(float)a.get(i).getCenterX(),(float)a.get(i).getCenterY());
  if(d < 10)
  a.remove(i);
  }
  for(int i = 0; i < b.size(); i++){
    b.get(i).move();
    b.get(i).show();
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
 
if(he == true){
   frameRate(fr);
   fr = fr + 1;
   if(fr > 60){
    fr = 60; 
   }
   bob.setXspeed(0);
   bob.setYspeed(0);
   bob.setCenterX((int)(Math.random()*460)+20);
   bob.setCenterY((int)(Math.random()*460)+20);
   bob.setDir(Math.random()*360);
   bob.fade();
   }
   
if (fe == true){
  bob.fire();
}
if (shoot == true)
b.add(new Bullet(bob));

}
public void keyPressed()
{
  if( key == 'w')
  {
    
    acc = true;
    fe = true;
    
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
   he = true;
  }
  if (key == ' '){
    shoot = true;;
  }
}
public void keyReleased()
{
  
  if( key == 'w')
  {
  
    acc = false;
    fe = false;
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
    fr = 4;
    he = false;
    frameRate(60);
    bob.unfade();
}
if (key == ' '){
    shoot = false;
  }
}
