import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audio_app/view-model/cubit/homestate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../model/sounds.dart';

class HomeCubit extends Cubit<HomeState>{
  HomeCubit(): super(InitState());
  static HomeCubit get(context)=> BlocProvider.of<HomeCubit>(context);
List <Sounds> sounds  =[Sounds(title: "Dog", sound: "assets/mixkit-dog-barking-twice-1.wav"),
Sounds(title: "lough", sound: "assets/mixkit-crowd-laugh-424.wav"),
Sounds(title: 'Rocket', sound: "assets/mixkit-fast-rocket-whoosh-1714.wav"),
Sounds(title: "Sweep", sound: "assets/mixkit-fast-small-sweep-transition-166.wav")];

openSound (index){
  try{
  var audioPlayer = AssetsAudioPlayer();
  audioPlayer.open(Audio(sounds[index].sound));
  print("done");
  emit(OpenSoundSuccess());}
  catch (e){
    print(e);
  }
  // AssetsAudioPlayer.newPlayer().open(
  //   Audio(
  //       "assets/sample-3s.mp3"
  //   ),
  //   autoStart: true,
  //   showNotification: true,
  // );

}
}