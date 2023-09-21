class SetupIntentModel {
  SetupIntent setupIntent;

  SetupIntentModel({this.setupIntent});

  SetupIntentModel.fromJson(Map<String, dynamic> json) {
    setupIntent = json['setupIntent'] != null ? new SetupIntent.fromJson(json['setupIntent']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.setupIntent != null) {
      data['setupIntent'] = this.setupIntent.toJson();
    }
    return data;
  }
}

class SetupIntent {
  String id;
  String object;
  String clientSecret;
  int created;
  String customer;
  String latestAttempt;
  bool livemode;
  String paymentMethod;
  List<String> paymentMethodTypes;
  String status;
  String usage;

  SetupIntent({this.id, this.object, this.clientSecret, this.created, this.customer, this.latestAttempt, this.livemode, this.paymentMethod, this.paymentMethodTypes, this.status, this.usage});

  SetupIntent.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    object = json['object'];
    clientSecret = json['client_secret'];
    created = json['created'];
    customer = json['customer'];
    latestAttempt = json['latest_attempt'];
    livemode = json['livemode'];
    paymentMethod = json['payment_method'];
    paymentMethodTypes = json['payment_method_types'].cast<String>();
    status = json['status'];
    usage = json['usage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['object'] = this.object;
    data['client_secret'] = this.clientSecret;
    data['created'] = this.created;
    data['customer'] = this.customer;
    data['latest_attempt'] = this.latestAttempt;
    data['livemode'] = this.livemode;
    data['payment_method'] = this.paymentMethod;
    data['payment_method_types'] = this.paymentMethodTypes;
    data['status'] = this.status;
    data['usage'] = this.usage;
    return data;
  }
}
