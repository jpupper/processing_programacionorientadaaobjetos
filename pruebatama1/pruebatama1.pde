

ArrayList<Particle> particles;


void setup() {
  size(1200, 800, P3D);

  particles = new ArrayList<Particle>();
  int cnt = 20;
  /*for(int i=0; i<cnt; i++){
   particles.add(new Particle(random(width),
   random(height),
   color(random(255),random(255),random(255)),
   random(50,100),
   random(100)));
   }*/
}

void draw() {
  background(0);

  if (mousePressed && particles.size() < 500 ) {
    particles.add(new Particle(mouseX,
      mouseY,
      color(random(255), random(255), random(255)),
      random(5, 10),
      random(10)));
  }
  for (int i=particles.size()-1; i>=0; i--) {
    particles.get(i).display();
    particles.get(i).update();
    if (particles.get(i).life < 0) {
      particles.remove(particles.get(i));
    }
  }

  fill(255);

  textSize(30);

  text("FPS:"+frameRate, 20, 20);
  text("cantidad particulas:"+particles.size(), 20, 40);
}
