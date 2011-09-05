use ExtUtils::MakeMaker;

$collection = 'Perldata';
$module     = "lib/PNI/Node/$collection.pm";

WriteMakefile
  ABSTRACT_FROM => $module,
  AUTHOR        => 'G. Casati <fibo@cpan.org>',
  NAME          => "PNI-Node-$collection",
  PREREQ_PM     => { PNI => '0.19', },
  VERSION_FROM  => $module,

