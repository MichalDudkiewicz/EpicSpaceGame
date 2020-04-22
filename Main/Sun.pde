class Sun extends CelestialBody
{
    Sun (int _scale, color _color) { 
    super(_scale, 0, _color, 0, 0); 
  }
  
  void display()
  {
    pushMatrix();
      super.display();
      rotateX(random(0,PI));
      rotateY(random(0,PI));
      rotateZ(random(0,PI));
      box(10,10,10);
    popMatrix();
  }
}
