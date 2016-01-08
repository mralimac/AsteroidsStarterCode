class FieryAsteroid extends Asteroid {
  
  
  /* 
  
    This class 'extends' Asteroid, meaning it inherits all the stuff that Asteroid contains.
    
  */
 
  
  FieryAsteroid (float initialPositionX, float initialPositionY, float initialSpeedX, float initialSpeedY, float initialAsteroidDiameter, float colorOfAsteroid) 
  {
    
    // the constructor for FieryAsteroid simply passes all the arguments along to the 'super' constructor (the one in Asteroid)
    
    super(initialPositionX, initialPositionY, initialSpeedX, initialSpeedY, initialAsteroidDiameter, colorOfAsteroid);
    
  }
  
  // here we are 'overriding' the displayAsteroid() method to allow us to use a different colour.
  
  void displayAsteroid () {
    noStroke();
    
    colorMode(HSB, 360);
    
    fill(asteroidColor, 359, 359);                                                   
    ellipseMode(CENTER);                                                             
    ellipse(positionOnAxisX, positionOnAxisY, asteroidDiameter, asteroidDiameter);   
    
    colorMode(RGB, 255);
  }


  
} // end of class