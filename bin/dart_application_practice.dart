import 'dart:io';
import 'dart:math';
void main(){
  List<History> history= [];
  List<String> menu = [
    '1.Addition',
    '2.Substraction',
    '3.Multiplication',
    '4.Division',
    '5.Power',
    '6.Square',
    '7.Histor',
    '8.Clear History',
    '9.Exit'
  ];
Operations op =Operations();
while (true) {
  for (var i = 0; i < menu.length; i++) {
    print(menu[i]);
  }
  stdout.writeln('Choose an option');
  String input = stdin.readLineSync()!;

  double a,b;
  switch (input) {
    case '1':
   /// applied healping funclion for read number and for input validation
    double a =readNumber('Enter 1st number');
    double b  =readNumber('Enter 2nd  Number:');
    double additionValue =  op.addition(a, b);
    print('Addition is : $additionValue');
    history.add(History(a, b,'+', additionValue));
      
      break;
    case '2':
     double a =readNumber('Enter 1st number');
    double b  =readNumber('Enter 2nd  Number:');
    double subtractValue =  op.substraction(a, b);
    print('subtractValue is : $subtractValue');
    history.add(History(a, b,'-', subtractValue));
    
      break;
        case '3':
  double a =readNumber('Enter 1st number');
    double b  =readNumber('Enter 2nd  Number:');
    double multiplicationValue =  op.multiplication(a, b);
    print('multiplicationValue is : $multiplicationValue');
    history.add(History(a, b,'*', multiplicationValue));
    
      break;
      
    case '4':
  double a =readNumber('Enter 1st number');
    double b  =readNumber('Enter 2nd  Number:');
    double divisionValue =  op.division(a, b);
    print('divisionValue is : $divisionValue');
    history.add(History(a, b,'/', divisionValue));
    
      
      break;
          case '5':
   double a =readNumber('Enter 1st number');
    double b  =readNumber('Enter 2nd  Number:');
    num powerValue =  op.power(a, b);
    print('powerValue is : $powerValue');
    history.add(History(a, b,'^', powerValue));

    // history.add(power);
    
      
      break;
          case '6':
    double a = readNumber('Enter number to make Square');
    //  stdout.writeln('Enter 2nd  Number:');
    // double b  = double.parse(stdin.readLineSync()!);
    num  square =  op.square(a);
    print('Addition is : $square');

  history.add(History(a,2,'^', square));
    
      
      break;
          case '7':
          print('=== HIstory ---');
          for(int i=0;i<history.length;i++){
            print('$i. ${history[i].numberOne} ${history[i].operator} ${history[i].numberTwo} =  ${history[i].result}');
          }
      
      break;
          case '8':
      history.clear();
      print('remove s  uccessfull');

      break;
          case '9':
          exit(0);
    default:
    print('Entered Invalid option');
  }

}

}
//FUNCTION FOR TAKING INPUT
double readNumber(String prompt){

  while (true) {
   stdout.write(prompt);
  String input = stdin.readLineSync()??'';
  double?  num = double.tryParse(input);

  if (num != null) {
    return num;
  }

  print('enter a valid number');
  }

}

// making a function for avoid duplicacy

class Operations{
  //adition
  double addition(double a, double b){
    double sum = a+b;
    return sum;
    
  }
  //subtraction
  double substraction(double a, double b){

    double substraction = a-b;
    return substraction;
    }

  //multiplication
  double  multiplication(double a, double b){
double multiplication = a*b;
    return multiplication;
    
    }
  //division
  double division(double a, double b){
 double division = a/b;
    return division;
    }
  // power
  num power(double a, double b){
    num  result = pow(a,b);
    return result;
    
    
    
    }
  //square          
  num square(double a){
   num  result = pow(a,2);
    return result;
    
  
}}

// making a history data model to store it
// i can improve the class by adding the operation name and the operator sign and etc
class History{
  double numberOne;
  double? numberTwo;
  String operator;
  num result;
  History(this.numberOne,this.numberTwo,this.operator,this.result);
}