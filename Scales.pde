void setup(){
  size(400, 400);
  background(0, 0, 0);
}
void draw(){
  
  for(int i = 0; i <= 400; i += 50) {
    for(int j = 0; j <= 400; j += 40){
      for(int k = 0; k <= 20; k += 10){
        fill(color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255)));
        scale(i, j, k);
      }
    }
  }
}
void scale(int i, int j, int k){
  int initialX = 0, initialY = 0, newX = 50, newY = 50;
  bezier(initialX + i + k, initialY + j, 
  initialX + i + k, newY + j - k, 
  newY + i - k, newY + j - k, 
  newX + i - k, initialY + j);
}
