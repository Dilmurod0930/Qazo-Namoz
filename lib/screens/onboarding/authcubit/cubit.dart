import 'package:bloc/bloc.dart';
import 'package:namoz_app/screens/onboarding/state/state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(PageOne());

  changeState(state) {
    emit(state);
  }
}
