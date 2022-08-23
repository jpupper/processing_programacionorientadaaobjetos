

ParticleSystem ps1;
ParticleSystem ps2;

ArrayList<ParticleSystem> pss;

void setup() {
  size(1200, 800, P3D);
  pss = new ArrayList<ParticleSystem>();

  for (int i=0; i<20; i++) {
    pss.add(new ParticleSystem(random(width), random(height), randomColor(), randomColor(),
    random(10),
    random(20,50)));
  }
}

void draw() {
  background(0);
  for (int i=pss.size()-1; i>=0; i--) {
    pss.get(i).display();
    pss.get(i).update();
  }
  fill(255);
  textSize(30);
  text("FPS:"+frameRate, 20, 20);
}

color randomColor() {
  return color(random(255), random(255), random(255));
}
