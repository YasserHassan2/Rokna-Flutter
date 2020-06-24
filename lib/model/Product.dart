class Product {
  final int id, price;
  final String title, description, image;

  Product({this.id, this.price, this.title, this.description, this.image});
}

// list of products
// for our demo
List<Product> products = [
  Product(
    id: 1,
    price: 56,
    title: "Classic Leather Arm Chair",
    image: "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.0-9/103164703_1550868445090410_2756720505551312257_o.jpg?_nc_cat=110&_nc_sid=9e2e56&_nc_eui2=AeFBl9cWThdLelY-RaWr9ZfQ_VT8-bjnqm_9VPz5uOeqbxLZkpRyxE1p1cYPN_KCw6ws_eBZouFCGhQDVE3YgmL9&_nc_oc=AQlxdgBQ0FEjE-Iiv3WTIFXVqV89NyBP3FntMuGIXX9Twd5SrZvbgmgSXcDbNqlRQ0s&_nc_ht=scontent.fcai20-2.fna&oh=619e5b9b0e7daba9b56dbb34b95404b7&oe=5F1912C4",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 4,
    price: 68,
    title: "Poppy Plastic Tub Chair",
    image: "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.0-9/p720x720/102957557_1548951295282125_8061780541781887496_o.jpg?_nc_cat=111&_nc_sid=9e2e56&_nc_eui2=AeE0Ka3mPMIE-CBGeGrfPgqk9IR3ddPGXyj0hHd108ZfKIF33XIr3HGv2PnWq4BUrSxr_K6CUIQ41M8o3NksRSfR&_nc_oc=AQmpyVTXkjb--d4L4R_iOEn6Y4sO9iV9QQv9EYmiElFEXganuuaLGIJLLlbmLnjnaqU&_nc_ht=scontent.fcai20-2.fna&_nc_tp=6&oh=6239ecc7b278152e71d10a97e7bcd110&oe=5F181A26",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
  Product(
    id: 9,
    price: 39,
    title: "Bar Stool Chair",
    image: "https://scontent.fcai20-2.fna.fbcdn.net/v/t1.0-9/p960x960/102742696_1543763875800867_2006053786084076360_o.jpg?_nc_cat=104&_nc_sid=9e2e56&_nc_eui2=AeEHIZKQMMwnhguuoCijaQGKgo6ZAwzHqjqCjpkDDMeqOkG1ngmIsQ6QjI5otzCfSi8iLI5x_FKbjCRefDojEMAh&_nc_oc=AQm-o_cH8oEI3iSp5OU6MkqAVNOHyjwdw--4wdHxJ5UYeZO8pd1lM1EgzlaydpHnZ4k&_nc_ht=scontent.fcai20-2.fna&_nc_tp=6&oh=311522168090f5b5e0bbd380864b6148&oe=5F18D110",
    description:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim",
  ),
];