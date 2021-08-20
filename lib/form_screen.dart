import 'package:cwc_flutter/Common_TextFormField.dart';
import 'package:cwc_flutter/Email_TextFormField.dart';
import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FormScreenState();
  }
}

class FormScreenState extends State<FormScreen> {
  String _name;
  String _email;
  String _password;
  String _url;
  String _phoneNumber;
  String _calories;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildCalories() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: 'Calories',
          prefixIcon: Icon(Icons.ac_unit),
          border: new OutlineInputBorder(
            borderRadius: new BorderRadius.circular(25.0),
            borderSide: new BorderSide(),
          ),
        ),
        keyboardType: TextInputType.number,
        validator: (String value) {
          int calories = int.tryParse(value);

          if (calories == null || calories <= 0) {
            return 'Calories must be greater than 0';
          }

          return null;
        },
        onSaved: (String value) {
          _calories = value;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.tealAccent,
      appBar: AppBar(
        title: Text("Form Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CommonTextFormField(
                  prefixIcon: Icons.book,
                  label: "Name",
                  value: _name,
                  maxLength: 13,
                  keyboardType: TextInputType.name,
                  textCapitalization: TextCapitalization.words,
                  obscureText: false,
                ),
                EmailTextFormField(
                  prefixIcon: Icons.email,
                  label: "Email",
                  value: _email,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.password,
                  label: "Password",
                  value: _password,
                  keyboardType: TextInputType.text,
                  textCapitalization: TextCapitalization.none,
                  obscureText: true,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.link,
                  label: "Url",
                  value: _url,
                  keyboardType: TextInputType.url,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.phone,
                  label: "Phone Number",
                  value: _phoneNumber,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.phone,
                  label: "Phone Number",
                  value: _phoneNumber,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.phone,
                  label: "Phone Number",
                  value: _phoneNumber,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.phone,
                  label: "Phone Number",
                  value: _phoneNumber,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                ),
                CommonTextFormField(
                  prefixIcon: Icons.phone,
                  label: "Phone Number",
                  value: _phoneNumber,
                  keyboardType: TextInputType.phone,
                  textCapitalization: TextCapitalization.none,
                  obscureText: false,
                ),
                _buildCalories(),
                SizedBox(height: 70),
                ElevatedButton(
                  child: Text(
                    'Submit',
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      print("Done");
                    }

                    _formKey.currentState.save();

                    print(_name);
                    print(_email);
                    print(_phoneNumber);
                    print(_url);
                    print(_password);
                    print(_calories);

                    //Send to API
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
