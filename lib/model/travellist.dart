
class travelApp {
  String name;
  String location;
  String price;
  String discription;
  String temp;
  double rating;
  String ima;
  String distance;
  travelApp({
    required this.name,
    required this.location,
    required this.price,
    required this.rating,
    required this.ima,
    required this.discription,
    required this.distance,
    required this.temp,
  });
}

List<travelApp> TravelAPPList = [
  travelApp(
      name: 'Cologne',
      location: 'Germany',
      price: '\$4652',
      rating: 4.1,
      ima: 'assets/Cologne.jpg',
      discription: 'Cologne  is the largest city of the German western state of North Rhine-Westphalia (NRW) and the fourth-most populous city of Germany with 1.1 million inhabitants in the city proper and 3.6 million people in the urban region. Centered on the left (west) bank of the Rhine, Cologne is about 35 km (22 mi) southeast of NRW s state capital Düsseldorf and 25 km (16 mi) northwest of Bonn.',
      distance: '5 km',
      temp: ' 5°c'),
  travelApp(
      name: 'Milan',
      location: 'Italy',
      price: '\$9655',
      rating: 3,
      ima: 'assets/italy.jpg',
      discription: 'Milan  is a city in northern Italy, capital of Lombardy, and the second-most populous city proper in Italy after Rome. The city proper has a population of about 1.4 million,[6] while its metropolitan city has 3.26 million inhabitants.[7] Its continuously built-up urban area (whose outer suburbs extend well beyond the boundaries of the administrative metropolitan city and even stretch into the nearby country of Switzerland) is the fourth largest in the EU with 5.27 million inhabitants.',
      distance: '9 km',
      temp: '10°c'),
  travelApp(
      name: 'Paris',
      location: 'France',
      price: '\$6000',
      rating: 5,
      ima: 'assets/paris.jpg',
      discription: 'Paris  is the capital and most populous city of France, with an estimated population of 2,165,423 residents in 2019 in an area of more than 105 km² (41 sq mi),[4] making it the 34th most densely populated city in the world in 2020.[5] Since the 17th century, Paris has been one of the worlds major centres of finance, diplomacy, commerce, fashion, gastronomy, science, and arts, and has sometimes been referred to as the capital of the world or "the City of Light"',
      distance: '11 km',
      temp: '16°c'),
  travelApp(
      name: 'Bern',
      location: 'Swiss',
      price: '\$73550',
      rating: 4.5,
      ima: 'assets/swuis.jpg',
      discription: 'Bern  is the  With a population of about 144,000 (as of 2020), Bern is the fourth-most populous city in Switzerland.[4] The Bern agglomeration, which includes 36 municipalities, had a population of 406,900 in 2014.[5] The metropolitan area had a population of 660,000 in 2000.,Bern is also the capital of the canton of Bern, the second-most populous of Switzerlands cantons. The official language is German,[note 3] but the main spoken language is the local variant of the Alemannic Swiss German dialect, Bernese German.',
      distance: '16 km',
      temp: '2°c'),
        travelApp(
      name: 'Bangkok',
      location: 'Thailand',
      price: '\$73550',
      rating: 4,
      ima: 'assets/thailand.jpg',
      discription: 'Bangkok, officially known in Thai as Krung Thep Maha Nakhon[b] and colloquially as Krung Thep,[c] is the capital and most populous city of Thailand. The city occupies 1,568.7 square kilometres (605.7 sq mi) in the Chao Phraya River delta in central Thailand and has an estimated population of 10.539 million as of 2020, 15.3 percent of the countrys population.',
      distance: '10 km',
      temp: '5°c'),
        travelApp(
      name: 'New york',
      location: 'Us',
      price: '\$73550',
      rating: 5,
      ima: 'assets/new.jpg',
      discription: 'New York, often called New York City (NYC) to distinguish it from the State of New York, is the most populous city in the United States. With a 2020 population of 8,804,190 distributed over 300.46 square miles (778.2 km2), New York City is also the most densely populated major city in the United States. Located at the southern tip of New York State, the city is the center of the New York metropolitan area, the largest metropolitan area in the world by urban landmass.[9] With over 20.1 million people in its metropolitan statistical area and 23.5 million in its combined statistical area as of 2020, New York is one of the worlds most populous megacities. New York City is a global cultural, financial, and media center with a significant influence on commerce, entertainment, research, technology,[10] education, politics, tourism, dining, art, fashion, and sports. New York is the most photographed city in the world.',
      distance: '18 km',
      temp: '9°c'),
      
];
