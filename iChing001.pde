// Basaed on code from http://www.mathopenref.com/coordcirclealgorithm.html
// artwork on Redbubble at: https://www.redbubble.com/people/rupertrussell/works/24047587-i-ching-hexagrams-circle?asc=u
// Code By Rupert Russell MIT licence 
// Not elegant code sorry,  Hard to resize in the code

void setup() {
  background(255); 
  size(13500, 13500);
  noFill();
}

void draw() {
  noLoop();
  float step = 2 * PI/64;  // see note 1
  int scale = 13500 ;
  float h = scale /2 ; 
  float k = scale /2;
  float r;
  float offset = 200;
  float x;
  float y;
  float t;

  // Top most arc 
  strokeWeight(80);
  scale = 10500;
  r = 10500 / 2; 
  arc(h, k, scale - offset, scale - offset, radians(0), radians(360));  // Outermost arc, top of Hexagrams
  strokeWeight(60);


  // Draw gaps in the Right half of 1st outer most line in hexagrams
  for  (int i = 29; i > -35; i= i - 4) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255, 255, 255);
    line(h, k, x, y);
  }

  // Draw gaps in the Left  half of 1st outer most line in hexagrams
  for  (int i = -33; i > -96; i= i - 4) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255);
    line(h, k, x, y);
  }


  // Arc for the 2nd from top line in the Hexagrams 
  stroke(0);
  strokeWeight(80); 
  scale = 10250; // radius for Arc
  r = 5070; // Outer Radius of spokes
  arc(h, k, scale - offset, scale - offset, radians(0), radians(360));

  strokeWeight(50);
  // Gaps for the 2nd from top line in the Hexagrams 
  // Draw gaps in the 2nd from top line in the Hexagrams 2222222222222222222222222

  // Right half 
  int position = 27;  
  for (int c = 0; c < 8; c = c + 1) {
    for  (float i = position; i > position - 4; i = i - 2) { 
      t = (step * 0.5 ) * i;
      x = h + r  * cos(t);
      y = k - r  * sin(t);    //note 2.
      stroke(255);
      line(h, k, x, y);
    }
    position = position - 8;
  }

  // Left half 
  position = -33;  
  for (int c = 0; c < 8; c = c + 1) {
    for  (float i = position; i > position - 4; i = i - 2) { 
      t = (step * 0.5 ) * i;
      x = h + r  * cos(t);
      y = k - r  * sin(t);    //note 2.
      stroke(255);
      line(h, k, x, y);
    }
    position = position - 8;
  }

  // Draw 3rd arc from top of hexagrams
  stroke(0);
  strokeWeight(80); 
  scale = 10000;
  arc(h, k, scale - offset, scale - offset, radians(0), radians(360));

  // Draw gaps in the 3rd arc from top of hexagrams Right half of 2nd from top line in the Hexagrams
  strokeWeight(50);
  r = 4940; // Outer Radius of spokes
  position = 23;
  for (int c = 0; c < 4; c = c + 1) {
    for  (float i = position; i > position - 8; i= i - 2) { 
      t = (step * 0.5 ) * i;
      x = h + r  * cos(t);
      y = k - r  * sin(t);    //note 2.
      stroke(255);
      line(h, k, x, y);
    }
    position = position - 16;
  }

  position = -33;
  // Draw gaps in the Left half of 3rd from top line in the Hexagrams
  for (int c = 0; c < 4; c = c + 1) {
    //  for  (int i = -33; i > -40; i = i - 2) { 
    for  (float i = position; i > position - 8; i= i - 2) { 
      t = (step * 0.5) * i;
      x = h + r  * cos(t);
      y = k - r  * sin(t);    //note 2.
      strokeWeight(60);
      stroke(255);
      line(h, k, x, y);
    }
    position = position - 16;
  }


  // Draw 4th arc from top of hexagrams
  stroke(0);
  strokeWeight(80); 
  scale = 9750;
  arc(h, k, scale - offset, scale - offset, radians(0), radians(360));

  r = 4810; // Outer Radius of spokes
  // Draw gaps in the Left half of 4th from top line in the Hexagrams
  strokeWeight(60);

  // Draw gaps in the lower right half of 4th from the top line in hexagrams
  for  (int i = 15; i > -1; i= i - 2) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255);
    line(h, k, x, y);
  }

  // Draw gaps in the lower left half of 4th from the top line in hexagrams
  for  (int i = -17; i > -48; i= i - 2) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255);
    line(h, k, x, y);
  }

  // Draw gaps in the lower left half of 4th from the top line in hexagrams
  for  (int i = -65; i > -80; i= i - 2) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255);
    line(h, k, x, y);
  }

  // Draw 5th arc from top of hexagrams
  stroke(0);
  strokeWeight(80); 
  scale = 9500;
  arc(h, k, scale - offset, scale - offset, radians(0), radians(360));
  r = 4680; // Outer Radius of spokes
  // Draw gaps in the bottom half circle 5th from the top line in hexagrams
  for  (int i = -1; i > -65; i= i - 2) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255);
    line(h, k, x, y);
  }

  // Draw 6th arc from top of hexagrams
  stroke(0);
  strokeWeight(80); 
  scale = 9250;
  // Draw 6th arc from top of hexagrams
  arc(h, k, scale  - offset, scale  - offset, radians(0), radians(360));


  // Draw gaps in the bottom half circle 6th from the top line in hexagrams
 r = 4550; // Outer Radius of spokes
  for  (int i = 31; i > -33; i= i - 2) { 
    t = (step * 0.5) * i;
    x = h + r  * cos(t);
    y = k - r  * sin(t);    //note 2.
    stroke(255);
    line(h, k, x, y);
  }


  // Spokes
  r = scale /1.5;
  for (float theta = 0; theta < 2 * PI; theta += step) { 
    x = h + r * cos(theta);
    y = k - r * sin(theta);    //note 2.
    strokeWeight(60);  // Thicker
    stroke(255);
    line(h, k, x, y);
  }

  save("hexagrams029.png");
  exit();
}

/*
Like most graphics systems, the canvas element differs from the usual mathematical coordinate plane:
 
 The origin is in the top left corner. The code above compensates by assuming that h, and k are actually relative to the top left.
 The y axis is inverted. Positive y is down the screen, not up. To correct for this, the k variable (the y coordinate of the center) must be positive to place the center some way down the screen. Also the y calculation has to subtract the sin(x) term instead of add. 
 Marked in the code as Note 1.
 
 Note 2. The step size is set to an exact division of 2π to avoid gaps or over-runs in the circle. This code divides the circle into exactly 20 segments. Note too that as in most computer languages, the trig functions operate in radians, not degrees. 
 360° = 2π radians.
 */
