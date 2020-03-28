class NoiseLoop {
  float a, r, i;
  PVector p;
  int ss, se;
  NoiseLoop(float increment, PVector pos, float radius, int scale_start, int scale_end) {
    this.a=-increment;
    this.p=pos;
    this.r=radius;
    this.ss=scale_start;
    this.se=scale_end;
    this.i=increment;
  }
  float get() {
    this.a+=this.i;
    return map(noise(this.p.x+cos(this.a)*this.r+this.r/2, this.p.y+sin(this.a)*this.r+this.r/2), 0, 1, this.ss, this.se);
  }
}
