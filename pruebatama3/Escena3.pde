class Escena3 extends EscenaTemplate {

  float amp2;
  Escena3() {
    super();
  }

  void display() {
    if (alpha > 0) {
      fill(255,alpha);
      rect(0,0,width,height);
      fill(random(255),alpha);
      ellipse(width/2,height/2,random(200),random(200));
    }
    
  }
  void update() {
    super.update();
    amp2 = sin(millis()*0.01)*50;
  }
  
}
