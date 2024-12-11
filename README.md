[![Actions Status](https://github.com/raku-community-modules/Acme-Meow/actions/workflows/linux.yml/badge.svg)](https://github.com/raku-community-modules/Acme-Meow/actions) [![Actions Status](https://github.com/raku-community-modules/Acme-Meow/actions/workflows/macos.yml/badge.svg)](https://github.com/raku-community-modules/Acme-Meow/actions) [![Actions Status](https://github.com/raku-community-modules/Acme-Meow/actions/workflows/windows.yml/badge.svg)](https://github.com/raku-community-modules/Acme-Meow/actions)

NAME
====

Acme::Meow - The kitty you always wanted, now in Raku

SYNOPSIS
========

```raku
use Acme::Meow;

my $kitty = Acme::Meow.new;
$kitty.pet;
$kitty.feed("milk");
```

DESCRIPTION
===========

This is a Raku port of Perl's [Acme::Meow](https://metacpan.org/pod/Acme::Meow).

It's not a verbatim port. Some things have changed, and there is more to come. Stay tuned for more fun :)

class Acme::Meow
----------------

Our cute, artificial cat (perfect for allergics!)

### method pet

```raku
method pet() returns Mu
```

pet our kitty

### method feed

```raku
method feed(
    $food?
) returns Mu
```

feed our kitty

### method is-sleeping

```raku
method is-sleeping() returns Mu
```

is our kitty sleeping?

### method nip

```raku
method nip() returns Mu
```

handy method to feed your cat with a nip

### method milk

```raku
method milk() returns Mu
```

another one to give some milk to our kitty

AUTHOR
======

Tadeusz Sośnierz

COPYRIGHT AND LICENSE
=====================

Copyright 2010 - 2017 Tadeusz Sośnierz

Copyright 2024 Raku Community

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

