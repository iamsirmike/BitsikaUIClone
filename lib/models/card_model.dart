class CardModel {
  final String currency;
  final int amount;
  final int color;

  CardModel(this.currency, this.amount, this.color);
}

List<CardModel> cards = [
  CardModel('USD', 243000, 0xffFAE3BA),
  CardModel('GHC', 243000, 0xffBAD1FA),
];
