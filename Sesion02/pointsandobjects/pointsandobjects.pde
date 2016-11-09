int total = 1000;
Particula[] p;

void setup(){
  size(400, 400);
  // Inicialización de arreglo de Particulas
  p = new Particula[total];
  // Asignación de valores (poblar el arreglo)
  Create();
}

void draw(){
  background(255);
  for(int i=0; i<total; i++){
    p[i].update();
    p[i].display();
  }
}

void Create(){
  for(int i=0; i<total; i++){
    p[i] = new Particula();
  }
}

void mouseClicked(){
  Create();
}