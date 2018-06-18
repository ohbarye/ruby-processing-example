# This example comes from https://p5js.org/examples/3d-sine-cosine-in-3d.html

def setup
  P5.createCanvas(P5.windowWidth, P5.windowHeight, P5.WEBGL)
end

def draw
  P5.background(250);
  P5.rotateY(P5.frameCount * 0.01);

  5.times do |j|
    P5.push

    80.times do |i|
      P5.translate(P5.sin(P5.frameCount * 0.001 + j) * 100, P5.sin(P5.frameCount * 0.001 + j) * 100, i * 0.1);
      P5.rotateZ(P5.frameCount * 0.002);
      P5.push
      P5.sphere(8, 6, 4);
      P5.pop
    end

    P5.pop
  end
end
