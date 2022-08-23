class EscenaTemplate {
  float alpha;
  boolean active = false;
  EscenaTemplate() {
    alpha = 255;
  }

  void display() {
  }
  void update() {
    if (active) {
      alpha+=10;
    } else {
      alpha-=10;
    }
    alpha = constrain(alpha, 0, 255);
  }
  
}
