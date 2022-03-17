{ src ? ./.
, lib, stdenv, darwin
, cmake, ninja
}:
stdenv.mkDerivation {
  name = "mkpsxiso";
  inherit src;

  nativeBuildInputs = [
    cmake
    ninja
  ];

  cmakeFlags = [
    "-DCMAKE_BUILD_TYPE=Release"
  ];
}
