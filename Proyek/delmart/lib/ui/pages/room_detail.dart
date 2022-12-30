import 'package:delmart/ui/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:delmart/shared/theme.dart';
import 'package:delmart/ui/widgets/custom_filled_button.dart';

class RoomDetailPage extends StatefulWidget {
  const RoomDetailPage({super.key});

  @override
  State<RoomDetailPage> createState() => RoomDetailPageState();
}

class RoomDetailPageState extends State<RoomDetailPage> {
  late final DateTime _startDate;
  late final DateTime _endDate;
  final TextEditingController _reasonController = TextEditingController();
  final TextEditingController _startDateController = TextEditingController();
  final TextEditingController _endDateController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: dark,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.favorite_border,
                color: dark,
              ),
              onPressed: () {},
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                // room image
                Container(
                  height: 218,
                  width: 311,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: softGray,
                      // image: DecorationImage(
                      //   image: AssetImage('assets/images/product.png'),
                      //   fit: BoxFit.cover,
                      // ),
                    ),
                  ),
                  child: const Icon(
                    Icons.image,
                    size: 100,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                // room name
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Room Name",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: dark,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                // room description
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc sed nisl auctor, lacinia nisl sed, lacinia nisl. Sed nisl auctor, lacinia nisl sed, lacinia nisl.",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: dark,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),

                Form(
                  child: Column(
                    children: [
                      // reason input
                      CustomTextFormField(
                        hintText: "Keterangan Keperluan",
                        controller: _reasonController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Keterangan Keperluan tidak boleh kosong";
                          }
                          return null;
                        },
                        onSaved: (value) => _reasonController.text = value!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // start date input
                      CustomTextFormField(
                        hintText: "Tanggal Mulai",
                        controller: _reasonController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Tanggal Mulai tidak boleh kosong";
                          }
                          return null;
                        },
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.calendar_today,
                            color: softGray,
                          ),
                          onPressed: () {
                            // show date picker
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  _startDate = value;
                                  _startDateController.text =
                                      "${_startDate.day}/${_startDate.month}/${_startDate.year}";
                                });
                              }
                            });
                          },
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      // end date input
                      CustomTextFormField(
                        hintText: "Tanggal Selesai",
                        controller: _reasonController,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Tanggal Selesai tidak boleh kosong";
                          }
                          return null;
                        },
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.calendar_today,
                            color: softGray,
                          ),
                          onPressed: () {
                            // show date picker
                            showDatePicker(
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime.now(),
                              lastDate: DateTime(2100),
                            ).then((value) {
                              if (value != null) {
                                setState(() {
                                  _endDate = value;
                                  _endDateController.text =
                                      "${_endDate.day}/${_endDate.month}/${_endDate.year}";
                                });
                              }
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
        bottomSheet: Container(
          height: 50,
          width: double.infinity,
          margin: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: CustomFilledButton(
            height: 50,
            gradient: gradient,
            text: "Request Ruangan",
            icon: const Icon(
              Icons.bookmark_add_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/request_success');
            },
          ),
        ),
      ),
    );
  }
}
