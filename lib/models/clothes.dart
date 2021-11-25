class Clothes{
  String title;
  String subtitle;
  String price;
  String imageUrl;
  List<String> detailUrl;

  Clothes(this.title, this.subtitle, this.price, this.imageUrl, this.detailUrl);

  static List<Clothes> generateClothes(){
    return [
      Clothes(
        'Gucci oversize', 
        'Hoddie', 
        '\GH₵.79.99',
        'assets/images/arrival.jpg', 
        [
          
        'assets/images/arrival.jpg',
        'assets/images/detail2.jpg'
        ]
      ),

      Clothes(
        'Gucci oversize', 
        'Hoddie', 
        '\GH₵.79.99',
        'assets/images/arrival.jpg', 
        [
          
        'assets/images/arrival2.jpg',
        'assets/images/detail2.jpg'
        ]
      ),
      
    ];

  }

}