Die bobby;
void setup() {
  background(0);
  size(505, 530);
  noLoop();
  rectMode(CENTER);
  textAlign(CENTER);
}


void draw() {
  int sum = 0;
  background(0);
  for (int y = 50; y<500; y +=75)
  {
    if (y%2 == 0) {
      for (int x = 80; x<500; x +=75) {
        Die bobby = new Die(x, y);
        sum+=bobby.roll;
        bobby.show();
      }
    }
    if (y%2!= 0) {
      for (int x = 50; x<500; x+= 75)
      {
        Die bobby = new Die(x, y);
        sum+=bobby.roll;
        bobby.show();
      }
    }
  }

 // System.out.println(sum);
  textSize(25);
  fill(255);
  text("Total: "+sum,252.5,500);
}


void mousePressed() {
  redraw();
}


class Die {
  int roll, myX, myY;

  Die(int x, int y) //constructor
  {
    roll = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
  }


  void show() {
    noStroke();
    fill(255);
    rect(myX, myY, 60, 60, 10);
    if (roll==1) {
      fill(139,146,187);
      ellipse(myX, myY, 10, 10);
    }
    if (roll==2) {
      fill(101,110,164);
      ellipse(myX-12, myY-12, 10, 10);
      ellipse(myX+12, myY+12, 10, 10);
    }
    if (roll==3) {
      fill(70,77,119);
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX, myY, 10, 10);
    }
    if (roll==4) {
      fill(111,195,192);
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
    }
    if (roll==5) {
      fill(72,173,169);
      ellipse(myX-15, myY-15, 10, 10);
      ellipse(myX+15, myY+15, 10, 10);
      ellipse(myX, myY, 10, 10);
      ellipse(myX+15, myY-15, 10, 10);
      ellipse(myX-15, myY+15, 10, 10);
    }
    if (roll==6) {
      fill(54,130,127);
      ellipse(myX-12, myY-15, 10, 10);
      ellipse(myX+12, myY+15, 10, 10);
      ellipse(myX+12, myY-15, 10, 10);
      ellipse(myX-12, myY+15, 10, 10);
      ellipse(myX-12, myY, 10, 10);
      ellipse(myX+12, myY, 10, 10);
    }
  }
}
