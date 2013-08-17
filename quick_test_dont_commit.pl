use strict;
use warnings;

use CSS::SpriteMaker;

my $SM = CSS::SpriteMaker->new();

# $SM->make_sprite(
#     source_dir => 'sample_icons',
#     target_file => 'packed.png',
#     layout_name => 'Packed'
# );
# 
# $SM->make_sprite(
#     source_dir => 'sample_icons',
#     target_file => 'directory_based.png',
#     layout => {
#         name => 'DirectoryBased',
#     }
# );

$SM->make_sprite(
    source_dir => 'sample_icons',
    target_file => 'fixed_dimension.png',
    layout => {
        name => 'FixedDimension',
        options => {
            'dimension' => 'vertical',
            'n' => 2,
        }
    }
);
