import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:quran_app/features/presentation/views/HomeViewbody.dart';

part 'page_state.dart';

class PageCubit extends Cubit<PageState> {
  PageCubit() : super(PageInitial());

  changeTapped(int value) {
    value = 0;
    emit(TapSwitch());
  }
}
