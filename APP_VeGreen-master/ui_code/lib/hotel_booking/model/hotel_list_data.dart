class HotelListData {
  HotelListData({
    this.imagePath = '',
    this.titleTxt = '',
    this.subTxt = "",
    this.link = '',
    this.dist = 1.8,
    this.reviews = 80,
    this.rating = 4.5,
    this.perNight = 180,
  });

  String imagePath;
  String titleTxt;
  String subTxt;
  String link;
  double dist;
  double rating;
  int reviews;
  int perNight;

  static List<HotelListData> hotelList = <HotelListData>[
    HotelListData(
      imagePath: 'assets/hotel/vg1.jpg',
      titleTxt: 'Nomade',
      subTxt: 'Coquimbo, Chile (Maps ->)',
      dist: 2.0,
      rating: 4.8,
      link:
          'https://www.google.com/maps/place/Nomade+Gastronomía+Sushi%26Pizza/@-29.9077324,-71.3148314,12z/data=!4m8!1m2!2m1!1sNomade!3m4!1s0x9691cbe1e77070dd:0x3e163921242d4d70!8m2!3d-29.9517397!4d-71.2657458',
      perNight: 180,
    ),
    HotelListData(
      imagePath: 'assets/hotel/vg2.jpg',
      titleTxt: 'Desde la Raíz',
      subTxt: 'Coquimbo, Chile (Maps ->)',
      dist: 4.0,
      reviews: 74,
      rating: 4.9,
      link:
          'https://www.google.com/maps/place/DESDE+LA+RAIZ+-+Vegan/@-29.9098075,-71.2511657,17z/data=!3m1!4b1!4m5!3m4!1s0x9691cb489d49b493:0x74522b53ca1fbad7!8m2!3d-29.9098075!4d-71.2489717',
      perNight: 200,
    ),
    HotelListData(
      imagePath: 'assets/hotel/vg3.jpg',
      titleTxt: 'Café Trebol',
      subTxt: 'La Serena, Chile (Maps ->)',
      dist: 3.0,
      reviews: 62,
      rating: 3.6,
      link:
          'https://www.google.com/maps/place/Trebol+Good+Food/@-29.9216462,-71.2394754,17z/data=!3m1!4b1!4m5!3m4!1s0x9691caf652267e97:0xff815c2705f5438!8m2!3d-29.9216462!4d-71.2372814',
      perNight: 60,
    ),
    HotelListData(
      imagePath: 'assets/hotel/vg4.jpg',
      titleTxt: 'Lemongrass',
      subTxt: 'La Serena, Chile (Maps ->)',
      dist: 7.0,
      reviews: 90,
      rating: 4.4,
      link:
          'https://www.google.com/maps/place/Lemongrass/@-29.9095455,-71.2673725,14z/data=!4m8!1m2!2m1!1sVegan!3m4!1s0x0:0x96e6c86e49b10a3c!8m2!3d-29.9132952!4d-71.2556505',
      perNight: 170,
    ),
    HotelListData(
      imagePath: 'assets/hotel/vg5.jpg',
      titleTxt: 'Ayawasi',
      subTxt: 'Coquimbo, Chile (Maps ->)',
      dist: 2.0,
      reviews: 240,
      rating: 4.6,
      link:
          'https://www.google.com/maps/place/Ayawasi+"Orgánico+%26+Natural"/@-29.9276701,-71.2848723,13z/data=!4m8!1m2!2m1!1sVegan!3m4!1s0x0:0x7cd7968331d7315b!8m2!3d-29.9040929!4d-71.2539983',
      perNight: 200,
    ),
  ];
}
