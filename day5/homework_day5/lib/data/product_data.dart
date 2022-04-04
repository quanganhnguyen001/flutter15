class Product {
  String name;
  String image;
  String price;
  bool favorite;


  Product(this.name, this.image, this.price, this.favorite);


}
final List<Product> listProduct = [
  Product(
      "Quần jean",
      "https://cdn.shopify.com/s/files/1/0268/7841/0824/products/1053SS-white_1900x_crop_center_141b7f52-8fcb-4127-8025-3a27fcb314e8_720x.jpg?v=1618506001",
      "\$5.6",
      false),
  Product(
      "Áo kitty",
      "https://i.ebayimg.com/images/g/scAAAOSw10tgkxBI/s-l300.jpg",
      "\$9.8",
      false),
  Product(
      "Quần ống",
      "https://ae01.alicdn.com/kf/Hea036cc6bf16445195bdbd0baabaf6ccx/Gowyimmes-M-a-ng-2021-Size-L-n-S-5XL-R-ng-Cho-S-n-Vi.jpg_Q90.jpg_.webp",
      "\$5.4",
      false),
];