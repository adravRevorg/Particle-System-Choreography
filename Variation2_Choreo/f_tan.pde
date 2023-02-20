class tan implements curves{
  
  float[] theta = new float[N];  //fixed x 
float[] theta1 = new float[N];

//xyz (in some cases we would need the x , some y, and etc)
float[] y = new float[N];  //change y to move up and down
float[] x = new float[N];
float[] z = new float[N];
color[] clr = new color[N];

int n=0;


float scaleX = 70;
float scaleY = 250;
float scaleZ = 70;

int addRate = 10;
  float zmin = -400;
  float zmax = 0;
  
  
  void all_steps() {
    addRate = 30;
    scaleX = 100;
    scaleY = 50;
    
    addParticles();
    updateParticle();
    drawParticles();
  }
  
  void addParticles(){
    for (int i=0; i<addRate && n<N; i++, n++) {
      theta[n] = 0;
      x[n] = 0;
      z[n] = random(zmin,zmax);
    }
  }
  
  void updateParticle() {
    for (int i=0; i<n; i++) {
      x[i]+=0.03;
      theta[i]+=0.01;

      if (x[i]*scaleX>width*1.5)
        reborn(i);
    }
  }
  
   void reborn(int i) {
      theta[i] = 0;
      x[i] = 0;
      z[i] = random(zmin,zmax);
  }
  
  void drawParticles() {
    
    text("FrameRate : "+int(frameRate),menuX,textSize+10);
    text("No of Particles : " + n,menuX,textSize*2 + 10);
    stroke(hues, sat, bri);
    strokeWeight(sw);
    
    for (int i=0; i<n; i++) {

      float y = tan(x[i]);
      point(x[i]*scaleX, height/2 - y*scaleY,z[i]);
      
      
    }
  }
}
