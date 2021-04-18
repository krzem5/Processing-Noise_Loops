class Particle{
	PVector p;
	NoiseLoop nl_x;
	NoiseLoop nl_y;



	Particle(PVector p,PVector xnp,PVector ynp,float inc){
		this.p=p;
		this.nl_x=new NoiseLoop(inc,xnp,3.0,-5,5);
		this.nl_y=new NoiseLoop(inc,ynp,3.0,-5,5);
	}



	void draw(){
		noStroke();
		ellipseMode(CENTER);
		fill(255);
		ellipse(this.p.x+this.nl_x.get(),this.p.y+this.nl_y.get(),2,2);
	}
}
