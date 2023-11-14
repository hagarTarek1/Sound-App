import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_app/view-model/cubit/homecubit.dart';
import 'package:audio_app/view-model/cubit/homestate.dart';
import 'package:audio_app/view/components/listView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit,HomeState>(builder:(context,state){
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          toolbarHeight: 60,
          elevation: 2,
          title: Text('Sounds',style: TextStyle(fontWeight: FontWeight.bold,
          fontSize: 28,color: Colors.blueGrey),),
        centerTitle: true,),
          body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView.separated(itemBuilder:(context,index){
          return InkWell( onTap: (){
           HomeCubit.get(context).openSound(index);},
              child: ListofSounds(sounds: HomeCubit.get(context).sounds[index],));
        }, separatorBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.all(10),
            child: Divider(color: Colors.white,thickness: 2,),
          );
        }, itemCount: HomeCubit.get(context).sounds.length),
      ));
    }, listener:(context,state){});
  }
}
