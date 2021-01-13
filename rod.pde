class Rod {
  float x;
  float top;
  float bottom;
  float w=40;
  int index;
  boolean firstOccur=true;
  int r;
  int g;
  int b;
  Rod() {
    x=400+w;
    ;
    top=random(100, (height/2)-40);
    bottom=random(100, (height/2)-40);
  }
  boolean hits(Bird b) {
    if ((b.posx > x) && (b.posx < (x + w))) {
      if ((b.posy < (top + 16)) || (b.posy > (height - bottom - 16))) {
        return true;
      }
    }
    return false;
  }
  void update() {

    x-=3;
    //if(x<-40){
    //  rod.remove(index);
    //}
  }
  void show(boolean hit) {
    if (firstOccur ) {
      r=floor(random(0, 255));
      g=floor(random(0, 255));
      b=floor(random(0, 255));
      firstOccur=false;
    }
    if (hit) {
      fill(255, 0, 0);
    } else {

      fill(r, g, b);
    }
    rect(x, 0, w, top);
    rect(x, height-bottom, w, bottom);
  }
}
