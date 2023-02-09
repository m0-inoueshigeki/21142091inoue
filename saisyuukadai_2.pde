Arm arm;
float L1 = 250, L2 = 150, L3 = 120 ,L4 = 120;
float angle0 = 0;
float jSize = 10;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float dif = 0.05;

void setup(){
  size(700, 700, P3D);
  strokeWeight(20);
  background(255);
  arm = new Arm(new PVector(0, 0));
  arm.addBone(L1, 0);
  arm.addBone(L2, 2);
  arm.addBone(L3, 1);
  arm.addBone(L4, 2);
  angle0+=0.01;
}

void draw(){
  background(0);
  lights();
  if(keyPressed){
   if(key == 'e'){
   angle0 = angle0 + dif;
   }
   if(key == 'q'){
   angle0 = angle0 - dif;
   }
   if(key == 'a'){
   angle1 = angle1 + dif;
   }
   if(key == 'd'){
   angle1 = angle1 - dif;
   }
   if(key == 'w'){
   angle2 = angle2 + dif;
   }
   if(key == 's'){
   angle2 = angle2 - dif;
   }
   if(key == 'z'){
   angle3 = angle3 + dif;
   }
   if(key == 'c'){
   angle3 = angle3 - dif;
   }
  }
  translate(width/2, height,-width/2);
  arm.show();
  arm.setAngle(0, angle0);
  arm.setAngle(1, angle1);
  arm.setAngle(2, angle2);
  arm.setAngle(3, angle3);
}

void translate(PVector p){
  translate(p.x, p.y, p.z);
}

void rotate(PVector p){
  rotateX(p.x);
  rotateY(p.y);
  rotateZ(p.z);
}

void line(PVector a, PVector b){
  line(a.x, a.y, a.z, b.x, b.y, b.z);
}
