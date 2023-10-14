# 30-Days-of-Flutter

Day 01 :
Flutter Installation and Setup
First App : 
![hello-app](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/84e66e8c-aeb5-4893-a2cc-7ad774b162da)

Day 02 :
Git, Dart Data types and Scaffold

Day 03 :
Functions, Classes, Routes, Theme & Text

Day 04 :
Adding Images, Google Fonts & Elevated Button

Day 05 :
Git and Github , SingleChildScrollView & Navigator

Day 06 :
Stateful , Animated Container and Future Dalay

Day 07 :
Q/A #30DaysOfFlutter

Day 8 : Form | Text Field Validation | Ink

![day8](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/fd68f822-97e1-4e4a-b7b0-a4b79bfa024f)

Day 9 : Material Drawer | DevTools | ListView

```dart
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Aditya Shinde"),
                accountEmail: Text("adityashinde104@yahoo.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/94387380?s=400&u=11daaf4ba22c8a9b1e70fd55279e7b72fb486724&v=4"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "About",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Contact",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
```

added Circle Avatar in Drawer file.

```dart
currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://avatars.githubusercontent.com/u/94387380?s=400&u=11daaf4ba22c8a9b1e70fd55279e7b72fb486724&v=4"),
                ),
```

![day9](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/ddc1af4a-3b83-4eed-ac04-94e857e87a59)

Day 10 : App Bar Theme | Extracting Theme | Models

In these tutorial we learn the App Bar Theme. In lib folder created theme .dart file. In theme .dart file create a separate class for Theme and in these class we builds a light theme and dark theme and main .dart file pass the MyTheme() class.

code :

```dart
Theme.dart

import 'package:flutter/material.dart';
class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black),
        ),
      );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
      );
}
```

```dart
main.dart

themeMode : ThemeMode.light,
theme: MyTheme.lightTheme(context),
theme:MyTheme.darkTheme(context),
```

and also debug show checked mode banner value made it false it.

```dart
debugShowCheckedModeBanner = false;
```

![day10(1)](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/577754a9-9b2c-4b37-91e4-e121499045cb)

![day10(2)](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/7b30fa86-f940-481b-815f-712118091dcd)

Day 11 : Build Context, 3 Trees & Constraints Explained

Build Context is a locator that is used to track each widget in a tress and locate them and their position in the tree.

Flutter maintains three trees in parallel :

the **Widget , Element and Render Object trees**

<img width="828" alt="day11" src="https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/b45ddcbf-a23b-4c8a-9782-53a71e92d5cd">

Constraints :

A constraint is just a set of 4 doubles : a minimum width and maximum width, and a minimum height and maximum height.

Then the widget goes through its own list of children. One by one, the widget tells its children what their constraints are (which can be different for each child), and then asks each child what size it wants to be.

![day11(1)](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/1a75c01a-a1b7-497a-be41-b87078df2c43)

![day11(2)](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/61a84cf9-4458-45be-b6d6-47655aae51cb)

Day 12 : List View Builder, List Generate, Card & Asserts

List View builder : List View builder is for when you have a large set of items because it doesn’t build of them at once, and only builds the ones that are visible or are going to be visible.

List Generate : Generates a list of values. Creates a list with length positions and files it with values created by calling generator for each index in the range 0 … length -1 in increasing order.

```dart
final dummyList = List.generate(20, (index) => CatalogModel.items[0]);
```

Cards : Cards in flutter provides a Material design with various properties to play with and customize your widget such as elevation, border radius, child widget, and many more.

![day12](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/0eb4ca95-320d-4004-ad51-44504430ba61)

Day 13 : Local Files | Load & Decode JSON

First to Go in pebspec . yaml file and add packages under dependencies.

and create the model folder under the lib folder to keep data.

Manual JSON decoding refers to using the built-in-JSON decoder in dart: convert. It involves passing the raw JSON string to the json Decode() function, and then looking up the values you need in the resulting Map<String, dynamic>.

Code for the fetch Data :

```dart
class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
  }
```

![day13](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/844baf6f-f4ed-4f97-8eae-1cbd20341351)

Day 14 : Q/A #30DaysOfFlutter
