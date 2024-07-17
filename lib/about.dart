import 'package:flutter/material.dart';
import 'feed.dart';
class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900, // Set app bar color
        title: Text('About Cervical Cancer'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          ListTile(
            title: Text(
              'Introduction',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Each year, more than half a million women are diagnosed with cervical cancer and the disease results in over 300 000 deaths worldwide. High-risk subtypes of the human papilloma virus (HPV) are the cause of the disease in most cases. The disease is largely preventable. Approximately 90% of cervical cancers occur in low-income and middle-income countries that lack organised screening and HPV vaccination programmes. In high-income countries, cervical cancer incidence and mortality have more than halved over the past 30 years since the introduction of formal screening programmes. Treatment depends on disease extent at diagnosis and locally available resources, and might involve radical hysterectomy or chemoradiation, or a combination of both. Conservative, fertility-preserving surgical procedures have become standard of care for women with low-risk, early-stage disease.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          ListTile(
            title: Text(
              'What is Cervical Cancer?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Cervical cancer is cancer that starts in the cells of the cervix. The cervix is the lower, narrow end of the uterus (womb). The cervix connects the uterus to the vagina (birth canal). Cervical cancer usually develops slowly over time. Before cancer appears in the cervix, the cells of the cervix go through changes known as dysplasia, in which abnormal cells begin to appear in the cervical tissue. Over time, if not destroyed or removed, the abnormal cells may become cancer cells and start to grow and spread more deeply into the cervix and to surrounding areas..',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Two Parts of Cervix',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'The ectocervix (also called exocervix) is the outer part of the cervix that can be seen during a gynecologic exam. The ectocervix is covered with thin, flat cells called squamous cells.'
              'The endocervix is the inner part of the cervix that forms a canal that connects the vagina to the uterus. The endocervix is covered with column-shaped glandular cells that make mucus.',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
