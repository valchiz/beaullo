class CardsInterface {
  final int cardNumber, month, year, cvv;
  final String starredNumber, bankName, cardHolderName;

  const CardsInterface(
      {this.cardNumber,
      this.month,
      this.year,
      this.cvv,
      this.starredNumber,
      this.bankName,
      this.cardHolderName});
}

List<dynamic> allCards = [
  {
    "cardNumber": 122312561234,
    "month": 12,
    "year": 21,
    "cvv": 342,
    "cardHolderName": 'Will Odia',
    "starredNumber": "**** **** 8276",
    "bankName": "AXA Mansard"
  },
  {
    "cardNumber": 122312561234,
    "month": 12,
    "year": 21,
    "cvv": 342,
    "cardHolderName": 'Will Odia',
    "starredNumber": "**** **** 8276",
    "bankName": "AXA Mansard"
  },
  {
    "cardNumber": 122312561234,
    "month": 12,
    "year": 21,
    "cvv": 342,
    "cardHolderName": 'Will Odia',
    "starredNumber": "**** **** 8276",
    "bankName": "AXA Mansard"
  }
];
