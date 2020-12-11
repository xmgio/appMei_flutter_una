import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  static String tag = 'home-page';
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Home extends StatefulWidget {
  @override
  HomeState createState() => HomeState();
}

class Curso extends StatefulWidget {
  State createState() => HomeState();
   final List<Curso> avaliacoes = <Curso>[];
  final int id;
  final String url, nome;

  Curso({this.id, this.url, this.nome});
}
Curso curso1 = Curso(
  url:
      'https://fia.com.br/blog/wp-content/uploads/2018/12/gestao-de-pessoas-o-que-e-importancia-como-desenvolver-730x487.jpg',
  nome: 'Gestão de Pessoas',
);
Curso curso2 = Curso(
    url:
        'https://comunidade.rockcontent.com/wp-content/uploads/2019/06/Capa-para-conte%C3%BAdos-de-Finan%C3%A7as-Pessoas-1.png',
    nome: 'Finanças');
Curso curso3 = Curso(
  url:
      'https://miriangasparin.com.br/wp-content/uploads/2020/04/gest%C3%A3o-empresarial.jpg',
  nome: 'Gestão Empresarial',
);
Curso curso4 = Curso(
  url:
      'https://www.meioemensagem.com.br/wp-content/uploads/2018/01/startup-1080x465.jpg',
  nome: 'Começando uma Startup',
);
Curso curso5 = Curso(
  url:
      'https://neilpatel.com/wp-content/uploads/2019/07/titulo-marketing-digital-sob-imagem-de-laptop-e-il.jpeg',
  nome: 'Marketing Digital',
);
Curso curso6 = Curso(
  url: 'https://blog.hotmart.com/blog/2019/07/BLOG_vendas-670x419.png',
  nome: 'Formação do preço de venda',
);

final List<Curso> cursos = <Curso>[
  curso1,
  curso2,
  curso3,
  curso4,
  curso5,
  curso6
];
class ListaCurso extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  shrinkWrap: true,
  padding: new EdgeInsets.only(left: 25, top: 2.5, right: 25),
  itemCount: cursos.length,
  itemBuilder: (BuildContext context, int indice) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(2),
      color: (indice % 2) == 1 ? Colors.blue[50] : Colors.grey[200],
      child: Center(
        child: ListTile(
          leading: Image(
            image: NetworkImage(cursos[indice].url),
            height: 70,
            width: 90,
          ),
          title: Text('${cursos[indice].nome}'),
          trailing: Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SegundaRotaCurso(nome:cursos[indice].nome)),
           );
          },
          onLongPress: () {},

        ),
      ),
    );
  },
);
  }
}


class SegundaRotaCurso extends StatelessWidget {
  final String nome;

  // In the constructor, require a Todo.
  SegundaRotaCurso({Key key, @required this.nome}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nome),
        backgroundColor: Colors.purple,
        
      ),
      body:
      Center(
        child: Column( 
            
            children: [Container(
              width: 250,
              height: 250,
              child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
            ),
              Container(
              width: 250,
              height: 250,
              child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
            ),
            Container(
              width: 250,
              height: 250,
              child: Image.network(
                  'https://github.com/flutter/plugins/raw/master/packages/video_player/video_player/doc/demo_ipod.gif?raw=true'),
            ),
            ],
        
        ),  ),
    );
  }
}


Consultor consultor = Consultor(
    url: 'https://image.flaticon.com/icons/png/512/194/194938.png',
    nome: 'Larissa Oliveira',
    descricao: 'Consulora de Finanças   +213 837213872');
Consultor consultor1 = Consultor(
    url:
        'https://cdn3.iconfinder.com/data/icons/business-avatar-1/512/7_avatar-512.png',
    nome: 'Roberto Prezzo',
    descricao: 'Advogado Empresarial   +213 387423874');
Consultor consultor2 = Consultor(
    url: 'https://www.galassoimmobiliare.it/public/filetiny//diconodinoi_2.png',
    nome: 'Jucelia Santos',
    descricao: 'Consultora MEI   +213 4933589348');
Consultor consultor3 = Consultor(
    url:
        'https://blog.yamamura.com.br/wp-content/uploads/2019/04/10_avatar-512.png',
    nome: 'Antonio Hulk',
    descricao: 'Consulor   +213 943095309');

final List<Consultor> consultoresList = <Consultor>[
  consultor,
  consultor1,
  consultor2,
  consultor3
];
class Consultores extends StatelessWidget {  
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
  shrinkWrap: true,
  padding: new EdgeInsets.only(left: 25, top: 2.5, right: 25),
  itemCount: consultoresList.length,
  itemBuilder: (BuildContext context, int indice) {
    return Container(
      height: 100,
      margin: EdgeInsets.all(2),
      color: (indice % 2) == 1 ? Colors.blue[50] : Colors.grey[200],
      child: Center(
        child: ListTile(
          leading: Image(
            image: NetworkImage(consultoresList[indice].url),
            height: 70,
            width: 90,
          ),
          title: Text('${consultoresList[indice].nome}'),
          subtitle: Text('${consultoresList[indice].descricao}'),
        ),
      ),
    );
  },
);
  }
}
class Consultor {
  int id;
  String url, nome, descricao;

  Consultor({this.id, this.url, this.nome, this.descricao});
}

class Avaliacao {
  String nome;
  double nota;
  Avaliacao({
    this.nome,
    this.nota,
  });
}

class Avaliacoes extends StatefulWidget {
  @override
  AvalaiacoesState createState() => AvalaiacoesState();
}

class AvalaiacoesState extends State<Avaliacoes> {
  final List<Avaliacao> avaliacoes = <Avaliacao>[];
  void adicionarAvaliacoesNaLista(Avaliacao avaliacao) {
    setState(
      () {
        avaliacoes.insert(0, avaliacao);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: avaliacoes.length,
        itemBuilder: (BuildContext context, int indice) {
          return Container(
            height: 80,
            margin: EdgeInsets.all(2),
            color: (indice % 2) == 0 ? Colors.blue[50] : Colors.grey[200],
            child: ListTile(
              leading: Image(
                  image: NetworkImage(
                      'https://icons-for-free.com/iconfiles/png/512/avatar-1320568024619304547.png')),
              title: Text(
                '${avaliacoes[indice].nome}',
              ),
              subtitle: Text(
                ' ${avaliacoes[indice].nota.toStringAsFixed(2)}',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.purple[900],
                ),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SegundaRota()),
          ).then((novaAvaliacao) {
            adicionarAvaliacoesNaLista(novaAvaliacao);
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.purple[900],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  final TextEditingController notaController = TextEditingController();
  final TextEditingController nomeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adicionar Avaliação'),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(8),
            child: TextField(
              controller: nomeController,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => nomeController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Nome',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: TextField(
              controller: notaController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => notaController.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Nota',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(130, 30, 130, 100),
            child: RaisedButton(
              child: Icon(Icons.add),
              onPressed: () {
                Avaliacao avaliacao = Avaliacao(
                  nome: this.nomeController.text,
                  nota: double.tryParse(notaController.text),
                );
                Navigator.pop(context, avaliacao);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class HomeState extends State<Home> {
  int indice = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static List<Widget> telas = <Widget>[
    new ListaCurso(),
   new Consultores(),
    new Avaliacoes(),
  ];
  void selecionar(int indice) {
    setState(
      () {
        this.indice = indice;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página Inicial'),
        backgroundColor: Colors.purple,
      ),
      body: telas.elementAt(this.indice),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Cursos'), //substituir por -> label: 'Cursos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title:
                Text('Consultoria'), //substituir por -> label: 'Consultoria',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            title: Text('Avaliação'), //substituir por -> label: 'Avaliação',
          ),
        ],
        currentIndex: this.indice,
        selectedItemColor: Colors.deepPurpleAccent[200],
        onTap: selecionar,
      ),
    );
  }
}
