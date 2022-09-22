color black = #000000;
color white = #ffffff;
color brown = #bc6c25;
color lbrown = #dda15e;
color cream = #fefae0;
color dgreen = #283618;
color green = #606c38;
color bkg = cream;


void setup() {
  size(800, 600);
  strokeWeight(8);
}


void draw() {
  background(bkg);

  tactileRect(100, 100, 200, 100, brown);

  tactileCircle(400, 150, 50, green);
  
 
}

void mousePressed() {
  if (mouseX > 100 && mouseX< 300 & mouseY > 100 && mouseY < 200) {
   bkg = brown; 
  } else if (dist(400, 150, mouseX, mouseY) < 50) {
   bkg = green; 
  }
}


boolean touchingRect(int x, int y, int width, int height) {
  if(mouseX > x && mouseX < x + width && mouseY > y && mouseY < y+height) {
   return true; 
  } else {
   return false; 
  }
}

boolean touchingCircle(int x, int y, int r) {
  if(dist(x, y, mouseX, mouseY) < r) {
   return true; 
  } else {
   return false; 
  }
  
}

void tactileRect(int x, int y, int w, int h, color f) {
 fill(f);
 if (touchingRect(x, y, w, h)) {
  stroke(white); 
 } else {
   stroke(black);  
 }
 rect(x, y, w, h);
  
}

void tactileCircle(int x, int y, int r, color f) {
 fill(f);
 if (touchingCircle(x, y, r)) {
  stroke(white); 
 } else {
  stroke(black); 
 }
  circle(x, y, r*2);
}
  
 
