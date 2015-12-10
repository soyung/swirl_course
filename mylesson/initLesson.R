# Code placed in this file fill be executed every time the
# lesson is started. Any variables created here will show up in
# the user's working directory and thus be accessible to them
# throughout the lesson.

.path_to_file <<- function(course, lesson, file_name){
  file.path(path.package('swirl'), 'Courses', course,
            lesson, file_name)
}



twix <- "WILLIE: I thought you said it was a Twix.

GEORGE: Oh, it was. But he claimed it was a 5th Avenue bar.

WILLIE: Maybe it was.

GEOR: Oh, no, no. Twix is the only candy with the cookie crunch.

WILLIE: What about the $100,000 bar?

G: No. Rice and caramel.

WILLIE: Nougat?

GG: No.

WILLIE: Positive?

GeorgE: Please."

