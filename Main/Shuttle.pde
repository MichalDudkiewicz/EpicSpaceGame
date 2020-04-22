class Shuttle
{
  void display()
  {
    pushMatrix();
    translate(width - 100, yPos);
    scale(2);
    rotateX(PI);
    rotateY(3 * PI/4);
    if (mousePressed && mouseButton == RIGHT)
    {
      rotate(time * PI);
    }
    shape(shuttle, 0, 0);
    popMatrix();
  }
  
  void shoot()
  {
    if (mousePressed && mouseButton == LEFT)
    {
      stroke(col);
      strokeWeight(4);
      line(width - 150, yPos + 10, mouseX, mouseY);
    } 
  }
}
