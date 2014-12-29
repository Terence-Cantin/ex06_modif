import 'package:ex06/functions.dart';
  
void main() {  
  // exercice 1
  print ("\n");
  print("Question 1");
  print("----------");
  print('Le mot "Kayak" est un palindrome:');
  print(palindrome("KAYAK")); 
  print('Le mot "RESSASSER" est un palindrome:');
  print(palindrome("RESSASSER"));
  print('Le mot "TEST" est un palindrome:');
  print(palindrome("TEST"));
  print('Le mot "BOUCHON" est un palindrome:');
  print(palindrome("BOUCHON"));
  print('Le mot "REVER" est un palindrome:');
  print(palindrome("REVER"));
  
  // exercice 2
  print ("\n");
  print("Question 2");
  print("----------");
  DateTime now = new DateTime(2014, 10, 07);
  DateTime date_2 = new DateTime(2010, 03, 01);
  print('La différence de nombre de jours entre le {$now} et le {$date_2} est de');
  print(nombreJours(now, date_2));

  // exercice 3
  print ("\n");
  print("Question 3");
  print("----------");
  Map legende = {'A' : 88, 'B' : 77, 'C' : 67, 'D' : 60, 'E' : 0};
  print("La lettre pour une note de 95 est: ${obtenirLettre(95, legende)}"); 
  print("La lettre pour une note de 80 est: ${obtenirLettre(80, legende)}");
  print("La lettre pour une note de 52 est: ${obtenirLettre(52, legende)}");
  print("La lettre pour une note de 64 est: ${obtenirLettre(64, legende)}");
  print("La lettre pour une note de 70 est: ${obtenirLettre(70, legende)}");
  print("La lettre pour une note de 25 est: ${obtenirLettre(25, legende)}");
  
  // exercice 4
  print ("\n");
  print("Question 4");
  print("----------");
  List nomList = ['Jim', 'John', 'Eric', 'Terry', 'Jean-François', 'Marc-André', 'Jean-Philippe', 'Frédérick', 'Caroline', 'Emmanuel','Napoleon','Nathalie'];
  print("Voici la liste de noms: ${nomList}\n");
  List sommaireList = troisListes(nomList);
  print("Voici les noms de moins de 8 lettres: ${sommaireList.elementAt(0).toString()}");
  print("Voici les noms de plus de 8 lettres: ${sommaireList.elementAt(1).toString()}");
  print("Voici les noms avec exactement 8 lettres: ${sommaireList.elementAt(2).toString()}");
 
  // exercice 5
  print ("\n");
  print("Question 5");
  print("----------");
  Map nhl = {'P.k Subban' : 'Canadiens de Montréal', 
           'Sydney Crosby' : 'Penguin de Pittsburg', 
           'Carrey Price' : 'Canadiens de Montréal',
           'Evgeni Malkin' : 'Penguin de Pittsburg',
           'Henrik Sedin' : 'Canucks de Vancouver',
           'Daniel Sedin' : 'Canucks de Vancouver',
           'John Tavares' : 'Islanders de New York',
           'Jamie Benn' : 'Stars de Dallas',
           'Tyler Seguin' : 'Stars de Dallas',
           'Pavel Datsyuk' : 'Red wings de Detroit',
           'Henrik Zetterberg' : 'Red wings de Detroit'
  };
  print(listeTrie(nhl).toString());
}

