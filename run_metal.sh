cat >template.cfg << EOL
SCHEME STDERR
MARKER CPG
EFFECT EFFECTSIZE_CORR
SEPARATOR TAB
STDERR SE_CORR
PVALUE PVALUE_CORR
@
OUTFILE METAANALYSIS_OUTPUT .tbl
ANALYZE HETEROGENEITY
QUIT
EOL

L=$(echo *tbl |sed 's/ /!PROCESS /g' | sed 's/^/PROCESS /')
sed "s/@/${L}/" template.cfg |sed 's/!/\n/g' > metal.cfg
metal metal.cfg

