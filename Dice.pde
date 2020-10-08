int nDot, n, sum = 0;
float avg;
void setup()
{
  noLoop();
  size(1100,500);
}
void draw()
{
  for(int y = 0; y < 500; y += 100) {
    for(int x = 0; x < 900; x += 100) {
      int dots = (int)(Math.random()*6+1);
      sum += dots;
      Die jon = new Die(x,y,dots);
      jon.show();
    }
  }
  avg=(float)sum/45;
  text("sum = "+sum+",  avg = "+avg,910,20+n);
}
void mousePressed()
{
  n += 20;
  sum=0;
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY,dots;
  Die(int x, int y, int dots) //constructor
  {
    myX=x;
    myY=y;
    nDot = dots;
  }
  void show()
  {
    rect(myX,myY,100,100,5);
    if(nDot==1||nDot==3||nDot==5) {
      ellipse(myX+50,myY+50,10,10);
    }
    if(nDot==4||nDot==5||nDot==6) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+90,myY+90,10,10);
      ellipse(myX+90,myY+10,10,10);
      ellipse(myX+10,myY+90,10,10);
    }
    if(nDot==2||nDot==3) {
      ellipse(myX+10,myY+10,10,10);
      ellipse(myX+90,myY+90,10,10);
    }
    if(nDot==6) {
      ellipse(myX+50,myY+90,10,10);
      ellipse(myX+50,myY+10,10,10);
    }
  }
}
