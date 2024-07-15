import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:uzum/data/source/remote/error/error_message.dart';
import 'package:uzum/data/source/remote/request/add_card_request.dart';
import 'package:uzum/data/source/remote/request/auth/sign_in/sign_in_request.dart';
import 'package:uzum/data/source/remote/request/auth/sign_in_resend/sign_in_resend_request.dart';
import 'package:uzum/data/source/remote/request/auth/sign_in_verify/sign_in_verify_request.dart';
import 'package:uzum/data/source/remote/request/auth/sign_up/sign_up_request.dart';
import 'package:uzum/data/source/remote/request/auth/sign_up_resend/sign_up_resend_request.dart';
import 'package:uzum/data/source/remote/request/auth/sing_up_verify/sign_up_verify_request.dart';
import 'package:uzum/data/source/remote/request/auth/update_token/update_token_request.dart';
import 'package:uzum/data/source/remote/response/auth/auth_success/doubled_token.dart';
import 'package:uzum/data/source/remote/response/auth/auth_success/single_token.dart';

part 'api_service.g.dart';

@RestApi()
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST("v1/card")
  Future<String> addCard(@Body() AddCardRequest data);

  @POST("v1/auth/sign-up")
  Future<SingleToken> signUp(@Body() SignUpRequest data);

  @POST("v1/auth/sign-up/verify")
  Future<DoubledToken> signUpVerify(SignUpVerifyRequest signInRequest);

  @POST("v1/auth/sign-in")
  Future<SingleToken> signIn(SignInRequest signInRequest);

  @POST("v1/auth/sign-in/verify")
  Future<DoubledToken> signInVerify(SignInVerifyRequest signInRequest);

  @POST("v1/auth/update-token")
  Future<DoubledToken> updateToken(UpdateTokenRequest signInRequest);

  @POST("v1/auth/sign-in/resend")
  Future<SingleToken> signInResend(SignInResendRequest signInRequest);

  @POST("v1/auth/sign-up/resend")
  Future<SingleToken> signUpResend(SignUpResendRequest signInRequest);

  @POST("v1/auth/sign-out")
  Future<ErrorMessage> signOut(); // message qaytararkan, error message ishlatib qo'ydim class yaratmasdan
}
