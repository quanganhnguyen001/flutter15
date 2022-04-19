import 'package:flutter/material.dart';
import 'package:flutter_application_1/bloc/remote_bloc.dart';
import 'package:flutter_application_1/bloc/remote_event.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _bloc = HomeBloc();

  void _chanelCounter(int i){
    if (i == 0) {
      _bloc.chanelSinkEvent.add(IncreaseChanel());
    }else{
      _bloc.chanelSinkEvent.add(DecreaseChanel());
    }
  }

  void _volumeCounter(int i){
    if (i == 1){
      _bloc.volumeSinkEvent.add(IncreaseVolume());
    }else if(i == 2){
      _bloc.volumeSinkEvent.add(DecreaseVolume());
    }else if(i == 3){
      _bloc.volumeSinkEvent.add(MuteVolume());
    }

    // switch (i) {
    //   case 1:
    //     _bloc.volumeSinkEvent.add(IncreaseVolume());
    //     break;
    //   case 2:
    //   _bloc.volumeSinkEvent.add(DecreaseVolume());
    //   break;
    //   case 3:
    //   _bloc.volumeSinkEvent.add(MuteVolume());
    
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Test Bloc"),
      ),
      body: Stack(
        children: [
          Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              StreamBuilder(
                stream: _bloc.chanel,
                initialData: 0,
                builder: (context, snapshot){
                  return Text("Kênh hiện tại : ${snapshot.data}",style: TextStyle(fontSize: 15),);
                },
              ),
              SizedBox(height: 10,),
              StreamBuilder(
                stream: _bloc.volume,
                initialData: 0,
                builder: (context, snapshot){
                  return Text("Âm lượng hiện tại : ${snapshot.data}",style: TextStyle(fontSize: 15),);
                },
              ),
            ],
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.plus_one),
                    onPressed: (){
                      _chanelCounter(0);
                    },
                  ),
                  SizedBox(width: 10,),
                  FloatingActionButton(
                    child: Icon(Icons.exposure_minus_1),
                    onPressed: (){
                      _chanelCounter(1);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(bottom: 50,right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton(
                    child: Icon(Icons.volume_up_sharp),
                    onPressed: (){
                      _volumeCounter(1);
                    },
                  ),
                  SizedBox(width: 10,),
                  FloatingActionButton(
                    child: Icon(Icons.volume_down_sharp),
                    onPressed: (){
                      _volumeCounter(2);
                    },
                  ),
                  SizedBox(width: 10,),
                  FloatingActionButton(
                    child: Icon(Icons.volume_mute_sharp),
                    onPressed: (){
                      _volumeCounter(3);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        ],
      ),
      
    );
  }
}