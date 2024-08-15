{
  description = "build env";
  outputs = {self, nixpkgs} :
  let pkgs = (import nixpkgs {system = "x86_64-linux"; overlays = [];}); in
  {
    devShells.x86_64-linux.default = pkgs.mkShell {
      packages = [pkgs.texliveFull];
    };
  };
}
