class Escena2 extends EscenaTemplate {

  float amp2;
  Escena2() {
    super();
  }

  void display() {
    if (alpha > 0) {
      fill(255, alpha);
      rect(0, 0, width, height);
      int cnt = 100;
      for (int i=0; i<cnt; i++) {
        noStroke();
        float a = map(i, 0, cnt-1, 0, TWO_PI);
        float amp = 150+sin(millis()*0.001+a*4.)*150+amp2;
        float x = width/2+sin(a-millis()*0.001)*amp;
        float y = height/2+cos(a-millis()*0.001)*amp;
        fill(0, map(alpha, 0, 255, 0, 100));
        rect(x, y, 15, 15);
      }
    }
  }
  void update() {
    super.update();
    amp2 = sin(millis()*0.01)*50;
  }
  
}
