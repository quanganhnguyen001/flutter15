import 'dart:async';

import 'package:flutter_application_1/bloc/remote_event.dart';
import 'package:flutter_application_1/bloc/remote_state.dart';

class HomeBloc{
  final _homeState = HomeState();

  final _chanelStateStreamController = StreamController<int>();

  Stream<int> get chanel => _chanelStateStreamController.stream;

  final _chanelEventStreamController = StreamController<ChanelEvent>();

  Stream<ChanelEvent> get _chanelStreamEvent => _chanelEventStreamController.stream;

  Sink<ChanelEvent> get chanelSinkEvent => _chanelEventStreamController.sink;

  final _volumeStateStreamController = StreamController<int>();

  Stream<int> get volume => _volumeStateStreamController.stream;

  final _volumeEventStreamController = StreamController<VolumeEvent>();

  Stream<VolumeEvent> get _volumeStreamEvent => _volumeEventStreamController.stream;

  Sink<VolumeEvent> get volumeSinkEvent => _volumeEventStreamController.sink;


  HomeBloc() {
    _chanelStreamEvent.listen((event) {
      if(event is IncreaseChanel) {
        _homeState.chanel++;
        _chanelStateStreamController.sink.add(_homeState.chanel);
      }else if(event is DecreaseChanel){
        _homeState.chanel--;
        _chanelStateStreamController.sink.add(_homeState.chanel);
      }
    });

    _volumeStreamEvent.listen((event) {
      if(event is IncreaseVolume){
        _homeState.volume += 5;
        _volumeStateStreamController.sink.add(_homeState.volume);
      }else if(event is DecreaseVolume){
        _homeState.volume -= 10;
        _volumeStateStreamController.sink.add(_homeState.volume);
      }else if(event is MuteVolume){
        _homeState.volume = 0;
        _volumeStateStreamController.sink.add(_homeState.volume);

      }
    });
  }

  
}