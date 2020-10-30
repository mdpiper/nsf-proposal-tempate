# Generate file with list of \nocite references.
system("bash nocite.sh");

# Remove intermediate files, including those from BibTeX.
$bibtex_use = 2;
system("rm rfp.aux");
