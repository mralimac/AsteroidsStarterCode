class Asteroid {
  
  /* 
  
    You should be used to the types of varibles and methods we use in here, as well as the constructor. 
    There's nothing new to talk about that you shouldn't lready have done in the particle stuff we looked at.
    
  */
  
  
  float positionOnAxisX;
  float positionOnAxisY;
  float speedInX;
  float speedInY;
  float asteroidColor;
  float asteroidDiameter;
  float asteroidRadius;
  
  Asteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid) 
  {
    positionOnAxisX = initialPositionX;
    positionOnAxisY = initialPositionY;
    speedInX = initialSpeedX;
    speedInY = initialSpeedY;
    asteroidColor = colorOfAsteroid;
    asteroidDiameter = initialAsteroidDiameter;
    asteroidRadius = initialAsteroidDiameter/2;
  }
  
  void displayAsteroid () {
    noStroke();
    fill(asteroidColor);                                                             
    ellipseMode(CENTER);                                                            
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);   
  }

  void moveAsteroid() {

    // Add the current speed to the x and y locations.
    positionOnAxisX = positionOnAxisX + speedInX;
    positionOnAxisY = positionOnAxisY + speedInY;

  }
  
  boolean checkBoundaryConditions () {

    // Remember, || means "or."

    if (((positionOnAxisX - asteroidRadius) > width) 
     || ((positionOnAxisX + asteroidRadius) < 0)
     || ((positionOnAxisY - asteroidRadius) > height) 
     || ((positionOnAxisY + asteroidRadius) < 0)) 
     {
      return true;
     }
    else {
      return false;
    }
    
  }
  
} // end of class