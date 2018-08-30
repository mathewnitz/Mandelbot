int d = 690; //diameter
float z = 100.0; //number of points
float f = 2.0; //multiplication factor

void setup()
{
  size(1000, 700);
}

void draw()
{
  background(0);
  float r = d / 2;
  translate(width / 2, height / 2);
  text("factor: " + f, width / 4, height / 2.25);
  text("points: " + z, width / 4, height / 2.375);
  text("diamter: "  + d, width / 4, height / 2.125);
  strokeWeight(1);
  colorMode(HSB, r);
  for(int n = 0; n < z * f; n++)
  {
    float x = r * cos((PI * n) / z) * -1;
    float y = r * sin((PI * n) / z) * -1;
    float x1 = r * cos((PI * (n * f) / z)) * -1;
    float y1 = r * sin((PI * (n * f) / z)) * -1;
    float delta = dist(x, y, x1, y1);
    stroke(delta / 2, r, r);
    line(x, y, x1, y1);
  }
}

void keyPressed()
{
  if(key == CODED)
  {
    if(keyCode == UP)
       z++;
    else if((keyCode == DOWN) && (z > 0))
       z--;
    if(keyCode == RIGHT)
      f++;
    else if(keyCode == LEFT && (f > 0))
      f--;
  }
}

void mouseWheel(MouseEvent event)
{
  d = d + event.getCount() * 10;
}
  
  
  
  
  
  
