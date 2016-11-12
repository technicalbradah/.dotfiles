package ${1:`!v expand('%:p:s@.*lib/@@:r:gs@/@::@')`};

use ${2:v5.14};
use warnings;

use Moose;
use namespace::autoclean;
${3:#}BEGIN {extends '${4:ParentClass}'};

$0
1;

__END__
