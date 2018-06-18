## Ruby Processing Examples

See examples on https://ohbarye.github.io/ruby-processing-example

### Example

Here is Ruby code. You don't have to dive into its detail. All you have to know for now is "this is genuine Ruby code".


```ruby
def setup
  P5.createCanvas(P5.windowWidth, P5.windowHeight)
  petals
  stalk
end

def draw
end

def petals
  (0..200).each do |_|
    P5.fill(P5.color(P5.random(255), P5.random(200, 210), P5.random(200, 255), 78))

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
```

This Ruby code results the flower below.

![image](https://user-images.githubusercontent.com/1811616/41538039-2244cfb8-7345-11e8-901a-7b9b5472cc60.png)

### How does it work?

That work consists of the followings.

- Ruby
- Opal
- p5.js

I write Ruby code, then [Opal](https://opalrb.com/) compiles it to JavaScript. The JavaScript code calls methods provided by [p5.js](https://p5js.org/).

That's it. There's no magic, right?
