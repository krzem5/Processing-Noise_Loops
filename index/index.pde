ArrayList<Particle> particles=new ArrayList<Particle>();
float speed=2;
int total_frames=(int)(360/speed);
void setup() {
  size(650, 430);
  for (int a=0; a<360; a+=4) {
    particles.add(new Particle(new PVector(cos(radians(a))*100,sin(radians(a))*100), new PVector(a*5, 0), new PVector(a*5, 5), radians(speed)));
  }
}
void draw() {
  background(0);
  translate(width/2, height/2);
  for (Particle p : particles) {
    p.draw();
  }
  if (frameCount==total_frames) {
    exit();
  }
  saveFrame("output/gif-###.png");
}
