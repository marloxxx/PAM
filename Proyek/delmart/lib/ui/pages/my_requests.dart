import 'package:flutter/material.dart';
import 'package:delmart/shared/theme.dart';

const List<String> status = [
  'All Requests',
  'Pending',
  'Rejected',
  'Approved',
  'Completed',
  'Cancelled',
];

// list dropdown sort by time
const List<String> time = [
  'Newest',
  'Oldest',
];

class MyRequestsPage extends StatefulWidget {
  const MyRequestsPage({super.key});

  @override
  State<MyRequestsPage> createState() => _MyRequestsPageState();
}

class _MyRequestsPageState extends State<MyRequestsPage> {
  String statusValue = status.first;
  String timeValue = time.first;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F6FB),
        appBar: AppBar(
          backgroundColor: white,
          elevation: 0,
          title: Text(
            'My Requests',
            style: TextStyle(
              color: dark,
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: dark,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  child: Row(
                    children: [
                      // filter
                      // dropdown status
                      Container(
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        margin: const EdgeInsets.only(left: 20),
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: statusValue,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: dark,
                            ),
                            iconSize: 24,
                            elevation: 16,
                            onChanged: (String? newValue) {
                              setState(() {
                                statusValue = newValue!;
                              });
                            },
                            items: status.map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      // dropdown time
                      Container(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        margin: const EdgeInsets.only(right: 20),
                        decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButtonHideUnderline(
                          child: DropdownButton(
                            value: timeValue,
                            icon: Icon(
                              Icons.arrow_drop_down,
                              color: dark,
                            ),
                            onChanged: (String? newValue) {
                              setState(() {
                                timeValue = newValue!;
                              });
                            },
                            items: time.map<DropdownMenuItem<String>>(
                              (String value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(value),
                                );
                              },
                            ).toList(),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Request ID: 123456',
                                style: TextStyle(
                                  color: dark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const Text(
                                'Pending',
                                style: TextStyle(
                                  color: Colors.orange,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Room: 123',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Request Date: 12/12/2020',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Start Date: 12/12/2020 : 12:00',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'End Date: 12/12/2020 : 12:00',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Request ID: 123456',
                                style: TextStyle(
                                  color: dark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Approved',
                                style: TextStyle(
                                  color: green,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Room: 123',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Request Date: 12/12/2020',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Start Date: 12/12/2020 : 12:00',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'End Date: 12/12/2020 : 12:00',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Request ID: 123456',
                                style: TextStyle(
                                  color: dark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                'Canceled',
                                style: TextStyle(
                                  color: red,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Room: 123',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Request Date: 12/12/2020',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'Start Date: 12/12/2020 : 12:00',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            'End Date: 12/12/2020 : 12:00',
                            style: TextStyle(
                              color: dark.withOpacity(0.5),
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 10),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
