#use 5.008;
use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.

WriteMakefile(
    'NAME'			=> 'Filesys::Virtual::Async::Plain',
    'VERSION_FROM'	=> 'Plain.pm', # finds $VERSION
    'PREREQ_PM'		=> {
        'Filesys::Virtual::Async' => '0.01',
        'IO::AIO'                 => undef,
    },
	'dist'         => {
		'SUFFIX'       => '.gz',
		'DIST_DEFAULT' => 'all tardist',
		'COMPRESS'     => 'gzip -9vf',
	},
);
