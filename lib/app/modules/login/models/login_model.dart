class LoginModel {
  LoginModel({
    required this.userObj,
    this.status,
    this.message,
  });
  late final UserObj userObj;
  late final dynamic status;
  late final dynamic message;

  LoginModel.fromJson(Map<String, dynamic> json) {
    userObj = UserObj.fromJson(json['userObj']);
    status = json[''];
    message = json[''];
  }
}

class UserObj {
  UserObj({
    this.validToken,
    required this.tenYears,
    this.subscriptionShipments,
    this.subscriptionOrders,
    this.subscription,
    required this.sessionToken,
    this.selectedOrder,
    this.selectedMeal,
    this.lstViewMealsData,
    this.lstMealsData,
    this.lstMealLineItems,
    this.charge,
    this.apiRequest,
    required this.allOrderShipments,
    required this.allOrders,
    required this.account,
  });
  late final dynamic validToken;
  late final List<String> tenYears;
  late final dynamic subscriptionShipments;
  late final dynamic subscriptionOrders;
  late final dynamic subscription;
  late final String sessionToken;
  late final dynamic selectedOrder;
  late final dynamic selectedMeal;
  late final dynamic lstViewMealsData;
  late final dynamic lstMealsData;
  late final dynamic lstMealLineItems;
  late final dynamic charge;
  late final dynamic apiRequest;
  late final List<dynamic> allOrderShipments;
  late final List<AllOrders> allOrders;
  late final Account account;

  UserObj.fromJson(Map<String, dynamic> json) {
    validToken = json['validToken'];
    tenYears = List.castFrom<dynamic, String>(json['tenYears']);
    subscriptionShipments = json['subscriptionShipments'];
    subscriptionOrders = json['subscriptionOrders'];
    subscription = json['subscription'];
    sessionToken = json['sessionToken'];
    selectedOrder = json['selectedOrder'];
    selectedMeal = json['selectedMeal'];
    lstViewMealsData = json['lstViewMealsData'];
    lstMealsData = json['lstMealsData'];
    lstMealLineItems = json['lstMealLineItems'];
    charge = json['charge'];
    apiRequest = json['apiRequest'];
    allOrderShipments =
        List.castFrom<dynamic, dynamic>(json['allOrderShipments']);
    allOrders =
        List.from(json['allOrders']).map((e) => AllOrders.fromJson(e)).toList();
    account = Account.fromJson(json['account']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['validToken'] = validToken;
    _data['tenYears'] = tenYears;
    _data['subscriptionShipments'] = subscriptionShipments;
    _data['subscriptionOrders'] = subscriptionOrders;
    _data['subscription'] = subscription;
    _data['sessionToken'] = sessionToken;
    _data['selectedOrder'] = selectedOrder;
    _data['selectedMeal'] = selectedMeal;
    _data['lstViewMealsData'] = lstViewMealsData;
    _data['lstMealsData'] = lstMealsData;
    _data['lstMealLineItems'] = lstMealLineItems;
    _data['charge'] = charge;
    _data['apiRequest'] = apiRequest;
    _data['allOrderShipments'] = allOrderShipments;
    _data['allOrders'] = allOrders.map((e) => e.toJson()).toList();
    _data['account'] = account.toJson();
    return _data;
  }
}

class AllOrders {
  AllOrders({
    required this.attributes,
    required this.Id,
    required this.Name,
    required this.FirstName_C,
    required this.LastName_C,
    required this.AccountId,
    required this.StageName,
    required this.ShipDate_C,
  });
  late final Attributes attributes;
  late final String Id;
  late final String Name;
  late final String FirstName_C;
  late final String LastName_C;
  late final String AccountId;
  late final String StageName;
  late final String ShipDate_C;

  AllOrders.fromJson(Map<String, dynamic> json) {
    attributes = Attributes.fromJson(json['attributes']);
    Id = json['Id'];
    Name = json['Name'];
    FirstName_C = json['First_Name__c'];
    LastName_C = json['Last_Name__c'];
    AccountId = json['AccountId'];
    StageName = json['StageName'];
    ShipDate_C = json['Ship_Date__c'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['attributes'] = attributes.toJson();
    _data['Id'] = Id;
    _data['Name'] = Name;
    _data['First_Name__c'] = FirstName_C;
    _data['Last_Name__c'] = LastName_C;
    _data['AccountId'] = AccountId;
    _data['StageName'] = StageName;
    _data['Ship_Date__c'] = ShipDate_C;
    return _data;
  }
}

class Attributes {
  Attributes({
    required this.type,
    required this.url,
  });
  late final String type;
  late final String url;

  Attributes.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['type'] = type;
    _data['url'] = url;
    return _data;
  }
}

class Account {
  Account({
    required this.attributes,
    required this.Id,
    required this.FirstName_C,
    required this.LastName_C,
    required this.Email_C,
    required this.BillingStreet,
    required this.BillingCity,
    required this.BillingState,
    required this.BillingPostalCode,
    required this.BillingCountry,
    required this.ShippingStreet,
    required this.ShippingCity,
    required this.ShippingState,
    required this.ShippingPostalCode,
    required this.ShippingCountry,
    required this.SessionToken_C,
    required this.SessionTokenTime_C,
  });
  late final Attributes attributes;
  late final String Id;
  late final String FirstName_C;
  late final String LastName_C;
  late final String Email_C;
  late final String BillingStreet;
  late final String BillingCity;
  late final String BillingState;
  late final String BillingPostalCode;
  late final String BillingCountry;
  late final String ShippingStreet;
  late final String ShippingCity;
  late final String ShippingState;
  late final String ShippingPostalCode;
  late final String ShippingCountry;
  late final String SessionToken_C;
  late final String SessionTokenTime_C;

  Account.fromJson(Map<String, dynamic> json) {
    attributes = Attributes.fromJson(json['attributes']);
    Id = json['Id'];
    FirstName_C = json['First_Name__c'];
    LastName_C = json['Last_Name__c'];
    Email_C = json['Email__c'];
    BillingStreet = json['BillingStreet'];
    BillingCity = json['BillingCity'];
    BillingState = json['BillingState'];
    BillingPostalCode = json['BillingPostalCode'];
    BillingCountry = json['BillingCountry'];
    ShippingStreet = json['ShippingStreet'];
    ShippingCity = json['ShippingCity'];
    ShippingState = json['ShippingState'];
    ShippingPostalCode = json['ShippingPostalCode'];
    ShippingCountry = json['ShippingCountry'];
    SessionToken_C = json['SessionToken__c'];
    SessionTokenTime_C = json['SessionTokenTime__c'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['attributes'] = attributes.toJson();
    _data['Id'] = Id;
    _data['First_Name__c'] = FirstName_C;
    _data['Last_Name__c'] = LastName_C;
    _data['Email__c'] = Email_C;
    _data['BillingStreet'] = BillingStreet;
    _data['BillingCity'] = BillingCity;
    _data['BillingState'] = BillingState;
    _data['BillingPostalCode'] = BillingPostalCode;
    _data['BillingCountry'] = BillingCountry;
    _data['ShippingStreet'] = ShippingStreet;
    _data['ShippingCity'] = ShippingCity;
    _data['ShippingState'] = ShippingState;
    _data['ShippingPostalCode'] = ShippingPostalCode;
    _data['ShippingCountry'] = ShippingCountry;
    _data['SessionToken__c'] = SessionToken_C;
    _data['SessionTokenTime__c'] = SessionTokenTime_C;
    return _data;
  }
}
