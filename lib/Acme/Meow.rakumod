=begin pod

=head1 NAME

Acme::Meow - The kitty you always wanted, now in Raku

=head1 SYNOPSIS

=begin code :lang<raku>

use Acme::Meow;

my $kitty = Acme::Meow.new;
$kitty.pet;
$kitty.feed("milk");

=end code

=head1 DESCRIPTION

This is a Raku port of Perl's L<Acme::Meow|https://metacpan.org/pod/Acme::Meow>.

It's not a verbatim port. Some things have changed,
and there is more to come. Stay tuned for more fun :)

=end pod

#| Our cute, artificial cat (perfect for allergics!)
class Acme::Meow {

    has Numeric $!love = 0;
    has Str     $!fav = '';

    #| pet our kitty
    method pet() {
        $!love++;
        $!fav = <milk nip>.pick;
        say ~[self!kitty_status, <purr nuzzle meow>.pick,
            $!love > 15 ?? '<3' !! ''];
    }

    #| feed our kitty
    method feed($food?) {
        if self.is-sleeping {
            $!love += 0.25
        } else {
            $!love += 0.5
        }
        if $food.defined {
            if $food eq 'nip' {
                say ~[self!kitty_status, 'crunch']
            }
            elsif $food eq 'milk' {
                say ~[self!kitty_status, 'lap lap']
            }
        } else {
            say ~[self!kitty_status, ['crunch', 'lap lap', ''].pick]
        }
    }

    #| is our kitty sleeping?
    method is-sleeping() {
        False # cats sleep? They're just pretending.
              # They're watching you. All the time.
              # or TODO, if you prefer
    }

    #| handy method to feed your cat with a nip
    method nip() {
        self.feed: 'nip'
    }

    #| another one to give some milk to our kitty
    method milk() {
        self.feed: 'milk'
    }

    method !kitty_status {
        return 'zZzZ' if self.is-sleeping;
        $!love > 5 ?? '=^_^=' !! '=-_-='
    }
}

=begin pod

=head1 AUTHOR

Tadeusz Sośnierz

=head1 COPYRIGHT AND LICENSE

Copyright 2010 - 2017 Tadeusz Sośnierz

Copyright 2024 Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod

# vim: expandtab shiftwidth=4
