import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GoTo {
  /// Função para chamar outra página
  static page(BuildContext context, {dynamic page}) {
    Navigator.of(context).push(PageRouteBuilder(
        pageBuilder: (contet, a, b) => page,
        transitionDuration: Duration(milliseconds: 290),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          return FadeTransition(
            opacity: animation,
            child: child,
          );
        }));
  }

  /// Essa chama outra página sem opção de [RETORNAR PARA PÁGINA ANTERIOR]
  static pageWithoutReturn(BuildContext context, {dynamic page}) {
    Navigator.of(context).pushAndRemoveUntil(
        PageRouteBuilder(
            pageBuilder: (contet, a, b) => page,
            transitionDuration: Duration(milliseconds: 290),
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: animation,
                child: child,
              );
            }),
        (Route<dynamic> route) => false);
  }
}
