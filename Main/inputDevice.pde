void keyPressed()
{
if (key != CODED && keyCode == 'W' || key == CODED && keyCode == UP)
    goUp = 1;
else if (key != CODED && keyCode == 'S' || key == CODED && keyCode == DOWN)
    goDown = 1;
else if (key == ' ')
    col = #FF0000;
}

void keyReleased()
{
  if (key != CODED && keyCode == 'W' || key == CODED && keyCode == UP
    || key != CODED && keyCode == 'S' || key == CODED && keyCode == DOWN || keyCode == ' ')
    {
      goUp = 0;
      goDown = 0;
      col = #00FF00;
    }
}

void mousePressed()
{
 for (int i = 0; i < enemyNum; ++i)
    if (enemyTab[i] != -1)
    {
      if ( abs(enemyTab[i] - mouseX) < 30 && abs(height/(enemyNum + 1)*(i+1) - mouseY) < 30)
      {
        enemyTab[i] = -1;
      }
    }
}
