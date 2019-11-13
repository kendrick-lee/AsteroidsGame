class Star //note that this class does NOT extend Floater
{
  private int myX, myY;

  Star(){
  	myX = (int) (Math.random()*600)+1;
  	myY = (int) (Math.random()*600)+1;
  }

  private void show(){
  	fill(255);
  	ellipse(myX, myY, 3,3);
  }
}
