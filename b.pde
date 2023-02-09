class Bone{
  Bone parent;
  int type; 
  float len;
  float angle;
  
  Bone(float len, int type){
    this.len = len;
    this.type = type;
  }
  
  Bone(Bone bone, float len, int type){
    this.parent = bone;
    this.len = len;
    this.type = type;
  }
  
  void show(){
    noStroke();
    box(50);
    if(type == 0){
      rotateY(angle);
    }else if(type == 1){
      rotateX(angle);
    }else if(type == 2){
      rotateZ(angle);
    }
    stroke(255);
    line(0, 0, 0, 0, -len, 0);
    translate(0, -len, 0);
    noStroke();
    box(50);
  }
}
