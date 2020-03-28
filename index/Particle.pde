class Particle {
  PVector pos;
  NoiseLoop xnoise, ynoise;
  Particle(PVector p, PVector xnp, PVector ynp, float inc) {
    this.pos=p;
    this.xnoise=new NoiseLoop(inc, xnp, 3.0, -5, 5);
    this.ynoise=new NoiseLoop(inc, ynp, 3.0, -5, 5);
  }
  void draw() {
    noStroke();
    ellipseMode(CENTER);
    fill(255);
    ellipse(this.pos.x+this.xnoise.get(), this.pos.y+this.ynoise.get(), 2, 2);
  }
}
