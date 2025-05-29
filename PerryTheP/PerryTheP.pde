//Benedict Pham - 49152866
// My mascot is of Perry the Platypus from the Show "Phineas and Ferb," in which he moves and jumps around a vertical plane collecting fedoras


// Creating the new object + variables
Perry AgentP;
Hat[] Fedoras;
Clouds[] Cloud;
int score = 0;


// Setup Stuff
void setup() {
  frameRate(120);
  size(1000, 600);
  // Array for the clouds
  Cloud = new Clouds[10];
  for (int i = 0; i < Cloud.length; i++) {
    Cloud[i] = new Clouds();
  }
  // creates Perry
  AgentP = new Perry();
  // Array for the falling hats
  Fedoras = new Hat[5];
  for (int i = 0; i < Fedoras.length; i++) {
    Fedoras[i] = new Hat();
  }
}

// Draws the whole code
void draw() {
  background(135, 206, 235);
  ground();

  // Clouds
  for (int i = 0; i < Cloud.length; i++) {
    Cloud[i].move();
    Cloud[i].clouddraw();
  }
  
  //Perry
  AgentP.physics();
  AgentP.display();
  
  // Hats
  for (int i = 0; i < Fedoras.length; i++) {
    Fedoras[i].drop();
    Fedoras[i].hat();

    if (Fedoras[i].collected(AgentP)) {
      score++;
      Fedoras[i].hatfall();
    }
  }
  fill(50);
  rect(440, 40, 240, 50);
  fill(250);
  textSize(30);
  text("Hats Collected: " + score, 450, 75);
}

// For the ground
void ground() {
  fill(79, 55, 39);
  rect(0, 530, width, 650);
}

// To control Perry's movements
void keyPressed() {
  if (key == 'a' || keyCode == LEFT) {
    AgentP.left();
  }

  if (key == 'd' || keyCode == RIGHT) {
    AgentP.right();
  }

  if (keyCode == ' ' || keyCode == UP) {
    AgentP.jump();
  }
}
