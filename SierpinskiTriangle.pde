public void setup()
{
size (500,500);
}
int x = 20;
int length = 50;

public void draw()
{
sierpinski(x,50,length*9);
}

//public void mouseDragged()//optional
//{

//}
public void sierpinski(int x, int y, int len) 
{
int one = (int)Math.random()*265);
int two = (int)Math.random()*265);
stroke (one, two, 170);
if (len <= 20){
noFill();
strokeWeight(2);
triangle(x,y,x+len/2,y-len,x+len,y);
}
else{

		sierpinski(x-1, y, len/2);
		sierpinski(x-1 +len/2, y, len/2);
		sierpinski( x-1+ len/4, y+ len/2, len/2);

}
