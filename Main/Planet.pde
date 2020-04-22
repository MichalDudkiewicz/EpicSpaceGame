class Planet extends CelestialBody { 
  boolean light;
  Planet (int _scale, int _distanceFromSun, color _color, float _velocity, float _rot, boolean _light) { 
    super(_scale, _distanceFromSun, _color, _velocity, _rot); 
    light = _light;
  } 
  void display()
  {
    pushMatrix();
      getOrbit();
      super.display();
      sphereDetail(32);
      directionalLight(204, 204, 204, .5, 0, -1);
      emissive(0, 26, 51);
      sphere(scale);
      if(light)
      {
        spotLight(255, 255, 255, 0, 0, 0, 0, 0, 1, 0.1, 1);
      }
    popMatrix();
  }
} 
