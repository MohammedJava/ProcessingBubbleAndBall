Ball b;
Bubble c;

void setup(){
  size(640,360);
  b = new Ball();
  c = new Bubble(50);
}

void draw(){
  background(50);
  b.display();
  b.moveBall();
  b.edge();
  
  c.ascend();
  c.display();
  c.top(); 
}

void mousePressed(){
  c.pop();
}
