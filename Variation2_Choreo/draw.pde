void draw(){
  
  displaySet();
  
  switch(key)
  {
    case 'f' : flowfields_2d();       break;
    case 'p' : para_obj.all_steps();  break;
    case 's' : sine_obj.all_steps();  break;
    case 't' : tan_obj.all_steps();   break;
    case 'd' : torus_obj.all_steps(); break;
    case 'h' : helix_obj.all_steps(); break;
  }
  
}

void displaySet(){
  
  background(0);
  fill(210,0.7,1);
  int p = height/2+100, g = 30;
  text("Key Mappings", menuX, p);    p+=g;
  text("2D Flowfields    :  f         Sine   :  s", menuX, p);    p+=g;
  text("Paraboloid        :  p         Tan    :  t", menuX, p);    p+=g;
  text("Doughnut          :  d         Helix  :  h", menuX, p);    p+=g;

}
