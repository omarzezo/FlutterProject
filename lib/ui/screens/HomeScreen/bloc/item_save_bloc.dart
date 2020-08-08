import 'dart:async';
import 'package:blocpattern/blocHelpers/bloc_event_state.dart';
import 'package:blocpattern/network/repository/ItemProvider.dart';
import 'package:blocpattern/ui/screens/HomeScreen/bloc/ItemState.dart';
import 'package:blocpattern/ui/screens/HomeScreen/bloc/item_event.dart';
//import 'package:flutter_bloc/bloc_helpers/bloc_event_state.dart';
//import 'package:flutter_bloc/blocs/item_save/item_event.dart';
//import 'package:flutter_bloc/blocs/item_save/item_state.dart';
//import 'package:flutter_bloc/repos/item_provider.dart';

class ItemSaveBloc extends BlocEventStateBase<ItemSaveEvent, ItemState> {


  ItemSaveBloc()
      : super(
    initialState: ItemState.noAction(),
  );

  @override
  Stream<ItemState> eventHandler(ItemSaveEvent event, ItemState currentState) async* {
    if (event.event == ItemEventType.savingItem){
      yield ItemState.savingItem();


      ItemProvider itemProvider = new ItemProvider();
      try{

        await itemProvider.addItem(event.nombre, event.idItemRepo);
      }catch (error) {
        yield ItemState.failure();
      }

      await Future.delayed(const Duration(seconds: 1));

      yield ItemState.success();
    }
  }
}