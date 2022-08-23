

boolean isDebug;

EscenaManager escenamanager;
void setup() {
  size(1200, 800, P3D);

  escenamanager = new EscenaManager();
  escenamanager.agregarEscena(new Escena1());
  escenamanager.agregarEscena(new Escena2());
  escenamanager.agregarEscena(new Escena3());
  
}

void draw() {
  background(0);
  escenamanager.display();
  escenamanager.update();
  if (isDebug) {
    fill(255);
    textSize(20);
    text("FPS:"+frameRate, 20, 30);
  }
}

void keyPressed() {
  if (key == 'd') {
    isDebug = !isDebug;
  }

  if (key == '1') {
    escenamanager.setEscenaActiva(0);
  }

  if (key == '2') {
    escenamanager.setEscenaActiva(1);
  }

  if (key == '3') {
    escenamanager.setEscenaActiva(2);
  }

  if (key == '4') {
    escenamanager.setEscenaActiva(3);
  }

  if (key == '5') {
    escenamanager.setEscenaActiva(4);
  }
}

color randomColor() {
  return color(random(255), random(255), random(255));
}
