import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AcceptedCondition extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<AcceptedCondition> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color(0xFFF7F7F7),
            appBar: AppBar(
              centerTitle: true,
              backgroundColor: const Color(0xFFF7F7F7),
              elevation: 0,
              toolbarHeight: 0.16.sh,
              iconTheme: Theme.of(context).iconTheme,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Center(
                    child: Container(
                        height: 0.15.sh,
                        width: 0.15.sw,
                        margin: EdgeInsets.only(top: 0.02.sh, right: 0.10.sw),
                        child: Image.asset("assets/ic_logo.png")),
                  ),
                ],
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(25.0),
              child: SingleChildScrollView(
                child: Center(
                    child: Text(
                        'This warning is given pursuant to the Financial Services and Markets Act 2000 (Financial Promotion) Order 2005 (the “Regulations”). The communication to which this warning relates is exempt from the general restriction contained in Section 21 of the Financial Services and Markets Act 2000 (the “Act”) on the communication of invitations or inducements to engage in investment activity on the grounds that it is made only to \n (i) Certified High Net Worth Individuals \n (ii) Certified or Self-certified Sophisticated Investors \n'
                        '(iii) High Net Worth Persons, \n (v) “authorised persons” within the meaning of the Act (together the “Authorised Recipients”). \n \n HealthyForYou Ltd, trading as HealthyForYou,  a company whose registered office address is 15 Ambleside Avenue, Bradford, England, BD9 5HX (the "Company", or ”HealthyForYou") is the person responsible for preparing this Investor Presentation (the “Investor Presentation”) in connection with a potential investment in the Company (the “Transaction”). To the best of its knowledge and belief (having taken all reasonable care to ensure that such is the case) the Information contained herein does not contain any untrue or misleading statements. \n \n'
                        'These disclaimers are an integral part of this app and under no circumstances should any part of the Investor Presentation be shown without including these disclaimers in their entirety. This disclaimer shall be governed by, and construed in accordance with the laws of England. The parties submit to the exclusive jurisdiction of the courts of England and Wales. '
                        'All correspondence and enquiries in connection with this Investor Presentation together with any requests for additional information should be addressed to the following individuals./n /n'
                        'On Behalf of team Healthy For You ')),
              ),
            )),
      ),
    );
  }
}
