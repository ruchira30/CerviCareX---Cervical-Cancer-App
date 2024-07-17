import 'package:flutter/material.dart';

enum RiskLevel { low, medium, high }

class ResultPage extends StatelessWidget {
  final Map<String, String> selectedOptions;

  ResultPage({required this.selectedOptions});

  RiskLevel _calculateRiskLevel() {
    bool hasLowRiskFactors =
        selectedOptions['Age'] == 'Under 20' ||
            selectedOptions['Number of Sexual Partners'] == '0-1' ||
            selectedOptions['First Sexual Intercourse Age'] == 'Never' ||
            selectedOptions['Number of Pregnancies'] == 'Never' ||
            selectedOptions['Smokes'] == 'No' ||
            selectedOptions['Hormonal Contraceptive Usage'] == 'No' ||
            selectedOptions['IUD'] == 'No' ||
            selectedOptions['STDs'] == 'No' ||
            selectedOptions['HPV'] == 'No' ||
            selectedOptions['Dx'] == 'No';

    // Medium risk factors
    bool hasMediumRiskFactors =
        selectedOptions['Number of Sexual Partners'] == 'More than 10' ||
            selectedOptions['First Sexual Intercourse Age'] == 'Under 16' ||
            selectedOptions['Number of Pregnancies'] == '3 or more';

    // High risk factors
    bool hasHighRiskFactors =
        selectedOptions['Smokes'] == 'Yes' ||
            selectedOptions['STDs'] == 'Yes' ||
            selectedOptions['HPV'] == 'Yes' ||
            (selectedOptions['First Sexual Intercourse Age'] == 'Under 16' &&
                selectedOptions['Number of Pregnancies'] != 'Never');

    if (hasHighRiskFactors) {
      return RiskLevel.high;
    } else if (hasMediumRiskFactors) {
      return RiskLevel.medium;
    } else {
      return RiskLevel.low;
    }
  }

  @override
  Widget build(BuildContext context) {
    RiskLevel riskLevel = _calculateRiskLevel();

    Color indicatorColor;
    String riskMessage;
    switch (riskLevel) {
      case RiskLevel.low:
        indicatorColor = Colors.green;
        riskMessage = 'Low Risk';
        break;
      case RiskLevel.medium:
        indicatorColor = Colors.orange;
        riskMessage = 'Medium Risk';
        break;
      case RiskLevel.high:
        indicatorColor = Colors.red;
        riskMessage = 'High Risk';
        break;
      default:
        indicatorColor = Colors.grey;
        riskMessage = 'Unknown Risk';
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Quiz Result'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Your quiz result',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            // Display glowing ring indicator
            Container(
              width: 150,
              height: 150,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: indicatorColor.withOpacity(0.5),
                    spreadRadius: 10,
                    blurRadius: 20,
                    offset: Offset(0, 0),
                  ),
                ],
              ),
              child: Center(
                child: Container(
                  width: 120,
                  height: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: indicatorColor,
                  ),
                  child: Center(
                    child: Text(
                      riskMessage,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            // Display risk level text below the indicator
            Text(
              'Risk Level: $riskMessage',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }


}