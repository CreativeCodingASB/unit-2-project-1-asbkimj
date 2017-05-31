class Ball
{
  float _xPos;
  float _yPos;
  float _radius;
  float _dirX;
  float _dirY;
  float _spd;
  float _bspd;
  float _bbspd; 
  float _colour;
  
  Ball()
  {
    _xPos = 0;
    _yPos = 0;
    _radius = 0;
  }

  Ball(float x, float y, float radius)
  {    
    _xPos = x;
    _yPos = y;
    _radius = random(1, 10);
    _spd = random(0, 10);
    _bspd = random(0, 3);
    _bbspd= random(0, 1);
    _colour = random (150, 255);
  }

  void Draw()
  { 
    noStroke();
    fill(_colour);
    ellipse (_xPos, _yPos, _radius, _radius);
  }

  void Update()
  {
    if ( mouseX > _xPos)
    {
      _dirX = 1;
    } else
    {
      _dirX = -1;
    }

    if ( mouseY > _yPos)
    {
      _dirY = 1;
    } else
    {
      _dirY = -1;
    }
    _xPos += (_dirX * _spd);
    _yPos += (_dirY * _spd);
  }

  void mouseClicked()
  {
    _dirX = _dirX*-1;
    _dirY  -= _dirY*-1;
    fill(0);
  }

  void BackBall()
  {
    if ( mouseX > _xPos)
    {
      _dirX = 1;
    } else
    {
      _dirX = -1;
    }

    if ( mouseY > _yPos)
    {
      _dirY = 1;
    } else
    {
      _dirY = -1;
    }
    _xPos += (_dirX * _bspd);
    _yPos += (_dirY * _bspd);
  }


  void BackgroundBall()
  { 
    if ( mouseX > _xPos)
    {
      _dirX = 0.1;
    } else
    {
      _dirX = -0.1;
    }

    if ( mouseY > _yPos)
    {
      _dirY = 0.1;
    } else
    {
      _dirY = -0.1;
    }
    _xPos += (_dirX * _bbspd);
    _yPos += (_dirY * _bbspd);
  }
  
  

}