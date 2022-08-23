class Particle {

  float x;
  float y;

  float speedx;
  float speedy;

  color c;
  float w;
  float h;
  
  float life;
  Particle(float _x, float _y, color _c, float _w, float _h) {
    x = _x;
    y = _y;
    c = _c;

    w = _w;
    h = _h;

    float stspeed = 2; //FUERZA DE LA VELOCIDAD,
    speedx = random(-stspeed, stspeed);
    speedy = random(-stspeed, stspeed);
    life = 255;
  }

  void display() {


    noStroke();
    fill(0);
    ellipse(x, y, w*1.1, w*1.1);
    if (overCircleMouse()) {
      fill(random(255),life);
    } else {
      fill(c,life);
    }
    ellipse(x, y, w, w);
    //rectMode(CENTER);
    //rect(x, y, w, h);
  }

  //COLISION CIRCULAR
  boolean overCircleMouse() {
    if (dist(x, y, mouseX, mouseY) < w/2) {
      return true;
    } else {
      return false;
    }
  }
  //COLISION CUADRADA || BOUNDING BOX

  boolean overQuadMouse() {
    if (mouseX > x-w/2 && mouseX < x+w/2 && mouseY > y-h/2 && mouseY < y+h/2) {
      return true;
    } else {
      return false;
    }
  }


  void update() {
    life-=5;
    x+=speedx;
    y+=speedy;
    // rebotar();
    traspasar();
  }

  void rebotar() {
    if (x > width-w/2 || x < w/2 ) {
      speedx*=-1;
    }
    if (y > height-h/2 || y < h/2 ) {
      speedy*=-1;
    }
  }

  void traspasar() {
    if (x>width) {
      x =0;
    }
    if (x<0) {
      x = width;
    }
    if (y > height) {
      y =0;
    }
    if (y < 0) {
      y = height;
    }
  }
}
