// Rocío Belén Amaya. Legajo:118957/6. Comisión 2.
PImage mate;

String estado;

PImage valorDeCartas;
PImage logoTruco;
PImage tresCartas;
PImage imagenUno;
PImage imagenDos;
PImage imagenTres;
PImage imagenCuatro ;
PImage imagenCinco ;
PImage imagenSeis ;
PImage mazo;
PImage parda ;
PImage flor; 
PImage gaucho ;
PImage siete;
PImage seis; 

//PRIMER DIAPOSITIVA
String primerTruco;
int matex;
int matey ;
float trucoX;
float x, y; 
color relleno;
int alpha;
int tam ;

//SEGUNDA DIAPOSITIVA
int textoX; 

//TERCERA DIAPOSITIVA
int textoTam;
float mazoY;

//CUARTA DIAPOSITIVA
float ejemploX;
color azul;

//QUINTA DIAPOSITIVA
float tituloTam;

//SEXTA Y NOVENA DIAPOSITIVA
int gauchoX ;
float posX ;
float posY;
float tamX;
float tamY;
float velX ;

//BOTON DE REINICIO
int esquinaX1 = 200;
int esquinaY1 = 400;
int ancho = 200;
int alto = 50;

void setup() {
  size (640, 480) ;
 background (250); 

 
 mate = loadImage ("mate real.png");
 logoTruco = loadImage ("truco logo.png");
 valorDeCartas = loadImage ("valorDeCartas.jpg");
 tresCartas = loadImage ("3 cartas.png");
 imagenUno = loadImage ("ejemplo uno.jpg");
 imagenDos = loadImage ("ejemplo dos.jpg");
 imagenTres = loadImage ("ejemplo tres.jpg");
 imagenCuatro = loadImage ("ejemplo cuatro.jpg");
 imagenCinco = loadImage ("ejemplo cinco.jpg");
 imagenSeis = loadImage ("ejemplo seis.jpg"); 
 parda = loadImage ("parda.jpg");
 flor = loadImage ("flor.jpg");
 gaucho = loadImage ("gaucho bailando.jpg");
 mazo = loadImage ("mazo.jpg");
 seis = loadImage ("Seis oro.jpg");
 siete = loadImage ("Siete oro.jpg");
 
 //variables de la primer diapositiva

 relleno = color (10, 240, 255);
 //alpha = 255 ;
 matex = 480 ;
 matey = 320 ;
 tam = 150 ;
 trucoX = 0 ;
 
 // vaiables de la segunda diapositiva
 textoX = 0 ;
 
 // variables de la tercera diapositiva
 textoTam = 10 ;
 mazoY = height ;
 
 //variables 4
 ejemploX = 0;
 azul = color(0, 200, 255);
 
 //variables 5
 tituloTam = 0 ;
 
 //variables 6 y 9
 gauchoX = 150 ;
 posX = 250 ;
 posY = 200; 
 tamX = 100;
 tamY = 100 ;
 velX = 1.5; 
 
 
  //textSize( 42 );
  textAlign( CENTER, CENTER );
  estado = "primero";
}

void draw () {
   //println (mouseX + " / " + mouseY) ;
   println( frameCount/60 );
   

   if( estado == "primero" ){ 
    background( 200 );
    
    textSize (30);
    
    fill (10, 240, 255);
    rect (0, 0, 640, 160);
    fill (255);
    rect (0, 160, 640, 160);
    fill (10, 240, 255);
    rect (0, 320, 640, 160);
    fill (0);
    text( "Hoy vamos a aprender cómo jugar al", width/2, 50 );
    textSize (50);
    fill (250, 250, 0);
    text ( "TRUCO", trucoX, 100);
    trucoX = trucoX + velX;
    
    if (trucoX >=width/2) {
    velX = 0;
    }
   
    
   
 
     image (tresCartas, width/3, 140);
     image (mate, matex, matey, tam, tam);

      if (matex > 50) {
       matex -=3; ;
       //matey -=3 ;
      }
      else if (matex <= 50) {
      matey -= 3;
      }
      
      
      
    
    
    //SEGUNDA DIAPOSITIVA
  
  if (frameCount/60>=6)
  estado = "dos";
  
  }else if( estado == "dos" ){
    background( 250 );
    image (valorDeCartas, 75, 100, 500, 350);
    textSize (20);
    fill (0) ;
    text( "Para jugar al truco, hay que saber que cada carta tiene un valor, \ny en base a eso vamos a basar todo el juego.", textoX, 50 );
    
   if (textoX<=320) {
   textoX +=2 ;
   }
    
    
  if (frameCount/60>12 && frameCount/60<=18) 
  estado = "tres";
  
  }else if( estado == "tres" ){
    background( 0);
    fill (250);
    textSize (20);
    text( "El truco se puede jugar de a 2, 4 o de 6 personas \ny cáda jugador empieza con 3 cartas.", width/2, 50);
    textSize (15);
    text ("¡El mazo queda siempre a la derecha del que reparte!", width/2+100, 470);
    image (imagenUno, 170, 100, 300, 150);
    image (imagenDos, 170, 300, 300, 150);
    //image (imagenTres, 50, 150, 100, 200);
    //image (imagenCuatro, 450, 150, 100, 200);
    image (mazo, 530, mazoY, 70 ,100);
    
    if (mazoY >=300) {
    mazoY -=1;
    }
    
    if (frameCount/60>18 && frameCount/60<=26) 
  estado = "cuatro";
    
  }else if( estado == "cuatro" ){
    background( 0 );
    textSize (20);
    text( "Empieza tirando la carta el que está a la derecha del que reparte.\nSon 3 manos, quien gana 2 de 3 gana la ronda.\n¡Siempre se recomienda ganar primera!", width/2, 50 );
    fill (azul);
    text ("Ejemplo:", ejemploX, 100);
    image (imagenCinco, 100, 120, 470, 350);
    
    if (ejemploX <= height) {
    ejemploX += 1.5;
    }
    if (ejemploX >= height/3 && ejemploX <=425) {
     azul = color (255);
    }
    if (ejemploX >=425){
    azul = color (0, 200, 255);
    } 
    
    
     if (frameCount/60>26 && frameCount/60<=33) 
  estado = "cinco";
     
  }else if( estado == "cinco" ){
    background( 0 );
    fill (0, 255, 225);
    textSize (tituloTam);
    text ("La parda", width/2, 50);
    fill (255);
    textSize (20);
    text ("La parda es cuando en la primer ronda se iguala el valor más alto, \nes decir, no hay ganador. Si ese es el caso, \nen la segunda ronda gana quien tire la carta más alta.", width/2, 120);
    image (parda, 150, 170, 350, 300);
    
 
    if (tituloTam <= 30) {
    tituloTam += 0.5;    
    }
    
   
  
  if (frameCount/60>33 && frameCount/60<=40) 
  estado = "seis";
    
  }else if( estado == "seis" ){
    background( 0, 200, 200 );
    textSize (30);
    fill (0, 255, 225);
    text ("Otras reglas a tener en cuenta:", width/2, 50);
    textSize (20);
    fill (255);
    text ( "Si se gana una mano, se pierde otra y se empata la tercera, \ngana el jugador que haya ganado la primera. \nSi se empatan las 3 manos seguidas, ganará la ronda el jugador mano \n(quien está a la derecha del mazo)", width/2, 120);
    image (gaucho, posX, 200, 150, 150);
    
    posX = posX + velX;
    
    if (posX >= width/3){
    velX = -8;
    }
    if (posX <= 250) {
    velX = +8;
    }
    text ("(gaucho bailando)",width/2, 370);
    
    
  
   if (frameCount/60>40 && frameCount/60<=45) 
  estado = "siete";
    
  }else if( estado == "siete" ){
    background( 0, 200, 200 );
    textSize (tituloTam);
    fill (0, 255, 225);
    text ("El envido", width/2, 50);
    textSize (20);
    fill (255);
    text ("El envido se canta UNICAMENTE en la primer mano. \nsi nos olvidamos de cantar, no hay vuelta atrás. \nLos sietes son los de mayor valor, mientras que el 10, 11 y 12 \nson las de menor valor, y las más inutiles a la hora de cantar envido. \nSi se tienen 2 cartas del mismo palo, se suma su valor + 20. \nLa puntuación más alta del envido es 33.", width/2, 150);
    image (seis, 100, 250, 150, 230);
    image (siete, 300, 250, 150, 230);
    textSize (25);
    text ("+", 280, 365);
    text ("= 33 (6+7+20) ", 550, 365);
   
    if (tituloTam <= 40) {
    tituloTam += 0.05;    
    }
    
    
     if (frameCount/60>45 && frameCount/60<=55) 
  estado = "ocho";
    
  }else if( estado == "ocho" ){
    background( 0 );
    textSize (20);
    text ("En caso de empate, gana quien es mano. \nSi, por el contrario, se tienen las 3 cartas de igual palo, \nentonces se canta FLOR y automáticamente se ganan 5 puntos. \nSi el contrincante también tiene flor, \nentonces se pelea el valor de la misma forma que el envido", width/2, 100);
    image (flor, 70, 180, 500, 280);
    
    if (frameCount/60>55 && frameCount/60<=62) 
  estado = "nueve";
    
  }else if( estado == "nueve" ){
    background( 0, 200, 200 );
    textSize (20);
    text ("Si se canta ENVIDO o TRUCO, el contrincante debe responder con QUIERO \no NO QUIERO. Si no se quiere, termina la ronda, en cambio si se quiere, \nse sigue el juego con otro valor", width/2, 100);
    image (gaucho, posX, 230, 150, 150);
    
    posX = posX + velX;
    
    if (posX >= width/3){
    velX = -8;
    }
    if (posX <= 250) {
    velX = +8;
    }
    text ("(gaucho bailando x2)",width/2, 400);
    
    
    if (frameCount/60>62 && frameCount/60<=64) 
  estado = "diez";
    
 
  }else if( estado == "diez" ){
    background( 0, 200, 200 );
    textSize (30);
    text ("Listo!! Ahora ya sabés lo básico para jugar al", width/2, 50);
    image (logoTruco, 180, 50);
    textSize (15);
    fill (255, 0, 0);
    text ("¿Te quedaron dudas? ¡Mira denuevo!", width/2, 380);
    fill (250);
    rect (esquinaX1, esquinaY1, ancho, alto);
    fill (0);
    text ("¡Click aquí!", esquinaX1+100, esquinaY1+20);
}

}

void mousePressed () {
  if (mouseX > esquinaX1 && mouseX < esquinaX1+ancho && mouseY > esquinaY1 && mouseY < esquinaY1 + alto) {
  
  estado = "primero";
  frameCount = 0;
  
   //variables de la primer diapositiva

 relleno = color (10, 240, 255);
 //alpha = 255 ;
 matex = 480 ;
 matey = 320 ;
 tam = 150 ;
 trucoX = 0 ;
 
 // vaiables de la segunda diapositiva
 textoX = 0 ;
 
 // variables de la tercera diapositiva
 textoTam = 10 ;
 mazoY = height ;
 
 //variables 4
 ejemploX = 0;
 azul = color(0, 200, 255);
 
 //variables 5
 tituloTam = 0 ;
 
 //variables 6 y 9
 gauchoX = 150 ;
 posX = 250 ;
 posY = 200; 
 tamX = 100;
 tamY = 100 ;
 velX = 1.5; 
}
}
