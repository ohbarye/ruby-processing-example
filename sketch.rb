def setup
  P5.createCanvas(600, 400)
  P5.frameRate(4)
end

def draw
  P5.background(255)

  (100..400).each do |i|
    r = P5.random(200)
    P5.stroke(P5.color(P5.random(r),P5.random(i),P5.random(i), 60));

    P5.line(300, r, i, 100)
    P5.line(300, i, i, 100)

    P5.line(i, i, i, 300)
    P5.line(i, i, r, 300)
    P5.line(i, r, i, 300)

    P5.line(500, r + 200, i + 200, i)
  end
end
