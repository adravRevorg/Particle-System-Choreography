import controlP5.*;

ControlP5 cp5;

int slider_length;
int slider_height;
float xpos;

boolean perlin = true;
boolean spiral = true;
boolean magnetic = true;

void add_UI(){
  cp5 = new ControlP5(this);
  
  slider_length = floor(width*0.1);
  slider_height = 15;
  xpos = width*0.85;
  int p = 150, g = 22;
  
  
  cp5.addSlider("hues")
     .setPosition(xpos,p)
     .setRange(1,360)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ; p+=g;
     
  cp5.addSlider("sat")
     .setPosition(xpos,p)
     .setRange(0,1)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ; p+=g;
     
  cp5.addSlider("bri")
     .setPosition(xpos,p)
     .setRange(0,1)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ; p+=2*g;
  
  cp5.addSlider("sw")
     .setPosition(xpos,p)
     .setRange(0.5,5)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ;  p+=g;
  
  
   
  cp5.addSlider("h")
     .setPosition(xpos,p)
     .setRange(0,10)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ; p+=g; 
    
  cp5.addSlider("path")
     .setPosition(xpos,p)
     .setRange(0,2)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ;  p+=2*g;
     
  cp5.addButton("perlin")
     .setValue(0)
     .setPosition(xpos,p)
     .setSize(100,slider_height)
     ; p+=g;
  
  cp5.addSlider("xoff")
     .setPosition(xpos,p)
     .setRange(0,1)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ; p+=g;
   
  cp5.addSlider("yoff")
     .setPosition(xpos,p)
     .setRange(0,1)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ; p+=2*g;  
  
  
  cp5.addButton("spiral")
     .setValue(0)
     .setPosition(xpos,p)
     .setSize(100,slider_height)
     ; p+=g;
     
 cp5.addSlider("radius")
     .setPosition(xpos,p)
     .setRange(10,300)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ;  p+=2*g;
   
  cp5.addButton("magnetic")
     .setValue(0)
     .setPosition(xpos,p)
     .setSize(100,slider_height)
     ; p+=g;
     
  cp5.addSlider("angle")
     .setPosition(xpos,p)
     .setRange(0,TWO_PI)
     .setWidth(slider_length)
     .setHeight(slider_height)
     ;  p+=g;
     
  
     
  
     
  
  
}


void perlin(){
  if (perlin)  {perlin = false; return;}
  noLoop();
  set_field();
  loop();
}

void magnetic(){
  if (magnetic)  {magnetic = false; return;}
  noLoop();
  set_field_circular();
  loop();
}

void spiral(){
  if (spiral)  {spiral = false; return;}
  noLoop();
  set_field_spiral();
  loop();
}
