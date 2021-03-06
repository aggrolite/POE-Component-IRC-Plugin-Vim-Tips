# NAME

POE::Component::IRC::Plugin::WWW::Vim::Tips - IRC plugin to fetch Vim tips



# SYNOPSIS

    use strict;
    use warnings;

    use POE qw(Component::IRC  Component::IRC::Plugin::WWW::Vim::Tips);

    my $irc = POE::Component::IRC->spawn(
        nick    => 'nickname',
        server  => 'irc.freenode.net',
        port    => 6667,
        ircname => 'ircname',
    );

    POE::Session->create(package_states => [main => [qw(_start irc_001)]]);

    $poe_kernel->run;

    sub _start {
        $irc->yield(register => 'all');

        $irc->plugin_add('Vim-Tips' => POE::Component::IRC::Plugin::WWW::Vim::Tips->new);

        $irc->yield(connect => {});
    }

    sub irc_001 {
        $irc->yield(join => '#channel');
    }

# DESCRIPTION

type !vimtip or !vimtips to get a random Vim tip, currenly fetched from [http://twitter.com/vimtips](http://twitter.com/vimtips)

here is a cool one-liner if you just want the Vim tip:

    perl -Ilib -MPOE::Component::IRC::Plugin::WWW::Vim::Tips
         -le 'print POE::Component::IRC::Plugin::WWW::Vim::Tips->new->_get_vim_tip'

# AUTHOR

Curtis Brandt, `<curtis at cpan.org>`

# BUGS

Please report any bugs or feature requests to `bug-poe-component-irc-plugin-vimtips at rt.cpan.org`, or through
the web interface at [http://rt.cpan.org/NoAuth/ReportBug.html?Queue=POE-Component-IRC-Plugin-WWW-Vim-Tips](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=POE-Component-IRC-Plugin-WWW-Vim-Tips).  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.







# SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc POE::Component::IRC::Plugin::WWW::Vim::Tips



You can also look for information at:

- RT: CPAN's request tracker (report bugs here)

    [http://rt.cpan.org/NoAuth/Bugs.html?Dist=POE-Component-IRC-Plugin-WWW-Vim-Tips](http://rt.cpan.org/NoAuth/Bugs.html?Dist=POE-Component-IRC-Plugin-WWW-Vim-Tips)

- AnnoCPAN: Annotated CPAN documentation

    [http://annocpan.org/dist/POE-Component-IRC-Plugin-WWW-Vim-Tips](http://annocpan.org/dist/POE-Component-IRC-Plugin-WWW-Vim-Tips)

- CPAN Ratings

    [http://cpanratings.perl.org/d/POE-Component-IRC-Plugin-WWW-Vim-Tips](http://cpanratings.perl.org/d/POE-Component-IRC-Plugin-WWW-Vim-Tips)

- Search CPAN

    [http://search.cpan.org/dist/POE-Component-IRC-Plugin-WWW-Vim-Tips/](http://search.cpan.org/dist/POE-Component-IRC-Plugin-WWW-Vim-Tips/)



# ACKNOWLEDGEMENTS

Thanks to Graham Barr for guidance in my Perl work



# LICENSE AND COPYRIGHT

Copyright 2013 Curtis Brandt.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.
