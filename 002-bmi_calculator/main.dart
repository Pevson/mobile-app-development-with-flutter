import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BMICalculator(),
      ),
    );
  }
}

class BMICalculator extends StatefulWidget {
  @override
  _BMICalculatorState createState() => _BMICalculatorState();
}

class _BMICalculatorState extends State<BMICalculator> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmiResult = 0.0;
  String bmiCategory = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Colors.brown.withOpacity(0.3),
            Colors.brown.withOpacity(0.5),
            Colors.brown.withOpacity(0.7),
          ],
        ),
      ),
      padding: EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'BMI Calculator',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'Enter your height and weight',
            style: TextStyle(
              color: Colors.white,
              fontSize: 18.0,
            ),
          ),
          SizedBox(height: 16.0),
          Text(
            'BMI: ${bmiResult.toStringAsFixed(2)}',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          Text(
            'Category: $bmiCategory',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: heightController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter height (cm)',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(height: 16.0),
          TextField(
            controller: weightController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Enter weight (kg)',
              fillColor: Colors.white,
              filled: true,
            ),
          ),
          SizedBox(height: 32.0),
          ElevatedButton(
            onPressed: () {
              calculateBMI();
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.red,
              padding: EdgeInsets.symmetric(horizontal: 40.0),
            ),
            child: Text('Calculate'),
          ),
        ],
      ),
    );
  }

  void calculateBMI() {
    double height = double.tryParse(heightController.text) ?? 0.0;
    double weight = double.tryParse(weightController.text) ?? 0.0;

    if (height > 0 && weight > 0) {
      double heightInMeters = height / 100.0;
      double bmi = weight / (heightInMeters * heightInMeters);
      setState(() {
        bmiResult = bmi;
        bmiCategory = getBMICategory(bmi);
      });
    } else {
      // Handle invalid input
      setState(() {
        bmiResult = 0.0;
        bmiCategory = '';
      });
    }
  }

  String getBMICategory(double bmi) {
    if (bmi < 18.5) {
      return 'Underweight';
    } else if (bmi >= 18.5 && bmi <= 24.9) {
      return 'Healthy Weight';
    } else if (bmi >= 25 && bmi <= 29.9) {
      return 'Overweight';
    } else if (bmi >= 30 && bmi <= 34.9) {
      return 'Obese';
    } else if (bmi >= 35 && bmi <= 39.99) {
      return 'Severely Obese';
    } else {
      return 'Error';
    }
  }
}
