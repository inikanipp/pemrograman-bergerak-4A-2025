import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';




class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController namaController = TextEditingController();
  final TextEditingController lokasiController = TextEditingController();
  final TextEditingController hargaController = TextEditingController();
  final TextEditingController deskripsiController = TextEditingController();
  String? _pilihJenis;

  void resetForm() {
    _formKey.currentState?.reset();
    namaController.clear();
    lokasiController.clear();
    hargaController.clear();
    deskripsiController.clear();
    setState(() {
      _pilihJenis = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFE2E2E2),
        title: Text("Tambah Wisata", style: GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.w600)),
        centerTitle: true,
      ),
      body:   SingleChildScrollView(
      child: 
      Container(
        color: Color(0xFFE2E2E2),
        child: 
        Form(
          key: _formKey,
          child:Column(
            children: [
              Container(
                // color : Colors.yellow,
                height: 202,
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/addImage.png')
                    ],
                  ),
                )
              ),
              Container(
                // color : Colors.blue,
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF261FB3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // bisa ubah angkanya sesukamu
                          ),
                        ),
                onPressed: (){},
                child: Text("Tambah Gambar",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      ),
                ),
              ),
              // ========================================= start nama wisata =====================================
              Container(
                // color : Colors.yellow,
                padding: EdgeInsets.only(right: 16, left: 16, top: 8),
                
                height: 121,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nama Wisata",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      height: 82,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan Nama Wisata Disini',
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20
                          ),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded
                            borderSide: BorderSide(color: Colors.transparent), // Tidak terlihat
                          ),
                          
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
                          return 'Nama tidak sesuai';
                        }
                        return null;
                      },

                    ),
                    )
                    
                  ],
                ),
              ),
              // ========================================= end nama wisata ====================================

              // ====================================== start lokasi =================================================
              Container(
                // color : Colors.blue,
                padding: EdgeInsets.only(right: 16, left: 16, top: 8),
                
                height: 122,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Lokasi Wisata",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      height: 82,
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan Lokasi Wisata Disini',
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20
                          ),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded
                            borderSide: BorderSide(color: Colors.transparent), // Tidak terlihat
                          ),
                          
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty || !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$').hasMatch(value)) {
                          return 'Lokasi tidak sesuai';
                        }
                        return null;
                      },

                    ),
                    )
                    
                  ],
                ),
              ),
              // =================================== end lokasi ======================================

              // ========================== start dropdown ==========================================
              Container(
                // color : Colors.green,
                padding: EdgeInsets.only(right: 16, left: 16, top: 8),
                
                height: 122,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Nama Wisata",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      height: 82,
                      child: DropdownButtonFormField<String>(
                        value: _pilihJenis,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          hintText: 'Pilih Jenis Wisata',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Sudut rounded
                          ),
                          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded
                            borderSide: BorderSide(color: Colors.transparent), // Tidak terlihat
                          ),
                        ),
                        

                        items: ['Wisata Air', 'Wisata Kuliner'].map((gender) {
                        return DropdownMenuItem(
                        value: gender,
                        child: Text(gender),
                        );
                        }).toList(),
                        onChanged: (value) {
                        },
                        validator: (value) =>
                        value == null ? 'Wajib pilih salah satu' : null,
                        onSaved: (value) => _pilihJenis = value,
                      )
                    )
                    
                  ],
                ),
              ),
              // ========================== end dropdown ==========================================

              // ======================== start harga =================================================
              Container(
                // color : Colors.yellow,
                padding: EdgeInsets.only(right: 16, left: 16, top: 8),
                
                height: 122,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Harga Tiket",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 8,),

                    SizedBox(
                      height: 82,
                      child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          FilteringTextInputFormatter.digitsOnly,
                        ],
                        decoration: InputDecoration(
                          hintText: 'Masukkan Harga Tiket Disini',
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: const EdgeInsets.symmetric(
                            vertical: 4, horizontal: 20
                          ),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded
                            borderSide: BorderSide(color: Colors.transparent), // Tidak terlihat
                          ),
                          
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Nama tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    )
                    
                  ],
                ),
              ),
              // ================================= end harga ====================================================
            
            // ================================= start deskripsi ===========================================
              Container(
                // color : Colors.blueAccent,
                padding: EdgeInsets.only(right: 16, left: 16, top: 8),
                
                height: 182,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Deskripsi",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    SizedBox(height: 8,),

                    
                    SizedBox(
                      height: 132,
                      child: TextFormField(
                        keyboardType: TextInputType.multiline,
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Masukkan Deskripsi Disini',
                          hintStyle: const TextStyle(color: Colors.grey),
                          filled: true,
                          fillColor: Colors.white,
                          // contentPadding: const EdgeInsets.symmetric(
                          //   vertical: 40, horizontal: 20
                          // ),
                          border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: const BorderSide(
                              color: Colors.white,
                              width: 2,
                            ),
                            
                          ),

                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12), // Rounded
                            borderSide: BorderSide(color: Colors.transparent), // Tidak terlihat
                          ),
                          
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: const BorderSide(
                              color: Colors.blue,
                              width: 2,
                            ),
                          ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'deskripsi tidak boleh kosong';
                        }
                        return null;
                      },
                    ),
                    )
                  ],
                ),
              ),
              // ================================= end deksripsi ========================


              // ========================= start submit ==================================

              Container(
                // color : Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 16),
                // margin: EdgeInsets.symmetric(vertical: 16),
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF261FB3),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8), // bisa ubah angkanya sesukamu
                          ),
                        ),
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                    print('Form valid!');
                  }
                },
                child: Text("Submit",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white
                        ),
                      ),
                ),
              ),
              // ============================= end submit ====================================

              // ============================ start reset ====================================
              Container(
                // color : Colors.yellow,
                padding: EdgeInsets.symmetric(horizontal: 16),
                margin: EdgeInsets.symmetric(vertical: 8),
                width: double.infinity,
                height: 40,
                child: ElevatedButton(
                  onPressed: resetForm,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text("Reset", style: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w600, color: Color(0xFF261FB3))),
                ),
              ),
              // =============================== end reset ===================================
            ],
          ),
        ),
      )
    
    )
    );
  }
}


