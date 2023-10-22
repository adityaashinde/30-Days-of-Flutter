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


Day 15 : JSON Mapping | Data Class Generator | Progress Indicator

*JSON Mapping* - Using the form `Json`() method, we pass the JSON string and the target class to map the JSON string to a person object.

```dart
@override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    var catalogJson = await rootBundle.loadString("assets/files/catalog.json");
    var decodedData = jsonDecode(catalogJson);
    var productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();
```

![day15](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/20edd71a-a2c8-4f28-92b1-d9ea7034c85c)


*Data Class Generator* - In VS Code extension setting add the Dart Data Class Generator extension. 

after that Hit CTRL + P to open the command dialog.

Search the Dart data class generator : Generate from class file and click OK

*Progress Indicator* -  Go to the dart file and locate the widget inside which you like to add the progress indicator.

Add the Circular Progress Indicator() widget.

Inside the Circular Progress Indicator() widget, add parameter, and provide the value between 0 to 1.

![day15 1](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/a8f0bb31-10f1-45c5-86ce-11f0014a3db0)


Day 16 - Grid View | Grid Tile

*Grid View -* 

Grid View is a widget in flutter that displays the items in a 2-D array (two-dimensional rows and columns).

A type of Adapter View that displays items in a two-dimensional scrolling grid.

Grid View is a control used to display data in tables on a web page.

*Grid Tile -*

A tile in a Material Design grid list. A grid list is a Grid View of tiles in a vertical and horizontal array.

Each tile typically contains some visually rich content (e.g. an image) together with a Grid Tile Bar in wither a header or footer.

```dart
Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // ignore: unnecessary_null_comparison
        child: (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
            ? GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                itemBuilder: (context, index) {
                  final item = CatalogModel.items[index];
                  return Card(
                    clipBehavior: Clip.antiAlias,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    child: GridTile(
                      header: Container(
                        // ignore: sort_child_properties_last
                        child: Text(item.name),
                        padding: const EdgeInsets.all(12),
                        decoration: const BoxDecoration(
                          color: Colors.deepPurple,
                        ),
                      ),
                      // ignore: sort_child_properties_last
                      child: Image.network(item.image),
                      footer: Text(
                        item.price.toString(),
                      ),  
                    ),  // GridTile
                  );    // Card
                },
                itemCount: CatalogModel.items.length,
              )   // GridView.builder
      ),
    );
  }
```

![day16](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/a12a4cc4-67f5-41d7-aa18-f7fa074fa8bb)


Day 17 - Beautiful UI | Velocity X

Velocity X latest version :   `velocity_x: ^4.1.1`

Velocity X is a flutter library that provides a set of customizable and extensible animations that can be used to enhance.

Velocity X is a 100% free Flutter open-source minimalist UI Framework built with flutter SDK to make Flutter development easier and more joyful than ever.

🚀 Just used `VelocityX` to craft a stunning UI for my Flutter app! 💫✨ Loving how easy and efficient it is to create beautiful designs. 

#Flutter #UI #VelocityX #FlutterDev 🎨📲

![day17 1](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/16845fb8-faaa-4a87-9f3b-6d4c625358bf)


![day17 2](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/fca59090-940c-4dec-a5a7-77e234322648)


Day 18 - Hero Animation | Material Page Route | Arc

*Hero Animation :* 

Flying an image from one screen to another is called a hero animation in flutter, through the same motion is sometimes referred to as a shared element transition.

The hero animation is a powerful built-in animation to convey an action by automatically animating a widget from one page to another to the correct size and position.

when you navigate back to the previous page, the Hero animates back to the original position.

*Initial Route :*

The `initialRoute` property defines which route the app should start with.

The routes property defines the available named routes and the widgets to build when navigating to those routes.

When using `initialRoutes` , don’t defines a home property.

*Material Page Route :*

A model route that replaces the entire screen with a platform-adaptive transition.

For Android, the entrance transition for the page zooms in and fades in while the exiting page zooms out and fades out. The exit transition is similar, but in reverse.

For iOS, the page slides in from the right and exits in reverse. The page also shifts to the left in parallax when another page enters to cover it. (These directions are flipped in environments with a right-to-left reading direction.)

By default, when a modal route is replaced by another, the previous route remains in memory. To free all the resources when this is not necessary, set `maintainState` to false.

The `fullscreenDialog` property specifies whether the incoming route is a full screen modal dialog. On iOS, those routes animate from the bottom to the top rather than horizontally.

The type `T` specifies the return type of the route which can be supplied as the route is popped from the stack via `Navigator.pop` by providing the optional `result` argument.

Inheritance
• Object >
• Route<T> >
• OverlayRoute<T> >
• TransitionRoute<T> >
• ModalRoute<T> >
• PageRoute<T> >
• MaterialPageRoute

Mixed in types
• MaterialRouteTransitionMixin<T>

**Constructors**

```kotlin
**MaterialPageRoute**({required WidgetBuilder builder, RouteSettings? settings, 
bool maintainState = true, bool fullscreenDialog = false, bool allowSnapshotting = true})
```

Construct a `MaterialPageRoute` whose contents are defined by builder.

![day18 1](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/68b514b9-ca71-4e60-b87d-38a8b7e65343)

![day18 2](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/95772051-1150-48fc-8c8b-daa131ff32e5)
![day18 3](https://github.com/adityaashinde/30-Days-of-Flutter/assets/94387380/44624947-ba53-4ed8-a7e3-bb783732ebcb)
