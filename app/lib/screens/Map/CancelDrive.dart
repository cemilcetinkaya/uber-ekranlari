import 'package:app/components/bottom_navigationbar.dart';
import 'package:flutter/material.dart';

class CancelDrive extends StatefulWidget {
  const CancelDrive({super.key});

  @override
  State<CancelDrive> createState() => _CancelDriveState();
}

class _CancelDriveState extends State<CancelDrive> {
  bool isChecked = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  bool isChecked4 = false;
  bool isChecked5 = false;
  bool isChecked6 = false;
  bool isChecked7 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: Text(
          "Cancel Drive",
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(33.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("Plase select the reason cancellation")],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Waiting for long time',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked2,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked2 = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Unable to contact driver',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked3,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked3 = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Driver denided to go to destination',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked4,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked4 = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Driver denided to come to pickup',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked5,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked5 = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Wrong adress shown',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked6,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked6 = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Waiting for long time',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    side: MaterialStateBorderSide.resolveWith(
                      (states) => BorderSide(width: 1.0, color: Colors.yellow),
                    ),
                    value: isChecked7,
                    onChanged: (newValue) {
                      setState(() {
                        isChecked7 = newValue!;
                      });
                    },
                    activeColor: Colors.yellow,
                  ),
                  Text(
                    'Waiting for long time',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Text(
                    "Others",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Other Reason',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                        filled: true,
                        fillColor: Colors.grey[100],
                      ),
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  showOnSubmitDialog(context);
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.yellow,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 10),
                ),
                child: Text('Submit',
                    style: TextStyle(fontSize: 18, color: Colors.black)),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

void showOnSubmitDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
              child: Text('😢', style: TextStyle(fontSize: 150)),
            ),
            SizedBox(height: 16),
            Center(
              child: Text(
                'We are sorry about your cancellation',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'We will continue to improve our service & satisfy you on the next trip',
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 10),
              ),
              child: Text('OK',
                  style: TextStyle(fontSize: 18, color: Colors.black)),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) {
                      return BottomNavigationbar(); // Yönlendirilecek sayfanın adını ekleyin
                    },
                  ),
                );
              },
            ),
          ],
        ),
      );
    },
  );
}
