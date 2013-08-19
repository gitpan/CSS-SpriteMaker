use strict;
use warnings;

use CSS::SpriteMaker;

my $SM = CSS::SpriteMaker->new(
    verbose => 1
);

$SM->compose_sprite (
    parts => [
        { source_dir => 'sample_icons',
          layout_name => 'Packed' 
        },
        {
            source_dir => 'sample_icons',
            layout => {
                name => 'Packed',
                options => {
                    'dimension' => 'horizontal',
                    'n' => 1,
                }
            }
        },
        {
            source_dir => 'sample_icons',
            layout => {
                name => 'Packed',
                options => {
                    'dimension' => 'vertical',
                    'n' => 1,
                }
            }
        }
    ],
    # the composing layout
    layout => {
        name => 'FixedDimension',
        options => {
            n => 2,
        }
    },
    target_file => 'composite.png',
);

$SM->print_css();

$SM->print_html();
