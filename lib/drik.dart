class Drink {
  final String thname;
  final String enname;
  final double price;
  final String value;

  Drink(
      {required this.thname,
      required this.enname,
      required this.price,
      required this.value});

  static List<Drink> getDrink() {
    return [
      Drink(thname: "ชาเย็น", enname: "ice tea", price: 45, value: "ice tea"),
      Drink(thname: "ชาเขียว", enname: "green tea", price: 45, value: "green tea"),
      Drink(thname: "กาแฟ", enname: "coffee", price: 50, value: "coffee"),
      Drink(thname: "โกโก้", enname: "coco", price: 50, value: "coco"),
      Drink(thname: "น้ำส้ม", enname: "orang", price: 50, value: "orang"),
    ];
  }
}
