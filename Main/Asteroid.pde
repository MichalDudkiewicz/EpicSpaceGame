class Asteroid
{
  void display()
  {
    for (int i = 0; i < enemyNum; ++i)
      if (enemyTab[i] != -1)
      {
        pushMatrix();
        translate(enemyTab[i], height/(enemyNum + 1)*(i+1));
        rotateZ(time/10.f);
        scale(0.2);
        shape(asteroid, 0 , 0);
        popMatrix();
      }
  }
}
