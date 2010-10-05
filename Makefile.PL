use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    'NAME'		=> 'Text::Phonetic::TransMetaphone',
    'VERSION_FROM'	=> 'TransMetaphone.pm', # finds $VERSION
    'PREREQ_PM'		=> {Text::Phonetic => 2.03, Text::TransMetaphone => 0.07}, # e.g., Module::Name => 1.1
    ($] >= 5.005 ? (
      ABSTRACT_FROM => 'TransMetaphone.pm', 
      AUTHOR     => 'Stefan Gipper <stefanos@cpan.org>',
    ) : ()),
);
