class FeesModel {
  Fees fees;

  FeesModel({this.fees});

  FeesModel.fromJson(Map<String, dynamic> json) {
    fees = json['fees'] != null ? new Fees.fromJson(json['fees']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.fees != null) {
      data['fees'] = this.fees.toJson();
    }
    return data;
  }
}

class Fees {
  List<Types> types;
  List<Summary> summary;
  Total total;

  Fees({this.types, this.summary, this.total});

  Fees.fromJson(Map<String, dynamic> json) {
    if (json['types'] != null) {
      types = new List<Types>();
      json['types'].forEach((v) {
        types.add(new Types.fromJson(v));
      });
    }
    if (json['summary'] != null) {
      summary = new List<Summary>();
      json['summary'].forEach((v) {
        summary.add(new Summary.fromJson(v));
      });
    }
    total = json['total'] != null ? new Total.fromJson(json['total']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.types != null) {
      data['types'] = this.types.map((v) => v.toJson()).toList();
    }
    if (this.summary != null) {
      data['summary'] = this.summary.map((v) => v.toJson()).toList();
    }
    if (this.total != null) {
      data['total'] = this.total.toJson();
    }
    return data;
  }
}

class Types {
  String feeID;
  int amount;
  String type;
  bool status;
  String name;
  String category;

  Types({this.feeID, this.amount, this.type, this.status, this.name, this.category});

  Types.fromJson(Map<String, dynamic> json) {
    feeID = json['feeID'];
    amount = json['amount'];
    type = json['type'];
    status = json['status'];
    name = json['name'];
    category = json['category'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feeID'] = this.feeID;
    data['amount'] = this.amount;
    data['type'] = this.type;
    data['status'] = this.status;
    data['name'] = this.name;
    data['category'] = this.category;
    return data;
  }
}

class Summary {
  String name;
  String total;

  Summary({this.name, this.total});

  Summary.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    total = json['total'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['total'] = this.total;
    return data;
  }
}

class Total {
  String feesTotal;
  String finalTotal;

  Total({this.feesTotal, this.finalTotal});

  Total.fromJson(Map<String, dynamic> json) {
    feesTotal = json['feesTotal'];
    finalTotal = json['finalTotal'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['feesTotal'] = this.feesTotal;
    data['finalTotal'] = this.finalTotal;
    return data;
  }
}
