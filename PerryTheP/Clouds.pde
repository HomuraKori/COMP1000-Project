// The cloud's class
class Clouds {
  float x = 200;
  float y = 300;
  float z = 50;
  float speed = 1;

  // Constructor for the cloud
  Clouds() {
    clouddraw();
    cloudmove();
  }

  // Method
  // For the clouds to move and reset when they hit the end of the screen
  void move() {
    x -= speed;
    if (x < -100) {
      cloudmove();
    }
  }

  // To control from where and how fast the clouds spawn
  void cloudmove() {
    x = random(1100, 1300);
    y = random(100, 500);
    speed = random(0.5, 1.5);
  }

  // The cloud
  void clouddraw() {
    noStroke();
    fill(240);
    circle(x, y, z);
    circle(x + 20, y - 1, z - 10);
    circle(x - 20, y + 3, z - 5);
    circle(x - 15, y - 5, z - 6);
  }
}
