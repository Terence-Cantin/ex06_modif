library functions;

  
// Fonction pour la Q1
bool palindrome(String s) { 
  int debut = 0;
  int fin = s.length - 1; 
  while (debut< fin) {
    if (s[debut] != s[fin]) { // si la 1ère lettre n'égal pas celle de la fin = Faux
      return false;
    }
    debut = debut + 1; // incrément positif
    fin = fin - 1; // incrément négatif
  } 
  return true;
}
    
// Fonction pour la Q2
int nombreJours(DateTime debut, DateTime fin) {
  Duration deuxDates = debut.difference(fin); 
  return deuxDates.inDays.abs();
}
  
// Fonction pour la Q3
String obtenirLettre(int nombreCote, Map echelle) {
  List listeCote = new List();
  for (int cote in echelle.values) {
    listeCote.add(cote);
  }
  listeCote.sort();
  int mapChemin = -1;
  for (int i = 0; i < listeCote.length; i++) {
    if (nombreCote >= listeCote.elementAt(i)) {
      mapChemin = listeCote.elementAt(i);
    }
  }  
  Map conversion = new Map.fromIterables(echelle.values, echelle.keys);
  if (mapChemin == -1) {
    return "Z";
  } else {
    return conversion[mapChemin];
  }
}
  
// Fonction pour la Q4
List troisListes(List l) {
  List plusPetitHuit = new List();
  List plusGrandHuit = new List();
  List egalHuit = new List();
  List retourDesTrois = new List(); 
  for (int i = 0; i < l.length; i++) {
    String s = l.elementAt(i);
    if (s.length < 8) {
      plusPetitHuit.add(s);
    } else if (s.length > 8) {
      plusGrandHuit.add(s);
    } else {
      egalHuit.add(s);
    }
  }
  retourDesTrois.add(plusPetitHuit);
  retourDesTrois.add(plusGrandHuit);
  retourDesTrois.add(egalHuit);
  return retourDesTrois;
}
  
// Fonction pour la Q5  
List listeTrie(Map nhl) {   
  List hockeyEquipeList = new List();
  List joueursList = new List();
  for (String equipes in nhl.values) {
    if (!hockeyEquipeList .contains(equipes)) {
      hockeyEquipeList .add(equipes);
      joueursList.add(new List());
    }
  } 
  hockeyEquipeList.sort();
  for (String joueurs in nhl.keys) {
    int position = hockeyEquipeList.indexOf(nhl[joueurs]);
    joueursList.elementAt(position).add(joueurs);
  }
    for (int i = 0; i < joueursList.length; i++) {
    joueursList.elementAt(i).sort();
  }
  List listeAlpha = new List();
  for (int i = 0; i < hockeyEquipeList.length; i++) {
    listeAlpha.add(hockeyEquipeList.elementAt(i));
    for(int j = 0; j < joueursList.elementAt(i).length; j++) {
      listeAlpha.add(joueursList.elementAt(i).elementAt(j));
    }
  }
  return listeAlpha;
}

