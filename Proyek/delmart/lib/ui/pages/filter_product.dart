import 'package:delmart/ui/widgets/custom_filled_button.dart';
import 'package:flutter/material.dart';
import 'package:delmart/shared/theme.dart';

class FilterProductPage extends StatefulWidget {
  const FilterProductPage({super.key});

  @override
  State<FilterProductPage> createState() => _FilterProductPageState();
}

class _FilterProductPageState extends State<FilterProductPage> {
  RangeValues _currentRangeValues = const RangeValues(0, 1000000);
  RangeLabels _rangeLabels = const RangeLabels('0', '1.000.000');
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Filter Product',
            style: TextStyle(
              color: dark,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: dark,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          margin: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              // sort by price
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sort By Price',
                    style: TextStyle(
                      color: dark,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // range slider
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: RangeSlider(
                  values: _currentRangeValues,
                  min: 0,
                  max: 1000000,
                  activeColor: orange,
                  inactiveColor: Colors.grey.withOpacity(0.5),
                  onChanged: (value) {
                    setState(() {
                      _currentRangeValues = value;
                      _rangeLabels = RangeLabels(
                        value.start.toInt().toString(),
                        value.end.toInt().toString(),
                      );
                    });
                  },
                  onChangeStart: (value) {
                    setState(() {
                      _rangeLabels = RangeLabels(
                        value.start.toInt().toString(),
                        value.end.toInt().toString(),
                      );
                    });
                  },
                  onChangeEnd: (value) {
                    setState(() {
                      _rangeLabels = RangeLabels(
                        value.start.toInt().toString(),
                        value.end.toInt().toString(),
                      );
                    });
                  },
                  labels: _rangeLabels,
                ),
              ),
              const SizedBox(height: 20),
              // divider
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: const Divider(
                  color: Colors.grey,
                ),
              ),
              const SizedBox(height: 20),
              // sort by category
              Container(
                margin: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Sort By Category',
                    style: TextStyle(
                      color: dark,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // category list
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Fruits',
                          style: TextStyle(
                            color: dark,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Radio(
                          value: 1,
                          groupValue: 1,
                          onChanged: (value) {
                            setState(() {});
                          },
                          activeColor: orange,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Vegetables',
                          style: TextStyle(
                            color: dark,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Radio(
                          value: 2,
                          groupValue: 1,
                          onChanged: (value) {
                            setState(() {});
                          },
                          activeColor: orange,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Container(
                margin: const EdgeInsets.only(left: 20, right: 20),
                child: CustomFilledButton(
                  text: 'Apply Filter',
                  gradient: gradient,
                  height: 60,
                  width: double.infinity,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
