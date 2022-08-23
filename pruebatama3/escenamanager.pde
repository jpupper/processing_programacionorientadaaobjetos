class EscenaManager {

  ArrayList<EscenaTemplate> escenas;

  int escenaactiva = 0;
  EscenaManager() {
    escenas = new ArrayList<EscenaTemplate>();
    //escenas.add(new Escena1());
    //escenas.add(new Escena2());
    //escenas.add(new Escena3());
  }
  void agregarEscena(EscenaTemplate _escena){
    escenas.add(_escena);
  }
  void display() {
    for (int i=escenas.size()-1; i>=0; i--) {
      escenas.get(i).display();
    }
  }
  void update() {
    for (int i=escenas.size()-1; i>=0; i--) {
      escenas.get(i).update();
    }
  }

  void setEscenaActiva(int _idx) {
    for (int i=escenas.size()-1; i>=0; i--) {
      if (i == _idx) {
        escenas.get(i).active = true;
      } else {
        escenas.get(i).active = false;
      }
    }
  }
}
