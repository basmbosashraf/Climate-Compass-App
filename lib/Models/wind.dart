class wind{
  double clouds;
  wind({
    required this.clouds
});

  factory wind.fromJson(Map<String, dynamic> json) {
    return wind(
      clouds: double.parse(json["clouds"]),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "clouds": this.clouds,
    };
  }
}