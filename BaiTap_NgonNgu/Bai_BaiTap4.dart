void main() {
  List<String> list = ["An", "Bình", "Minh", "Tuấn"];
  List<int> lens = list.map((e) => e.length).toList();

  print(list);
  print(lens);

  list.forEach((element) {
    print(list);
  });

  // lens.forEach((element) {
  //   print(lens);
  // });

  // System.out.println("Iterating by passing lambda expression: ");
  //   list.forEach(list -> System.out.println(list));

  // System.out.println("Iterating by passing lambda expression: ");
  //   list.forEach(System.out::println);
}

// class System {
//   static var out;
// }
