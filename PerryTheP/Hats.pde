// Class, duh
class Hat {
  float x = 200;
  float y = 200;
  float speed;
  //hat dimensions
  float hatWidth = 25;
  float hatHeight = 15;
  float hatBrimWidth = 43.75;
  float hatBrimHeight = 5;
  float hatBandHeight = 2.5;

  // Constructor
  Hat() {
    hatfall();
  }

  // Method
  // The rate at which the hat falls
  void drop() {
    y += speed;
    if (y >650) {
      hatfall();
    }
  }

  // The hats themselves
  void hat() {
    fill(47, 9, 9);
    ellipse(x + 12.5, y - 65, hatBrimWidth, hatBrimHeight);
    rect(x, y + - 80, hatWidth, hatHeight, 72, 72, 0, 0);
    fill(0);
    rect(x, y - 67.5, hatWidth, hatBandHeight);
  }
  // The location and the rate at which they fall
  void hatfall() {
    x = random(width);
    y = -100;
    speed = random(0.9, 2);
  }


  // To determine how many hats have been collected
  boolean collected(Perry p) {
    float perryTop = p.y + 17;
    float perryBottom = perryTop + p.bodyHeight;
    float perryLeft = p.x - 4;
    float perryRight = perryLeft + p.bodyWidth;
    float hatTop = y - 80;
    float hatBottom = hatTop + hatHeight;
    float hatLeft = x;
    float hatRight = x + hatWidth;

    return hatRight > perryLeft &&
      hatLeft < perryRight &&
      hatBottom > perryTop &&
      hatTop < perryBottom;
  }
}
