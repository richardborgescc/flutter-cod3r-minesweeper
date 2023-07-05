import 'package:flutter/material.dart';
import 'package:flutter_cod3r_minesweeper/components/campo_widget.dart';

import '../models/campo.dart';
import '../models/tabuleiro.dart';

class TabuleiroWidget extends StatelessWidget {
  final Tabuleiro tabuleiro;
  final void Function(Campo) onAbrir;
  final void Function(Campo) onAlternarMarcacao;

  const TabuleiroWidget({
    required this.tabuleiro,
    required this.onAbrir,
    required this.onAlternarMarcacao,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: tabuleiro.colunas,
      children: tabuleiro.campos.map((campo) {
        return CampoWidget(
          campo: campo,
          onAbrir: onAbrir,
          onAlternarMarcacao: onAlternarMarcacao,
        );
      }).toList(),
    );
  }
}
