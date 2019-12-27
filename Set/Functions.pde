//draw a card //<>// //<>//
void drawCard(String card, float cardX, float cardY, float cardWidth, float cardHeight, float margin) {
  float x = cardX + margin; //x coordinate of the card figures
  float y = cardY;//y coordinate of the card figures
  float figureWidth = cardWidth - (margin * 2); //figure width
  float figureHeight = cardHeight / 5; // figure height
  fill(255);
  if (selectedCards.length > 0) {
    for (int i = 0; i < selectedCards.length; i++) {
      if (selectedCards[i].equals(card)) {
        fill(252, 255, 127);
      }
    }
  }

  rect(cardX, cardY, cardWidth, cardHeight); //drawing the card background
  //what color?
  if (card.substring(1, 2).equals("r")) {
    fill(255, 0, 0);
  } else if (card.substring(1, 2).equals("g")) {
    fill(0, 255, 0);
  } else {
    fill(0, 0, 255);
  }
  //how many figures?
  if (card.substring(0, 1).equals("1")) {
    y = (cardY + cardHeight / 2.5);
  } else if (card.substring(0, 1).equals("2")) {
    y = (cardY + cardHeight / 4);
  } else {
    y = (cardY + cardHeight / 7);
  }
  //draws the figures. r = rectangle, e = ellipse, t = triangle
  if (card.substring(2).equals("r")) {
    for (int i = 0; i <int(card.substring(0, 1)); i++) {//int(card.substring(0,1) takes the first character of the string which contains the number of figures
      //    println("1");
      rect(x, y, figureWidth, figureHeight);
      y += figureHeight + margin;
    }
  } else if (card.substring(2).equals("e")) {
    ellipseMode(CORNER);
    for (int i = 0; i <int(card.substring(0, 1)); i++) {
      ellipse(x, y, figureWidth, figureHeight);
      y += figureHeight + margin;
    }
  } else if (card.substring(2).equals("t")) {
    y += figureHeight;
    for (int i = 0; i <int(card.substring(0, 1)); i++) {
      triangle(x, y, x+(figureWidth /2), y-figureHeight, x+figureWidth, y);
      y += figureHeight + margin;
    }
  }
  fill(255);
}
//drawing all 9 cards on the screen
void drawAllCards(String[] cards) {
  float _cardX = cardX, _cardY = cardY; // declaring and initializing the card coordinates
  for (int i = 0; i < cards.length; i++) {
    cardsXY[i][0] = _cardX;
    cardsXY[i][1] = _cardY;
    if (!cards[i].equals("")) {
      drawCard(cards[i], _cardX, _cardY, cardWidth, cardHeight, cardMargin);//calling the card draw function
    }
    _cardX += cardWidth + cardMargin;
    if ((i+1) % 3 == 0 ) { // % 3 because it needs to start on a new row after 3 cards
      _cardY = _cardY + cardHeight + cardMargin;
      _cardX = cardX;
    }
  }
}
//assign point to player if the selected cards are a set
void assignPoint(boolean isSet) {
  if (isSet) {
    setsFound++;
    removeCards(selectedCards);
  }
}
//this function will be called if the cards are a set, it removes the selected cards from the table 
void removeCards(String[] selectedCards) {
  for (int i = 0; i < cardsOnTable.length; i++) {
    for (int j = 0; j < selectedCards.length; j++) {
      if (cardsOnTable[i].equals(selectedCards[j])) {
        cardsOnTable[i] = "";
      }
    }
  }
  clearSelection();
  pickCards();
}
//clear the card selection
void clearSelection() {
  for (int i = 0; i < selectedCards.length; i++) {
    selectedCards[i] = "";
  }
}
//display the selected cards
String selectedCards() {
  String _selectedCards = "";
  for (int i = 0; i < selectedCards.length; i++) {
    _selectedCards += selectedCards[i];
    if (i != selectedCards.length - 1) {
      _selectedCards += ", ";
    }
  }
  return _selectedCards;
}

//gives ending message back if there are 0 sets on the table
String endingMessage(int activeSets) {
  String message = "";
  if (activeSets == 0) {
    message = "Het spel is afgelopen! Je hebt " + setsFound + " gevonden!";
  }

  return message;
}

//prints all info about the game
void printInfo() {

  float x = cardWidth * 3 + cardMargin * 3 + cardMargin;
  int activeSets = activeSets();
  textSize(17);
  fill(255);
  text("Geselecteerde kaarten: " + selectedCards(), x, cardMargin);
  text("Sets gevonden: " + setsFound, x, cardMargin * 2);
  text("Aantal kaarten over: " + (cardList.length - amountOfCardsPicked), x, cardMargin * 3);
  text("Aantal mogelijk sets: " + activeSets, x, cardMargin * 4);

  fill(255, 0, 0);
  textSize(30);
  text(endingMessage(activeSets), x, cardMargin * 5, width - x, 100);
}
//draws the new game button
void drawButton() {
  fill(255);
  float x = cardWidth * 3 + cardMargin * 3 + cardMargin;
  float bWidth = width - x - cardMargin;
  float bHeight = bWidth / 3;
  float y = height - cardMargin - bHeight;
  rect(x, y, bWidth, bHeight); 
  fill(0);
  textSize(25);
  text("Nieuw spel", x + (bWidth / 4), y + (bHeight / 2));
}
//clears the "table" by emptying the array
void clearTable() {
  for (int i = 0; i < cardsOnTable.length; i++) {
    cardsOnTable[i] = "";
  }
}

//initializes a new game
void newGame() {
  float x = cardWidth * 3 + cardMargin * 3 + cardMargin;
  float bWidth = width - x - cardMargin;
  float bHeight = bWidth / 3;
  float y = height - cardMargin - bHeight;
  if ((mouseX >= x && mouseX <= x + bWidth) && (mouseY >= y && mouseY <= y + bHeight)) {
    clearTable();
    Start();
    drawAllCards(cardsOnTable);
    printInfo();
  }
}
//sets the start values
void setValues() {
  amountOfCardsPicked = 0;
  setsFound = 0;
  cardWidth = width / 5;
  cardHeight = cardWidth * 1.2;
  cardMargin = 20;
}
