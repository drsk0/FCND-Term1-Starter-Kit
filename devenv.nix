{ pkgs, ... }:

{
  # https://devenv.sh/basics/
  env.GREET = "devenv";

  # https://devenv.sh/packages/
  packages = [pkgs.python311Packages.pip 
              pkgs.python311Packages.black 

              pkgs.python311Packages.mathlibtools
              pkgs.python311Packages.jupyter
              pkgs.python311Packages.future
              pkgs.python311Packages.lxml
              pkgs.python311Packages.networkx
              pkgs.python311Packages.scikit-image
              pkgs.python311Packages.scipy
              pkgs.python311Packages.shapely
              pkgs.python311Packages.scikit-learn
              pkgs.python311Packages.msgpack
              pkgs.python311Packages.uvloop
              pkgs.python311Packages.pymavlink
              pkgs.python311Packages.joblib
              pkgs.python311Packages.threadpoolctl
              pkgs.python311Packages.atomicwrites
              pkgs.python311Packages.click
              pkgs.python311Packages.gitpython
              pkgs.python311Packages.imageio
              pkgs.python311Packages.pydot
              pkgs.python311Packages.pygithub
              pkgs.python311Packages.pyyaml
              pkgs.python311Packages.toml
              pkgs.python311Packages.deprecated
              pkgs.python311Packages.pyjwt
              pkgs.python311Packages.pynacl
              pkgs.python311Packages.python-dateutil
              pkgs.python311Packages.typing-extensions
              pkgs.python311Packages.tqdm
              pkgs.python311Packages.packaging
              pkgs.python311Packages.pywavelets
              pkgs.python311Packages.tifffile
              pkgs.python311Packages.lazy-loader
              pkgs.python311Packages.numpy
              ];

  # https://devenv.sh/scripts/
  scripts.hello.exec = "echo hello from $GREET";

  enterShell = ''
    hello
    git --version
  '';

  # https://devenv.sh/languages/
  languages.python = {
    enable = true;
    venv.enable = true;
    venv.requirements = ./requirements.txt; 
  };

  # https://devenv.sh/pre-commit-hooks/
  # pre-commit.hooks.shellcheck.enable = true;

  # https://devenv.sh/processes/
  # processes.ping.exec = "ping example.com";

  # See full reference at https://devenv.sh/reference/options/
}
