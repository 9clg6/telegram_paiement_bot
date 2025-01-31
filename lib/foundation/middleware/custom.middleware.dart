import 'package:televerse/televerse.dart';

/// TODO: Implement the custom middleware
class CustomMiddleware implements Middleware {
  /// Handle the middleware
  /// @param ctx the context
  /// @param next the next function
  ///
  @override
  Future<void> handle(
    Context ctx,
    NextFunction next,
  ) async {
    await next();
  }
}