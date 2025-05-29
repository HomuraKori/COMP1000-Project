class Perry {
  float x = 200;
  float y = 300;
  float floor = 550;
  float gravity = 0.98;
  float velocity = 0;
  float jump = -15;
  float bodyHeight = 70;
  float bodyWidth = 42;

  // Constructor
  Perry() {
    physics();
    display();
  }

  // Method
  void physics() {
    velocity += gravity;
    y += velocity;

    if (y > 400) {
      y = 400;
      velocity = 0;
    }
  }

  void display() {
    strokeWeight(2);

    // Body
    fill(0, 128, 128);
    rect(x - 4, y + 17, 42, 107, 7);
    rect(x + 25, y + 124, 7, 17); // right leg
    rect(x + 3, y + 124, 7, 17);  // left leg
    fill(255, 165, 0);
    ellipse(x, y + 142, 20, 7);
    ellipse(x + 34, y + 142, 20, 7);
    fill(0, 128, 128);
    rect(x + 34, y + 65, 8, 42, 30);  // right arm
    rect(x - 8, y + 65, 8, 42, 30);   // left arm

    // Bill
    fill(255, 165, 0);
    ellipse(x + 17, y + 50, 33, 17);
    fill(0);
    ellipse(x + 13, y + 50, 3.3, 1.7);
    ellipse(x + 20, y + 50, 3.3, 1.7);

    // Eyes
    fill(255);
    circle(x + 8, y + 30, 11.7);
    circle(x + 25, y + 30, 11.7);
    fill(88, 57, 39);
    circle(x + 8, y + 30, 8.3);
    circle(x + 25, y + 30, 8.3);
    fill(0);
    circle(x + 8, y + 30, 5);
    circle(x + 25, y + 30, 5);
    strokeWeight(1);
    stroke(21);
    line(x + 0, y + 20, x + 13, y + 20);  // left
    line(x + 20, y + 20, x + 33, y + 15); // right
    noStroke();
  }

  void left() {
    x = x - 10;
  }

  void right() {
    x = x + 10;
  }

  void jump() {
    if (y == 400) {
      velocity = jump;
    }
  }
}
