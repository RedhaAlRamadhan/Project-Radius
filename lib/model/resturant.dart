import 'item.dart';

class Resturant {
  final int id;
  final String title;
  final String uuid;
  final String imageURL;
  final List<Item> items;
  bool avaliable;
  bool isSaved;

  Resturant({
    this.id,
    this.title,
    this.uuid,
    this.imageURL,
    this.avaliable,
    this.isSaved,
    this.items,
  });

  Map toJson() => {
        'id': id,
        'title': title,
        'uuid': uuid,
        'imageURL': imageURL,
        'items': items,
        'avaliable': avaliable,
        'isSaved': isSaved,
      };
}

List<Resturant> resturants = [
  Resturant(
    id: 1,
    title: "KFC",
    uuid: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
    imageURL:
        "https://media.apnarm.net.au/media/images/2020/02/21/v3imagesbina3b4d1b383c51568860f55cd442a00e0-smpqf9rm5lpzzeadvt2.jpg",
    avaliable: true,
    isSaved: false,
    items: [
      Item(
        id: 1,
        title: "Gamer's Meal",
        price: 30,
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/Gamer%20Box.png",
      ),
      Item(
        id: 2,
        title: "Super Mega Meal",
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/Super%20mega%20deal_new.png",
        price: 54,
      ),
      Item(
        id: 3,
        title: "Mighty Zinger Box",
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/NMIGHTYZINGERBOX.png",
        price: 34,
      ),
    ],
  ),
  Resturant(
    id: 1,
    title: "Burger King",
    uuid: 'F04CD654-871A-40E1-BA1A-A139B67DBDDD',
    imageURL:
        "https://media-exp1.licdn.com/dms/image/C4D1BAQHiiadfsLywxQ/company-background_10000/0/1574700179763?e=2159024400&v=beta&t=2HHIKg4kvOwUb78iEuiAePRtEMH-29Zh3fE1Y0noK34",
    avaliable: false,
    isSaved: true,
    items: [
      Item(
        id: 1,
        title: "Gamer's Meal",
        price: 30,
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/Gamer%20Box.png",
      ),
      Item(
        id: 2,
        title: "Super Mega Meal",
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/Super%20mega%20deal_new.png",
        price: 54,
      ),
      Item(
        id: 3,
        title: "Mighty Zinger Box",
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/NMIGHTYZINGERBOX.png",
        price: 34,
      ),
    ],
  ),
  Resturant(
    id: 1,
    title: "McDonalds",
    uuid: 'CCE1CD20-0111-4466-9AEF-37FF3D842154',
    imageURL:
        "https://i.insider.com/52603e346bb3f7d610aaec3b?width=1100&format=jpeg&auto=webp",
    avaliable: false,
    isSaved: true,
    items: [
      Item(
        id: 1,
        title: "Gamer's Meal",
        price: 30,
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/Gamer%20Box.png",
      ),
      Item(
        id: 2,
        title: "Super Mega Meal",
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/Super%20mega%20deal_new.png",
        price: 54,
      ),
      Item(
        id: 3,
        title: "Mighty Zinger Box",
        imageURL:
            "https://images.phi.content-cdn.io/cdn-cgi/image/height=170,width=180,quality=50/https://images-am.cdn.martjack.io/azure/am-resources/126cf14c-121b-4547-945f-e3b73359f7d6/Images/ProductImages/Large/NMIGHTYZINGERBOX.png",
        price: 34,
      ),
    ],
  ),
];
