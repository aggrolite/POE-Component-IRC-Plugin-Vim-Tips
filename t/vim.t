use strict;
use warnings;

use Test::More;
use POE::Component::IRC::Plugin::WWW::Vim::Tips;

my $class = 'POE::Component::IRC::Plugin::WWW::Vim::Tips';

can_ok($class,qw(new _get_vim_tip));

my $vim = new_ok($class);
my $tip = $vim->_get_vim_tip;

like($tip, qr/\w/, 'The vim tip contains a \w character...we probably got something');

done_testing;
