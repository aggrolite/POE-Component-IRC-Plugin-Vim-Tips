#!perl -T

use Test::More tests => 4;

BEGIN {
    use_ok( 'LWP::Simple' );
    use_ok( 'Mojo::JSON' );
    use_ok( 'POE::Component::IRC::Plugin' );
    use_ok( 'POE::Component::IRC::Plugin::WWW::Vim::Tips' );
}

diag( "Testing POE::Component::IRC::Plugin::WWW::Vim::Tips $POE::Component::IRC::Plugin::WWW::Vim::Tips::VERSION, Perl $], $^X" );
