part of 'saltpapershotgun.dart';

class PaperStraw extends StatefulWidget {
  const PaperStraw({super.key});

  @override
  State<PaperStraw> createState() => _PaperStrawState();
}

class _PaperStrawState extends State<PaperStraw> {
  @override
  void initState() {
    super.initState();
  }

  final _needleKey = GlobalKey<FormState>();
  final saltboxname = TextEditingController();
  final saltboxmail = TextEditingController();
  final saltboxnumber = TextEditingController();
  final saltboxaddress = TextEditingController();

  @override
  void dispose() {
    saltboxname.dispose();
    saltboxmail.dispose();
    saltboxnumber.dispose();
    saltboxaddress.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var scooper = AppBar(
      title: Text(
        "Login Paper",
        style: GoogleFonts.sacramento(
            fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.brown.shade800,
    );

    var namebeans = Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.name,
            decoration: InputDecoration(
              labelText: 'Your Name',
              hintText: 'Enter Your Name',
              prefixIcon: Icon(Icons.account_circle),
              border: OutlineInputBorder(),
            ),
            style:
                TextStyle(fontFamily: 'Times New Roman', color: Colors.white),
            controller: saltboxname,
            onChanged: (String value) {},
            validator: (value) {
              return value!.isEmpty ? 'Please enter your name' : null;
            },
          ),
        ],
      ),
    );

    var groundmail = Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              labelText: 'Email',
              hintText: 'Enter Your e-mail',
              prefixIcon: Icon(Icons.email),
              border: OutlineInputBorder(),
            ),
            style:
                TextStyle(fontFamily: 'Times New Roman', color: Colors.white),
            controller: saltboxmail,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: (value) {
              return !EmailValidator.validate(value.toString())
                  ? 'Email is not valid'
                  : null;
            },
          ),
        ],
      ),
    );

    var numberblocks = Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.phone,
            cursorColor: Colors.white,
            decoration: InputDecoration(
              labelText: 'Phone Number',
              hintText: 'Enter Your Phone Number',
              prefixIcon: Icon(Icons.phone_android),
              border: OutlineInputBorder(),
            ),
            style:
                TextStyle(fontFamily: 'Times New Roman', color: Colors.white),
            controller: saltboxnumber,
            validator: (value) {
              if (value!.isEmpty ||
                  !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}}[)]{0,1}[-\s\./0-9]+$')
                      .hasMatch(value!)) {
                return "Enter the correct phone number";
              } else {
                return null;
              }
            },
          ),
        ],
      ),
    );

    var coffeecity = Form(
      child: Column(
        children: [
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: "Domicite's City",
              hintText: "Enter Your Domicite's City",
              prefixIcon: Icon(Icons.location_city),
              border: OutlineInputBorder(),
            ),
            style:
                TextStyle(fontFamily: 'Times New Roman', color: Colors.white),
            controller: saltboxaddress,
            onChanged: (String value) {},
            validator: (value) {
              return value!.isEmpty ? 'Please enter a correct city' : null;
            },
          ),
        ],
      ),
    );

    var spice = Container(
      child: SizedBox(
        height: 15,
      ),
    );

    var cordiments = Container(
      child: SizedBox(
        height: 30,
      ),
    );

    var blockbutton = ElevatedButton(
      style: ElevatedButton.styleFrom(
          textStyle: GoogleFonts.notoSerif(color: Colors.yellow[200]),
          backgroundColor: Colors.brown[400],
          padding: EdgeInsets.only(left: 20, right: 20)),
      onPressed: () {
        if (saltboxname.text.toString() == "" ||
            saltboxmail.text.toString() == "" ||
            saltboxnumber.text.toString() == "" ||
            saltboxaddress.text.toString() == "") {
          showDialog(
              context: context,
              builder: ((context) {
                return AlertDialog(
                  title: Text(
                    "Error",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.red,
                        fontFamily: 'Calibri',
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  content: Text(
                    "Please fill the form correctly",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontFamily: 'Calibri',
                      fontSize: 16,
                    ),
                  ),
                );
              }));
        } else {
          showDialog(
            context: context,
            builder: ((context) {
              return AlertDialog(
                title: Text(
                  "Logged In",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black),
                ),
                content: Text(
                  "Your Name: ${saltboxname.text}\n"
                  "Your Email: ${saltboxmail.text}\n"
                  "Your Number: ${saltboxnumber.text}\n"
                  "Your Address: ${saltboxaddress.text}",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Calibri',
                      fontWeight: FontWeight.w500,
                      fontSize: 16,
                      color: Colors.black),
                ),
                actions: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[500]),
                    onPressed: () {
                      Navigator.pushAndRemoveUntil<dynamic>(
                          context,
                          MaterialPageRoute<dynamic>(
                              builder: (context) => CoffeeCard01()),
                          (route) => false);
                    },
                    child: Text("Go to Main"),
                  )
                ],
              );
            }),
          );
        }
      },
      child: Text("Login"),
    );

    return Scaffold(
      appBar: scooper,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.brown.shade900, Colors.brown.shade300]),
        ),
        width: double.infinity,
        height: double.infinity,
        child: Form(
          key: _needleKey,
          child: Column(
            children: [
              cordiments,
              namebeans,
              spice,
              groundmail,
              spice,
              numberblocks,
              spice,
              coffeecity,
              spice,
              blockbutton
            ],
          ),
        ),
      ),
    );
  }
}
