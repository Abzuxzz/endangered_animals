import 'package:flutter/material.dart';

void main() {
  runApp(EndangeredAnimals());
}

class EndangeredAnimals extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final title = "Marvel Villain";

    List<Choice> choices = const <Choice>[
      const Choice(
          title: 'Komodo',
          description:
              'Komodo merupakan hewan yang sangat langka karena jumlahnya yang sedikit, hanya terdapat di Indonesia yaitu tepatnya di pulau komodo. Hewan ini juga termasuk spesies kadal paling besar di dunia yang rata-rata memiliki panjang 2-3 meter dan berat bisa mencapai 100 kg.Di alam bebas, habitat komodo telah mengalami penyusutan dan terancam punah karena aktifitas manusia. Oleh sebab itu, maka IUCN (International Union fot the Conversation of Nature) memasukkan komodo termasuk sebagai hewan yang langka. Hewan ini pun termasuk salah satu hewan langka yang dilindungi pemerintah Indonesia.',
          imglink:
              'http://i0.wp.com/www.satujam.com/wp-content/uploads/2015/04/komodo.jpg?resize=900%2C675'),
      const Choice(
          title: 'Burung Elang Jawa',
          description:
              'Burung Elang ini mempunyai bentuk yang sangat gagah, namun sangat disayangkan populasinya kini tinggal 250 ekor saja. Keberadaannya hampir tersebar merata di sekitar hutan di pulau Jawa seperti gunung Anjasmoro, gunung Kawi, gunung Salak, gunung Slamet dan masih banyak lagi yang lainnya. Selain di gunung-gunung, hewan ini juga terdapat dibeberapa taman nasional yang ada di Jawa seperti Taman nasional Gunung Gede Pangrango serta Taman Nasional Muara Betiri.',
          imglink:
              'http://i2.wp.com/www.satujam.com/wp-content/uploads/2015/04/burung-elang-jawa.jpg?resize=900%2C636'),
      const Choice(
          title: 'Anoa',
          description:
              'Jika diperhatikan, hewan yang satu ini mirip sebuah kambing dengan ukuran yang besar, namun yang membedakan dengan kambing selain ukuran tubuhnya yang besar yaitu adanya tanduk runcing dikepalanya yang panjangnya mencapai 30cm. Anoa termasuk mamalia yang mempunyai kuku genap. Sulawesi merupakan habitat asli hewan ini.',
          imglink:
              'http://i1.wp.com/www.satujam.com/wp-content/uploads/2015/04/anoa.jpg?resize=900%2C675'),
      const Choice(
          title: 'Singapuar',
          description:
              'Indonesia harusnya cukup bangga karena memiliki Singapuar yang dijuluki sebagai primata terkecil di dunia. Hewan langka yang satu ini hanya mempunyai berat tubuh sekitar 80-140 gram dan memiliki panjang tubuh sekitar 12-15 cm, hal ini menjadikan Singapuar cukup layak disebut sebagai primata terkecil di dunia.Hewan ini mempunyai sepasang mata yang lumayan besar yang ukurannya melebihi volume otaknya sendiri, dan ternyata matanya itu hanya bisa digunakan pada malam hari, sekilas mirip seperti burung hantu. Habitat asli Singapuar terdapat di kepulauan kalimantan, kepualauan Riau, dan kepulauan Sumatera bagian selatan serta tenggara.',
          imglink:
              'http://i1.wp.com/www.satujam.com/wp-content/uploads/2015/04/singapuar.jpg?resize=900%2C675'),
      const Choice(
          title: 'Musang Congkok',
          description:
              'Hewan langka yang satu ini beratnya mencapai 5 kg  dan mempunyai panjang tubuh sekitar 71cm, dapat ditemukan di wilayah Aceh dan pegunungan Sumatera Barat. Hewan ini cukup gesit untuk memanjat pohon, sedang makanan kesukaannya adalah mamalaia kecil dan beberapa jenis serangga.',
          imglink:
              'http://i1.wp.com/www.satujam.com/wp-content/uploads/2015/04/musang-congkok.jpg?resize=900%2C675'),
    ];

    return MaterialApp(
        title: title,
        home: Scaffold(
            appBar: AppBar(
              title: Text(title),
            ),
            body: new ListView(
                shrinkWrap: true,
                padding: const EdgeInsets.all(20.0),
                children: List.generate(choices.length, (index) {
                  return Center(
                    child: ChoiceCard(
                        choice: choices[index], item: choices[index]),
                  );
                }))));
  }
}

class Choice {
  final String title;
  final String description;
  final String imglink;

  const Choice({this.title, this.description, this.imglink});
}

class ChoiceCard extends StatelessWidget {
  const ChoiceCard(
      {Key key,
      this.choice,
      this.onTap,
      @required this.item,
      this.selected: false})
      : super(key: key);

  final Choice choice;
  final VoidCallback onTap;
  final Choice item;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = Theme.of(context).textTheme.display1;
    if (selected)
      textStyle = textStyle.copyWith(color: Colors.lightGreenAccent[400]);
    return Card(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            new Container(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(choice.imglink)),
            new Container(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(choice.title, style: Theme.of(context).textTheme.title),
                  Text(choice.description),
                ],
              ),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));
  }
}
