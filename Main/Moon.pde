class Moon extends CelestialBody
{
  Planet planet;
  Moon (Planet _planet, int _scale, int _distanceFromPlanet, color _color, float _velocity, float _rot) { 
    super(_scale, _distanceFromPlanet, _color, _velocity, _rot);
    planet = _planet;
  } 
  void display()
  {
    pushMatrix();
      planet.getOrbit();
      rotateX(rot);
      rotateY(0.3 * rot);
      rotate(time*velocity);
      translate(distance, 0);
      super.display();
      shape(moon, 0, 0);
    popMatrix();
  }
}
