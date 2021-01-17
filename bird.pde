class Bird{
// x position of Bird  
 float posx;
 
// y position of Bird 
 float posy;
 
// velocity of Bird 
 float vely;
 
// acceleration of Bird 
 float accy;
 
// constant gravity i.e It must fall down  
 float gravity=0.5;
 Bird(){
// the starting point of Bird
   posx=64;  
   posy=height/2;
 
// velocity of Bird   
   vely=0;
   accy=0;
 }

// update function is called in setup functiom 
 void update(){
// rate of change of velocity is acceleration    
   vely+=accy;
// rate of change of distance is velocity 
// update velocity and acceleration
   vely+=gravity;
   posy+=vely;
// we have make posY limited to (0, height), else it will continuing moving upward out of canvas   
   posy=constrain(posy,0,height);
   
// we have make valY limited to (0, 4), else it will move so fast
   
   vely=constrain(vely,0,4);
   accy=0;
 }
 
 // function to show the bird
 void show(){
  fill(255);
  ellipse(posx,posy,32,32);
 }
}
