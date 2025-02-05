int i = 25;

public void setup()
{
  size(500,500);
  background(255,191,228);
  
}
public void draw()
{
  sierpinski(50,450,400);
  //mousePressed();
}
public void mousePressed()
{
  if(i>0){
    i=i-5;
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= i){
    fill(255,72,179);
    triangle(x,y,x+len,y,x+len/2,y-len);
  }else{
    sierpinski(x,y,len/2);
    sierpinski(x + len/2,y,len/2);
    sierpinski(x +len/4,y-len/2,len/2);
  }
}
