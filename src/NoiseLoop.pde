class NoiseLoop{
	float a;
	float r;
	float i;
	PVector p;
	int ss;
	int se;



	NoiseLoop(float inc,PVector p,float r,int ss,int se){
		this.a=-inc;
		this.p=p;
		this.r=r;
		this.ss=ss;
		this.se=se;
		this.i=inc;
	}



	float get(){
		this.a+=this.i;
		return map(noise(this.p.x+cos(this.a)*this.r+this.r/2,this.p.y+sin(this.a)*this.r+this.r/2),0,1,this.ss,this.se);
	}
}
