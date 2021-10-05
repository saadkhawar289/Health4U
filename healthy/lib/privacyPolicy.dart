import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PrivacyPolicy extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<PrivacyPolicy> {
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
                    child: Text(''
                        'Effective date: October 1, 2021 This page informs you of our policies regarding the collection, use, and disclosure of personal data when you use our Service and the choices you have associated with that data.'
                        'We use your data to provide and improve the Service. By using the Service, you agree to the collection and use of information in accordance with this policy. Unless otherwise defined in this Privacy Policy, terms used in this Privacy Policy have the same meanings as in our Terms and Conditions.Information Collection and Use to collect several different types of information for various purposes to provide and improve our Service to you.'
                        'Types of Data Collected'
                        'Personal Data While using our Service, we may ask you to provide us with certain personally identifiable information that can be used to contact or identify you ("Personal Data"). Personally identifiable information may include, but is not limited to:'
                        'Email address'
                        'First name and last name'
                        'Phone number'
                        'Cookies and Usage Data'
                        'Usage Data'
                        'We may also collect information how the Service is accessed and used ("Usage Data"). This Usage Data may include information such as your computer\'s Internet Protocol address (e.g. IP address), browser type, browser version, the pages of our Service that you visit, the time and date of your visit, the time spent on those pages, unique device identifiers and other diagnostic data.'
                        'Tracking & Cookies Data'
                        'We use cookies and similar tracking technologies to track the activity on our Service and hold certain information \n.'
                        'Cookies are files with small amount of data which may include an anonymous unique identifier. Cookies are sent to your browser from a website and stored on your device. Tracking technologies also used are beacons, tags, and scripts to collect and track information and to improve and analyze our Service.'
                        'You can instruct your browser to refuse all cookies or to indicate when a cookie is being sent. However, if you do not accept cookies, you may not be able to use some portions of our Service.\n \n'
                        'Examples of Cookies we use:\n'
                        '\t Session Cookies. We use Session Cookies to operate our Service.\n'
                        '\t Preference Cookies.We use Preference Cookies to remember your preferences and various settings.'
                        '\t Security Cookies. We use Security Cookies for security purposes.\n,'
                        'Use of Data\n \n'
                        'Healthy4You uses the collected data for various purposes:\n'
                        'To provide and maintain the Service\n'
                        'To notify you about changes to our Service\n'
                        'To allow you to participate in interactive features of our Service when you choose to do so\n'
                        'To provide customer care and support\n'
                        'To provide analysis or valuable information so that we can improve the Service\n'
                        'To monitor the usage of the Service\n'
                        'To detect, prevent and address technical issues\n'
                        'Disclosure Of Data\n'
                        'Legal Requirements\n \n'
                        'Healthy4You. may disclose your Personal Data in the good faith belief that such action is necessary to:\n'
                        'To comply with a legal obligation\n'
                        'To protect and defend the rights or property of Healthy4You.\n'
                        'To prevent or investigate possible wrongdoing in connection with the Service\n'
                        'To protect the personal safety of users of the Service or the public\n'
                        'To protect against legal liability\n \n'
                        'Security Of Data\n \n'
                        'The security of your data is important to us, but remember that no method of transmission over the Internet, or method of electronic storage is 100% secure. While we strive to use commercially acceptable means to protect your Personal Data, we cannot guarantee its absolute security.'
                        'Service Providers\n \n'
                        'We may employ third party companies and individuals to facilitate our Service ("Service Providers"), to provide the Service on our behalf, to perform Service-related services or to assist us in analyzing how our Service is used.\n'
                        'These third parties have access to your Personal Data only to perform these tasks on our behalf and are obligated not to disclose or use it for any other purpose.\n'
                        'Analytics\n'
                        'We may use third-party Service Providers to monitor and analyze the use of our Service\n'
                        'Google Analytics\n'
                        'Google Analytics is a web analytics service offered by Google that tracks and reports website traffic. Google uses the data collected to track and monitor the use of our Service. This data is shared with other Google services. Google may use the collected data to contextualize and personalize the ads of its own advertising network.\n \n'
                        'You can opt-out of having made your activity on the Service available to Google Analytics by installing the Google Analytics opt-out browser add-on. The add-on prevents the Google Analytics JavaScript (ga.js, analytics.js, and dc.js) from sharing information with Google Analytics about visits activity'
                        'Links To Other Sites\n\n'
                        'Our Service may contain links to other sites that are not operated by us. If you click on a third-party link, you will be directed to that third party\'s site. We strongly advise you to review the Privacy Policy of every site you visit\n\n'
                        'We have no control over and assume no responsibility for the content, privacy policies or practices of any third-party sites or services.\n \n \n'
                        'Changes To This Privacy Policy\n \n '
                        ' We may update our Privacy Policy from time to time. We will notify you of any changes by\n posting the new Privacy Policy on this page.\n \n'
                        ' We will let you know via email and/or a prominent notice on our Service, prior to the change\n becoming effective and update the "effective date" at the top of this Privacy Policy.\n \n'
                        ' You are advised to review this Privacy Policy periodically for any changes. Changes to this Privacy Policy are effective when they are posted on this page.')),
              ),
            )),
      ),
    );
  }
}
