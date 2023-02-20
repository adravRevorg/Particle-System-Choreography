class torus implements curves {
  
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
  float c = 200;
  float a = 100;


  void all_steps() {
    
    addRate = 30;
    
    addParticles();
    updateParticle();
    drawParticles();
  }


  void addParticles() {
    for (int i=0; i<addRate && n<N; i++, n++) {
      theta[n] = random(TWO_PI);
      theta1[n] = random(TWO_PI);
      
    }
  }

  void updateParticle() {
    for (int i=0; i<n; i++) {
      
      theta[i]+=0.02;

      if (theta[i]>=random(1,2)*TWO_PI)  //doing random because otherwise a stark ending point shows
        reborn(i);
    }
  }

  void reborn(int i) {
    theta[i] = random(TWO_PI);
    theta1[i] = random(TWO_PI);
  }
  
  
  void drawParticles() {
    
    text("FrameRate : "+int(frameRate),menuX,textSize+10);
    text("No of Particles : " + n,menuX,textSize*2 + 10);
    
    stroke(hues, sat, bri);
    strokeWeight(sw);
    
    for (int i=0; i<n; i++) {
      float u = theta[i], v = theta1[i];
      float x = (c+a*cos(v))*cos(u);
      float y = (c+a*cos(v))*sin(u);
      float z = a*sin(v);
      
      point(width*0.7- x, height/2+y, z-200);
      point(width*0.3 - x, height/2 + z, y - 200);
    }
  }
}
