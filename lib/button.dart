import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';
import 'operators.dart';


//kendime buton oluşturdum ve expanded yaptım. Expanded yapınca ne eklersen yan yana oluyor.

  Widget sonerButton(String btnval) {
    return Expanded(
      child: MaterialButton(
          padding: EdgeInsets.all(25.0),
          onPressed: () => btnclicked(btnval),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100.0),
            // side: BorderSide(color: Colors.black,)
            // side: BorderSide.none,
          ),
          child: Text(
            "$btnval",
            style: GoogleFonts.montserrat(
              fontSize: 25.0,
              fontWeight: FontWeight.w200,
            ),
          )),
    );
  }