/**
* boards in line
*
* @author aadebdeb
* @date 2017/01/26
*/

float theta;

void setup(){
  size(1080, 700);
  rectMode(CENTER);
  fill(0);
  stroke(255, 251, 249);
  strokeWeight(4);
}

void draw(){
  background(0);
  translate(width / 2, height / 2);
  int num = 10;
  float intervalX = map(mouseX, 0, width, 40, -40);
  float intervalY = map(abs(mouseX - width / 2), 0, width / 2, 0, -20);
  float rectX = 200;
  float rectY = 200;
  float tilt = map(mouseX, 0, width, -20, 20);
  for(int i = num - 1; i > 0; i--){
    pushMatrix();
    
    float rhytm = map(pow(abs(sin(frameCount * .03 + i - .03)), 10), 0,.3, 0, -10)
                * map(abs(mouseX - width / 2), 0, width / 2, 20, -20);
    translate(intervalX * (i - num / 2.0), intervalY * (i - num / 2.0) + rhytm);
    beginShape();
    vertex(-rectX /2.0, -rectY  / 2.0 + tilt);
    vertex(rectX / 2.0, -rectY / 2.0 + tilt);
    vertex(rectX / 200.0, rectY / 2.0 + tilt);
    // vertex(-rectX / 5.0, rectY / 2.0 + tilt);
    endShape(CLOSE);
    
    popMatrix();
  }
}
