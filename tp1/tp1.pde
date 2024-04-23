PImage miPaisaje;
void setup () {
  size (800, 400);
  background (252, 184, 40);
  miPaisaje = loadImage ("lago.png");
}
void draw () {
  println (mouseX + " / " + mouseY) ;
  rect (0, 280, 200, 400);
  image (miPaisaje, 400, 0);
  
  //cielo
  noStroke ();
  fill (255, 141, 26);
  rect (0, 0, 400, 40);
  fill (255, 152, 50);
  rect (0, 40, 400, 80);
  fill (255, 176, 50);
  rect (0, 80, 400, 120);
  fill (255, 205, 67);
  rect (0, 120, 400, 160);
  fill (255, 216, 60);
  rect (0, 160, 400, 200);
  fill (255, 227, 116);
  rect (0, 200, 400, 240);
  
  //circulo sol
   fill (253, 255, 140) ;
  noStroke ();
  ellipse (360, 170, 50, 50);
  
 //montaña de atras
   fill (30) ;
  noStroke ();
  rect (0, 205, 250, 100);
  triangle (0, 205, 250, 205, 0, 120);
  bezier (230, 200, 206, 186, 166, 169, 137, 168);
  
  // montaña adelante
  fill (10) ;
  noStroke ();
  rect (125, 230,275, 50);
  triangle (170, 230, 310, 190, 400, 230);
  triangle (310, 191, 400, 190, 400, 231); 
  bezier (125, 230, 138, 218, 161, 230, 288, 230);
  bezier (187, 227, 236, 200, 263, 203, 290, 197);
  bezier (307, 191, 320, 182, 339, 184, 343, 191);
  bezier (374, 190, 382, 183, 394, 190, 400, 190) ;
  
  //sol
   fill (230, 200, 70, 100) ;
  noStroke ();
  triangle (342, 190, 353, 190, 290, 270);
  triangle (360, 190, 372, 190, 360, 272);
  triangle (340, 185, 336, 176, 226, 238) ;
  triangle (336, 163, 341, 154, 268, 125) ;
  triangle (353, 145, 371, 148, 368, 94) ;
  triangle (380, 156, 385, 166, 414, 135) ;
  triangle (381, 185, 386, 173, 417, 192) ;
  
 
  
   //lago
  fill (200, 150, 60); 
  rect (0, 280, 400, 120) ;
  fill (0, 50);
  noStroke ();
  triangle (266, 280, 280, 282, 248, 284) ;
  triangle (242, 290, 284, 290, 229, 293);
  triangle (198, 303, 236, 305, 184, 310);
  triangle (175, 315, 210, 316, 155, 323) ;
  triangle (142, 327, 173, 330, 138, 329) ;
  triangle (128, 335, 169, 339, 116, 338) ;
  triangle (105, 343, 137, 350, 100, 346) ;
  triangle (86, 353, 120, 354, 78, 355) ;
  triangle (50, 368, 84, 373, 38, 371) ;
  triangle (75, 357, 112, 361, 65, 360) ;
  triangle (37, 372, 77, 382, 21, 377) ;
  triangle (7, 384, 31, 390, 0, 389) ;
  triangle (253, 287, 288, 286, 250, 285) ;
  triangle (232, 290, 261, 296, 220, 298) ;
  triangle (170, 320, 210, 328, 160, 322) ;
  //triangulo grande
   fill (93, 76, 19);
  triangle (0, 280, 0, 390,276, 280);
  strokeWeight (1);
  stroke (50, 150);

 
 //reflejo
 noStroke ();
 fill (216, 207, 96, 100) ;
 triangle (350, 337, 298, 300, 342, 348);
 triangle (373, 342, 390, 325, 377, 360);
 triangle (378, 350, 396, 335, 377, 361);
 
 
 fill (216, 207, 96) ;
 ellipse (360, 357, 40, 50);
 fill (36, 28, 3);
 triangle (166, 280, 400, 350,400, 280) ;
 bezier (175, 280, 294, 346, 346, 330, 400, 350);
 fill (230, 200, 70, 100);
 triangle (348, 340, 348, 288, 357, 340);
 triangle (357, 340, 376, 300, 372, 343);
  
}
