import processing.sound.*;

SoundFile file;
PShape moon, shuttle, asteroid;
PImage bg;
int yPos, goUp, goDown;
float time = 0.f;
color col;
final int enemyNum = 10;
int[] enemyTab;

void init()
{
  yPos = height / 2;
  enemyTab = new int[enemyNum];
  for (int i = 0; i < enemyNum; ++i)
    enemyTab[i] = -1;
  goUp = goDown = 0;
  time = 0.f;
  col = #00FF00;
}

void setup() 
{
  size(1280, 787, P3D);
  init();
  moon = loadShape("resources/moon/moon.obj");
  shuttle = loadShape("resources/shuttle/shuttle.obj");
  asteroid = loadShape("resources/asteroid/Rock.obj");
  bg = loadImage("resources/galactic.jpg");
  file = new SoundFile(this, "resources/interstellar.mp3");
  file.play();
}

Sun sun = new Sun(3,#FF0000);
Planet ziemia = new Planet(4,320, #cf5531, 0.2, -PI/2, true);
Moon ksiezyc1 = new Moon(ziemia, 6,35, #cf9a31, 0.1, -0.5 * PI);
Moon ksiezyc2 = new Moon(ziemia, 7,55, #DC143C, 0.4, 0.45 * PI);
Moon ksiezyc3 = new Moon(ziemia, 9,80, #B22222, 1.1, PI/3);
Planet wenus = new Planet(4,250, #B0E0E6, 0.7, 0.5 * PI, false);
Planet mercury = new Planet(4,135, #00FF00, 0.5, 0.75 * PI, false);
Moon ksiezyc4 = new Moon(mercury, 3,35, #4e0000, 1, PI/2);
Moon ksiezyc5 = new Moon(mercury, 2,60, #cf55de, 0.8, -PI/4);
Planet mars = new Planet(3,440, #4e6baf, 0.3, 0.45 * PI, false);
Moon ksiezyc6 = new Moon(mars, 9,30, #006400, 0.9, 0.3 * PI);
Moon ksiezyc7 = new Moon(mars, 5,60, #4e6b00, 0.6, -PI/16);
Shuttle spaceShuttle = new Shuttle();
Asteroid asteroids = new Asteroid();

void draw()
{
  background(bg);
  yPos += (goDown - goUp) * 3;
  if (yPos < 100)
    yPos = 100;
  if (yPos > height - 100)
    yPos = height - 100;
    
  for (int i = 0; i < enemyNum; ++i)
  {
        if (enemyTab[i] != -1)
    {
      if ((enemyTab[i]+=2) > width + 10)
        enemyTab[i] = -1;
      if (enemyTab[i] > width - 180 && abs(height/(enemyNum + 1)*(i+1) - yPos) < 30)
      {
        delay(1000);
        init();
      }
    }
    else
    {
      if (random(1000) > 995)
        enemyTab[i] = 0;
    }
  }
  
  spaceShuttle.display();
  asteroids.display();
  spaceShuttle.shoot();  
  
  noStroke();
  translate(width *.5f, height *.5f);
  pointLight(255, 255, 240,0,0,0);
  mercury.display();
  wenus.display();
  ziemia.display();
  mars.display();
  ksiezyc1.display();
  ksiezyc2.display();
  ksiezyc3.display();
  ksiezyc4.display();
  ksiezyc5.display();
  ksiezyc6.display();
  ksiezyc7.display();
  ambientLight(255, 255, 255);
  lightSpecular(255, 255, 240);
  directionalLight(102, 102, 102, 0, 0, -1);
  specular(255, 255, 255);
  shininess(random(5,20));
  sphere(24);
  sun.display();
  time += .01f;
}
