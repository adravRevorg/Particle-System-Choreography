void set_field(){
  
  for(int i=0; i<height/scale; i++){
    
    for(int j=0; j<width/scale; j++){
      float theta = noise(j*xoff,i*yoff)*TWO_PI;
      field[i][j] = new PVector(cos(theta),sin(theta));
    }
  }
}

void set_field_spiral(){
  
  h = 1;
  PVector attr = new PVector(0.3*width, height*0.5);
  for(int i=0; i<height/scale; i++){
    
    for(int j=0; j<width/scale; j++){
      float theta = dist(attr.x,attr.y,j*scale,i*scale)/radius;
      field[i][j] = new PVector(cos(theta),sin(theta));
    }
  }
  
}

void set_field_circular(){
  h = 1;
  PVector attr = new PVector(width*0.4, height*0.5);
  for(int i=0; i<height/scale; i++){
    
    for(int j=0; j<width/scale; j++){
      float theta = dist(attr.x,attr.y,j*scale,i*scale)*angle;
      field[i][j] = new PVector(cos(theta),sin(theta));
    }
  }
}
