# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

load("./tweets.Rdata")
text <- tweets$text

.path_to_file <<- function(course, lesson, file_name){
  file.path(path.package('swirl'), 'Courses', course,
            lesson, file_name)
}

get_score <- function(corpus){
  
  # make the corpus into a matrix (each row = each text, each colum = each word)
  dtm <-DocumentTermMatrix(corpus) 
  
  # test if each word belongs to the list of positive/negative terms
  pos <- Terms(dtm) %in% terms_in_General_Inquirer_categories("Positiv") 
  neg <- Terms(dtm) %in% terms_in_General_Inquirer_categories("Negativ")
  
  # get the number of positive/negative terms in each row
  score_pos <- row_sums(dtm[, pos])
  score_neg <- row_sums(dtm[, neg])
  
  # get the number of rows(texts) which have more positive terms than negative terms
  net_score <- sum((score_pos-score_neg)>0)
  
  # get the final score 
  score <- net_score /length(score_pos-score_neg)
  
  # print the final score
  print(score)
  
}
