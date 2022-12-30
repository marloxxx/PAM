import 'package:flutter/material.dart';
import 'package:delmart/shared/theme.dart';

class RequestSuccessPage extends StatefulWidget {
  const RequestSuccessPage({super.key});

  @override
  State<RequestSuccessPage> createState() => _RequestSuccessPageState();
}

class _RequestSuccessPageState extends State<RequestSuccessPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: orange,
        body: Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          alignment: Alignment.center,
          // show check icon
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(
                Icons.check_circle,
                color: Colors.white,
                size: 100,
              ),
              SizedBox(height: 20),
              Text(
                'Request Placed',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Your request has been placed successfully',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Request ID: 123456789',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Room Number: 123',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Start Date: 12/12/2020',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'End Date: 12/12/2020',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
