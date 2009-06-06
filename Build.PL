use Module::Build;
my $build = Module::Build->new(
    module_name        => 'Data::Pageset::Render',
    license            => 'perl',
    create_readme      => 1,
    create_makefile_pl => 'passthrough',
    requires           => {
        'Data::Pageset' => 1.04,
        ## 'HTML::Entities' => 0,
    },
    recommends => {
        Test::Kwalitee     => 0,
        Test::Perl::Critic => 0,
    },

    meta_merge => {
        resources => {
            bugtracker =>
              'http://rt.cpan.org/NoAuth/Bugs.html?Dist=Data-Pageset-Render',
            repository =>
              'http://github.com/mvgrimes/data-pageset-render/tree/master'
        }
    },
);

$build->create_build_script;

