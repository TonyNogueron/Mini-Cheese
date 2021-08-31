class Cheese {
  
  float cheese_x, cheese_y;
  float cheese_base, cheese_altura;
  
  Cheese () {
    cheese_x = random(50,1170);
    cheese_y = random(10,650);
    
    cheese_base = 100;
    cheese_altura = 62;
  }

  void display() {
    image(img[6], cheese_x,cheese_y,cheese_base,cheese_altura);
  }
  
  
  void setcheese_x (float xC) {
   cheese_x = xC;  
  }
  
  float getcheese_x (){
     return cheese_x;
  }
  
  void setcheese_y (float yC) {
   cheese_y = yC;  
  }
  
  float getcheese_y (){
     return cheese_y;
  }
  
  void setcheese_base (float bC) {
   cheese_base = bC;  
  }
  
  float getcheese_base (){
     return cheese_base;
  }
  
  void setcheese_altura (float aC) {
   cheese_altura = aC;  
  }
  
  float getcheese_altura (){
     return cheese_altura;
  }

}
