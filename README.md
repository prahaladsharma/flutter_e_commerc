# e_commerce

Implement side drawer in home screen.

- create one new classes and call from dashboard.dart.
   - nav_bar.dart:- for side drawer.
- call nav_bar.dart from dashboard.dart.
   
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


![side_drawer](https://user-images.githubusercontent.com/6931557/196160123-3d7c747a-c933-40ad-81a0-c7b298523bd1.png)


## Created g.dart file
1 Need to dependency
dependencies:
  json_annotation: ^4.6.0
dev_dependencies:
   build_runner: ^2.2.0
   json_serializable: ^6.3.1

2. add below code in model classe
  part 'add_data.g.dart';
  Here 'add_data' is file name then rest is same(g.dart)

. Run below command in terminal
  flutter pub run build_runner build