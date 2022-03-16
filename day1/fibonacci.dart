void main() {
  int n1=1,n2=1,n3;
  print("Day so fibonacci la: ");
  print(n1);
  print(n2);
  
  for(int i = 1 ;i <= 16; i++){
   n3 = n1+n2;
    print('$n3');
    n1 = n2;
    n2 = n3;
  }
}