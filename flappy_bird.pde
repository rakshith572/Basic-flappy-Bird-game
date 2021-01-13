Bird b;
//Rod r;
int score=0;
ArrayList<Rod>rod=new ArrayList<Rod>();
void setup() {
  size(400, 800);
  b=new Bird();
  //r=new Rod();
}
void draw() {
  background(0);
  if (frameCount % 75 == 0) {
    rod.add(new Rod());
  }
  if (keyPressed) {
    b.accy=-5;
  }
  b.update();
  b.show();
  boolean safe=true;
  for (int i=rod.size()-1; i>=0; i--) {
   Rod r=rod.get(i);
   boolean isSafe=r.hits(b);
   if(isSafe){
     r.show(true);
     safe=false;
   }else{
    r.show(false); 
   }
    r.update();
    if(r.x<=-40){
      rod.remove(i);
    }
  }
  if(safe){
   score++; 
  }else{
   score=-50; 
  }
  fill(255, 0, 255);
  textSize(64);
  text(score, width/2, 50);
  score = constrain(score, 0, score);
}
