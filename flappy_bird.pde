// Rakshith Gowda c
// flappy Bird

// creating a bird Basically an ellipse
Bird b;

// these Varibale os to keep Track of Score
int score=0;

// thes is creating an ArrayList of rods
ArrayList<Rod>rod=new ArrayList<Rod>();
void setup() {
  
// creating canvas
  size(400, 800);
// creating Bird
  b=new Bird();
  //r=new Rod();
}
void draw() {
// background color 
  background(0);
  
// to add a rod for every (framecount%75==0)
  if (frameCount % 75 == 0) {
    rod.add(new Rod());
  }
  
// keyPressed function that means it is accelerated upwards with acceleration 5; 
  if (keyPressed) {
    b.accy=-5;
  }
  
// for every frame update bird (i.e) position  
  b.update();
// for every frame show the bird at current location  
  b.show();
  
  boolean safe=true;
  for (int i=rod.size()-1; i>=0; i--) {
   Rod r=rod.get(i);
   
// to check wheather if bird hits the pipe or not 
   boolean isSafe=r.hits(b);
// if it hits make the color of rod red
// else color remain same
   if(isSafe){
     r.show(true);
     safe=false;
   }else{
    r.show(false); 
   }
    r.update();
// if the rod's x  position is -40 remove from the arrayList     
    if(r.x<=-40){
      rod.remove(i);
    }
  }
  
// if bird hits rod the increamnet score by 1
// else decrease score to -50
  if(safe){
   score++; 
  }else{
   score=-50; 
  }
// to print the score value  
  fill(255, 0, 255);
  textSize(64);
  text(score, width/2, 50);
  score = constrain(score, 0, score);
}
