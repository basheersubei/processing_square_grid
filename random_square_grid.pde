int rect_width = 16;
int rect_height = 16;
int margins = 3;
int square_count=0;
 
void setup(){
  background(212,206,193);
  size(288,575);
  stroke(0,0,0,99);
  strokeWeight(1.1);
  noFill();
  for (int row=0; row<(height/rect_height) - 2*margins; row++) {
    for (int col=0; col<(width/rect_width) - 2*margins; col++){
      square_count++;
      pushMatrix();
      
      int rect_x = (col+margins)*rect_width + round(randomGaussian()*0.01*pow(square_count, 1.1));
      int rect_y = (row+margins)*rect_height + round(randomGaussian()*0.01*pow(square_count, 1.1));
      // Translate origin to center of rectangle
      translate(rect_x, rect_y);
      
      float theta = degrees(randomGaussian()*0.0000001*pow(square_count, 2)); 
      
      // Rotate by the angle theta
      rotate(theta);
      
      rectMode(CENTER);
      rect(0,0,rect_width, rect_height);
      popMatrix();
    }
  }
}
 
void draw(){
  
  
  
  
}
