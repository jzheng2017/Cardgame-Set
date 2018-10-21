void drawCard(String card, float cardX, float cardY, float cardWidth, float cardHeight) {
  final float margin = 20;  //space between figures
  float x = cardX + margin; //x coordinate of the card
  float y = cardY;//y coordinate of the card
  float figureWidth = cardWidth - (margin * 2); //figure width
  float figureHeight = cardHeight / 5; // figure height
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

void drawAllCards(String[] cards) {
  float cardX = card.cardX, cardY = card.cardY; // declaring and initializing the card coordinates
  for (int i = 0; i < cards.length; i++) {
    drawCard(cards[i], cardX, cardY, card.cardWidth, card.cardHeight);//calling the card draw function
    cardX += card.cardWidth + card.cardMargin;
    if ((i+1) % 3 == 0 ) { // % 3 because it needs to start on a new row after 3 cards
      println(i);
      cardY = cardY + card.cardHeight + card.cardMargin;
      cardX = card.cardX;
    }
  }
}
