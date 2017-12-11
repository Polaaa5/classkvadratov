class Kvadrat {
  float x, y, s;
  Kvadrat(float _x, float _y, float _s)  {
    this.x = _x;
    this.y = _y;
    this.s = _s;   
  }
  void right(float _s) {
    this.x+=_s;
  }
}
  class NewKvadrat extends Kvadrat {
    color c;
    NewKvadrat(float _x, float _y, float _s, color _c) {
      super(_x, _y, _s);
      this.c = _c;
    }
 void draw() {
    rect(this.x,this.y,this.s,this.s);
    fill(this.c);
  }
}
  
NewKvadrat[] k_array;

void setup()
{ 
  size(600,600);
  k_array = new NewKvadrat[10];
  for(int i=0; i<10; i++){
    k_array[i] = new NewKvadrat(random(width), random(height), 100.0, color(random(255),random(255),random(255)));
  }
}

void draw()
{ 
  background(0);
  for(int i=0; i<10; i++){
     k_array[i].draw();
     k_array[i].right(random(2));
  }
}