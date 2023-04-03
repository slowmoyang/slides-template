use File::Spec;
ensure_path( 'TEXINPUTS', File::Spec->rel2abs('./texmf/') );
