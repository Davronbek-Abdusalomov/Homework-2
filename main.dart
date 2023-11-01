void main() {
 
  //ex1
  print('My name is Davronbek Abdusalomov. I am a third-year student of SE at New Uzbekistan University.');
  
  //ex2
//   print("Enter the number: ");
//   int ? num= int.parse(stdin.readLineSync()!);
  int num=45;
  if(num%2==0){
    print('It is even');
  }else{
    print('It is odd');
  }
  
  //ex3
   print("Odd numbers up to 100:");
  for (int num = 1; num <= 100; num += 2) {
    print(num);
  }
  print("Even numbers up to 100:");
  for (int num = 2; num <= 100; num += 2) {
    print(num);
  }
  
  //ex4
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [];
  for(int i in a){
    b.add(i*i);
  }
  print(b);
  
  //ex5
  int num1 = 60;
  for(int i=2; i<=num; i++){
    if(num%i==0){
      print(i);
    }
  }
  
  //ex6
  List<int> arr1 = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> arr2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 89];
  List<int> arr3 = [];
  
  for(int i =0; i<arr1.length; i++){
    for(int j=0; j<arr2.length; j++){
      if(arr1[i]==arr2[j]){
        arr3.add(arr1[i]);
      }
    }
  }
  print(arr3);
  
  //ex7
  int prime = 71;
  bool boolean=false;
  for(int i = 2; i<=prime/2; i++){
    if(prime%i==0){
      boolean=true;
    }
  }
  if(boolean==true){
    print('it is not prime');
  }else{
    print('it is prime');
  }
  
  
  //ex8
  List<int> ad = [1,2,2,2,3,4,5,6];
  print(distinctNums(ad));
 
 //ex9
  int limit = 100; // Change the limit as needed

  // Using a loop
  List<int> fibonacciLoop = generateFibonacciLoop(limit);
  print("Fibonacci numbers using loop: $fibonacciLoop");

  // Using recursion
  List<int> fibonacciRecursion = generateFibonacciRecursion(limit);
  print("Fibonacci numbers using recursion: $fibonacciRecursion");
 
 
 //ex10
 int n = 10;

 int fibonacciNumber = fibonacciWithMemoization(n);
 print("Fibonacci number at position $n is $fibonacciNumber");
}



//ex8
List<int> distinctNums(List<int> list){
  list.sort();
  List<int> distincts = [];
  for(int i=0; i<list.length-1; i++){
    if(list[i]!=list[i+1])
    distincts.add(list[i]);
  }
  if(list[list.length-1]!=list[list.length-2]);
  distincts.add(list[list.length-1]);
  return distincts;
}

//ex9
List<int> generateFibonacciLoop(int limit) {
List<int> fibonacciList = [];
  int a = 0, b = 1;

  while (a <= limit) {
    fibonacciList.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }

  return fibonacciList;
}

List<int> generateFibonacciRecursion(int limit) {
  List<int> fibonacciList = [];

  void generateNextFibonacci(int a, int b) {
    if (a <= limit) {
      fibonacciList.add(a);
      generateNextFibonacci(b, a + b);
    }
  }

  generateNextFibonacci(0, 1);
  return fibonacciList;
}

//ex10
Map<int, int> fibMemo = {};

int fibonacciWithMemoization(int n) {
  if (fibMemo.containsKey(n)) {
    return fibMemo[n]; // Return the cached value if available
  }

  int result;

  if (n <= 1) {
    result = n;
  } else {
    result = fibonacciWithMemoization(n - 1) + fibonacciWithMemoization(n - 2);
  }

  fibMemo[n] = result; // Cache the result
  return result;
}