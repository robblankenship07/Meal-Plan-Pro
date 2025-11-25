
import 'package:flutter/material.dart';

void main() {
  runApp(const MealPlanProApp());
}

class MealPlanProApp extends StatefulWidget {
  const MealPlanProApp({super.key});

  @override
  State<MealPlanProApp> createState() => _MealPlanProAppState();
}

class _MealPlanProAppState extends State<MealPlanProApp> {
  bool _isPremium = false;

  void _unlockPremium() {
    setState(() {
      _isPremium = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MealPlan Pro',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        primarySwatch: Colors.green,
        scaffoldBackgroundColor: const Color(0xFF050608),
        cardColor: const Color(0xFF12141A),
      ),
      home: HomePage(
        isPremium: _isPremium,
        onUnlockPremium: _unlockPremium,
      ),
    );
  }
}

class MealPlan {
  final String goal;
  final String tagline;
  final String plan;
  final String macros;
  final Map<String, String> weeklyPlan;
  final List<String> groceries;

  const MealPlan({
    required this.goal,
    required this.tagline,
    required this.plan,
    required this.macros,
    required this.weeklyPlan,
    required this.groceries,
  });
}

const List<MealPlan> kPlans = [
  MealPlan(
    goal: "Fat Loss",
    tagline: "Low-calorie, high-protein cuts without starving.",
    plan: """
Sample Day (Approx. 1,500–1,700 cal)

Breakfast
• 2 whole eggs
• 2 egg whites
• 1 small apple

Lunch
• Grilled chicken wrap
• Whole-wheat tortilla
• Lettuce, tomato, salsa

Dinner
• Turkey taco bowl
• 4 oz lean ground turkey
• 1/2 cup rice
• Veggies + salsa

Snack
• 1 cup non-fat Greek yogurt
• Stevia or zero-cal sweetener
""",
    macros: """
Approx. Daily Macros

• Calories: 1,600
• Protein: 130–140 g
• Carbs: 140–160 g
• Fats: 40–50 g
""",
    weeklyPlan: {
      "Mon": "Turkey taco bowl + chicken wrap + eggs & fruit.",
      "Tue": "93/7 beef taco salad, Greek yogurt snack.",
      "Wed": "Baked chicken, roasted veggies, rice, fruit.",
      "Thu": "Turkey meatballs, marinara, zucchini noodles.",
      "Fri": "Air-fryer chicken tenders + light sweet potato fries.",
      "Sat": "Flexible day, similar calories, more freedom.",
      "Sun": "Meal prep: cook chicken, turkey, rice & veggies.",
    },
    groceries: [
      "Eggs + egg whites",
      "Chicken breast",
      "Lean ground turkey (93/7 or 99%)",
      "Non-fat Greek yogurt",
      "Whole-wheat tortillas",
      "Brown or jasmine rice",
      "Mixed veggies (fresh or frozen)",
      "Apples / berries / bananas",
      "Zero-cal sauces: mustard, hot sauce, salsa",
    ],
  ),
  MealPlan(
    goal: "Muscle Gain",
    tagline: "Simple surplus with quality protein and carbs.",
    plan: """
Sample Day (Approx. 2,400–2,700 cal)

Breakfast
• 1 cup oats
• 1 scoop whey protein
• 1 banana

Lunch
• 6 oz grilled chicken
• 1–1.5 cups rice
• Veggies + olive oil

Dinner
• 6 oz lean beef
• 8 oz potatoes
• Side salad

Snacks
• Handful of nuts
• 1 protein shake
""",
    macros: """
Approx. Daily Macros

• Calories: 2,500
• Protein: 170–190 g
• Carbs: 260–290 g
• Fats: 70–80 g
""",
    weeklyPlan: {
      "Mon": "High-carb: oats, chicken & rice, potatoes.",
      "Tue": "Beef & potatoes, pasta at dinner.",
      "Wed": "Chicken stir-fry + rice, fruit snacks.",
      "Thu": "Turkey burgers on whole-wheat buns, nuts.",
      "Fri": "Pre/post-workout carbs (rice, oats, cereal).",
      "Sat": "Higher-cal day with dessert or extra carbs.",
      "Sun": "Meal prep, keep protein high.",
    },
    groceries: [
      "Chicken breast & lean beef",
      "Ground turkey",
      "Rice (white or brown)",
      "Potatoes (any type)",
      "Oats",
      "Bananas & mixed fruit",
      "Whey or isolate protein",
      "Mixed nuts / peanut butter",
      "Olive or avocado oil",
    ],
  ),
  MealPlan(
    goal: "High Protein",
    tagline: "Max protein without crazy calories.",
    plan: """
Sample Day (Approx. 1,800–2,000 cal)

Breakfast
• Non-fat Greek yogurt
• Berries
• 10–15 g granola

Lunch
• Tuna or chicken salad wrap
• High-protein tortilla

Dinner
• 6 oz chicken or turkey
• Veggies
• Small rice or potato

Snacks
• Protein shake
• Rice cake or fruit
""",
    macros: """
Approx. Daily Macros

• Calories: 1,900
• Protein: 160–190 g
• Carbs: 140–170 g
• Fats: 40–50 g
""",
    weeklyPlan: {
      "Mon": "Yogurt bowl, chicken & rice, tuna wrap.",
      "Tue": "Turkey chili + yogurt snack.",
      "Wed": "Egg white omelette, protein snack, chicken dinner.",
      "Thu": "Shrimp or fish tacos, moderate carbs.",
      "Fri": "Lean meat, double portions on lifting days.",
      "Sat": "Flexible, but keep protein 160 g+.",
      "Sun": "Prep lean meats & big yogurt tub.",
    },
    groceries: [
      "Non-fat Greek yogurt",
      "Chicken breast / tenderloins",
      "Canned tuna & chicken",
      "Egg whites",
      "High-protein tortillas / wraps",
      "Low-sugar granola",
      "Fruit (berries, apples, bananas)",
      "Whey / isolate protein",
    ],
  ),
  MealPlan(
    goal: "Low Calorie",
    tagline: "High volume foods that keep you full on low cals.",
    plan: """
Sample Day (Approx. 1,300–1,500 cal)

Breakfast
• Fruit smoothie (fruit + ice + water)
• Optional scoop of protein

Lunch
• Big salad
• 4 oz chicken
• Low-cal dressing

Dinner
• Veggie or broth-based soup
• 3–4 oz lean meat

Snack
• Air-popped popcorn or rice cakes
""",
    macros: """
Approx. Daily Macros

• Calories: 1,400
• Protein: 90–110 g
• Carbs: 150–180 g
• Fats: 25–35 g
""",
    weeklyPlan: {
      "Mon": "Soup & salad day, moderate carbs.",
      "Tue": "Veggie stir-fry, small rice portion.",
      "Wed": "Egg white scramble, fruit, light dinner.",
      "Thu": "Zucchini noodles + marinara + chicken.",
      "Fri": "Light meals, allow small treat at night.",
      "Sat": "High-volume: veggies, fruits, lean meats.",
      "Sun": "Plan low-cal meals, prep veggies.",
    },
    groceries: [
      "Lettuce, spinach, mixed greens",
      "Cucumbers, peppers, tomatoes",
      "Carrots, celery, onions",
      "Chicken breast / tenderloins",
      "Low-cal salad dressing",
      "Broth (chicken or veggie)",
      "Frozen mixed veggies",
      "Popcorn kernels or rice cakes",
    ],
  ),
];

class HomePage extends StatelessWidget {
  final bool isPremium;
  final VoidCallback onUnlockPremium;

  const HomePage({
    super.key,
    required this.isPremium,
    required this.onUnlockPremium,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MealPlan Pro'),
        actions: [
          IconButton(
            icon: Icon(
              isPremium ? Icons.workspace_premium : Icons.lock_outline,
              color: isPremium ? Colors.amber : Colors.white,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (_) => PaywallPage(onUnlockPremium: onUnlockPremium),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Choose your goal',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            const Text(
              'All meal plans are premium. Unlock to access any of them.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Expanded(
              child: ListView.separated(
                itemCount: kPlans.length,
                separatorBuilder: (_, __) => const SizedBox(height: 12),
                itemBuilder: (context, index) {
                  final plan = kPlans[index];
                  return SizedBox(
                    height: 56,
                    child: ElevatedButton(
                      onPressed: () {
                        if (!isPremium) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) =>
                                  PaywallPage(onUnlockPremium: onUnlockPremium),
                            ),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => PlanPage(plan: plan),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(plan.goal),
                          Icon(
                            isPremium
                                ? Icons.arrow_forward_ios
                                : Icons.lock_outline,
                            size: 18,
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PaywallPage extends StatelessWidget {
  final VoidCallback onUnlockPremium;

  const PaywallPage({super.key, required this.onUnlockPremium});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unlock MealPlan Pro'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Spacer(),
            const Icon(
              Icons.lock_outline_rounded,
              size: 80,
              color: Colors.amber,
            ),
            const SizedBox(height: 20),
            const Text(
              'Unlock All Meal Plans',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 12),
            const Text(
              'Get complete daily meal plans, macros, weekly structures, and grocery lists for every goal.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF12141A),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.greenAccent, width: 1),
              ),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Choose your plan',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text('• \$2.99 / week  (best to try it out)'),
                  Text('• \$9.99 / month'),
                  Text('• \$39.99 / year'),
                  SizedBox(height: 8),
                  Text(
                    'In a real app, this button would open yourStripe/StoreKit/Play Billing checkout.',
                    style: TextStyle(fontSize: 12, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              height: 52,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: replace this with real payment logic.
                  onUnlockPremium();
                  Navigator.pop(context);
                },
                child: const Text(
                  'Simulate Purchase – Unlock Premium',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

class PlanPage extends StatelessWidget {
  final MealPlan plan;

  const PlanPage({super.key, required this.plan});

  Widget _sectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, bottom: 8),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(plan.goal),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plan.tagline,
              style: TextStyle(color: Colors.grey.shade300),
            ),
            _sectionTitle('Daily Meal Plan'),
            Text(plan.plan),
            _sectionTitle('Approx. Macros'),
            Text(plan.macros),
            _sectionTitle('Weekly Structure'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: plan.weeklyPlan.entries.map((entry) {
                return Text('${entry.key}: ${entry.value}');
              }).toList(),
            ),
            _sectionTitle('Grocery List'),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: plan.groceries.map((item) {
                return Text('• $item');
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
