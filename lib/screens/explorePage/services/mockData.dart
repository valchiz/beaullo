class CardsInterface {
  final String url,
      description,
      desc,
      title,
      brandName,
      brandRepresentative,
      price,
      subTitle,
      deliveryCost,
      returnExchange,
      estimatedArrival,
      customerName,
      date,
      categories,
      reviewTitle;

  const CardsInterface({
    this.url,
    this.description,
    this.title,
    this.price,
    this.brandName,
    this.brandRepresentative,
    this.subTitle,
    this.desc,
    this.estimatedArrival,
    this.deliveryCost,
    this.returnExchange,
    this.customerName,
    this.date,
    this.reviewTitle,
    this.categories,
  });
}

final Map<String, dynamic> explore = {
  "url": 'assets/images/woman.jpg',
  "desc":
      "Freshly finessed outfit made with love just for you. There is absolutely no way you wouldn't slay with this. It's also soothing to every ocassion. ",
  "title": "Ripped Jean",
  "price": "\$342",
  "brandName": '21 Streetz',
  "brandRepresentative": "Joseph Noah",
  "subTitle": "Available in different sizes and different colors of materials",
  "estimatedArrival": "Estimated Arrival",
  "deliveryCost": "Cost of Delivery",
  "returnExchange": "Return and Exchange",
  // "reviewTitle": "Amazing Fabrics",
  // "customerName": "Sanjay Craig",
  // "date": "12 Jun 2021",
};
List<dynamic> allItems = [
  {
    "url": 'assets/images/woman.jpg',
    "description": "Lorem ipsum dolor sit amet",
    "title": "Ripped Jean",
    "price": "\$342",
    "brandName": '21 Streetz',
    "brandRepresentative": "Joseph Noah",
    "categories": "Casual",
  },
  {
    "url": 'assets/images/woman.jpg',
    "description": "Lorem ipsum dolor sit amet",
    "title": "Ripped Jean",
    "price": "\$342",
    "brandName": '21 Streetz',
    "brandRepresentative": "Joseph Noah",
    "categories": "Dinner",
  },
  {
    "url": 'assets/images/woman.jpg',
    "description": "Lorem ipsum dolor sit amet",
    "title": "Ripped Jean",
    "price": "\$342",
    "brandName": '21 Streetz',
    "brandRepresentative": "Joseph Noah",
    "categories": "Weddings",
  }
];
List<dynamic> allReviews = [
  {
    "reviewTitle": "Amazing Fabrics",
    "customerName": "Sanjay Craig",
    "date": "12 Jun 2021",
    "desc":
        "Freshly finessed outfit made with love just for you. There is absolutely no way you wouldn't slay with this. It's also soothing to every ocassion. ",
  },
  {
    "reviewTitle": "Incredible Finishing",
    "customerName": "Remy ma",
    "date": "28 Jun 2021",
    "desc":
        "Freshly finessed outfit made with love just for you. There is absolutely no way you wouldn't slay with this. It's also soothing to every ocassion. ",
  },
];
