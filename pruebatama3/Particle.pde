class Escena1 extends EscenaTemplate {

  Escena1() {
    super();
  }

  void display() {
    if (alpha > 0) {
      fill(0, alpha);
      rect(0, 0, width, height);
      int cnt = 150;
      fill(255, alpha);
      for (int i=0; i<cnt; i++) {
        float a = map(i, 0, cnt-1, 0, TWO_PI);
        float amp = 120+sin(millis()*0.001+a*6.)*50;
        float x = width/2+sin(a+millis()*0.001)*amp;
        float y = height/2+cos(a+millis()*0.001)*amp;
        ellipse(x, y, 10, 10);
      }
    }
  }
  

}
