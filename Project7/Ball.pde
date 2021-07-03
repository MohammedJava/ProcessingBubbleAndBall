class Ball{
  float x;
  float y;
  float xspeed = 5;
  float yspeed = 5;
  
  Ball(){
    x = 10;
    y = 10;
  }
  
   Ball(float x, float y){
    this.x = x;
    this.y = y;
  }
  
  void display(){
    ellipse(this.x, this.y, 20,20);
  }
  
  void moveBall(){
    this.x += xspeed;
    this.y += yspeed;
  }
  
  void edge(){
    if(x > width || x < 0){
      xspeed *= -1;
    }
     if(y > height || y < 0){
      yspeed *= -1;
    }
  }
}
