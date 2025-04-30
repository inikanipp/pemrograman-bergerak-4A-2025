import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';


class pageTwo extends StatelessWidget{
final String judul;
final String deskripsi;
final String urlImage;

  const pageTwo({
      required this.judul,
      required this.deskripsi,
      required this.urlImage
    }
  );


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      
      appBar: AppBar(
        title: Text(judul),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.amber,
              ),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                urlImage,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 16),
            Container(
              width: double.infinity,
              height: 80,
              // color: Colors.amber,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      // color: Colors.green[500],
                      child: Column(
                        children: [
                          Expanded(
                            child: Container(
                              // color: Colors.purple,
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  Image.asset('assets/Category.png',),
                                  SizedBox(width: 8,),
                                  Text("Wisata Alam", 
                                    style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12
                                    )
                                  )
                                ],
                              ),
                            )
                          ),
                          Expanded(
                            child: Container(
                              // color : Colors.cyan,
                              padding: EdgeInsets.all(8),
                              child: Row(
                                children: [
                                  SvgPicture.asset('assets/Location1.svg'),
                                  SizedBox(width: 8,),
                                  Text("California",
                                    style: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 12
                                    )
                                  )
                                ],
                              ),
                            )
                            )
                        ],
                      ),
                    )
                    
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.all(8),
                      // color: Colors.yellow,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Image.asset('assets/Ticket.png'),
                          SizedBox(width: 8,),
                          Text("30.000",
                            style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 24
                                  )
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
            SizedBox(height: 16),
            Expanded(
              child: Container(
                height: 250,
                width: double.infinity,
                // color: Colors.blueAccent,
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Text(
                    deskripsi,
                    textAlign: TextAlign.justify,
                    style: TextStyle(fontSize: 14, color: Colors.black54),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}