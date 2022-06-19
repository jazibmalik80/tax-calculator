import 'package:flutter/material.dart';
import 'package:tax_calculator/Pages/customYearCard.dart';
import 'package:tax_calculator/logic/taxSLab.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:intl/intl.dart';
import 'package:pattern_formatter/pattern_formatter.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({Key? key}) : super(key: key);

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  final Map<String, List<TaxSLab>> taxSlabMap = {
    "2018-2019": [
      TaxSLab(
          minSalary: 0, maxSalary: 400000, deduction: 0, deductionPercent: 0),
      TaxSLab(
          minSalary: 400000,
          maxSalary: 800000,
          deduction: 1000,
          deductionPercent: 0),
      TaxSLab(
          minSalary: 800000,
          maxSalary: 1200000,
          deduction: 2000,
          deductionPercent: 0),
      TaxSLab(
          minSalary: 1200000,
          maxSalary: 2500000,
          deduction: 2000,
          deductionPercent: 5),
      TaxSLab(
          minSalary: 2500000,
          maxSalary: 4000000,
          deduction: 65000,
          deductionPercent: 15),
      TaxSLab(
          minSalary: 4000000,
          maxSalary: 8000000,
          deduction: 290000,
          deductionPercent: 20),
      TaxSLab(
          minSalary: 8000000,
          maxSalary: 0,
          deduction: 1090000,
          deductionPercent: 25),
    ],
    "2019-2020": [
      TaxSLab(
          minSalary: 0, maxSalary: 600000, deduction: 0, deductionPercent: 0),
      TaxSLab(
          minSalary: 600000,
          maxSalary: 1200000,
          deduction: 0,
          deductionPercent: 5),
      TaxSLab(
          minSalary: 1200000,
          maxSalary: 1800000,
          deduction: 30000,
          deductionPercent: 10),
      TaxSLab(
          minSalary: 1800000,
          maxSalary: 2500000,
          deduction: 90000,
          deductionPercent: 15),
      TaxSLab(
          minSalary: 2500000,
          maxSalary: 3500000,
          deduction: 195000,
          deductionPercent: 17.5),
      TaxSLab(
          minSalary: 3500000,
          maxSalary: 5000000,
          deduction: 370000,
          deductionPercent: 20),
      TaxSLab(
          minSalary: 5000000,
          maxSalary: 8000000,
          deduction: 670000,
          deductionPercent: 22.5),
      TaxSLab(
          minSalary: 8000000,
          maxSalary: 12000000,
          deduction: 1345000,
          deductionPercent: 25),
      TaxSLab(
          minSalary: 12000000,
          maxSalary: 30000000,
          deduction: 2345000,
          deductionPercent: 27.5),
      TaxSLab(
          minSalary: 30000000,
          maxSalary: 50000000,
          deduction: 7295000,
          deductionPercent: 30),
      TaxSLab(
          minSalary: 50000000,
          maxSalary: 75000000,
          deduction: 13295000,
          deductionPercent: 32.5),
      TaxSLab(
          minSalary: 75000000,
          maxSalary: 0,
          deduction: 21420000,
          deductionPercent: 35)
    ],
    "2020-2021": [
      TaxSLab(
          minSalary: 0, maxSalary: 600000, deduction: 0, deductionPercent: 0),
      TaxSLab(
          minSalary: 600000,
          maxSalary: 1200000,
          deduction: 0,
          deductionPercent: 5),
      TaxSLab(
          minSalary: 1200000,
          maxSalary: 1800000,
          deduction: 30000,
          deductionPercent: 10),
      TaxSLab(
          minSalary: 1800000,
          maxSalary: 2500000,
          deduction: 90000,
          deductionPercent: 15),
      TaxSLab(
          minSalary: 2500000,
          maxSalary: 3500000,
          deduction: 195000,
          deductionPercent: 17.5),
      TaxSLab(
          minSalary: 3500000,
          maxSalary: 5000000,
          deduction: 370000,
          deductionPercent: 20),
      TaxSLab(
          minSalary: 5000000,
          maxSalary: 8000000,
          deduction: 670000,
          deductionPercent: 22.5),
      TaxSLab(
          minSalary: 8000000,
          maxSalary: 12000000,
          deduction: 1345000,
          deductionPercent: 25),
      TaxSLab(
          minSalary: 12000000,
          maxSalary: 30000000,
          deduction: 2345000,
          deductionPercent: 27.5),
      TaxSLab(
          minSalary: 30000000,
          maxSalary: 50000000,
          deduction: 7295000,
          deductionPercent: 30),
      TaxSLab(
          minSalary: 50000000,
          maxSalary: 75000000,
          deduction: 13295000,
          deductionPercent: 32.5),
      TaxSLab(
          minSalary: 75000000,
          maxSalary: 0,
          deduction: 21420000,
          deductionPercent: 35)
    ],
    "2021-2022": [
      TaxSLab(
          minSalary: 0, maxSalary: 600000, deduction: 0, deductionPercent: 0),
      TaxSLab(
          minSalary: 600000,
          maxSalary: 1200000,
          deduction: 0,
          deductionPercent: 5),
      TaxSLab(
          minSalary: 1200000,
          maxSalary: 1800000,
          deduction: 30000,
          deductionPercent: 10),
      TaxSLab(
          minSalary: 1800000,
          maxSalary: 2500000,
          deduction: 90000,
          deductionPercent: 15),
      TaxSLab(
          minSalary: 2500000,
          maxSalary: 3500000,
          deduction: 195000,
          deductionPercent: 17.5),
      TaxSLab(
          minSalary: 3500000,
          maxSalary: 5000000,
          deduction: 370000,
          deductionPercent: 20),
      TaxSLab(
          minSalary: 5000000,
          maxSalary: 8000000,
          deduction: 670000,
          deductionPercent: 22.5),
      TaxSLab(
          minSalary: 8000000,
          maxSalary: 12000000,
          deduction: 1345000,
          deductionPercent: 25),
      TaxSLab(
          minSalary: 12000000,
          maxSalary: 30000000,
          deduction: 2345000,
          deductionPercent: 27.5),
      TaxSLab(
          minSalary: 30000000,
          maxSalary: 50000000,
          deduction: 7295000,
          deductionPercent: 30),
      TaxSLab(
          minSalary: 50000000,
          maxSalary: 75000000,
          deduction: 13295000,
          deductionPercent: 32.5),
      TaxSLab(
          minSalary: 75000000,
          maxSalary: 0,
          deduction: 21420000,
          deductionPercent: 35)
    ],
  };

  int currentindex = 4;
  String selectedYear = '2021-2022';
  final incomeController = TextEditingController();
  double annualIncome = 0.00;
  double taxPayable = 0.00;
  double taxAmount = 0.00;
  double deductionAmount = 0.00;
  double deductionPercentage = 0.00;
  double effectiveTaxRate = 0.00;
  int timeIndex = 0;
  var formatter = NumberFormat('#,###');
  String textNote =
      '''Note: The above calculation tool is correct to the best of our knowledge, but it may transfigure or change with the passage of time.
We cannot guarantee the correctness in calculation. We do not accept responsibility for any loss or expense in any case resulting
from the use of this tax calculator. For more details visit FBR website.''';

  String mobileTextNote =
      '''Note: The above calculation tool is correct to the best of our knowledge, but it may transfigure
or change with the passage of time. We cannot guarantee the correctness in calculation. We
do not accept responsibility for any loss or expense in any case resulting from the use of
this tax calculator. For more details visit FBR website.''';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OrientationBuilder(
        builder: (context, orientation) => MediaQuery.of(context).size.width >
                600
            ? Padding(
                padding: const EdgeInsets.fromLTRB(50, 20, 0, 0),
                child: Row(
                  children: [
                    Flexible(
                      flex: 2,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Row(
                                children: [
                                  Text(
                                    'Tax Year',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  GestureDetector(
                                    child: CustomYearCard(
                                      year: '2018 - 2019',
                                      colour: currentindex == 1
                                          ? Color(0xFF19AA70)
                                          : Colors.white,
                                      textColor: currentindex == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        currentindex = 1;
                                        selectedYear = '2018-2019';
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    child: CustomYearCard(
                                      year: '2019 - 2020',
                                      colour: currentindex == 2
                                          ? Color(0xFF19AA70)
                                          : Colors.white,
                                      textColor: currentindex == 2
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        currentindex = 2;
                                        selectedYear = '2019-2020';
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    child: CustomYearCard(
                                      year: '2020 - 2021',
                                      colour: currentindex == 3
                                          ? Color(0xFF19AA70)
                                          : Colors.white,
                                      textColor: currentindex == 3
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        currentindex = 3;
                                        selectedYear = '2020-2021';
                                      });
                                    },
                                  ),
                                  SizedBox(width: 10),
                                  GestureDetector(
                                    child: CustomYearCard(
                                      year: '2021 - 2022',
                                      colour: currentindex == 4
                                          ? Color(0xFF19AA70)
                                          : Colors.white,
                                      textColor: currentindex == 4
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    onTap: () {
                                      setState(() {
                                        currentindex = 4;
                                        selectedYear = '2021-2022';
                                      });
                                    },
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Text(
                                    'Enter Salary',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  ToggleSwitch(
                                    minWidth: 80.0,
                                    minHeight: 30.0,
                                    initialLabelIndex: timeIndex,
                                    totalSwitches: 2,
                                    labels: ['Monthly', 'Yearly'],
                                    onToggle: (index) {
                                      timeIndex = index;
                                    },
                                    activeFgColor: Colors.white,
                                    inactiveBgColor: Colors.white,
                                    borderWidth: 0.3,
                                    borderColor: [Colors.black],
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  Flexible(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('Salary'),
                                        SizedBox(height: 10),
                                        Container(
                                          height: 45,
                                          width: 255,
                                          child: TextField(
                                            controller: incomeController,
                                            inputFormatters: [
                                              ThousandsFormatter(),
                                            ],
                                            keyboardType: TextInputType.number,
                                            decoration: InputDecoration(
                                              filled: true,
                                              labelStyle: TextStyle(
                                                color: Colors.grey[600],
                                              ),
                                              hintText: "PKR",
                                              fillColor: Colors.grey[200],
                                              enabledBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xFF19AA70)),
                                              ),
                                              focusedBorder:
                                                  UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xFF19AA70)),
                                              ),
                                              border: UnderlineInputBorder(
                                                borderSide: BorderSide(
                                                    color: Color(0xFF19AA70)),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                  Flexible(
                                    flex: 1,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 10),
                                        Container(
                                          height: 45,
                                          width: 255,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 25),
                              Row(
                                children: [
                                  ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Color(0xFF19AA70)),
                                      padding:
                                          MaterialStateProperty.all<EdgeInsets>(
                                              EdgeInsets.fromLTRB(
                                                  175, 20, 175, 20)),
                                    ),
                                    child: Text(
                                      'Calculate',
                                    ),
                                    onPressed: () {
                                      String value = incomeController.text
                                          .replaceAll(",", "");
                                      TaxSLab selectedSlab = TaxSLab(
                                          minSalary: 0,
                                          maxSalary: 0,
                                          deduction: 0,
                                          deductionPercent: 0);

                                      List<TaxSLab>? listofSlabs =
                                          taxSlabMap[selectedYear];
                                      setState(() {
                                        if (timeIndex == 0) {
                                          annualIncome =
                                              (double.tryParse(value)! * 12.0);
                                        } else {
                                          annualIncome =
                                              (double.tryParse(value)! * 1.0);
                                        }
                                      });
                                      for (var i = 0;
                                          i < listofSlabs!.length;
                                          i++) {
                                        TaxSLab slab = listofSlabs.elementAt(i);
                                        if (i == listofSlabs.length - 1) {
                                          
                                          if (annualIncome >= slab.minSalary) {
                                            selectedSlab = slab;
                                            taxAmount =
                                                annualIncome - slab.minSalary;
                                            taxPayable = slab.deduction +
                                                taxAmount *
                                                    (slab.deductionPercent /
                                                        100);
                                            deductionAmount = slab.deduction;
                                            deductionPercentage =
                                                slab.deductionPercent;
                                            effectiveTaxRate =
                                                (taxPayable / annualIncome) *
                                                    100;

                                            break;
                                          }
                                        } else {
                                          if (annualIncome >= slab.minSalary &&
                                              annualIncome <= slab.maxSalary) {
                                            selectedSlab = slab;
                                            taxAmount =
                                                annualIncome - slab.minSalary;
                                            taxPayable = slab.deduction +
                                                taxAmount *
                                                    (slab.deductionPercent /
                                                        100);
                                            deductionAmount = slab.deduction;
                                            deductionPercentage =
                                                slab.deductionPercent;
                                            effectiveTaxRate =
                                                (taxPayable / annualIncome) *
                                                    100;

                                            break;
                                          }
                                        }
                                      }
                                    },
                                  ),
                                  SizedBox(width: 20),
                                  ElevatedButton(
                                    style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStateProperty.all<Color>(
                                                Colors.white),
                                        padding:
                                            MaterialStateProperty.all<EdgeInsets>(
                                                EdgeInsets.fromLTRB(
                                                    30, 20, 30, 20)),
                                        shape: MaterialStateProperty.all<
                                                RoundedRectangleBorder>(
                                            RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(6),
                                                side: BorderSide(color: Colors.grey)))),
                                    child: Text(
                                      'Clear Fields',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                    onPressed: () {
                                      setState(() {
                                        incomeController.clear();
                                        annualIncome = 0.00;
                                        taxPayable = 0.00;
                                        deductionPercentage = 0.00;
                                        deductionAmount = 0.00;
                                        effectiveTaxRate = 0.00;
                                      });
                                    },
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    '$textNote',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.grey,
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 30),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                        decoration: BoxDecoration(
                          color: Color(0xFFF8F8F8),
                        ),
                        child: Column(
                          children: [
                            Text(
                              'Annual Salary',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'PKR ' + formatter.format(annualIncome),
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF19AA70),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Annual Tax Liability',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'PKR ' + formatter.format(taxPayable),
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF19AA70),
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'Annual Salary After Tax',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 20),
                            Text(
                              'PKR ' +
                                  formatter.format(annualIncome - taxPayable),
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF19AA70),
                              ),
                            ),
                            SizedBox(height: 25),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Monthly Salary'),
                                Text('PKR ' +
                                    formatter.format(annualIncome / 12)),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Monthly Tax Liability'),
                                Text(
                                    'PKR ' + formatter.format(taxPayable / 12)),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Monthly Salary After Tax'),
                                Text('PKR ' +
                                    formatter.format((annualIncome / 12) -
                                        (taxPayable / 12))),
                              ],
                            ),
                            SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tax Slab'),
                                Text('$deductionPercentage %'),
                              ],
                            ),
                            SizedBox(height: 15),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Text('Fixed Deduction'),
                            //     Text(
                            //         'PKR ' + formatter.format(deductionAmount)),
                            //   ],
                            // ),
                            // SizedBox(height: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Effective Tax Rate'),
                                Text(
                                    effectiveTaxRate.toStringAsFixed(2) + " %"),
                              ],
                            ),
                            SizedBox(height: 35),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF19AA70)),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.fromLTRB(60, 20, 60, 20)),
                              ),
                              child: Text(
                                'File for me',
                              ),
                              onPressed: () {},
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Scaffold(
                body: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              'Tax Year',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            GestureDetector(
                              child: CustomYearCard(
                                year: '2018 - 2019',
                                colour: currentindex == 1
                                    ? Color(0xFF19AA70)
                                    : Colors.white,
                                textColor: currentindex == 1
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              onTap: () {
                                setState(() {
                                  currentindex = 1;
                                  selectedYear = '2018-2019';
                                });
                                print(selectedYear);
                              },
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: CustomYearCard(
                                year: '2019 - 2020',
                                colour: currentindex == 2
                                    ? Color(0xFF19AA70)
                                    : Colors.white,
                                textColor: currentindex == 2
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              onTap: () {
                                setState(() {
                                  currentindex = 2;
                                  selectedYear = '2019-2020';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            GestureDetector(
                              child: CustomYearCard(
                                year: '2020 - 2021',
                                colour: currentindex == 3
                                    ? Color(0xFF19AA70)
                                    : Colors.white,
                                textColor: currentindex == 3
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              onTap: () {
                                setState(() {
                                  currentindex = 3;
                                  selectedYear = '2020-2021';
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            GestureDetector(
                              child: CustomYearCard(
                                year: '2021 - 2022',
                                colour: currentindex == 4
                                    ? Color(0xFF19AA70)
                                    : Colors.white,
                                textColor: currentindex == 4
                                    ? Colors.white
                                    : Colors.black,
                              ),
                              onTap: () {
                                setState(() {
                                  currentindex = 4;
                                  selectedYear = '2021-2022';
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Text(
                              'Enter Salary',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            ToggleSwitch(
                              minWidth: 80.0,
                              minHeight: 30.0,
                              initialLabelIndex: timeIndex,
                              totalSwitches: 2,
                              labels: ['Monthly', 'Yearly'],
                              onToggle: (index) {
                                timeIndex = index;
                              },
                              activeFgColor: Colors.white,
                              inactiveBgColor: Colors.white,
                              borderWidth: 0.3,
                              borderColor: [Colors.black],
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            Flexible(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Salary'),
                                  SizedBox(height: 10),
                                  Container(
                                    height: 45,
                                    width: 255,
                                    child: TextField(
                                      controller: incomeController,
                                      inputFormatters: [
                                        ThousandsFormatter(),
                                      ],
                                      keyboardType: TextInputType.number,
                                      decoration: InputDecoration(
                                        filled: true,
                                        labelStyle: TextStyle(
                                          color: Colors.grey[600],
                                        ),
                                        hintText: "PKR",
                                        fillColor: Colors.grey[200],
                                        enabledBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF19AA70)),
                                        ),
                                        focusedBorder: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF19AA70)),
                                        ),
                                        border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Color(0xFF19AA70)),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 20),
                            Flexible(
                              flex: 1,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(height: 10),
                                  Container(
                                    height: 45,
                                    width: 255,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        Row(
                          children: [
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF19AA70)),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.fromLTRB(25, 10, 25, 10)),
                              ),
                              child: Text(
                                'Calculate',
                              ),
                              onPressed: () {
                                String value =
                                    incomeController.text.replaceAll(",", "");
                                TaxSLab selectedSlab = TaxSLab(
                                    minSalary: 0,
                                    maxSalary: 0,
                                    deduction: 0,
                                    deductionPercent: 0);

                                List<TaxSLab>? listofSlabs =
                                    taxSlabMap[selectedYear];
                                setState(() {
                                  if (timeIndex == 0) {
                                    annualIncome =
                                        (double.tryParse(value)! * 12.0);
                                  } else {
                                    annualIncome =
                                        (double.tryParse(value)! * 1.0);
                                  }
                                });
                                for (var i = 0; i < listofSlabs!.length; i++) {
                                  TaxSLab slab = listofSlabs.elementAt(i);
                                  if (i == listofSlabs.length - 1) {
                                    if (annualIncome >= slab.minSalary) {
                                      selectedSlab = slab;
                                      taxAmount = annualIncome - slab.minSalary;
                                      taxPayable = slab.deduction +
                                          taxAmount *
                                              (slab.deductionPercent / 100);
                                      deductionAmount = slab.deduction;
                                      deductionPercentage =
                                          slab.deductionPercent;
                                      effectiveTaxRate =
                                          (taxPayable / annualIncome) * 100;
                                      break;
                                    }
                                  } else {
                                    if (annualIncome >= slab.minSalary &&
                                        annualIncome <= slab.maxSalary) {
                                      selectedSlab = slab;
                                      taxAmount = annualIncome - slab.minSalary;
                                      taxPayable = slab.deduction +
                                          taxAmount *
                                              (slab.deductionPercent / 100);
                                      deductionAmount = slab.deduction;
                                      deductionPercentage =
                                          slab.deductionPercent;
                                      effectiveTaxRate =
                                          (taxPayable / annualIncome) * 100;
                                      break;
                                    }
                                  }
                                }
                              },
                            ),
                            SizedBox(width: 20),
                            ElevatedButton(
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  padding:
                                      MaterialStateProperty.all<EdgeInsets>(
                                          EdgeInsets.fromLTRB(10, 10, 10, 10)),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                          side:
                                              BorderSide(color: Colors.grey)))),
                              child: Text(
                                'Clear Fields',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  incomeController.clear();
                                  annualIncome = 0.00;
                                  taxPayable = 0.00;
                                  deductionPercentage = 0.00;
                                  deductionAmount = 0.00;
                                  effectiveTaxRate = 0.00;
                                });
                              },
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Column(
                          children: [
                            Text(
                              'Annual Salary',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'PKR ' + formatter.format(annualIncome),
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF19AA70),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Annual Tax Liability',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'PKR ' + formatter.format(taxPayable),
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF19AA70),
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Annual Salary After Tax',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'PKR ' +
                                  formatter.format(annualIncome - taxPayable),
                              style: TextStyle(
                                fontSize: 24,
                                color: Color(0xFF19AA70),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Monthly Salary'),
                                Text('PKR ' +
                                    formatter.format(annualIncome / 12)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Monthly Tax Liability'),
                                Text(
                                    'PKR ' + formatter.format(taxPayable / 12)),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Monthly Salary After Tax'),
                                Text('PKR ' +
                                    formatter.format((annualIncome / 12) -
                                        (taxPayable / 12))),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Tax Slab'),
                                Text('$deductionPercentage %'),
                              ],
                            ),
                            SizedBox(height: 6),
                            // Row(
                            //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //   children: [
                            //     Text('Fixed Deduction'),
                            //     Text(
                            //         'PKR ' + formatter.format(deductionAmount)),
                            //   ],
                            // ),
                            // SizedBox(height: 6),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('Effective Tax Rate'),
                                Text(
                                    effectiveTaxRate.toStringAsFixed(2) + " %"),
                              ],
                            ),
                            SizedBox(height: 20),
                            ElevatedButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Color(0xFF19AA70)),
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    EdgeInsets.fromLTRB(60, 20, 60, 20)),
                              ),
                              child: Text(
                                'File for me',
                              ),
                              onPressed: () {},
                            ),
                            SizedBox(height: 70),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '$mobileTextNote',
                                  style: TextStyle(
                                    fontSize: 8,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
      ),
    );
  }
}
