/*Submitted by VARDA GROVER, for HW2
This program has a variety of flowfields 
2D : perlin, spiral and magnetic
3D : some 3d curves like paraboloid, sine, tan, torus and a helix
For 2d Flowfields, I compute the flow fields once and reuse them.
For 3d curves, I compute the particles state depending on the curve it is on.
Since 3d curves were almost similar, I made an OOP interface which is then
implemented by each.
Key mappings to display each available type.
For interactivity, there are changeable values for :
HSB, the timestep, strokeweight, perlin noise offset, etc
Only external credit : For sliders and buttons, I used an external library named cp5
*/

//All things we want

//flow field parameters
int N = 30000;
int n =0;
PVector[][] field;
int scale = 10;
//state
PVector[] x = new PVector[N];
PVector[] v = new PVector[N];
PVector[] a = new PVector[N];
PVector[] o = new PVector[N];


float h = 2; //timestep;

int[] age = new int[N];
int lifespan = 500; //let's change this later, vary for each particle
int r = 2; //let's change later too probably
int startCtr = 0;

int addRate = 200;  //number of particles being added per frame

//choreography
float xoff = 0.01;
float yoff = 0.01;


//3d curve related
paraboloid para_obj;
sine sine_obj;
helix helix_obj;
torus torus_obj;
tan tan_obj;

//Interactivity Related
int textSize = 30;
float hues = 180;
float sat = 1;
float bri = 1;
float path = 0.4;
float radius = 100;
float angle = PI/4;
float sw = 2;
float menuX;

//attractors
int no_attr = 1;          //no of attractors
PVector[] attr_pos = new PVector[no_attr];    //attractor locations
float[] attr_g = new float[no_attr];          //gravity associated with each attractor
