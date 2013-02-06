

//Katy Law
//2. 5. 2013
//start with hw2
//add 5+ variable
//have them control and change size, color and movement
//add mouseX and or mouseY

//HW 2
/*Go to http://www.artstor.org/ (use a school computer to receive free access or read the instructions on the school website: http://libraries.cca.edu/learn/search-help/artstor) and find an image to recreate using Processing. Strong, graphic images will work best. Some search terms that return good imagery:
 
 suprematism
 constructivism
 graphic design
 poster
 
 *Recreate the image using shapes and colors in Processing
 *Use at least 5 different types of shapes (ie: rect(), ellipse(), line(), curve(), etc) and at least 2 colors
 *Include the work's title in a comment
 *Upload the results to your sketchpad.cc account
 */

//source from http://library.artstor.org/library/ExternalIV.jsp?objectId=%2FDNCeCtIKTE9JS46fA%3D%3D
//LIFE - BY ANY COMPUTATION, QUALITY. Dennis Wheeler 1963


float xPos;
float yPos;
int border;
PFont font;
float fsize;
  
void setup() {
  size(800, 630);
  smooth();
  border = 0;
  font = loadFont("AdobeGothicStd-Bold-48.vlw");
}


void draw() {
  
  //the border
  border += 1; 
  background(border, 100);
  if(border > 255){
   border = 0;
  }
 
  noStroke();  


  //large dark blue rectangle
  fill(#1E262E);
  rect(20, 20, 760, 590);


  //red shape
  //xPos += random(-20,20);
  //thinking about using xPos
  yPos += .5;
  
  fill(#AF3032);
  rect(92, 280 + yPos, 650, 330);
   
  if(yPos > height){
   yPos = 0;
  }


  // blue cornner of the red shape
  fill(#1E262E);
  //top left corner, right pt, bot left pt
  triangle(92, 280 + yPos, 145, 280 + yPos, 92, 370 + yPos);

  if(yPos > 200){
   yPos = 0;
  }


  //the word LIFE
  
  //practicing drawing a stroke, the left of the L
  stroke(#E3DEDE);
  strokeWeight(57);
  line(148, 350, 150, 560);
  noStroke();

  fill(#E3DEDE);
  rect(120, 320, 57, 50);

  //bottom of L
  rect(122, 560, 144, 50);

  //I
  rect(290, 320, 58, 290);

  //F
  beginShape();  
  vertex(395, 320+mouseY);
  vertex(535, 320+mouseY);
  vertex(535, 383+mouseY);
  vertex(455, 383+mouseY);
  vertex(455, 445+mouseY);
  vertex(515, 445+mouseY);
  vertex(515, 502+mouseY);
  vertex(455, 502+mouseY);
  vertex(455, 610+mouseY);
  vertex(395, 610+mouseY);
  endShape(CLOSE);
  
  //E
  rect(570, 320, 150, 60);
  rect(570, 380, 60, 180);
  rect(630, 444, 65, 55);
  rect(570, 560, 150, 50);


  //little blue rects  
  fill(random(100), random(0), random(100), random(255/3));
  
  //row 1
  rect(396, 320 + yPos, 15, 41);

  //row 2
  rect(162, 366 + yPos, 15, 41);
  rect(320, 366 + yPos, 15, 41);
  rect(495, 366 + yPos, 15, 41);
  rect(580, 366 + yPos, 15, 41);
  rect(690, 366 + yPos, 15, 41);
  
  //row 3
  rect(255, 406 + yPos, 15, 41);
  rect(455, 406 + yPos, 15, 41);

  //row 4
  rect(178, 450 + yPos, 15, 41);
  rect(350, 450 + yPos, 15, 41);
  rect(628, 450 + yPos, 15, 41);
  rect(700, 450 + yPos, 15, 41);

  //row 5
  rect(119, 493 + yPos, 15, 41);
  rect(300, 493 + yPos, 15, 41);
  rect(471, 493 + yPos, 15, 41);
  rect(565, 493 + yPos, 15, 41);

  //row 6
  rect(231, 533 + yPos, 15, 41);
  rect(367, 533 + yPos, 15, 41);
  rect(510, 533 + yPos, 15, 41);

  //row 7
  rect(135, 579 + yPos, 15, 31);
  rect(290, 579 + yPos, 15, 31);  
  rect(430, 579 + yPos, 15, 31);
  rect(649, 579 + yPos, 15, 31);

  //the period
  //fill(#E3DEDE); 
  //ellipse(596, 74.5, 5, 5);
  
    
  if(mouseY > 555){
   background(random(random(255)), 100);
  }
  

  // The font must be located in the sketch's 
  // "data" directory to load successfully
  fill(#E3DEDE); 
  textFont(font, fsize);
  text("BY ANY COMPUTATION, QUALITY.", 240, 76);  
  fsize += 4;
  if(fsize > 27){
    fsize = 22;
  }
}

