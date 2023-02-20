void flowfields_2d(){
  
  text("FrameRate : "+int(frameRate),menuX,textSize+10);
  text("No of Particles : " + n,menuX,textSize*2 + 10);
  
  addParticles();
  
  //draw all particles
  strokeWeight(r);
  for(int i=0; i<n; i++){
    stroke((x[i].y/20 +  hues - 25)%360, 1 - age[i]/lifespan, 1 - age[i]/lifespan);
    updateState(i);
    
    PVector x0 = PVector.sub(x[i],PVector.mult(v[i],path));
    //point(x[i].x,x[i].y,x[i].z);
    line(x[i].x,x[i].y,x[i].z, x0.x,x0.y, x0.z );
    age[i]++;
  }
}

void updateState(int i){
  
  
  x[i].add(PVector.mult(v[i],h));
  if (x[i].x>=width*0.8 || x[i].x<0 || x[i].y>=height || x[i].y<0 || age[i]==lifespan)
   { reborn(i); return;}
  v[i] = PVector.mult(field[int(x[i].y/scale)][int(x[i].x/scale)],h);
}

void addParticles(){
    //add some particles in each draw
    for(int i=0; i<addRate && n<N-1; i++,n++){
        x[n] = new PVector(random(width), random(height),0);  //assuming one from center of screen
        v[n] = new PVector(0,0,0);
        age[n] = 0;
        //not using acceleration for now
     }
}

void reborn(int i){
  x[i] = new PVector(random(width*0.8), random(height),0);  //assuming one from center of screen
  v[i] = new PVector(0,0,0);
  age[i] = 0;
}
    
