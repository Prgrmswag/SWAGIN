import 'package:flutter/material.dart';
import 'package:swag_in/textbox.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  void _updateProfile() {
    // Validate the form.
    if (_formKey.currentState!.validate()) {
      // Update the user profile in the database.

      // Show a success message.
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Profile updated successfully!'),
        ),
      );
    }
  }

  Future<void> _editField(String field) async {}

  void _changeProfileImage() {
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
           leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            // Navigate back when the back button is pressed.
            Navigator.of(context).pop();
          },
        ),
        title: const Center(child: Text(' Profile')),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
          
              Stack(
                alignment: Alignment.bottomRight,
                children: [
                  const CircleAvatar(
                    radius: 60,
                    backgroundImage: AssetImage('assets/images/zeni.png'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0,left: 80),
                    child: InkWell(
                      onTap: _changeProfileImage,
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        decoration: const BoxDecoration(
                          color: Colors.black,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Your name here',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              // Name field.
       
              _buildTextBox('EMAIL', 'Email', () => _editField('email')),
             
              _buildTextBox(
                  '123456789190', 'Phone no', () => _editField('phone no')),
              _buildTextBox('Mumbai', 'Address', () => _editField('address')),
              _buildTextBox(
                  'COD', 'Payment method', () => _editField('payment method')),

              // Update button.
              const SizedBox(height: 16),
              SizedBox(
                height: 50,
                width: 150,
                child: ElevatedButton(
                  style:
                      ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  onPressed: _updateProfile,
                  child: const Text('Update'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextBox(
      String text, String sectionName, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextBox(
        text: text,
        sectionName: sectionName,
        onPressed: onPressed,
      ),
    );
  }
}
