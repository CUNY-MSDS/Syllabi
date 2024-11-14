syllabi <- c(list.files('.', pattern = 'IS*'), 
			 list.files('.', pattern = 'DATA*'))

for(i in syllabi) {
	qmd_files <- list.files(i, pattern = "*.qmd")
	for(qmd in qmd_files) {
		# TODO: Render HTML files as well?
		pdf <- paste0(i, '/', tools::file_path_sans_ext(qmd), '.pdf')
		if(file.exists(pdf)) {
			unlink(pdf)
		}
		tryCatch({
			quarto::quarto_render(paste0(i, '/', qmd), output_format = 'pdf')
		}, error = function(e) { 
			print(paste0('Error rendering ', qmd)) 
		})
	}
}

rmarkdown::render('README.Rmd', output_format = 'github_document')
