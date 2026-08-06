# latexmk-Konfiguration für das Glossar (glossaries-Paket)
# sorgt dafür, dass latexmk "makeglossaries" automatisch ausführt
# (alphabetische Sortierung und Generierung der .gls-Datei)

add_cus_dep('glo', 'gls', 0, 'makeglossaries');

sub makeglossaries {
    my ($base_name, $path) = fileparse($_[0]);
    pushd $path;
    my $return = system 'makeglossaries', $base_name;
    popd;
    return $return;
}

$clean_ext .= ' glo gls glg ist';
