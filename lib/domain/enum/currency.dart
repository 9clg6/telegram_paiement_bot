/// The currency enum.
///
enum Currency {
  /// The litecoin (ltc) currency.
  ltc('ltc'),

  /// The ripple (xrp) currency.
  xrp('xrp'),

  /// The solana (sol) currency.
  sol('sol');

  /// Constructor of the Currency enum.
  /// @param value The value of the currency.
  /// 
  const Currency(this.value);

  /// Get the value of the currency.
  final String value;
}
