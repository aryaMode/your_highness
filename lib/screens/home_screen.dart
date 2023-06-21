import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:your_highness/components/movie_card.dart';
import 'package:your_highness/const.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 2),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
            ),
          ),
        ),
        backgroundColor: kPrimaryColor,
        elevation: 0.0,
        title: Text(
          'Movie Ticket App',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            color: Colors.grey[800],
          ),
        ),
        actions: <Widget>[],
      ),
      body: SafeArea(
        child: Row(
          children: [
            MovieCard(
                title: "stock image",
                imageLink:
                    "https://ichef.bbci.co.uk/news/976/cpsprodpb/13F00/production/_95146618_bills.jpg",
                callBack: () {},
                active: false)
          ],
        ),
      ),
    );
  }
}
