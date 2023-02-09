class Arm{
  ArrayList<Bone> bones = new ArrayList<Bone>();
  PVector k;
  Arm(PVector pos){
    this.k = pos;
  }
  
  void addBone(float len, int type){
    if(bones.isEmpty()){
      bones.add(new Bone(len, type));
    }else{
      bones.add(new Bone(bones.get(bones.size()-1), len, type));
    }
  }
  
  void setAngle(int index, float angle){
    bones.get(index).angle = angle;
  }
  
  void show(){
    stroke(255);
    pushMatrix();
    translate(k);
    for(Bone bone : bones){
      bone.show();
    }
    popMatrix();
  }
}
