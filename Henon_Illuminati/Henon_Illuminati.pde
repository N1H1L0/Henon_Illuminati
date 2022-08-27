public void setup(){
  size(3000, 3000);
  background(0);
  translate(width/2, height/2);
 
  noSmooth();
  drawhenon(0, 0, 1.4, 0.3, 0, 400, 0, 200);
  fill(255,255,255);
  Illuminati(0,0,width/2, 1);
  save("henon.png");
}


public void drawhenon(float x, float y, float a, float b, int count, int scaler, float x_map, float y_map){
  float y_pos = b * x;
  float x_pos = y +1 - a * (x * x);
  
  fill((float) Math.random() * 255, (float) Math.random() *255, (float) Math.random() *255);
  circle((x_pos * scaler) + x_map,(y_pos * scaler) + y_map, 10);
  
  if(count < 2000){
    drawhenon(x_pos, y_pos, a, b, count +1, scaler, x_map, y_map);
  }
}
public void Illuminati(float x, float y, int size, int min_size){
    tri_down(x, y - size/4, size/2);
    tri_down(x + size/2, y + size * 3/4, size/2);
    tri_down( x - size/2, y + size * 3/4, size/2);
  if(size > min_size){
    size = size/2;
    Illuminati(x, y -size, size, min_size);
    Illuminati(x + size, y + size, size, min_size);
    Illuminati(x - size, y + size, size, min_size);
  }
}

public void tri_down(float x, float y, int size){
  fill((float) Math.random() * 255, (float) Math.random() *255, (float) Math.random() *255);
  triangle((x - size/2), (y - size/2), (x + size/2), (y - size/2), x, (y + size/2));
} 

public void tri_up(float x, float y, int size){
  triangle((x + size/2), (y+ size/2), (x - size/2), (y + size/2), x, (y - size/2));
}
