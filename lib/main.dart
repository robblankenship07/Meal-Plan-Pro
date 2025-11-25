import 'package:flutter/material.dart';

void main() {
  runApp(MealPlanPro());
}

class MealPlanPro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Meal Plan Pro",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meal Plan Pro"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Premium Meal Planner",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MealPlansPage()),
                );
              },
              child: Text("View Meal Plans"),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GroceryListPage()),
                );
              },
              child: Text("Grocery List"),
            ),
          ],
        ),
      ),
    );
  }
}

class MealPlansPage extends StatelessWidget {
  final List<String> meals = [
    "High Protein Meal Plan",
    "Lean Cutting Meal Plan",
    "Muscle Building Plan",
    "Quick 1500 Cal Plan",
    "Keto Plan",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Meal Plans")),
      body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(meals[index]),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {},
          );
        },
      ),
    );
  }
}

class GroceryListPage extends StatefulWidget {
  @override
  _GroceryListPageState createState() => _GroceryListPageState();
}

class _GroceryListPageState extends State<GroceryListPage> {
  final TextEditingController controller = TextEditingController();
  List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Grocery List")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: controller,
                    decoration: InputDecoration(
                      hintText: "Add item...",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      items.add(controller.text);
                      controller.clear();
                    });
                  },
                  child: Text("Add"),
                )
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return ListTile(
                  title: Text(items[i]),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {
                      setState(() {
                        items.removeAt(i);
                      });
                    },
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
