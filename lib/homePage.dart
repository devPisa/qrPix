import 'package:flutter/material.dart';
import 'package:flutter_application_1/gerarQrCode.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Gerador QR CODE PIX'),
          backgroundColor: Colors.teal,
        ),
        drawer: Drawer(
          child: Column(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text('Cesar'),
                accountEmail: Text('cesar@gmail.com'),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage(''),
                ),
                decoration: BoxDecoration(color: Colors.amber),
              ),
              ListTile(
                title: Text('Pagar'),
                leading: Icon(Icons.money),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => qrCodePage()));
                },
              ),
              Divider(),
              ListTile(
                title: Text('Configurações'),
                leading: Icon(Icons.settings),
                onTap: () {},
              ),
            ],
          ),
        ),
        body: Container(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.home,
                  size: 100,
                  color: (Colors.teal),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Bem vindo ao app de Qr Code Pix!',
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.blue.shade700,
                        fontWeight: FontWeight.bold),
                  ),
                
              ],
            ),
          ),
        ));
  }





}