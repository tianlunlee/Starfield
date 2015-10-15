//your code here
Particle [] matter = new Particle[500];
void setup()
{
	//your code here
	size(300, 300);
	background(0);
	// CREATE PARTICLES USING ARRAY INDEX
    for (int i = 0; i < matter.length-2; i++) {
    	matter[i] = new NormalParticle();
    }

    		matter[498] = new OddballParticle();


    		matter[499] = new JumboParticle();
    	    
}
void draw()
{
	//your code here
	// RUNS THE SHOW AND MOVE FUNCTIONS
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
		// INITIALIZE IN CENTER, SPEED, ANGLE, AND COLOR ARE RANDOM
		pX = 150;
		pY = 150;
		pSpeed = (float)(Math.random()*2+1);
		pCol = (int)(Math.random()*255);
		pAng = (float)(Math.random()*TAU);

	}
	public void move() {
		// CHANGES POSITION BASED ON ANGLE AND SPEED
		pX = pX + pSpeed*(cos((float)pAng));
		pY = pY + pSpeed*(sin((float)pAng));
		// LOOP BACK INTO CENTER WHEN PARTICLE EXITS SCREEN
		if (pX > 300 && pY > 300 || pX < 0 && pY < 0 || pX > 300 && pY < 0 || pX < 0 && pY > 300) {
			pX = 150;
			pY = 150;
			//RESETS ANGLE AND SPEED
			pSpeed = (float)(Math.random()*2+1);
			pAng = (float)(Math.random()*TAU);
		}
	}
	public void show() {

		// LEFT CLICK MAKES EVERYTHING WHITE
		if (mousePressed == true && mouseButton == LEFT) {
			fill(255, 255, 255);
		}
		else if (mousePressed == true && mouseButton == RIGHT) {
			fill (0);
		}
		else {
			fill(pCol, pX, pY);
		}
		ellipse(pX, pY, 5, 5);
	}
}
interface Particle
{
	//your code here
	// ALL PARTICLES HAVE THESE FUNCTIONS
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
		
		

	}

	void move() {
		//SPEED AND ANGLE CONSTANTLY CHANGE
		
			pAng = (float)(Math.random()*TAU);

			pSpeed = 3;
			pX = pX + pSpeed*(cos((float)pAng));
			pY = pY + pSpeed*(sin((float)pAng));
			if (pX > 300 && pY > 300 || pX < 0 && pY < 0 || pX > 300 && pY < 0 || pX < 0 && pY > 300) {
			pX = 150;
			pY = 150;
			
		}


	}
	void show() {
		fill (255, 255, 255);
		ellipse ( pY, pY, pX/10, pY/10);
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
		pSpeed = (float)(Math.random()*2+1);
		pCol = (int)(Math.random()*255);
		pAng = (float)(Math.random()*TAU);

	}
	public void move() {

		pX = pX + pSpeed*(cos((float)pAng));
		pY = pY + pSpeed*(sin((float)pAng));
		// LOOPS BACK TO CENTER
		if (pX > 300 && pY > 300 || pX < 0 && pY < 0 || pX > 300 && pY < 0 || pX < 0 && pY > 300) {
			pX = 150;
			pY = 150;
			// CHANGES ANGLE BY 30 DEGREES EVERY LOOP 
			pAng = pAng + PI/6;
		}
	}
	public void show() {
		// LEFT CLICK MAKES EVERYTHING WHTIE
		if (mousePressed == true && mouseButton == LEFT) {
			fill(255, 255, 255);
		}
		else if (mousePressed == true && mouseButton == RIGHT) {
			fill (0);
		}
		else {
			fill(pCol, pX, pY);
		}
		ellipse(pX, pY, 25, 25);
	}
}

