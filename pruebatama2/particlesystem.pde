class ParticleSystem {

  ArrayList<Particle> particles;


  color c1;
  color c2;
  float x;
  float y;
  float maxsize ;
  float minsize ;
  ParticleSystem(float _x, float _y, color _c1, color _c2) {
    particles = new ArrayList<Particle>();
    x = _x;
    y = _y;
    c1 = _c1;
    c2 = _c2;
    minsize = 5;
    maxsize = 10;
  }
  ParticleSystem(float _x, float _y, color _c1, color _c2,float _minsize,float _maxsize) {
    particles = new ArrayList<Particle>();
    x = _x;
    y = _y;
    c1 = _c1;
    c2 = _c2;
    minsize = _minsize;
    maxsize = _maxsize;
  }


  void display() {

    for (int i=particles.size()-1; i>=0; i--) {
      particles.get(i).display();
    }
    agregarParticula();
  }

  void agregarParticula() {
    if (particles.size() < 500 ) {
      particles.add(new Particle(x,
        y,
        lerpColor(c1, c2, random(1)),
        random(minsize, maxsize),
        random(10)));
    }
  }

  void update() {
    for (int i=particles.size()-1; i>=0; i--) {
      particles.get(i).update();
      if (particles.get(i).life < 0) {
        particles.remove(particles.get(i));
      }
    }
  }
}
