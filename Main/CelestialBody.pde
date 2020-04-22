protected class CelestialBody
{
  int scale;
  int distance;
  color col;
  float velocity;
  float rot;
  CelestialBody (int _scale, int _distance, color _color, float _velocity, float _rot) { 
  scale = _scale;
  distance = _distance;
  col = _color;
  velocity = _velocity; 
  rot = _rot;
  } 
    
  void getOrbit()
  {
      rotateX(rot);
      rotateY(0.2 * rot);
      rotate(time*velocity);
      translate(distance, 0);
  }
  
  void display()
  {
      scale(scale);
      fill(col);
  }
}
