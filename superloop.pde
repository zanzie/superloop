float noiseScale=0.02;
float xoff = 0.0;
float val = 0;

int mult = 0;
int valMult = 0;

PVector move = new PVector(0, 0);

int opac = 0;



float z = 1;
PImage source1;
PImage source2;
PImage source3;
PImage source4;

//PImage grab = get(300,300,500,500);

void setup(){
size (800,800,P3D);
  source1 = loadImage("source1.png");
  source2 = loadImage("source2.png");
  source3 = loadImage("source3.png");
  source4 = loadImage("source4.png");
  smooth();  
  //noCursor();
}

void draw() {
//move.x = mouseX-width/2;
move.y = mouseY-height/2;
//background(0);
makeArray();
val = val+valMult;
println(val);
//rect(mouseX,mouseY, noise(mouseX)*4+20,noise(mouseY)*4+20);
//noStroke();
//text(val,10,10);
//rect(0,0,10,20);

}







void makeArray(){
  

  
  source1.loadPixels();
  source2.loadPixels();
  source3.loadPixels();
  source4.loadPixels();

if (key == 'w'){


  for (int y = 0; y<source1.height; y++) {
    
    for (int x = 0; x<source1.height; x++) {

      color pickcolor = source1.get(x,y);
  stroke(pickcolor,opac);
  //noStroke();
 
  
  point((x/z)+mouseX-source1.height/2,(y/z)+mouseY-source1.height/2,sin(x/4)*mult*(val));
    

    
  source1.updatePixels();
    }
  //ellipse(x, y,random(10),random(10));
  //source.updatePixels();
}


  }
  
  if (key == 'e'){


  for (int y = 0; y<source2.height; y++) {
    
    for (int x = 0; x<source2.height; x++) {

      color pickcolor = source2.get(x,y);
  //image(source, 0, 0,height/2,width/2);
 stroke(pickcolor,opac);
  //noStroke();
 
    
  point((x/z)+mouseX-source2.height/2,(y/z)+mouseY-source2.height/2,sin(x/4)*mult*(val));
    
   

    
  source2.updatePixels();
    }
  //ellipse(x, y,random(10),random(10));
  //source.updatePixels();
}


  }
  
  if (key == 'r'){


  for (int y = 0; y<source3.height; y++) {
    
    for (int x = 0; x<source3.height; x++) {

      color pickcolor = source3.get(x,y);
 stroke(pickcolor,opac);
  //noStroke();
  if(val<200){
    
  point((x/z)+mouseX-source3.height/2,(y/z)+mouseY-source3.height/2,sin(x/4)*mult*(val));
    
  } 
  source3.updatePixels();
    }
  //ellipse(x, y,random(10),random(10));
  //source.updatePixels();
}


  }
  
  
  if (key == 't'){


  for (int y = 0; y<source4.height; y++) {
    
    for (int x = 0; x<source4.height; x++) {

      color pickcolor = source4.get(x,y);
  stroke(pickcolor,opac);
  //noStroke();
 
    
  point((x/z)+mouseX-source4.height/2,(y/z)+mouseY-source4.height/2,sin(x/4)*mult*(val));
    
 
  source4.updatePixels();
    }
  //ellipse(x, y,random(10),random(10));
  //source.updatePixels();
}


  }
  
  
  
}

void keyPressed(){
  
 if (key == CODED) {
    if (keyCode == DOWN) {
    mult = mult - 1;
    }
  }
 
 if (key == CODED) {
    if (keyCode == UP) {
    mult = mult + 1;
    }
  }
  
  if (key == CODED) {
    if (keyCode == LEFT) {
    valMult = -1;
    }
  }
  
   if (key == CODED) {
    if (keyCode == RIGHT) {
    valMult = 1;
    }
  }
  
  if (key == CODED) {
    if (keyCode == SHIFT) {
    valMult = 0;
    val = 0;
    }
  }
  
  
  
  
  
  
  if (key == '1') {
    
    PImage source1 = get(mouseX-100,mouseY-100,200,200);
   source1.save("data/source1.png");
   source1 = loadImage("source1.png");
   

   
  }
  
  if (key == '2') {
       PImage source2 = get(mouseX-100,mouseY-100,200,200);
   source2.save("data/source2.png");
  }
  
  if (key == '3') {
     PImage source3 = get(mouseX-100,mouseY-100,200,200);
   source3.save("data/source3.png");
  }
  
  if (key == '4') {
        PImage source4 = get(mouseX-100,mouseY-100,200,200);
   source4.save("data/source4.png");
  }
  if (key == '5') {
    save("data/output/out.tiff");
  }
  
  if (key == 'j') {
    opac = 80;
  }
  
  if (key == 'k') {
    opac = 15;
  }
  
  if (key == 'l') {
    opac = 0;
  }
  
   if (key == 'y') {
    z = .5;
  }
  
  
  if (key == 'u') {
    z = 1;
  }
  
  if (key == 'i') {
    z = 2;
  }
  
  if (key == 'm') {
    
   float n = noise(xoff) * width;
  for (int x=0; x < width; x++) {
    xoff = (xoff*x) + .01;
    float noiseVal = noise((n+x)*noiseScale, 
                            val*noiseScale);
    stroke(noiseVal*255,opac);
    line(x, (val+noiseVal*80)-50, x,(val+noiseVal*80)-mouseY);
    
   
  } 
  }
  
    if (key == 'n') {
    
   float n = noise(xoff) * width;
  for (int x=0; x < width; x++) {
    xoff = (xoff*x) + .01;
    float noiseVal = noise((n+x)*noiseScale, 
                            val*noiseScale);
    stroke(noiseVal*255,noiseVal*30,noiseVal*(mouseX/3),(opac));
    line(x, (val+noiseVal*80)-50, x,(val+noiseVal*80)-mouseY);
    
   
  } 
  }
  
  if (key == 'z') {
    val = 0;
  }
  
  
}
