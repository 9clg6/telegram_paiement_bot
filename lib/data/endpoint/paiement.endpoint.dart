import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:retrofit/retrofit.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/authentication_body.remote.model.dart';
import 'package:telegram_paiement_bot/data/model/remote/minimum_amount.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/paiement.remote_model.dart';
import 'package:telegram_paiement_bot/data/model/remote/paiement_body.remote_model.dart';
import 'package:telegram_paiement_bot/foundation/io/client/dio_client.dart';

part 'paiement.endpoint.g.dart';

/// PaiementEndpoint is an endpoint that allows you to authenticate and get the minimum amount. 
@RestApi()
abstract class PaiementEndpoint {
  /// Constructor
  /// @param dioClient the dio client
  /// @return the paiement endpoint
  /// 
  @factoryMethod
  factory PaiementEndpoint(DioClient dioClient) {
    return _PaiementEndpoint(dioClient);
  }

  /// Authenticate the user
  /// @param authenticationBody the authentication body
  /// @return the authentication remote model
  /// 
  @POST('/auth')
  Future<AuthenticationRemoteModel?> authenticate(
    @Body() AuthenticationBody authenticationBody,
  );

  /// Get the minimum amount
  /// @param currencyFrom the currency from
  /// @param currencyTo the currency to
  /// @param isFeePaidByUser the is fee paid by user
  /// @return the minimum amount remote model
  /// 
  @GET('/min-amount')
  Future<MinimumAmountRemoteModel?> getMinimumAmount(
    @Path() String currencyFrom,
    @Path() String currencyTo, [
    @Path() bool isFeePaidByUser = true,
  ]);

  /// Create a paiement.
  /// @param createPaiementBody the create paiement body
  /// @return the paiement remote model
  /// 
  @POST('/payment')
  Future<PaiementRemoteModel?> createPaiement(
    @Body() CreatePaiementBody createPaiementBody,
  );
}
