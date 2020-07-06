import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App Project',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('perfildeteste'),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.expand_more,
                color: Colors.black,
              ),
              tooltip: 'Adicionar conta',
              onPressed: () {
                paginaRedicionamento(context);
                debugPrint("Clicou para adicionar conta.");
              })
        ],
      ),
      body: Perfil(),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Pesquisar'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.add_box),
          title: Text('Adicionar foto'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_border),
          title: Text('Curtidas'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_pin),
          title: Text('Perfil'),
        ),
      ]),
    );
  }
}

//pagina para logar nova conta - não concluida
void paginaRedicionamento(BuildContext context) {
  Navigator.push(context, MaterialPageRoute(
    builder: (BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Login, foto de perfil'),
        ),
        body: const Center(
          child: Text(
            'Pagina para fazer o login em uma nova conta e trocar a foto de perfil',
            style: TextStyle(fontSize: 15),
          ),
        ),
      );
    },
  ));
}

//tentando fazer o perfil
class Perfil extends StatefulWidget {
  @override
  _PerfilState createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
        icon: Icon(
          Icons.perm_identity,
          color: Colors.black,
          size: 50,
        ),
        onPressed: () {
          paginaRedicionamento(context);
          debugPrint("Clicou para mudar a foto de perfil");
        },
      ),
      constraints: BoxConstraints.expand(
        height: 200,
        width: 150,
      ),
    );
  }
}

/*
<<<<<<<<<<<< parte que vem escrita com a inicialização do projeto >>>>>>>>>

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Você precionou esse botão: ',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            Text('vezes.'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
*/
