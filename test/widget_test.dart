import 'package:appdemo/app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main(){
  
testWidgets("Calculator test", (WidgetTester tester) async {

  await tester.pumpWidget(const Myapp());

  expect(find.byKey(const Key("Result")), findsOneWidget);
  expect(find.byKey(const Key("displayTwo")),findsOneWidget);
  expect(find.byKey(const Key("displayOne")),findsOneWidget);
  expect(find.byIcon(CupertinoIcons.add),findsOneWidget);
  expect(find.byIcon(CupertinoIcons.minus),findsOneWidget);
  expect(find.byIcon(CupertinoIcons.multiply),findsOneWidget);
  expect(find.byIcon(CupertinoIcons.divide),findsOneWidget);

});

}