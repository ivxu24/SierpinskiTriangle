public void setup()
{
size (600,600);
}

int x = 40;
int length = 60;

public void draw()
{
background (0);
sierpinski(50,580,520);
}

public void mousePressed()//optional
{
sierpinski(200,96,200);
}

public void sierpinski(int x, int y, int len) 
{
stroke (153,227,225);
if (len < 20){
noFill();
strokeWeight(2);
triangle(x,y,x+len,y,x+len/2,y-len);
}
else{

    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski( x + len/4, y- len/2, len/2);

}
}
