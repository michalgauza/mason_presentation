import 'package:bloc/bloc.dart';
import 'package:injectable/injectable.dart';

import 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
HomeCubit() : super(const HomeState.initial());
}
