class SeatAvailabilityModel {
  Vessel vessel;

  SeatAvailabilityModel({this.vessel});

  SeatAvailabilityModel.fromJson(Map<String, dynamic> json) {
    vessel = json['vessel'] != null ? new Vessel.fromJson(json['vessel']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.vessel != null) {
      data['vessel'] = this.vessel.toJson();
    }
    return data;
  }
}

class Vessel {
  int capacity;
  int bookings;
  int guestCount;
  int availableSeats;

  Vessel({this.capacity, this.bookings, this.guestCount, this.availableSeats});

  Vessel.fromJson(Map<String, dynamic> json) {
    capacity = json['capacity'];
    bookings = json['bookings'];
    guestCount = json['guestCount'];
    availableSeats = json['availableSeats'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['capacity'] = this.capacity;
    data['bookings'] = this.bookings;
    data['guestCount'] = this.guestCount;
    data['availableSeats'] = this.availableSeats;
    return data;
  }
}
