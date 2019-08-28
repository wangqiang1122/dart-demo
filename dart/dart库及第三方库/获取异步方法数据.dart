main() async{
   final result = await a();
   print(result);
}

a() async{
   return '我试试';
}