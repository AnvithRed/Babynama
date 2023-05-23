import 'package:flutter/material.dart';

class ContactCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      color: Colors.blue,
      child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                
                SizedBox(width: 10),
                Text(
                  'CONTACT US',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.email, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'contact@gagahealth.com',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Icon(Icons.phone, color: Colors.white),
                SizedBox(width: 10),
                Text(
                  'Call on: +91-7948221221',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
             Row(
              
              children: [
                Icon(Icons.navigation, color: Colors.white),
                SizedBox(width: 10), SizedBox(width: 305
                ,child: Text(
              'Address: 204, Second Floor, Arcade, Block G, South City 1, Sector 41, Gurugram, Haryana 122001',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),),
                
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}
