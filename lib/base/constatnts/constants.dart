import 'package:responsive_framework/responsive_framework.dart';

const List<Condition> valuesWhen = [
  Condition.largerThan(name: MOBILE, value: 350),
  Condition.largerThan(name: TABLET, value: 450)
];

const List<Condition> hiddenValues = [
  Condition.smallerThan(name: TABLET),
  Condition.smallerThan(name: DESKTOP)
];

const List<Condition> hiddenAppBarValues = [
  Condition.smallerThan(name: MOBILE)
];
