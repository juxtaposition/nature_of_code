// The Nature of Code
// Daniel Shiffman
// http://natureofcode.com

class Walker {
  int x,y;

  Walker() {
    this.x = width/2;
    this.y = height/2;
  }

  void render() {
    stroke(0);
    strokeWeight(2);
    point(this.x,this.y);
  }
  
  void setPointX(int x) {
    this.x = x;
  }
  
  void setPointY(int y) {
    this.y = y;
  }
  
  
  /**
   * Move the Point to down
   * @param null 
   * @return null
   */
  void moveDown() {
   this.x += 1;
  }
  
  /**
   * Move the Point to Right
   * @param null 
   * @return null
   */ 
  void moveRight() {
   this.y += 1;
  }
  
  /**
   * Move the Point to Left
   * @param null 
   * @return null
   */
  void moveLeft(){
    this.x -= 1; 
  }
 
  /**
   * Move the Point to up
   * @param null 
   * @return null
   */
  void moveUp() {
   this.y -= 1; 
  }
  
  
  // Randomly move up, down, left, right, or stay in one place
 void step() {
    
    float r = random(1);
    // A 40% of moving to the right and down!
    if (r < 0.6) {    
      this.moveRight();
      this.moveDown();
    } else if (r < 0.4) {
      this.moveLeft();
    } else {
      this.moveUp();
    }
  
    this.x = constrain(x,0,width-1);
    this.y = constrain(y,0,height-1);
  }
}