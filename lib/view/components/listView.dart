import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_app/model/sounds.dart';
import 'package:audio_app/view-model/cubit/homecubit.dart';
import 'package:audio_app/view-model/cubit/homestate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ListofSounds extends StatelessWidget {
  Sounds sounds;
   ListofSounds({required this.sounds,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeState>(builder: (context,state){
      return ListTile(
        iconColor: Colors.white,
        shape:
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(15),),
        title: Text(sounds.title,style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 25,color: Colors.white),),
      trailing: Icon(Icons.play_circle_outline));
    }, listener:(context,state){});
  }
}
