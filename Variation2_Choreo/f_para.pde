class paraboloid implements curves {

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

  void all_steps() {
    addParticles();
    updateParticle();
    drawParticles();
  }


  void addParticles() {
    for (int i=0; i<addRate && n<N; i++, n++) {
      theta[n] = random(TWO_PI);
      y[n] = 0;
      clr[n] = color(constrain((n/3)%360, 150, 220), 1, 1);
    }
  }

  void updateParticle() {
    for (int i=0; i<n; i++) {
      y[i]+=1;
      theta[i]+=0.01;

      if (y[i]>height/2)
        reborn(i);
    }
  }

  void reborn(int i) {
    theta[i] = random(TWO_PI);
    y[i] = 0;
  }
  
  
  void drawParticles() {
    
    text("FrameRate : "+int(frameRate),menuX,textSize+10);
    text("No of Particles : " + n,menuX,textSize*2 + 10);
    
    stroke(hues, sat, bri);
    strokeWeight(sw);
    for (int i=0; i<n; i++) {
      float x = sqrt(y[i]*200)*cos(theta[i]);
      float z = sqrt(y[i]*200)*sin(theta[i]);

      
      point(width/2- x, height/2+y[i], z-200);
      point(width/2- x, height/2-y[i], z-200);
      //point(width/2- y[i], height/2+x, z-200);
      //point(width/2+ y[i], height/2-x, z-200);
      
      
    }
  }
}
