import 'package:flutter/material.dart';
import 'results.dart';
class QuizPage extends StatefulWidget {
  const QuizPage({Key? key}) : super(key: key);

  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  String? selectedAgeOption;
  String? numSexualPartners;
  String? firstIntercourse;
  String? numPregnancies;
  String? smokes;
  String? hormcontracept;
  String? iud;
  String? std;
  String? hpv;
  String? dx;
  bool isQuizComplete = false;


  void _submitQuiz(BuildContext context) {
    // Process user responses here
    Map<String, String> selectedOptions = {
      'Age': selectedAgeOption ?? 'Not answered',
      'Number of Sexual Partners': numSexualPartners ?? 'Not answered',
      'First Sexual Intercourse Age': firstIntercourse ?? 'Not answered',
      'Number of Pregnancies': numPregnancies ?? 'Not answered',
      'Smokes': smokes ?? 'Not answered',
      'Hormonal Contraceptive Usage': hormcontracept ?? 'Not answered',
      'IUD': iud ?? 'Not answered',
      'STDs': std ?? 'Not answered',
      'HPV': hpv ?? 'Not answered',
      'CIN': dx ?? 'Not answered',
    };

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(selectedOptions: selectedOptions),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cervical Cancer Risk Quiz'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Container(
          color: Colors.white, // Set background color of the main container to white
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Age question
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '1. Age: How old are you?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Under 20'),
                            value: 'Under 20',
                            groupValue: selectedAgeOption,
                            onChanged: (value) {
                              setState(() {
                                selectedAgeOption = value;
                                _insertResponse('Age', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('20-29'),
                            value: '20-29',
                            groupValue: selectedAgeOption,
                            onChanged: (value) {
                              setState(() {
                                selectedAgeOption = value;
                                _insertResponse('Age', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('30-39'),
                            value: '30-39',
                            groupValue: selectedAgeOption,
                            onChanged: (value) {
                              setState(() {
                                selectedAgeOption = value;
                                _insertResponse('Age', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('40 or above'),
                            value: '40 or above',
                            groupValue: selectedAgeOption,
                            onChanged: (value) {
                              setState(() {
                                selectedAgeOption = value;
                                _insertResponse('Age', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Number of sexual partners question
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '2. Number of sexual partners: How many sexual partners have you had in your lifetime?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('0-1'),
                            value: '0-1',
                            groupValue: numSexualPartners,
                            onChanged: (value) {
                              setState(() {
                                numSexualPartners = value;
                                _insertResponse('Number of Sexual Partners', value!);
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('2-5'),
                            value: '2-5',
                            groupValue: numSexualPartners,
                            onChanged: (value) {
                              setState(() {
                                numSexualPartners = value;
                                _insertResponse('Number of Sexual Partners', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('6-10'),
                            value: '6-10',
                            groupValue: numSexualPartners,
                            onChanged: (value) {
                              setState(() {
                                numSexualPartners = value;
                                _insertResponse('Number of Sexual Partners', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('More than 10'),
                            value: 'More than 10',
                            groupValue: numSexualPartners,
                            onChanged: (value) {
                              setState(() {
                                numSexualPartners = value;
                                _insertResponse('Number of Sexual Partners', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              // Number of sexual partners question

              Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue.withOpacity(0.5), // Background color for question
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '3.First sexual intercourse: At what age did you have your first sexual intercourse?',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for options
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile<String>(
                      title: Text('Never'),
                      value: 'Never',
                      groupValue: firstIntercourse,
                      onChanged: (value) {
                        setState(() {
                          firstIntercourse= value;
                          _insertResponse('First Sexual Intercourse Age', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('Under 16'),
                      value: 'Under 16',
                      groupValue: firstIntercourse ,
                      onChanged: (value) {
                        setState(() {
                          firstIntercourse = value;
                          _insertResponse('First Sexual Intercourse Age', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('16-21'),
                      value: '16-21',
                      groupValue: firstIntercourse,
                      onChanged: (value) {
                        setState(() {
                          firstIntercourse = value;
                          _insertResponse('First Sexual Intercourse Age', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('22 or above'),
                      value: '22 or above',
                      groupValue: firstIntercourse,
                      onChanged: (value) {
                        setState(() {
                          firstIntercourse = value;
                          _insertResponse('First Sexual Intercourse Age', value!);
                          checkQuizCompletion();
                        });
                        },
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20),

        Container(
          decoration: BoxDecoration(
            color: Colors.lightBlue.withOpacity(0.5), // Background color for question
            borderRadius: BorderRadius.circular(10), // Rounded corners
          ),
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '4.Number of pregnancies: How many times have you been pregnant?',
                style: TextStyle(fontSize: 18, color: Colors.black),
              ),
              SizedBox(height: 8),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white, // Background color for options
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RadioListTile<String>(
                      title: Text('Never'),
                      value: 'Never',
                      groupValue: numPregnancies,
                      onChanged: (value) {
                        setState(() {
                          numPregnancies = value;
                          _insertResponse('Number of Pregnancies', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('1'),
                      value: '1',
                      groupValue: numPregnancies ,
                      onChanged: (value) {
                        setState(() {
                          numPregnancies = value;
                          _insertResponse('Number of Pregnancies', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('2'),
                      value: '2',
                      groupValue: numPregnancies ,
                      onChanged: (value) {
                        setState(() {
                          numPregnancies = value;
                          _insertResponse('Number of Pregnancies', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                    RadioListTile<String>(
                      title: Text('3 or more'),
                      value: '3 or more',
                      groupValue: numPregnancies,
                      onChanged: (value) {
                        setState(() {
                          numPregnancies = value;
                          _insertResponse('Number of Pregnancies', value!);
                          checkQuizCompletion();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),

        SizedBox(height: 20),
// Question 5
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '5.Smokes: Do you currently smoke cigarettes?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: smokes,
                            onChanged: (value) {
                              setState(() {
                                smokes = value;
                                _insertResponse('Smokes', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: smokes,
                            onChanged: (value) {
                              setState(() {
                                smokes = value;
                                _insertResponse('Smokes', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
      //Question 6
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '6. Hormonal contraceptives: Have you ever used hormonal contraceptives?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: hormcontracept,
                            onChanged: (value) {
                              setState(() {
                                hormcontracept = value;
                                _insertResponse('hormcontracept', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: hormcontracept,
                            onChanged: (value) {
                              setState(() {
                                hormcontracept = value;
                                _insertResponse('hormcontracept', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //Question 7
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '7. IUD: Have you ever used an intrauterine device (IUD) for contraception?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: iud,
                            onChanged: (value) {
                              setState(() {
                                iud = value;
                                _insertResponse('iud', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: iud,
                            onChanged: (value) {
                              setState(() {
                                iud = value;
                                _insertResponse('iud', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //Question 8
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '8. STDs: Have you ever been diagnosed with any sexually transmitted diseases (STDs)?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: std,
                            onChanged: (value) {
                              setState(() {
                                std = value;
                                _insertResponse('std', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: std,
                            onChanged: (value) {
                              setState(() {
                                std = value;
                                _insertResponse('std', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //Question 9
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '9. STDs: HPV: Have you ever been diagnosed with human papillomavirus (HPV)?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: hpv,
                            onChanged: (value) {
                              setState(() {
                                hpv = value;
                                _insertResponse('hpv', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: hpv,
                            onChanged: (value) {
                              setState(() {
                                hpv = value;
                                _insertResponse('hpv', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),

              //Question 10
              Container(
                decoration: BoxDecoration(
                  color: Colors.lightBlue.withOpacity(0.5), // Background color for question
                  borderRadius: BorderRadius.circular(10), // Rounded corners
                ),
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '10. Dx: CIN: Have you ever been diagnosed with cervical intraepithelial neoplasia (CIN)?',
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white, // Background color for options
                        borderRadius: BorderRadius.circular(10), // Rounded corners
                      ),
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RadioListTile<String>(
                            title: Text('Yes'),
                            value: 'Yes',
                            groupValue: dx,
                            onChanged: (value) {
                              setState(() {
                                dx = value;
                                _insertResponse('dx', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                          RadioListTile<String>(
                            title: Text('No'),
                            value: 'No',
                            groupValue: dx,
                            onChanged: (value) {
                              setState(() {
                                dx = value;
                                _insertResponse('dx', value!);
                                checkQuizCompletion();
                              });
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    _submitQuiz(context);
                  },
                  child: Text('Submit'),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
  void checkQuizCompletion() {
    if (selectedAgeOption != null &&
        numSexualPartners != null &&
        firstIntercourse != null &&
        numPregnancies != null &&
        smokes != null &&
        hormcontracept != null &&
        iud != null &&
        std != null &&
        hpv != null &&
        dx != null) {
      setState(() {
        isQuizComplete = true;
      });
    } else {
      setState(() {
        isQuizComplete = false;
      });
    }
  }

  void _insertResponse(String question, String response) {
    // Insert the response into the database using DatabaseHelper
    // For example:
    // _databaseHelper.insertResponse(question, response);
  }
}



