class Rat {
  
  float rat_x, rat_y;
  float rat_base, rat_altura;
  float rat_speed;
  float[] rotation = new float[7];
  float lrotation;
  
  Rat(float tempx, float tempy){
    
    rat_x = tempx;
    rat_y = tempy;
    rat_base = 80;
    rat_altura = 29;
    rat_speed = 10;
    
    rotation[0] = (-PI/4);    //define las rotaciones en valores de radianes 
    rotation[1] = ((-3*PI)/4);
    rotation[2] = (3*PI/4);
    rotation[3] = (PI/4);
    rotation[4] = (-PI/2);
    rotation[5] = (PI/2);
    rotation[6] = (PI);
    lrotation = 0;
  }
  
  void move(){ //es el método que se realiza cuando queremos mover el personaje
  
 if ( moveup==true && moveright==true) { //condicional que dice que si estamos presionando las flechas arriba y derecha, define la x y y del vector como la suma de esta y la velocidad para ir en diagonal
   
   rat_x = rat_x + rat_speed;
   rat_y = rat_y - rat_speed;
      
   pushMatrix();
   translate(rat_x,rat_y); //antes de dibujar la rata, tenemos que trasladar su punto de origen para que al rotar sea sobre su propio eje
   rotate(rotation[0]); // es lo que rota la imagen de la rata hacia la dirección definida por los radianes
   lrotation = rotation[0]; //cambia la variable de rotación al valor del radián que se utilizó para que cuando no se esté moviendo, permanezca en la posición que se dejó
   image(img[5],-40,-14.5,rat_base,rat_altura); //finalmente pone la imagen con los parámetros que definimos y
   popMatrix();
   } else if ( moveleft==true && moveup==true) { //sino, realiza el mismo procedimiento de ver que teclas están presionadas para moverse y se rota según lo que se necesite

     rat_x = rat_x - rat_speed;
   rat_y = rat_y - rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[1]);   
   lrotation = rotation[1];
   image(img[5],-40,-14.5,rat_base,rat_altura); 
   popMatrix();
 }else if ( moveleft==true && movedown==true) {
  
   rat_x = rat_x - rat_speed;
   rat_y = rat_y + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[2]);  
   lrotation = rotation[2];
   image(img[5],-40,-14.5,rat_base,rat_altura);
   popMatrix();
 }else if ( moveright==true && movedown==true) {
   
   rat_x = rat_x + rat_speed;
   rat_y = rat_y + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[3]); 
   lrotation = rotation[3];
   image(img[5],-40,-14.5,rat_base,rat_altura); 
   popMatrix();
 } else  if (moveright==true) {
   
   rat_x = rat_x + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   lrotation = 0;
   image(img[5],-40,-14.5,rat_base,rat_altura);  
   popMatrix();
 }else  if (moveup==true) {
  
   rat_y = rat_y - rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[4]);
   lrotation = rotation[4];
   image(img[5],-40,-14.5,rat_base,rat_altura);  
   popMatrix();
 }else  if (movedown==true) {
  
   rat_y = rat_y + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[5]);
   lrotation = rotation[5];
   image(img[5],-40,-14.5,rat_base,rat_altura); 
   popMatrix();
 }else if (moveleft==true) {
 
   rat_x = rat_x - rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[6]);
   lrotation = rotation[6];
   image(img[5],-40,-14.5,rat_base,rat_altura);
   popMatrix();
 } else { //si no se está presionando ninguna tecla, entonces deja la imagen de la rata en la posición que estaba y rotada hacia esa dirección
   pushMatrix();
   translate(rat_x,rat_y);  
   rotate(lrotation); //utiliza la variable que definimos como last rotation para quedarse en la posición que estaba.
   image(img[5],-40,-14.5,rat_base,rat_altura);
   popMatrix();
   }
  
   if (rat_x-40 > width) { //condicional que indica si la rata o posición de la rata es mayor al tamaño de la pantalla, para regresarla del lado contrario
    rat_x = rat_x - (width+60);
   } else if (rat_x < -40){
    rat_x = rat_x + (width+60);
   } else if (rat_y > height+15){
    rat_y = rat_y - (height + 15);
   } else if (rat_y < -15){
    rat_y = rat_y + (height + 15);
   } 
 }
 
 void move2(){ //es el método que se realiza cuando queremos mover el personaje
  
 if ( moveup1==true && moveright1==true) { //condicional que dice que si estamos presionando las flechas arriba y derecha, define la x y y del vector como la suma de esta y la velocidad para ir en diagonal
   
   rat_x = rat_x + rat_speed;
   rat_y = rat_y - rat_speed;
      
   pushMatrix();
   translate(rat_x,rat_y); //antes de dibujar la rata, tenemos que trasladar su punto de origen para que al rotar sea sobre su propio eje
   rotate(rotation[0]); // es lo que rota la imagen de la rata hacia la dirección definida por los radianes
   lrotation = rotation[0]; //cambia la variable de rotación al valor del radián que se utilizó para que cuando no se esté moviendo, permanezca en la posición que se dejó
   image(img[5],-40,-14.5,rat_base,rat_altura); //finalmente pone la imagen con los parámetros que definimos y
   popMatrix();
   } else if ( moveleft1==true && moveup1==true) { //sino, realiza el mismo procedimiento de ver que teclas están presionadas para moverse y se rota según lo que se necesite

     rat_x = rat_x - rat_speed;
   rat_y = rat_y - rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[1]);   
   lrotation = rotation[1];
   image(img[5],-40,-14.5,rat_base,rat_altura); 
   popMatrix();
 }else if ( moveleft1==true && movedown1==true) {
  
   rat_x = rat_x - rat_speed;
   rat_y = rat_y + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[2]);  
   lrotation = rotation[2];
   image(img[5],-40,-14.5,rat_base,rat_altura);
   popMatrix();
 }else if ( moveright1==true && movedown1==true) {
   
   rat_x = rat_x + rat_speed;
   rat_y = rat_y + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[3]); 
   lrotation = rotation[3];
   image(img[5],-40,-14.5,rat_base,rat_altura); 
   popMatrix();
 } else  if (moveright1==true) {
   
   rat_x = rat_x + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   lrotation = 0;
   image(img[5],-40,-14.5,rat_base,rat_altura);  
   popMatrix();
 }else  if (moveup1==true) {
  
   rat_y = rat_y - rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[4]);
   lrotation = rotation[4];
   image(img[5],-40,-14.5,rat_base,rat_altura);  
   popMatrix();
 }else  if (movedown1==true) {
  
   rat_y = rat_y + rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[5]);
   lrotation = rotation[5];
   image(img[5],-40,-14.5,rat_base,rat_altura); 
   popMatrix();
 }else if (moveleft1==true) {
 
   rat_x = rat_x - rat_speed;
   pushMatrix();
   translate(rat_x,rat_y);
   rotate(rotation[6]);
   lrotation = rotation[6];
   image(img[5],-40,-14.5,rat_base,rat_altura);
   popMatrix();
 } else { //si no se está presionando ninguna tecla, entonces deja la imagen de la rata en la posición que estaba y rotada hacia esa dirección
   pushMatrix();
   translate(rat_x,rat_y);  
   rotate(lrotation); //utiliza la variable que definimos como last rotation para quedarse en la posición que estaba.
   image(img[5],-40,-14.5,rat_base,rat_altura);
   popMatrix();
   }
  
   if (rat_x-40 > width) { //condicional que indica si la rata o posición de la rata es mayor al tamaño de la pantalla, para regresarla del lado contrario
    rat_x = rat_x - (width+60);
   } else if (rat_x < -40){
    rat_x = rat_x + (width+60);
   } else if (rat_y > height+15){
    rat_y = rat_y - (height + 15);
   } else if (rat_y < -15){
    rat_y = rat_y + (height + 15);
   } 
 }
 
 void setrat_x (float xR) {
   rat_x = xR;  
  }
  
  float getrat_x (){
     return rat_x;
  }
  
  void setrat_y (float yR) {
   rat_y = yR;  
  }
  
  float getrat_y (){
     return rat_y;
  }
  
  void setrat_base (float bR) {
   rat_base = bR;  
  }
  
  float getrat_base (){
     return rat_base;
  }
  
  void setrat_altura (float aR) {
   rat_altura = aR;  
  }
  
  float getrat_altura (){
     return rat_altura;
  }
 
 
}
