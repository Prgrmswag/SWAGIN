class Model {  //Here we write the fields that we require from the api 
  int id;
  String title;
  String description;
  String category;
  String image;
  double price;
  double rating;

//This is a  Model class constructor 
  Model({
    required this.id,
    required this.title,
    required this.description,
    required this.category,
    required this.image,
    required this.price,
    required this.rating,
  });


//Here we use map as we get key value pair from the api
  factory Model.fromJson(Map<String, dynamic> json) {
    return Model(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        category: json["category"],
        image: json["image"],
        price: json["price"],
        rating: json["rating"]);
  }

// This is to post to the api
  Map<String, dynamic> toJson() => {};
}
