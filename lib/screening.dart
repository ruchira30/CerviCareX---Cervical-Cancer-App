import 'package:flutter/material.dart';

class ScreeningPage extends StatelessWidget {
  const ScreeningPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900, // Set app bar color
        title: Text('About'),
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
              'Cervical cancer is a type of cancer that occurs in the cells of the cervix — the lower part of the uterus that connects to the vagina. Various strains of the human papillomavirus (HPV), a sexually transmitted infection, play a role in causing most cervical cancer.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Causes and Risk Factors',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Risk factors for cervical cancer include: HPV infection, Smoking, Weakened immune system, Chlamydia infection, Being overweight, Long-term use of oral contraceptives, Having multiple full-term pregnancies, etc.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Prevention',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Preventing HPV infection is a key step in preventing cervical cancer. HPV vaccines are highly effective in preventing infection with the types of HPV that cause most cervical cancers. Other preventive measures include practicing safe sex, getting regular Pap tests, quitting smoking, etc.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
              'Treatment',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              'Treatment for cervical cancer may include surgery, radiation therapy, chemotherapy, or a combination of these treatments. The choice of treatment depends on the stage of the cancer, the woman’s age and overall health, and her desire to have children in the future.',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Divider(),
        ],
      ),
    );
  }
}
