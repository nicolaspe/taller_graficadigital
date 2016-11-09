class Particula{
  float x, y, xspeed, yspeed, d;
  
  // Constructor de Partícula
  Particula(){
    x = random(width);
    y = random(height);
    d = random(1, 10);
    xspeed = random(-d, d)/10;
    yspeed = random(-d, d)/10;
  }
  
  // Actualiza la posición de la partícula
  void update(){
    x += xspeed;
    y += yspeed;
    if(x<0)      x+=width;
    if(x>width)  x-=width;
    if(y<0)      y+=height;
    if(y>height) y-=height;
  }
  
  // Dibuja la partícula
  void display(){
    strokeWeight(d);
    point(x,y);
  }
}