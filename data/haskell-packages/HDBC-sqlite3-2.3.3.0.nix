{ cabal, HDBC, mtl, sqlite, utf8-string }:

cabal.mkDerivation (self: {
  pname = "HDBC-sqlite3";
  version = "2.3.3.0";
  sha256 = "11765nsncgyv9j6r5wpziqyhy0lxrmqbhgricbdx0c788ky75y92";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [ HDBC mtl utf8-string ];
  extraLibraries = [ sqlite ];
  doCheck = false;
  meta = {
    homepage = "http://software.complete.org/hdbc-sqlite3";
    description = "Sqlite v3 driver for HDBC";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})