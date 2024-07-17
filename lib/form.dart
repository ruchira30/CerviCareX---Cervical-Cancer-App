import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'feed.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({Key? key}) : super(key: key);

  @override
  _RegisterFormState createState() => _RegisterFormState();
}

class _RegisterFormState extends State<RegisterForm> {
  String? _selectedLocation;
  bool _isObscure = true;
  DateTime? _selectedDate;
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _saveRegistrationData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', _nameController.text);
    await prefs.setString('email', _emailController.text);
    await prefs.setString('age', _ageController.text);
    await prefs.setString('birthdate', _selectedDate.toString());
    await prefs.setString('location', _selectedLocation ?? '');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(labelText: 'Name'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your name';
                }
                return null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(labelText: 'Email'),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your email';
                }
                return null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              controller: _ageController,
              decoration: InputDecoration(labelText: 'Age'),
              keyboardType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your age';
                }
                return null;
              },
            ),
            SizedBox(height: 12),
            TextFormField(
              readOnly: true,
              decoration: InputDecoration(
                labelText: 'Date of Birth',
                suffixIcon: IconButton(
                  icon: Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context),
                ),
              ),
              controller: TextEditingController(
                text: _selectedDate != null
                    ? "${_selectedDate!.day}/${_selectedDate!.month}/${_selectedDate!.year}"
                    : "",
              ),
              validator: (value) {
                if (_selectedDate == null) {
                  return 'Please select your date of birth';
                }
                return null;
              },
            ),
            SizedBox(height: 12),
            DropdownButtonFormField<String>(
              value: _selectedLocation,
              decoration: InputDecoration(labelText: 'Location'),
              items: [
                'Delhi',
                'Mumbai',
                'Bangalore',
                'Kolkata',
                'Chennai',
                'Hyderabad',
                'Pune',
                'Ahmedabad',
                'Jaipur',
                'Lucknow',
                'Surat',
                'Kanpur',
                'Nagpur',
                'Visakhapatnam',
                'Indore',
                'Thane',
                'Bhopal',
                'Patna',
                'Vadodara',
                'Ghaziabad',
                'Ludhiana',
                'Coimbatore',
                'Agra',
                'Madurai',
                'Nashik',
                'Faridabad',
                'Meerut',
                'Rajkot',
                'Kalyan-Dombivli',
              ].map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  _selectedLocation = newValue;
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please select your location';
                }
                return null;
              },
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Trigger form validation before navigation
                if (_formKey.currentState?.validate() ?? false) {
                  // If all fields are valid, save the data and navigate to the feed page
                  _saveRegistrationData();
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FeedPage()),
                  );
                }
              },
              child: Text('Register'),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void _saveUserData() {
    // Save the user data using shared preferences or any other method
  }
}
