void main() {
  // Null-aware operators
  /*
“If this object or value is null, then forget about it:
 just cut out here, but don’t throw an error.”
  */
  //?. (Conditional Access Operator)
  String? name1 = null;
  int? length = name1?.length; //nul
  print(length);
  //?? (Null Coalescing Operator)
  String? name2 = null;
  String name3 = name2 ?? "sample3";
  print(name3);
  //??= (Null Assignment Operator)
  String? name4 = null;
  name4 ??= "sample4";
  print(name4);
}
