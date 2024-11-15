program_learning_outcomes <- function(course_id, plo_file = '../common/PLOs.xlsx') {
	plo <- readxl::read_excel(plo_file, sheet = 'PLO')
	plo_mapping <- readxl::read_excel(plo_file, sheet = 'Mapping')
	plos_course <- plo_mapping[plo_mapping$Course == course_id,]
	text <- ''
	if(nrow(plos_course) > 0) {
		cols <- names(plos_course)[substr(names(plos_course), 1, 3) == 'PLO']
		plo_course <- cols[!is.na(plos_course[1,cols])]
		for(i in plo_course) {
			text <- paste0(text, "1. ", plo[plo$ID == i,]$Learning_Outcome, "\n")
		}
	} else {
		text <- "**Program learning outcomes could not be found for this course.**"
	}
	return(text)
}
