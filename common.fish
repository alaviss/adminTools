# common.fish: contains helper functions for tools in adminTools
# This file is part of adminTools. It is subject to the license terms in the
# LICENSE file found in the top-level directory of this distribution
# No part of adminTools, including this file, may be copied, modified,
# propagated, or distributed except according to the terms contained in
# the LICENSE file.

if isatty
  set -g normal (set_color normal)
  set -g bold (set_color --bold)
  set -g blue (set_color --bold blue)
  set -g red (set_color --bold red)
  set -g green (set_color --bold green)
  set -g yellow (set_color --bold yellow)
end

function info
  if set -q argv
    set msg $argv[1]
    set -e argv[1]
    echo -e "$blue""::""$normal" "$bold""$msg""$normal" $argv
  end
end

function ok
  if set -q argv
    set msg $argv[1]
    set -e argv[1]
    echo -e "$green""::""$normal" "$bold""$msg""$normal" $argv
  end
end

function warn
  if set -q argv
    set msg $argv[1]
    set -e argv[1]
    echo -e "$yellow""warn:""$normal" "$bold""$msg""$normal" $argv
  end
end

function error
  if set -q argv
    echo -e "$red""error:""$normal" $argv
  end
end
