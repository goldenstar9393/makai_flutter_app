// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

class ConfirmPaymentModel {
  ConfirmPaymentModel({
    this.success,
    this.message,
    this.data,
  });

  final bool success;
  final String message;
  final Data data;

  factory ConfirmPaymentModel.fromJson(Map<String, dynamic> json) => ConfirmPaymentModel(
        success: json["success"] == null ? null : json["success"],
        message: json["message"] == null ? null : json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "success": success == null ? null : success,
        "message": message == null ? null : message,
        "data": data == null ? null : data.toJson(),
      };
}

class Data {
  Data({
    this.id,
    this.object,
    this.amount,
    this.amountCapturable,
    this.amountDetails,
    this.amountReceived,
    this.application,
    this.applicationFeeAmount,
    this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    this.captureMethod,
    this.charges,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency,
    this.customer,
    this.description,
    this.invoice,
    this.lastPaymentError,
    this.livemode,
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodOptions,
    this.paymentMethodTypes,
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status,
    this.transferData,
    this.transferGroup,
  });

  final String id;
  final String object;
  final int amount;
  final int amountCapturable;
  final AmountDetails amountDetails;
  final int amountReceived;
  final dynamic application;
  final dynamic applicationFeeAmount;
  final dynamic automaticPaymentMethods;
  final dynamic canceledAt;
  final dynamic cancellationReason;
  final String captureMethod;
  final Charges charges;
  final String clientSecret;
  final String confirmationMethod;
  final int created;
  final String currency;
  final dynamic customer;
  final dynamic description;
  final dynamic invoice;
  final dynamic lastPaymentError;
  final bool livemode;
  final Metadata metadata;
  final dynamic nextAction;
  final dynamic onBehalfOf;
  final dynamic paymentMethod;
  final PaymentMethodOptions paymentMethodOptions;
  final List<String> paymentMethodTypes;
  final dynamic processing;
  final dynamic receiptEmail;
  final dynamic review;
  final dynamic setupFutureUsage;
  final dynamic shipping;
  final dynamic statementDescriptor;
  final dynamic statementDescriptorSuffix;
  final String status;
  final dynamic transferData;
  final dynamic transferGroup;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"] == null ? null : json["id"],
        object: json["object"] == null ? null : json["object"],
        amount: json["amount"] == null ? null : json["amount"],
        amountCapturable: json["amount_capturable"] == null ? null : json["amount_capturable"],
        amountDetails: json["amount_details"] == null ? null : AmountDetails.fromJson(json["amount_details"]),
        amountReceived: json["amount_received"] == null ? null : json["amount_received"],
        application: json["application"],
        applicationFeeAmount: json["application_fee_amount"],
        automaticPaymentMethods: json["automatic_payment_methods"],
        canceledAt: json["canceled_at"],
        cancellationReason: json["cancellation_reason"],
        captureMethod: json["capture_method"] == null ? null : json["capture_method"],
        charges: json["charges"] == null ? null : Charges.fromJson(json["charges"]),
        clientSecret: json["client_secret"] == null ? null : json["client_secret"],
        confirmationMethod: json["confirmation_method"] == null ? null : json["confirmation_method"],
        created: json["created"] == null ? null : json["created"],
        currency: json["currency"] == null ? null : json["currency"],
        customer: json["customer"],
        description: json["description"],
        invoice: json["invoice"],
        lastPaymentError: json["last_payment_error"],
        livemode: json["livemode"] == null ? null : json["livemode"],
        metadata: json["metadata"] == null ? null : Metadata.fromJson(json["metadata"]),
        nextAction: json["next_action"],
        onBehalfOf: json["on_behalf_of"],
        paymentMethod: json["payment_method"],
        paymentMethodOptions: json["payment_method_options"] == null ? null : PaymentMethodOptions.fromJson(json["payment_method_options"]),
        paymentMethodTypes: json["payment_method_types"] == null ? null : List<String>.from(json["payment_method_types"].map((x) => x)),
        processing: json["processing"],
        receiptEmail: json["receipt_email"],
        review: json["review"],
        setupFutureUsage: json["setup_future_usage"],
        shipping: json["shipping"],
        statementDescriptor: json["statement_descriptor"],
        statementDescriptorSuffix: json["statement_descriptor_suffix"],
        status: json["status"] == null ? null : json["status"],
        transferData: json["transfer_data"],
        transferGroup: json["transfer_group"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "object": object == null ? null : object,
        "amount": amount == null ? null : amount,
        "amount_capturable": amountCapturable == null ? null : amountCapturable,
        "amount_details": amountDetails == null ? null : amountDetails.toJson(),
        "amount_received": amountReceived == null ? null : amountReceived,
        "application": application,
        "application_fee_amount": applicationFeeAmount,
        "automatic_payment_methods": automaticPaymentMethods,
        "canceled_at": canceledAt,
        "cancellation_reason": cancellationReason,
        "capture_method": captureMethod == null ? null : captureMethod,
        "charges": charges == null ? null : charges.toJson(),
        "client_secret": clientSecret == null ? null : clientSecret,
        "confirmation_method": confirmationMethod == null ? null : confirmationMethod,
        "created": created == null ? null : created,
        "currency": currency == null ? null : currency,
        "customer": customer,
        "description": description,
        "invoice": invoice,
        "last_payment_error": lastPaymentError,
        "livemode": livemode == null ? null : livemode,
        "metadata": metadata == null ? null : metadata.toJson(),
        "next_action": nextAction,
        "on_behalf_of": onBehalfOf,
        "payment_method": paymentMethod,
        "payment_method_options": paymentMethodOptions == null ? null : paymentMethodOptions.toJson(),
        "payment_method_types": paymentMethodTypes == null ? null : List<dynamic>.from(paymentMethodTypes.map((x) => x)),
        "processing": processing,
        "receipt_email": receiptEmail,
        "review": review,
        "setup_future_usage": setupFutureUsage,
        "shipping": shipping,
        "statement_descriptor": statementDescriptor,
        "statement_descriptor_suffix": statementDescriptorSuffix,
        "status": status == null ? null : status,
        "transfer_data": transferData,
        "transfer_group": transferGroup,
      };
}

class AmountDetails {
  AmountDetails({
    this.tip,
  });

  final Tip tip;

  factory AmountDetails.fromJson(Map<String, dynamic> json) => AmountDetails(
        tip: json["tip"] == null ? null : Tip.fromJson(json["tip"]),
      );

  Map<String, dynamic> toJson() => {
        "tip": tip == null ? null : tip.toJson(),
      };
}

class Tip {
  Tip();

  factory Tip.fromJson(Map<String, dynamic> json) => Tip();

  Map<String, dynamic> toJson() => {};
}

class Charges {
  Charges({
    this.object,
    this.data,
    this.hasMore,
    this.url,
  });

  final String object;
  final List<Datum> data;
  final bool hasMore;
  final String url;

  factory Charges.fromJson(Map<String, dynamic> json) => Charges(
        object: json["object"] == null ? null : json["object"],
        data: json["data"] == null ? null : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        hasMore: json["has_more"] == null ? null : json["has_more"],
        url: json["url"] == null ? null : json["url"],
      );

  Map<String, dynamic> toJson() => {
        "object": object == null ? null : object,
        "data": data == null ? null : List<dynamic>.from(data.map((x) => x.toJson())),
        "has_more": hasMore == null ? null : hasMore,
        "url": url == null ? null : url,
      };
}

class Datum {
  Datum({
    this.id,
  });

  final String id;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] == null ? null : json["id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
      };
}

class Metadata {
  Metadata({
    this.orderId,
  });

  final String orderId;

  factory Metadata.fromJson(Map<String, dynamic> json) => Metadata(
        orderId: json["order_id"] == null ? null : json["order_id"],
      );

  Map<String, dynamic> toJson() => {
        "order_id": orderId == null ? null : orderId,
      };
}

class PaymentMethodOptions {
  PaymentMethodOptions({
    this.card,
  });

  final Card card;

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) => PaymentMethodOptions(
        card: json["card"] == null ? null : Card.fromJson(json["card"]),
      );

  Map<String, dynamic> toJson() => {
        "card": card == null ? null : card.toJson(),
      };
}

class Card {
  Card({
    this.installments,
    this.mandateOptions,
    this.network,
    this.requestThreeDSecure,
  });

  final dynamic installments;
  final dynamic mandateOptions;
  final dynamic network;
  final String requestThreeDSecure;

  factory Card.fromJson(Map<String, dynamic> json) => Card(
        installments: json["installments"],
        mandateOptions: json["mandate_options"],
        network: json["network"],
        requestThreeDSecure: json["request_three_d_secure"] == null ? null : json["request_three_d_secure"],
      );

  Map<String, dynamic> toJson() => {
        "installments": installments,
        "mandate_options": mandateOptions,
        "network": network,
        "request_three_d_secure": requestThreeDSecure == null ? null : requestThreeDSecure,
      };
}
