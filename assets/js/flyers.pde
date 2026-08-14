// -------------------------------------------------------------
// VARIABLES DE COULEUR (converties en RGB)
// -------------------------------------------------------------
color jaune  = color(252, 255, 116); // #FCFF74
color violet = color(125, 110, 255); // #7D6EFF
color rose   = color(244, 0, 102);   // #F40066
color orange = color(252, 102, 46);  // #FC662E

color[] couleurs = { jaune, violet, rose, orange };
int indexFond;          
color couleurFond;      

boolean afficherTexte = false;

// -------------------------------------------------------------
// TYPO D'ORIGINE
// -------------------------------------------------------------
PFont font;

// -------------------------------------------------------------
// SETUP
// -------------------------------------------------------------
void setup() {
  size (630, 800);                  // DIMENSION ORIGINALE
  font = loadFont("synebold.vlw", 40);  // TYPO ORIGINALE

  // Couleur de fond aléatoire au démarrage
  indexFond = int(random(couleurs.length));
  couleurFond = couleurs[indexFond];

  background(couleurFond);
  textFont(font);
  textAlign(CENTER);
}

// -------------------------------------------------------------
// DRAW
// -------------------------------------------------------------
void draw() {
  background(couleurFond);

  // Flamme orange du sketch 2 (préservée)
  dessinerFlammeOrange();

  if (afficherTexte) {
    afficherLongTexte();
  }
}

// -------------------------------------------------------------
// Flamme orange conservée du Sketch 2
// -------------------------------------------------------------
void dessinerFlammeOrange() {
  noStroke();
  fill(orange);

  beginShape();
  vertex(width/2, 200);
  bezierVertex(width/2 + 40, 240, width/2 + 20, 300, width/2, 340);
  bezierVertex(width/2 - 20, 300, width/2 - 40, 240, width/2, 200);
  endShape(CLOSE);
}

// -------------------------------------------------------------
// Affiche tout le texte d’un coup
// -------------------------------------------------------------
void afficherLongTexte() {
  fill(0);
  text("Voici tout le texte affiché en une seule fois.\n" +
       "Ce texte est déclenché par la touche 't'.\n" +
       "Il peut être remplacé par le contenu réel du sketch.",
       width/2, height - 200);
}

// -------------------------------------------------------------
// CONTROLES CLAVIER
// -------------------------------------------------------------
void keyPressed() {

  // Change la couleur de fond dans l'ordre
  if (key == 'c') {
    indexFond = (indexFond + 1) % couleurs.length;
    couleurFond = couleurs[indexFond];
  }

  // Affiche tout le texte en une seule fois
  if (key == 't') {
    afficherTexte = true;
  }
}
