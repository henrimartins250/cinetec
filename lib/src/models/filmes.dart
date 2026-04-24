
import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Filmes {
  final String titulo;
  final String genero;
  final int ano;
  final double nota;
  final String descricao;

  Filme({
    required this.titulo,
    required this.genero,
    required this.ano,
    required this.nota,
    required this.descricao
  });

Map<String, dynamic> topCreateMap(){
  return{
    'titulo': titulo,
    'genero': genero,
    'ano': ano,
    'nota': nota,
    'descricao': descricao,
    'createdAt': FieldValue.serverTimestamp()
  };



  }

  factory Filmes.fromFirestore(DocumentSnapshot<Map<String, dynamic>> doc)
}