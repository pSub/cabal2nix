{ cabal, blaze-builder, case-insensitive, hspec, QuickCheck, text }:

cabal.mkDerivation (self: {
  pname = "http-types";
  version = "0.8.0";
  sha256 = "14d1gzgwhinkwx3lmc6hvqj6ivjrvy4m6fm2walnyk1zv24zli75";
  buildDepends = [ blaze-builder case-insensitive text ];
  testDepends = [ blaze-builder hspec QuickCheck text ];
  doCheck = false;
  meta = {
    homepage = "https://github.com/aristidb/http-types";
    description = "Generic HTTP types for Haskell (for both client and server code)";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})