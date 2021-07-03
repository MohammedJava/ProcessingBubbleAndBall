class Bubble{
  float x;
  float y;
  float diameter;
  
  
  Bubble(float diam){
    x = width/2;
    y = height /2;
    diameter = diam;
    
  }
  
  //ascends by reducing y
  //y is inverted since canvas starts at 0,0 in the upper-left corner
  void ascend(){
    y--;
    x += random(-1,1);
  }
  
  //display bubble
  void display(){
    stroke(0);
    fill(127);
    ellipse(x,y,diameter,diameter);
  }
  
  //top edge
  void top(){
    if(y < diameter/2){
      y = diameter/2;
    }
  }
  
  void pop(){
    //If mouse is inside the bubble
    if((mouseX >= x - diameter/2 && mouseX <= x + diameter/2) && (mouseY >= y - diameter/2 && mouseY <= y + diameter/2)){
      //println("MOUSEX : " + mouseX + " " +  diameter + (mouseX <= x - diameter ));
    diameter = 0;
    }
  }
}
