class Bird{
 float posx;
 float posy;
 float vely;
 float accy;
 float gravity=0.5;
 Bird(){
   posx=64;
   posy=height/2;
   vely=0;
   accy=0;
 }
 void update(){
   vely+=accy;
   vely+=gravity;
   posy+=vely;
   posy=constrain(posy,0,height);
   vely=constrain(vely,0,4);
   accy=0;
 }
 void show(){
  fill(255);
  ellipse(posx,posy,32,32);
 }
}
