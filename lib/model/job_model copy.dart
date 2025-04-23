class JobModel {
  final String prio;
  final String job;
  final String type;
  final String truck;
  final String location;
  final String area;
  final String age;
  final String distance;
  final String action;

  JobModel({
    required this.prio,
    required this.job,
    required this.type,
    required this.truck,
    required this.location,
    required this.area,
    required this.age,
    required this.distance,
    required this.action,
  });

  factory JobModel.fromMap(Map<String, String> map) {
    return JobModel(
      prio: map['Prio'] ?? '',
      job: map['Job'] ?? '',
      type: map['Type'] ?? '',
      truck: map['Truck'] ?? '',
      location: map['Location'] ?? '',
      area: map['Area'] ?? '',
      age: map['Age'] ?? '',
      distance: map['Distance'] ?? '',
      action: map['Action'] ?? '',
    );
  }

  Map<String, String> toMap() {
    return {
      'Prio': prio,
      'Job': job,
      'Type': type,
      'Truck': truck,
      'Location': location,
      'Area': area,
      'Age': age,
      'Distance': distance,
      'Action': action,
    };
  }
}
