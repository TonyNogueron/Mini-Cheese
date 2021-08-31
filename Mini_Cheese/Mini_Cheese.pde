
//Coded by Antonio Noguerón
//Also made the art and visuals

Rat r1,r2;
Cheese[] cheeses = new Cheese[10];

int score1, score2, eaten, newcheese, screen;

PImage[] img = new PImage[10];
boolean onTop1, onTop2, onTop3;
boolean moveleft,moveright,moveup,movedown,moveleft1,moveright1,moveup1,movedown1;


void setup() {
  size(1280,720);
  frameRate(60);
  
  img[0] = loadImage("Menu1normal.png");
  img[1] = loadImage("Menu1p1.png");
  img[2] = loadImage("Menu1p2.png");
  img[3] = loadImage("Menu1c.png");
  img[4] = loadImage("madera.png");
  img[5] = loadImage("rat.png");
  img[6] = loadImage("cheese.png");
  img[7] = loadImage("Cerdito.jpg");
  img[8] = loadImage("Dog.png");
  img[9] = loadImage("img.jpeg");

  reset();
  image(img[0],0,0,width,height);
  
}

void draw() {
 if (screen==0){ 
  menu();
 } else if (screen==1){
  screen1();
 }else if (screen==2){
  screen2();
 } else if (screen==3){
  credits();
 }
  
}
  
void reset() {
  screen=0;
  score1=0;
  score2=0;
  eaten=0;
  moveleft=false;
  moveright=false;
  moveup=false;
  movedown=false;
  moveleft1=false;
  moveright1=false;
  moveup1=false;
  movedown1=false;
  newcheese=0;
  onTop1=false;
  onTop2=false;
  onTop3=false;
    
  r1 = new Rat(random(50,width-90),random(10,690));
  r2 = new Rat(random(50,width-90),random(10,690));
  
  for (int j = 0; j < cheeses.length; j++) {
    cheeses[j]= new Cheese();
    }
    
}
void resetp1() {
   screen=1;
   score1=0;
   eaten=0;
   newcheese=0;
   for (int j = 0; j < cheeses.length; j++) {
    cheeses[j]= new Cheese();
    }
}
void resetp2(){
  screen=2;
   score1=0;
   score2=0;
   eaten=0;
   newcheese=0;
   
   for (int j = 0; j < cheeses.length; j++) {
    cheeses[j]= new Cheese();
    }
}
 

void menu() {
  
  if(screen==0) {
        if( mouseX>605 && mouseX<955 && mouseY>208 && mouseY<308){ //si la posición del mouse está dentro del dominio y rango de las letras/botón de player1, cambia a la imagen donde parece seleccionado y cambia la variable de que está encima a verdadero
     image(img[1], 0, 0, width, height);
     onTop1=true;
  }  else if( mouseX>600 && mouseX<960 && mouseY>315 && mouseY<415){
     image(img[2], 0, 0, width, height);
     onTop2=true;
  }  else if( mouseX>970 && mouseX<1280 && mouseY>620 && mouseY<720){
     image(img[3], 0, 0, width, height);
     onTop3=true;
  }  else {
     image(img[0],0,0,width,height);
    onTop1=false;
      onTop2=false;
      onTop3=false; 
   }
 }
}

void screen1(){
  
  if(screen==1){ 
  background(img[4]); 
    
  r1.move();
  colision1();
  
  for (int j = 0; j < cheeses.length; j++) {
    cheeses[j].display();
  }
 }
}

void screen2 () {
  if (screen==2) {
    background(img[4]); 
    
  r1.move();
  r2.move2();
  colision2();
  
  cheeses[newcheese].display();
    }
  }
  
  void colision1(){
   for (int i = 0; i<cheeses.length; i++) {
    
     if (r1.getrat_x()+40 > cheeses[i].getcheese_x() 
       && r1.getrat_x()+40 < cheeses[i].getcheese_x()+100 
       && r1.getrat_y()+14.5 > cheeses[i].getcheese_y() 
       && r1.getrat_y()+14.5 < cheeses[i].getcheese_y()+62
     ) {
       cheeses[i].setcheese_y(cheeses[i].getcheese_y()+height);
       score1 = score1 + 10; 
       eaten++;
     }
   }
   if(eaten == cheeses.length){
    if (score1 > score2) {
    textSize(150);
    textAlign(CENTER);
    text("¡Victoria Player1!",width/2, height/4);
    }
    if (score1 < score2) {
    textSize(150);
    textAlign(CENTER);
    text("¡Victoria Player2!",width/2, height/4);
    } else if (score1==score2) {
    textSize(150);
    textAlign(CENTER);
    text("¡Empate!",width/2, height/4);
    }
    
    textSize(40);
    text("Presiona ENTER para volver a jugar o R para volver al menú", width/2, height/2);
   
    if (key == ENTER) {
     if (screen==1) {
       resetp1();
    } else if (screen==2) {
       resetp2();
    }
    }
    if (key == 'r') {
     reset(); 
    }
    
  }
  
  textSize(32);
  text("ScoreP1:"+score1, 1080,30);
  
 }
  
void colision2(){
     
     if (r1.getrat_x()+40 > cheeses[newcheese].getcheese_x() 
       && r1.getrat_x()+40 < cheeses[newcheese].getcheese_x()+100 
       && r1.getrat_y()+14.5 > cheeses[newcheese].getcheese_y() 
       && r1.getrat_y()+14.5 < cheeses[newcheese].getcheese_y()+62
     ) {
       cheeses[newcheese].setcheese_y(cheeses[newcheese].getcheese_y()+height);
       score1 = score1 + 10; 
       eaten++;
       if(newcheese<cheeses.length-1){
       newcheese++;
       }
      }
    if (screen==2) {
      if (r2.getrat_x()+40 > cheeses[newcheese].getcheese_x() 
       && r2.getrat_x()+40 < cheeses[newcheese].getcheese_x()+100 
       && r2.getrat_y()+14.5 > cheeses[newcheese].getcheese_y() 
       && r2.getrat_y()+14.5 < cheeses[newcheese].getcheese_y()+62
     ) {
       cheeses[newcheese].setcheese_y(cheeses[newcheese].getcheese_y()+height);
       score2 = score2 + 10; 
       eaten++;
       if(newcheese < cheeses.length-1){
       newcheese++;
       } 
    }
      textSize(32);
      text("ScoreP2:"+score2, 100,30);
    }
      
  if(eaten == cheeses.length){
    if (score1 > score2) {
    textSize(150);
    textAlign(CENTER);
    text("¡Victoria Player1!",width/2, height/4);
    }
    if (score1 < score2) {
    textSize(150);
    textAlign(CENTER);
    text("¡Victoria Player2!",width/2, height/4);
    } else if (score1==score2) {
    textSize(150);
    textAlign(CENTER);
    text("¡Empate!",width/2, height/4);
    }
    
    textSize(40);
    text("Presiona ENTER para volver a jugar o R para volver al menú", width/2, height/2);
   
    if (key == ENTER) {
     if (screen==1) {
       resetp1();
    } else if (screen==2) {
       resetp2();
    }
    }
    if (key == 'r') {
     reset(); 
    }
    
  }
  
  textSize(32);
  text("ScoreP1:"+score1, 1080,30);
  
 }

void credits(){
  
   background(0);
   image(img[9],20,80,400,400);
   image(img[8],440,80,400,400);
   image(img[7],860,80,400,400);
   textSize(65);
   textAlign(CENTER);
   text("Créditos", width/2, 60); 
   textSize(50);
   textAlign(CENTER);
   text("Tony Noguerón", 215, 530); 
   textSize(35);
   textAlign(CENTER);
   text("Todo lo demás", 215, 600); 
   textSize(50);
   textAlign(CENTER);
   text("Antonio Noguerón", 630, 530); 
   textSize(35);
   textAlign(CENTER);
   text("Primer ministro", 630, 600); 
   textSize(45);
   textAlign(CENTER);
   text("Anthony Noguerón", 1070, 530); 
   textSize(35);
   textAlign(CENTER);
   text("Coordinador general", 1070, 600); 
   
   textSize(38);
   textAlign(CENTER);
   text("Presione R para volver al menú principal", width/2, 680);
   
   
   if (key == 'r') {
     reset(); 
    }
  }



void keyPressed() { 
  
  if (keyCode == LEFT) {  
   moveleft=true;
 } 
  if (keyCode == RIGHT) {
   moveright=true;
 }
  if (keyCode == UP) {
  moveup=true;
 }
  if (keyCode == DOWN) {
  movedown=true;
 }  
  if (key=='a') {
  moveleft1=true;
 }
  if (key == 'd') {
   moveright1=true;
 }
  if (key == 'w') {
  moveup1=true;
 }
  if (key == 's') {
  movedown1=true;
 }
}

void keyReleased() {
 
 if(keyCode==LEFT){moveleft=false;} 
 
 if(keyCode==RIGHT){moveright=false;}
 
 if(keyCode==UP){moveup=false;}
 
 if(keyCode==DOWN){movedown=false;}
 
 if(key=='a'){moveleft1=false;} 
 
 if(key=='d'){moveright1=false;}
 
 if(key=='w'){moveup1=false;}
 
 if(key=='s'){movedown1=false;}
}


void mousePressed(){ 
  if(mouseButton==LEFT && onTop1==true){ 
   screen=1;
  }
  if (mouseButton==LEFT && onTop2==true){
   screen=2;  
  }
  if (mouseButton == LEFT && onTop3 == true){
   screen=3; 
  }
  }
