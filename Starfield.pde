//your code here
Particle [] matter = new Particle[500];
void setup()
{
	//your code here
	size(300, 300);
	background(0);
	
    for (int i = 0; i < matter.length-2; i++) {
    	
    	if (i == 498) {
    		matter[0] = new OddballParticle();

    	}
    	if (i == 499){
    		matter[i] = new JumboParticle();
    	}
    }
}
void draw()
{
	//your code here
	for (int i = 0; i < matter.length; i++) {
		matter[i].move();
		matter[i].show();
	}
}
class NormalParticle implements Particle
{
	//your code here
	float pX, pY, pSpeed, pAng;
	int pCol;
	NormalParticle() {
		pX = 150;
		pY = 150;
		pCol = (int)(Math.random()*255);
		pAng = (float)(Math.random()*360);

	}
	public void move() {
		pX = pX + (cos((float)pAng));
		pY = pY + (sin((float)pAng));
	}
	public void show() {
		fill(pCol, pX, pY);
		ellipse(pX, pY, 5, 5);
	}
}
interface Particle
{
	//your code here
	public void move(); 

	
	public void show();

}
class OddballParticle implements Particle //uses an interface
{
	float pX, pY, pSpeed, pAng;
	int pCol;
	OddballParticle() {
		pX = 150;
		pY = 150;
		pCol = (int)(Math.random()*255);
		pAng = (float)(Math.random()*360);

	}

	void move() {
		pX = pX + ((float)Math.random()*2-1);
		pY = pY + ((float)Math.random()*2-1);
	}
	void show() {
		fill (pX, pCol, pY);
		ellipse ( pY, pY, 5, 5);
	}
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

