{
  empty = {
    plugins.cheatsheet.enable = true;
  };

  defaults = {
    plugins.cheatsheet = {
      enable = true;
      settings = {
        bundled_cheatsheets = true;
        plugin_cheatsheets = true;
      };
    };
  };
}
