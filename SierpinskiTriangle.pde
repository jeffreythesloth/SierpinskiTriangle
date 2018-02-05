public void setup()
{
  size(500,500);
  background(0);
}
public void draw()
{
  sierpinski(100,380,300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 20)
  {
    strokeWeight(2);
    fill(20,166,242);
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}