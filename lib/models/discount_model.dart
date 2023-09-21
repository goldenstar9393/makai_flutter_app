class Discount {
  Coupon coupon;

  Discount({this.coupon});

  Discount.fromJson(Map<String, dynamic> json) {
    coupon = json['coupon'] != null ? new Coupon.fromJson(json['coupon']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.coupon != null) {
      data['coupon'] = this.coupon.toJson();
    }
    return data;
  }
}

class Coupon {
  num discount;

  Coupon({this.discount});

  Coupon.fromJson(Map<String, dynamic> json) {
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['discount'] = this.discount;
    return data;
  }
}
