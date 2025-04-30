import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'datas/items.dart';
import 'page_two.dart';
import 'page_three.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
      title: "slicing",
      home: MainApp(),

    )
  );
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> PageThree()));
          },
          child: Icon(Icons.add),
          tooltip: 'Reset Form',
        ),
        backgroundColor: Color(0xFFE2E2E2),
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text("Hi, User",
          style: GoogleFonts.poppins(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w600
            ),
          
          ),
          actions: [
            Padding(
              padding: EdgeInsets.all(8),
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/profile.jpg"),
                radius: 38,
              ),
              )
          ],
        ),
        body: Container(
          // color: Colors.red,
          child: Column(
            children: [

            // ===================================================================
            // start top container
             Container(
              // color: Colors.blue,
              padding: EdgeInsets.all(10),
              height: 130,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Hot Places",
                        style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20
                        ),
                      
                      ),
                      Text("See All",
                      style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 20
                      ),
                      
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 8),
                    // color: Colors.green,
                    height:69,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: places.length,
                      itemBuilder: (context, index) {
                        final place = places[index];
                        return GestureDetector(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> pageTwo(judul: place.judul, deskripsi:place.desc, urlImage:place.urlImage)));
                        },
                        child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          ),
                        width: 201,
                        margin: EdgeInsets.only(right: 16),
                        padding: EdgeInsets.all(8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          
                          children: [
                            AspectRatio(aspectRatio: 1,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(8),
                                child: Image.asset(
                                  place.urlImage,
                                  fit: BoxFit.cover,
                                  height: double.maxFinite,
                                ),
                              )

                            ),
                            SizedBox(width: 8,),
 
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(place.judul, style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w500),),
                                SizedBox(height: 4,),
                                Row(
                                  children: [
                                  SvgPicture.asset(
                                  'assets/Location.svg',
                                  width: 12,
                                  height: 12,
                                  ),
                                  Text(place.lokasi, style: GoogleFonts.poppins(fontSize: 10, fontWeight: FontWeight.w400),)
                                  ],
                                )
                              ],
                            )
                          ],
                        )
                        )
                        );
                        
                      },
                      )
                  )

                ],
              ),
             ),
            //  end top container
            // ===================================================================

            // ===================================================================
            // start bottom container
             Expanded(child: 
              Container(
                padding: EdgeInsets.all(10),
                // color: Colors.yellow,
                height: 300,
                child: Column(
                  children: [
                    Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Best hotels",
                        style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize: 20
                        ),
                      
                      ),
                      Text("See All",
                      style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 20
                      ),
                      )
                    ],
                  ),

                  Expanded(child: Container(
                    margin: EdgeInsets.only(top: 8),
                    // color: Colors.amber,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: places.length,
                      itemBuilder: (context, index) {
                        final place = places[index];
                        return GestureDetector(
                        onTap: () {
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> pageTwo(judul: place.judul, deskripsi:place.desc, urlImage:place.urlImage)));
                        }, child: 
                        
                         Container(
                        width: double.infinity,
                        height: 130,
                        margin: EdgeInsets.only(bottom: 16),
                        padding: EdgeInsets.all(8),
                        // color: Colors.red[200],
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          ),
                        child: Row(
                          children: [
                            AspectRatio(aspectRatio: 1,
                              child: ClipRRect(
                                      borderRadius: BorderRadius.circular(8),
                                      child: Image.asset(
                                        place.urlImage,
                                        fit: BoxFit.cover,
                                        height: double.maxFinite,
                                      ),
                                    )

                            ),
                            SizedBox(width: 8),
                            Expanded(
                              child: Container(
                                // color: Colors.red,
                                padding: EdgeInsets.all(4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      place.judul,
                                      style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600
                                        
                                      ),
                                    
                                    ),
                                    SizedBox(height: 8,),
                                    Expanded(
                                      child: Text(place.desc, textAlign: TextAlign.justify,)
                                    )
                                  ],
                                ),
                              )
                            )
                           
                          ],
                        )
                        )
                        );
                      },
                    ),
                  ))
                  ],
                ),
                )
              )
            // end bottom container
            // ===================================================================
            ],
          ),
        )
      ),
    );
  }
}
