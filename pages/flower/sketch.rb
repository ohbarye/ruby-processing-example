def setup
  P5.createCanvas(P5.windowWidth, P5.windowHeight)
  # P5.background(48)
  petals
  stalk
end

def draw
end

def petals
  # P5.noStroke()

  (0..200).each do |_|
    # P5.fill(P5.color(P5.random(200, 255), P5.random(200, 255), P5.random(255), 78)) # yellow
    P5.fill(P5.color(P5.random(255), P5.random(200, 210), P5.random(200, 255), 78)) # blue

    P5.beginShape
    P5.curveVertex(0, 0)
    P5.curveVertex(400, 350)
    P5.curveVertex(P5.random(400), P5.random(600))
    P5.curveVertex(P5.random(400), P5.random(400))
    P5.endShape
  end
end

def stalk
  (0..30).each do |i|
    P5.fill(P5.color(144, P5.random(200, 255), 144, 60))
    P5.beginShape
    P5.curveVertex(400, i)
    P5.curveVertex(400, 350)
    P5.curveVertex(800, 700)
    P5.curveVertex(P5.random(500), P5.random(700))
    P5.endShape
  end
end

