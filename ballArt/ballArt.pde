Ball ball[]; 
Ball backBall[];
Ball backgroundBall[];

void setup()
{
  //frameRate(5);
  size(700, 700);
  ball = new Ball[120];
  backBall = new Ball[50];
  backgroundBall = new Ball[20];

  resetBalls();
}

void draw()
{
  //background(100);
  fill(100,50);
  rect(0,0,width,height);
  for (int i =0; i < 120; i++)
  { 
    ball[i].Draw();
    ball[i].Update();
  }
  for (int i =0; i < 50; i++)
  {
    backBall[i].Draw();
    backBall[i].BackBall();
  }
  for (int i =0; i < 20; i++)
  {
    backgroundBall[i].Draw();
    backgroundBall[i].BackgroundBall();
  }
  

}

void mousePressed()
{
  resetBalls();
}

void resetBalls()
{
  for (int i =0; i < 120; i++)
  {
    ball[i] = new Ball( (float)random(0, width), (float)random(0, height), (float)random(0, 5));
  }
  for (int i =0; i < 50; i++)
  {
    backBall[i] = new Ball( (float)random(0, width), (float)random(0, height), (float)random(0, 5));
  }
  for (int i =0; i < 20; i++)
  {
    backgroundBall[i] = new Ball( (float)random(0, width), (float)random(0, height), (float)random(0, 5));
  }
}