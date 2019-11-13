//your variable declarations here
Spaceship bob;
Star[] shine = new Star[150];
boolean wIsPressed = false;
boolean dIsPressed = false;
boolean aIsPressed = false;
public void setup() 
{
  background(0);
  size(600,600);
  bob = new Spaceship();
  for(int i = 0; i < shine.length; i++){
  	shine[i] = new Star();
  }
}
public void draw() 
{	
	fill(0);
	rect(0,0,600,600);
	
	for(int i = 0; i < shine.length; i++){
  		shine[i].show();
  	}
	
	bob.show();
	bob.move();
	if(wIsPressed == true){
		bob.accelerate(0.05);
	}
	if(aIsPressed == true){
		bob.turn(-2);
	}
	if(dIsPressed == true){
		bob.turn(2);
	}
	if(wIsPressed == true && aIsPressed == true){
		bob.accelerate(0.05);
		bob.turn(-3);
	}
	if(wIsPressed == true && dIsPressed == true){
		bob.accelerate(0.05);
		bob.turn(3);
	}
}



public void keyPressed(){
	if(key == 'w'){
		wIsPressed = true;
	}
	if(key == 'd'){
		dIsPressed = true;
	}
	if(key == 'a'){
		aIsPressed = true;
	}
	if(key == 'e'){
		bob.hyperspace();
	}
}

public void keyReleased(){
	if(key == 'w'){
		wIsPressed = false;
	}
	if(key == 'd'){
		dIsPressed = false;
	}
	if(key == 'a'){
		aIsPressed = false;
	}
}
