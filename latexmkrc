# Configure latexmk to keep build artifacts out of the source directory.
$aux_dir = 'build';
$out_dir = 'build';

# Ensure the build directory exists before compilation begins.
use File::Path qw(make_path);
make_path($aux_dir) unless -d $aux_dir;
make_path($out_dir) unless -d $out_dir;

# Use XeLaTeX so fontspec works without manual flags.
$pdflatex = 'xelatex %O %S';
$pdf_mode = 1;
