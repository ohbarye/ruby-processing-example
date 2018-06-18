@f = 60
@r = 0
@u = Math::PI * 2
@q = nil

def setup
  P5.createCanvas(P5.windowWidth, P5.windowHeight)
  P5.frameRate(10)
end

def draw
  P5.background(25, 200)
  drawLightnings
  drawCircles
end

def drawLightnings
  P5.noStroke()
  10.times do |_|
    @q = [{x: P5.mouseX, y: P5.mouseY}, {x: P5.random(P5.mouseX - 10, P5.mouseX + 10), y: P5.height * 0.7 - @f}]
    while (@q[1][:x] < P5.width + @f) do
      drawTriangle(@q[0], @q[1])
    end
  end
end

def drawTriangle(i, j)
  @r -= @u / -50
  c = (Math.cos(@r) * 127 + 128 << 16 | Math.cos(@r + @u / 3) * 127 + 128 << 8 | Math.cos(@r + @u / 3 * 2) * 127 + 128).to_s(16)

  P5.fill(P5.color(c[0, 2].to_i(16), c[2, 4].to_i(16), c[4, 6].to_i(16), 200))

  P5.beginShape()
  P5.vertex(i[:x], i[:y])
  P5.vertex(j[:x], j[:y])
  k = j[:x] + (rand * 2 - 0.25) * @f
  n = y(j[:y])
  P5.vertex(k, n)
  P5.endShape(P5.CLOSE)

  @q[0] = @q[1]
  @q[1] = {x: k, y: n}
end

def y(p)
  t = p + (rand * 2 - 1.1) * @f
  (t > P5.height || t < 0) ? y(p) : t
end

def drawCircles
  P5.stroke(255, 200)

  radius = 10

  100.times do
    P5.fill(P5.color(P5.random(100, 255), P5.random(100, 255), P5.random(255), 100))
    P5.ellipse(P5.random(P5.mouseX - radius, P5.mouseX + radius), P5.random(P5.mouseY - radius, P5.mouseY + radius,), P5.random(50))
  end
end
