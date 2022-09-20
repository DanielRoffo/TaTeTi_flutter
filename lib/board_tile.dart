import 'package:flutter/material.dart';
import 'package:tateti_flutter/tile_state.dart';

class BoardTile extends StatelessWidget{

  final TileState? tileState;
  final double? dimension;
  final VoidCallback? onPressed;

  BoardTile({Key? key, this.tileState, this.dimension, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return  Container(
      width: dimension,
      height: dimension,
      child: TextButton(
        onPressed: onPressed,
        child: widgetForTileState(),
      ),);
  }

  Widget widgetForTileState(){
    Widget widget;

    switch(tileState!){
      case TileState.EMPTY:
        {
          widget = Container();
        }
        break;

      case TileState.CROSS:
        {
          widget = Image.asset('assets/x.png');
        }
        break;

      case TileState.CIRCLE:
        {
          widget = Image.asset('assets/o.png');
        }
        break;
    }
    return widget;
  }
}