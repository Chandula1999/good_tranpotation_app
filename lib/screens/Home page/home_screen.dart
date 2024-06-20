import 'package:flutter/material.dart';
import 'package:good_tranpotation_app/screens/Home%20page/App%20Bar/appbar.dart';
import 'package:good_tranpotation_app/screens/Home%20page/widgets/ccurve%20edges/primary_header_container.dart';
import 'package:good_tranpotation_app/screens/Home%20page/widgets/select_category_card.dart';
import 'package:good_tranpotation_app/screens/Home%20page/widgets/text_field_2.dart';
import 'package:good_tranpotation_app/utils/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
             const PrimaryHeaderContainer(
              child: Column(children: [
                TAppBar(title: Column(
                  children: [
                    Text("Good day for Shipping",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),),
                    Text("Nirmitha Heshara"),

                ],),)
              ],)
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "  Categories",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor1,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                          imageURL:
                              "https://img.freepik.com/premium-photo/car-delivery-truck-white-background_899449-50553.jpg?w=740",
                          category: "Transport"),
                      CategoryCard(
                          imageURL:
                              "https://img.pikbest.com/wp/202405/parcel-box-multiple-delivery-boxes-placed-in-a-3d-illustration-on-white-background_9849571.jpg!sw800",
                          category: "General"),
                      CategoryCard(
                          imageURL:
                              "https://t3.ftcdn.net/jpg/05/61/55/22/360_F_561552282_mGKd3af96Iw4TAjVj1NT8E9G6SNgxrPc.jpg",
                          category: "Construction ")
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoryCard(
                          imageURL:
                              "https://media.istockphoto.com/id/1348318884/photo/plate-of-mexican-food-tacos.jpg?s=2048x2048&w=is&k=20&c=ujA-W6GKvQ36Iu3N8F6zOwaf2fsiruqAVnuxNCgyqm4=",
                          category: "Foods"),
                      CategoryCard(
                          imageURL:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSjS2LNCx6FcS7xapMnwLmUHuh5PdWl-3_8pw&s",
                          category: "Furniture"),
                      CategoryCard(
                          imageURL:
                              "https://media.istockphoto.com/id/1034249292/photo/set-of-car-parts-isolated-on-white-background-3d.jpg?s=612x612&w=0&k=20&c=BwXl3LzQau4v40nl9INYToE0mC1SYDA4gBkylspbYis=",
                          category: "Car parts")
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "  Where to your Delivery?",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: textColor1,
                    ),
                  ),
                  const SizedBox(height: 5,),
                  const MyTextField2(hint: "Enter destination"),
                  const SizedBox(height: 10,),
                  ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                  "images/flyer.jpg",
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
              ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

