class Walker{
  // three member variable
  int myX, myY;
  int myColor;
  //four member functions
  //one special memeber function is CONSTRUCTOR
  //whose job is to initilize member variables
  Walker(){
    myX = width/2;
    myY = height/2;
    myColor = color(255,255,255);
  }
  Walker(int x, int y){ //overloading constructor
    myX = x;
    myY = y;
    myColor = color((int)(Math.random()*255),
                    (int)(Math.random()*255),
                    (int)(Math.random()*255));
  }
  void walk(){
    myX = myX + ((int)(Math.random()*5))-2; // -1, 0, 1 FIX THIS LINE AND THE ONE BELOW IT
    myY = myY + ((int)(Math.random()*5))-2; // -1, 0, 1
    if(mouseX>myX){
      myX = myX + (int)(Math.random()*3);}
    else{
      myX = myX + (int)(Math.random()*3)-2;}
    if(mouseY>myY){
      myY = myY + (int)(Math.random()*3);}
     else{
      myY = myY + (int)(Math.random()*3)-2;}
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 10,10);}
}//end of Walker class

Walker [] dots;
void setup(){
  size(500,500);
  background(255);
  dots = new Walker[1000]; //first call to new
  for(int i = 0; i < dots.length; i++){
    dots[i] = new Walker((int)(Math.random()*width), (int)(Math.random()*height)); // second call to new
  }
}

void draw(){
  for(int i = 0; i < dots.length; i++){
   dots[i].walk();
   dots[i].show();
  }
}
