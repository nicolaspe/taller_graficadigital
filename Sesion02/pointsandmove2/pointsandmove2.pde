float[] x, y, d;
int total;

void setup(){
  size(400, 400);
  total = 1000;    // Cant total de elementos
  // Inicialización de arreglos
  x = new float[total];
  y = new float[total];
  d = new float[total];
  // Asignación de valores (poblar el arreglo)
  Create();
}

void draw(){
  background(255);
  for(int i=0; i<total; i++){
    strokeWeight(d[i]);
    point(x[i], y[i]);
    x[i] += d[i]/4;
    if(x[i]<0)     x[i]+=width;
    if(x[i]>width) x[i]-=width;
  }
}

void Create(){
  for(int i=0; i<total; i++){
    x[i] = random(width);
    y[i] = random(height);
    d[i] = random(1, 10);
  }
}

void mouseClicked(){
  Create();
}