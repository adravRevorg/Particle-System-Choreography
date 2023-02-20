void setup(){
  size(1800,1000,P3D);
  surface.setLocation(10,10);
  textSize(18);
  colorMode(HSB,360,1,1);
  initialise();
  add_UI();
}

void initialise(){
  field = new PVector[height/scale][width/scale];
  set_field();
 // draw_field();
  para_obj = new paraboloid();
  sine_obj = new sine();
  helix_obj = new helix();
  torus_obj = new torus();
  tan_obj = new tan();
  
  menuX = width*0.85;
}



void draw_field(){
  
  background(0);
  stroke(255);
  for(int i=0; i<height/scale; i++){
    
    for(int j=0; j<width/scale; j++){
      
      PVector x0 = new PVector(j*scale,i*scale);
      PVector x1 = PVector.add(x0,PVector.mult(field[i][j],scale));
      line(x0.x,x0.y,x1.x,x1.y);
    }
  }
}
        
