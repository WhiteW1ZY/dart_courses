import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:to_do_app/domain/usecases/auth/sign_out_usecase.dart';
import 'package:to_do_app/domain/usecases/user/get_user_data_usecase.dart';

@injectable
class ProfileCubit extends Cubit<void> {
  final SignOutUsecase _signOutUsecase;
  final GetUserDataUsecase _getUserDataUsecase;
  ProfileCubit(this._signOutUsecase, this._getUserDataUsecase) : super(null);

  String get userEmail => _getUserDataUsecase.userEmail;

  Future<void> logout() async {
    await _signOutUsecase.signOut();
  }
}
