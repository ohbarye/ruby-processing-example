# This example comes from https://p5js.org/examples/3d-geometries.html

def setup
  P5.createCanvas(P5.windowWidth, P5.windowHeight, P5.WEBGL)
end

def draw
  P5.push
  P5.rotateZ(P5.frameCount * 0.01)
  P5.rotateX(P5.frameCount * 0.02)
  P5.rotateY(P5.frameCount * 0.01)
  P5.torus(100, 40)
  P5.pop
end
