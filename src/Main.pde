final float SPEED=2;
final int FRAME_COUNT=(int)(360/SPEED);



ArrayList<Particle> pl=new ArrayList<Particle>();



void setup(){
	size(650,430);
	for (int a=0;a<360;a+=4){
		pl.add(new Particle(new PVector(cos(radians(a))*100,sin(radians(a))*100),new PVector(a*5,0),new PVector(a*5,5),radians(SPEED)));
	}
}



void draw(){
	background(0);
	translate(width/2,height/2);
	for (Particle p:pl){
		p.draw();
	}
	if (frameCount==FRAME_COUNT){
		exit();
	}
	saveFrame("output/gif-###.png");
}
