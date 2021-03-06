{ kdeFramework, lib, ecm, kbookmarks, kcompletion
, kconfig, kconfigwidgets, ki18n, kiconthemes, kio, knotifications, kpackage
, kwidgetsaddons, libXcursor, qtx11extras
}:

kdeFramework {
  name = "frameworkintegration";
  meta = { maintainers = [ lib.maintainers.ttuegel ]; };
  nativeBuildInputs = [ ecm ];
  propagatedBuildInputs = [
    kbookmarks kcompletion kconfig kconfigwidgets ki18n kio kiconthemes
    knotifications kpackage kwidgetsaddons libXcursor qtx11extras
  ];
}
