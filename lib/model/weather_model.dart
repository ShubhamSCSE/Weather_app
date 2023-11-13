class Weather {
  final String cityName;  // Corrected from citiname
  final double temperature;  // Corrected from temprature
  final String mainCondition;  // Corrected from maincondition

  Weather({
    required this.cityName,
    required this.temperature,
    required this.mainCondition,
  });

  factory Weather.fromJson(Map<String, dynamic> json){
    return Weather(
      cityName: json['name'],
      temperature: json['main']['temp'].toDouble(),
      mainCondition: json['weather'][0]['main'],
    );
  }
}