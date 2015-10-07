//your code here
Particle [] matter = new Particle[500];
void setup()
{
	//your code here
	size(300, 300);
	background(0);
	
    for (int i = 0; i < matter.length-2; i++) {
    	matter[i] = new NormalParticle();
    }

    		matter[498] = new OddballParticle();


    		matter[499] = new JumboParticle();
    	    
}
void draw()
{
	//your code here
	background(0);
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
		pSpeed = (float)(Math.random()*3);
		pCol = (int)(Math.random()*255);
		pAng = (float)(Math.random()*2*PI);

	}
	public void move() {
		pX = pX + pSpeed*(cos((float)pAng));
		pY = pY + pSpeed*(sin((float)pAng));
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
		pAng = (float)(Math.random()*2*PI);

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
class JumboParticle extends NormalParticle//uses inheritance
{
	//your code here
	float pX, pY, pSpeed, pAng;
	int pCol;
	
	JumboParticle() {
		pX = 150;
		pY = 150;
		pCol = (int)(Math.random()*255);
		pAng = (float)(Math.random()*2*PI);

	}
	public void move() {
		pX = pX + (cos((float)pAng));
		pY = pY + (sin((float)pAng));
	}
	public void show() {
		fill(pCol, pX, pY);
		ellipse(pX, pY, 25, 25);
	}
}

