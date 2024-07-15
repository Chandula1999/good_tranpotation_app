import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Customer/Home%20page/Trip%20Details/Map/map.dart';
import 'package:good_tranpotation_app/screens/Customer/Home%20page/Trip%20Details/goods_category_dropdown.dart';
import 'package:good_tranpotation_app/screens/Customer/Home%20page/Trip%20Details/vehicleDropdown.dart';
import 'package:good_tranpotation_app/screens/Customer/Home%20page/Trip%20Details/weight_range_dropdown.dart';
import 'package:good_tranpotation_app/widgets/button_3.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Trip Details",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select Vehicle Type",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            VehicleDropdown(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Goods Category",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            GoodsCategoryDropdown(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Normal Weight",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            WeightRangeDropdown(),
            SizedBox(
              height: 10,
            ),
            Text(
              "Special Instructions",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter special instructions...',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            // CustomButton_3(
            //     buttonText: "Get Directions",
            //     buttonColor: Colors.blue,
            //     destination: MapPage())
          ],
        ),
      ),
    );
  }
}
