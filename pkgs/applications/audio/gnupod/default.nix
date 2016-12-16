{ stdenv, fetchurl, perl, DigestSHA1, perlXMLParser, UnicodeString, MP3Info,
  DateTimeFormatDateParse }:

let version = "0.99.8";
in
  stdenv.mkDerivation rec {
    name = "gnupod-${version}";

    src = fetchurl {
      url = "http://download.savannah.gnu.org/releases/gnupod/${name}.tgz";
      sha256 = "0c9w7wfmhp5lpg22jvdk786yic1nmdn82p2zs3k54hz1laan4mmx";
    };

    # doCheck = true;

    buildInputs = [ perl DigestSHA1 perlXMLParser UnicodeString MP3Info
      DateTimeFormatDateParse ];

    meta = {
      description = "A command line program to manage iPods";
      longDescription = ''
        GNUpod is a collection of Perl-Scripts which allow you to use your
        iPod under GNU/Linux and many other Operating Systems with a useable
        Version of Perl 5 (+Modules).
      '';
      homepage = http://savannah.gnu.org/projects/gnupod/;
      license = stdenv.lib.licenses.gpl3Plus;
      maintainers = [ stdenv.lib.maintainers.eelco ];
      platforms = stdenv.lib.platforms.all;
    };
  }
