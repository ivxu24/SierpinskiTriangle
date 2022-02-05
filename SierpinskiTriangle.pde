public void setup()
{
size (500,500);
background (0);
}
int x = 20;
int length = 50;

public void draw()
{
sierpinski(x,50,length*9);
}

public void sierpinski(int x, int y, int len) 
{
int one = (int)Math.random()*265);
int two = (int)Math.random()*265);
stroke (one, two, 170);
if (len <= 20){
noFill();
strokeWeight(2);
triangle(x,y,x+len,y,x+len/2,y-len);
}
else{

		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski( x + len/4, y- len/2, len/2);

}
