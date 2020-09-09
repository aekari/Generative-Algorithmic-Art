/*
Ashleigh Nichols 2020
 https://github.com/aekari?tab=repositories
 
 Inspired by William J Kolomyjec's work titled Boxes.
 Used Processing 5's Reference library for assistance
 and Dan Shffman's YouTube page (The Coding Train)
 */

void setup() {                                  // (setup the canvas and run code within this section once at startup)
  size(661, 406);                               // Make the size of the canvas 661px wide, 406px tall
  frameRate(8);                                 // the processor will attept to refresh 8 times every second
};                                              // (end of the setup function)

void draw() {                                   // (begin the draw function)
  // This is the for loop function that will create all the boxes
  for (int x = 0; x < 661; x = x+55) {          // asign var x to 0; as long as var x is less than 661, add 55 to x. (this makes 12 columns of boxes (55 x 12 = 660)
    for (int y = 0; y < 386; y = y+55) {        // asign var y to 0; as long as var y is less than 386, add 55 to y. (makes 7 rows of boxes (55 x 7 = 385)
      // This if statement makes exceptions for the boxes in the center that I want to appear “invisible”      
      if (
        (x > 220) && (x < 385) && (y == 55) ||  // if these conditions are met (targets the 6th & 7th boxes on the 2nd row) OR
        (x > 165) && (x < 440) && (y == 110)||  // if these conditions are met (targets the 5th - 8th boxes on the 3rd row) OR
        (x > 110) && (x < 495) && (y == 165)||  // if these conditions are met (targets the 4th - 9th boxes on the 4th row) OR
        (x > 165) && (x < 440) && (y == 220)||  // if these conditions are met (targets the 5th - 8th boxes on the 5th row) OR
        (x > 220) && (x < 385) && (y == 275)) { // if these conditions are met (targets the 6th & 7th boxes on the 6th row, then do the following:   
        //This if...else statement controls the changes to the mousePressed() settings for the center boxes when the user clicks within the canvas
        if (mousePressed == true) {             // when the mouse is pressed,
          fill(#005166);                        // change the fill of the center boxes a darker blue color, and
          noStroke();                           // remove the outline from these center boxes.
        } else {                                // otherwise,
          fill(#e8eae6);                        // make the fill in the center boxes a light gray color and
          noStroke();                           // remove the outline from these center boxes
        };                                      // (end of else statement)
      } else {                                  // otherwise,
        stroke(0);                              // make the outlike black on the other squares,
        fill(#100c08);                          // make the fill white on the other squares and
        strokeWeight(1.5);                      // make the strokewight 1.5 times thicker than the default stroke settings.
        //This if...else statement controls the mousePressed() settings for the NON-center boxes when the user clicks within the canvas
        if (mousePressed == true) {             // when the mouse is clicked,
          fill(#100c08);                        // fill the boxes a dark color
          stroke(#00ccff);                      // make the lines on the non-center boxes a blue color
        } else {                                // otherwise,
          fill(#ffffff);                        // make the non-center boxes white
        };                                      // (end of else statement)
      };                                        // (end of the else portion of if...else statement)
      square(x, y, 55);                         // draw a square on the canvas that uses var x and y, and make it 55 px in width and height.
    }                                           // (end of the y for loop function)
  };                                            // (end of the x for loop function)
  //This for statement makes the animated boxes in the center of the screen
  for (int i = 0; i < 20; i = i + 1) {          // keep making squares until 20 are made
    push();                                     // push these new stylings for the code in this section up until pop() is reached to end it;
    rectMode(CENTER);                           // make the rectangle origin points relative to their center point as opposed to the upper lefthand corner; 
    float x = width/2;                          // make a variable called x a decimal that is equal to half of the width of the canvas
    float y = height/2;                         // make a variable called y a decimal that is equal to half of the height of the canvas
    float r = random(0, .1);                    // make a variable called r that is randomly assigned a number between 0 and .1
    float rX = random(-100, 100);               // create float datatype variable called rX and assign it to a random decimal between -100 and 100
    float rY = random(-100, 100);               // create a float datatype cariable called yX and assign it to a random decimal between -100 and 100
    translate(rX, rY);                          // translate will have random x and y coordinates anywhere between -100 and 100 pixels around the center point of the page
    rotate((random(r)));                        // roatate the boxes anywhere between 0 and .1 (degrees?)
    noFill();                                   // do not fill the boxes in with a color
    square(x, y, 55);                           // make a 55x55 px square with an orgin point of 0 (the tranlate code on line 58 will randomly translate the orgin points from 00 to other coordinates within the center of the canvas
    // This if...else statement controls the randomized boxes that appear and dissapear in the center of the canvas
    if (mousePressed == true) {                 // when the mouse is pressed,
      stroke(#00ccff);                          // make the stroke of the randomized boxes a blue color
    } else {                                    // otherwise,
      stroke(#100c08);                          // make the stroke a dark color
    };                                          // (end the else statement)
    pop();                                      // go back to using the styling that was used before push() was initiated;
  };                                            // (end of the for loop)
  // This section is for the text area at the bottom of the canvas
  fill(#100c08);                                // create a dark fill and
  rect(0, height-20, width, 20);                // apply it to a rectangle that fits on the bottom of the canvas
  fill(#ffffff);                                // create a white fill and
  text("Ashleigh Nichols 2020 | Inspired by William J. Kolomyjec's work 'Boxes.'", 230, 400); //apply it to this text
}                                               // (end of the draw function)
