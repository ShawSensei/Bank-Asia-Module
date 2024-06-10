import 'package:flutter/material.dart';

import '../../constants/ui_constants.dart';
import '../../utils/text_body_card_info.dart';

class StatementFragment extends StatelessWidget {
  final String clientId, statementDate, paymentDate;

  const StatementFragment(
      {super.key, required this.clientId,
      required this.statementDate,
      required this.paymentDate});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              height: 165,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      blurRadius: 22,
                      color: kPrimaryColor.withOpacity(0.22),
                    ),
                    const BoxShadow(
                        offset: Offset(-15, -15),
                        blurRadius: 20,
                        color: Colors.white)
                  ]),
              child: Column(
                children: [
                  TextBodyCardInfo(
                    text: 'Client ID',
                    amount: clientId,
                  ),
                  TextBodyCardInfo(
                    text: 'Statement Date',
                    amount: statementDate,
                  ),
                  TextBodyCardInfo(
                    text: 'Payment Date',
                    amount: paymentDate,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.8); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("USD"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.7); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("BDT"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              height: 165,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      blurRadius: 22,
                      color: kPrimaryColor.withOpacity(0.22),
                    ),
                    const BoxShadow(
                        offset: Offset(-15, -15),
                        blurRadius: 20,
                        color: Colors.white)
                  ]),
              child: Column(
                children: [
                  TextBodyCardInfo(
                    text: 'Client ID',
                    amount: clientId,
                  ),
                  TextBodyCardInfo(
                    text: 'Statement Date',
                    amount: statementDate,
                  ),
                  TextBodyCardInfo(
                    text: 'Payment Date',
                    amount: paymentDate,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.8); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("USD"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.7); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("BDT"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              height: 165,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      blurRadius: 22,
                      color: kPrimaryColor.withOpacity(0.22),
                    ),
                    const BoxShadow(
                        offset: Offset(-15, -15),
                        blurRadius: 20,
                        color: Colors.white)
                  ]),
              child: Column(
                children: [
                  TextBodyCardInfo(
                    text: 'Client ID',
                    amount: clientId,
                  ),
                  TextBodyCardInfo(
                    text: 'Statement Date',
                    amount: statementDate,
                  ),
                  TextBodyCardInfo(
                    text: 'Payment Date',
                    amount: paymentDate,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.8); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("USD"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.7); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("BDT"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
          Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              height: 165,
              decoration: BoxDecoration(
                  color: kWhiteColor,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 15),
                      blurRadius: 22,
                      color: kPrimaryColor.withOpacity(0.22),
                    ),
                    const BoxShadow(
                        offset: Offset(-15, -15),
                        blurRadius: 20,
                        color: Colors.white)
                  ]),
              child: Column(
                children: [
                  TextBodyCardInfo(
                    text: 'Client ID',
                    amount: clientId,
                  ),
                  TextBodyCardInfo(
                    text: 'Statement Date',
                    amount: statementDate,
                  ),
                  TextBodyCardInfo(
                    text: 'Payment Date',
                    amount: paymentDate,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.8); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("USD"),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        padding: const EdgeInsets.all(5),
                        child: TextButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Colors.blue.withOpacity(
                                      0.7); // Adjust opacity as needed
                                }
                                return Colors
                                    .white; // Use the default overlay color
                              },
                            ),
                            side: MaterialStateProperty.all(
                                const BorderSide(color: kPrimaryColor)),
                            foregroundColor:
                                MaterialStateProperty.all(Colors.black87),
                            shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Adjust the radius as needed
                              ),
                            ),
                          ),
                          child: const Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(
                                Icons.download,
                                color: kPrimaryColor,
                              ),
                              SizedBox(width: 8),
                              // Adjust the spacing between icon and text
                              Text("BDT"),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              )),
        ],
      ),
    );
  }
}
