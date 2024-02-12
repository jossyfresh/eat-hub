class Food {
  String id;
  String name;
  String image;
  double cal;
  double time;
  double price;
  String description;
  double rate;
  String Type;
  int reviews;

  Food({
    required this.id,
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.price,
    required this.Type,
    required this.description,
  });
}

final List<Food> foods = [
  Food(
    id: "1",
    name: "Ramen Noodles",
    image: "assets/images/ramen-noodles.jpg",
    description:
        "Ramen is a Japanese noodle soup. It consists of Chinese wheat noodles served in a meat or fish-based broth, often flavored with soy sauce or miso, and uses toppings such as sliced pork, nori, menma, and scallions.",
    cal: 120,
    Type: "Dinner",
    time: 15,
    rate: 4.4,
    reviews: 23,
    price: 19.99,
  ),
  Food(
    id: "2",
    name: "Beef Steak",
    image: "assets/images/beaf-steak.jpg",
    cal: 140,
    Type: "Lunch",
    description:
        "Beefsteak is a flat cut of beef, with parallel faces and usually with a thickness of 0.5 to 2 centimeters. Beefsteaks are usually grilled, pan-fried, or broiled. The more tender cuts from the loin and rib are cooked quickly, using dry heat, and served whole.",
    time: 25,
    rate: 4.4,
    reviews: 23,
    price: 19.99,
  ),
  Food(
    id: "3",
    name: "Butter Chicken",
    image: "assets/images/butter-chicken.jpg",
    cal: 130,
    Type: "Dinner",
    description:
        "Butter chicken or murgh makhani is a dish, originating from the Indian subcontinent, of chicken in a mildly spiced tomato sauce. It was developed in India, as a way to use leftover tandoori chicken, and now is a staple of Indian restaurants in the United States.",
    time: 18,
    rate: 4.2,
    reviews: 10,
    price: 19.99,
  ),
  Food(
    id: "4",
    name: "French Toast",
    image: "assets/images/french-toast.jpg",
    cal: 110,
    Type: "Breakfast",
    description:
        "French toast is a dish made of sliced bread soaked in beaten eggs and typically milk, then pan fried. Alternative names and variants include eggy bread, Bombay toast, German toast, gypsy toast, poor knights, and Torrija.",
    time: 16,
    rate: 4.6,
    reviews: 90,
    price: 19.99,
  ),
  Food(
    id: "5",
    name: "Dumplings",
    image: "assets/images/dumplings.jpg",
    Type: "Dinner",
    description:
        "Dumpling is a broad classification for a dish that consists of pieces of dough wrapped around a filling, or of dough with no filling. The dough can be based on bread, flour, or potatoes, and may be filled with meat, fish, cheese, vegetables, fruits, or sweets.",
    cal: 150,
    time: 30,
    rate: 4.0,
    reviews: 76,
    price: double.parse("19.99"),
  ),
  Food(
    id: "6",
    name: "Mexican Pizza",
    Type: "Dinner",
    description:
        "Mexican pizza is a pizza made with ingredients typical of Mexican cuisine. It is made with a flour tortilla as the base. A portion of refried beans is spread over the tortilla. The pizza is then baked to make the tortilla firm and crunchy.",
    image: "assets/images/mexican-pizza.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    price: 19.99,
  ),
  Food(
    id: "10",
    name: "Oatmeal",
    Type: "Breakfast",
    description:
        "Oatmeal is a preparation of oats that have been de-husked, steamed, and flattened. It can also be made from hulled oat grains that have been milled, rolled, or steel-cut.",
    image: "assets/images/oatmeal.jpg",
    cal: 200,
    time: 15,
    rate: 4.1,
    reviews: 325,
    price: 3.99,
  ),

  Food(
    id: "11",
    name: "Pancakes",
    Type: "Breakfast",
    description:
        "Pancakes are flat cakes made from batter, fried on a hot surface, and often served with toppings and sauces. They can be thin or thick, crispy or fluffy, and have a crisp exterior and a soft, airy interior.",
    image: "assets/images/pancake.jpeg",
    cal: 250,
    time: 20,
    rate: 4.6,
    reviews: 178,
    price: 5.99,
  ),

  Food(
    id: "12",
    name: "Eggs Benedict",
    Type: "Breakfast",
    description:
        "Eggs Benedict is a brunch dish that typically consists of toasted English muffins, poached eggs, Canadian bacon or ham, and hollandaise sauce. Hollandaise sauce is a rich and creamy sauce made with egg yolks, butter, lemon juice or vinegar, and seasonings",
    image: "assets/images/eggsbenedict.jpeg",
    cal: 350,
    time: 30,
    rate: 4.8,
    reviews: 82,
    price: 9.99,
  ),

// Lunch
  Food(
    id: "13",
    name: "Salad",
    Type: "Lunch",
    description:
        "A salad is a dish made of mixed ingredients, often vegetables, that can be served chilled, at room temperature, or warm. Salads can include lettuces, grains, pasta, fruits, or proteins",
    image: "assets/images/green-salad.jpg",
    cal: 180,
    time: 10,
    rate: 4.3,
    reviews: 217,
    price: 7.99,
  ),

  Food(
    id: "14",
    name: "Soup and Sandwich",
    Type: "Lunch",
    description:
        "sandwich, in its basic form, slices of meat, cheese, or other food placed between two slices of bread. Although this mode of consumption must be as old as meat and bread",
    image: "assets/images/sandwich.jpeg",
    cal: 400,
    time: 20,
    rate: 4.2,
    reviews: 143,
    price: 8.99,
  ),

  Food(
    id: "15",
    name: "Poke Bowl",
    Type: "Lunch",
    description:
        "A poke bowl is a Hawaiian dish that is deeply rooted in Japanese cuisine. Poke means `cut into pieces` and refers to the slices or cubes of raw fish that are served in a bowl along with rice, dressing, vegetables and seasonings.",
    image: "assets/images/pokebowl.jpg",
    cal: 350,
    time: 15,
    rate: 4.7,
    reviews: 119,
    price: 12.99,
  ),

// Dinner
  Food(
    id: "16",
    name: "Pasta Primavera",
    Type: "Dinner",
    description:
        "This pasta primavera recipe is light, fresh, and simple to make. Packed with colorful veggies, it's the perfect easy dinner for spring or summer night.",
    image: "assets/images/pastpri.jpg",
    cal: 400,
    time: 30,
    rate: 4.4,
    reviews: 162,
    price: 10.99,
  ),

  Food(
    id: "17",
    name: "Chicken Tikka Masala",
    Type: "Dinner",
    description:
        "dish consisting of marinated boneless chicken pieces that are traditionally cooked in a tandoor and then served in a subtly spiced tomato-cream sauce. It is a popular takeout dish in Britain and is a staple menu item in the curry houses of London, especially in the East End restaurants along Brick Lane, known as “Curry Mile.”",
    image: "assets/images/chiktikamas.jpg",
    cal: 450,
    time: 40,
    rate: 4.8,
    reviews: 245,
    price: 15.99,
  ),
];
