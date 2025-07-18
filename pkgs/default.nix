{
  pkgs,
  settings,
  ...
}: {
  # these will be overlayed in nixpkgs automatically.
  environment.systemPackages = with pkgs; [pokego];
  pokego = pkgs.callPackage ./pokego.nix {};
  sddm-astronaut = pkgs.callPackage ./sddm-themes/astronaut.nix {theme = settings.sddmTheme;};
}
