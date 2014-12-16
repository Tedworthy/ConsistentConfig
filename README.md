ConsistentConfig
================

Centralise all your configuration into one repository, and simply clone whenever
you need it.

A Common Scenario
-----------------

When SSHing into a new VM, opening a terminal on a new or unknown computer or
simply after a good old reformat, there are few things worse than realising that
your normal configuration files are nowhere to be found. Your bash prompt looks
bare and unloved, vim has forgotten what backspace means, and git has no idea
who you are.

The usual response to this situation is to crack out scp and religiously copy
all your config files over from another computer. But files are easily missed,
and you forget that for some reason OS X insists on your `.bashrc` being named
`.bash_profile`. There is a better way.

How it Works
------------

This repo stores the master copy of each configuration file that you use. For
example, your `.bashrc`, your `.vimrc` or your `.gitconfig`. You clone this repo
and populate these files with your favourite settings. You then commit them and
push back to GitHub or wherever takes your fancy.

Then, when posed with the scenario above you clone your repo from GitHub, and
call make. It copies all the configuration files into their correct places, and
your normal configuration is restored. All you need are git and make.

The only caveat with this is that you must edit your configuration using the git
repo's files, not those in your home directory - otherwise your centralised
configuration is not updated and can become inconsistent across machines.
