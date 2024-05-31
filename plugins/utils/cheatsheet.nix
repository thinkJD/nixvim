{
  lib,
  helpers,
  config,
  pkgs,
  ...
}:
helpers.neovim-plugin.mkNeovimPlugin config {
  name = "cheatsheet";
  originalName = "cheatsheet.nvim";
  defaultPackage = pkgs.vimPlugins.cheatsheet-nvim;

  maintainers = [ lib.maintainers.JdGeorgens ];

  # Optionally, explicitly declare some options. You don't have to.
  settingsOptions = {
    bundled_cheatsheets = helpers.defaultNullOpts.mkBool true ''
      Enable generic cheatsheets like default, unicode, nerd-fonts, etc
    '';

    plugin_cheatsheets = helpers.defaultNullOpts.mkBool true ''
      Enable plugin specific cheatsheets
    '';
  };

  # Optionally, provide an example for the `settings` option.
  settingsExample = {
    # TODO: Implement config table support and document it here
  };
}
