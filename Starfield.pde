//your code here
void setup()
{
	//your code here
	size(300, 300);
	Particle [] matter = new Particle[20];
    for (i = 0; i < matter.length; i++) {
    	if (i % 2 == 0 || i % 3 == 0 || i % 5 == 0) {
    		matter[i] = new NormalParticle;
    	}
    	else if (i % 7 == 0 || i % 11 == 0 || i % 13 == 0) {
    		matter[i] = new JumboParticle;
    	} 
    	else {
    		matter[i] = new OddballParticle;
    	}
    }
}
void draw()
{
	//your code here
}
class NormalParticle
{
	//your code here
	double pX, pY, pSpeed, pAng;
	int pCol;
	NormalParticle() {

	}
	void move() {
		pX = pX + (cos(pAng));
		pY = pY + (sin(pAng));
	}
	void show() {
		fill(pCol);
		ellipse(pX, pY, 5, 5);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

