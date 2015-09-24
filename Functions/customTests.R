# So swirl does not repeat execution of commands
# AUTO_DETECT_NEWVAR <- FALSE

# Returns TRUE if the user has calculated a value equal to that calculated by the given expression.
calculates_same_value <- function(expr){
  e <- get("e", parent.frame())
  # Calculate what the user should have done.
  eSnap <- cleanEnv(e$snapshot)
  val <- eval(parse(text=expr), eSnap)
  passed <- isTRUE(all.equal(val, e$val))
  if(!passed)e$delta <- list()
  return(passed)
}

notify <- function() {
  e <- get("e", parent.frame())
  if(e$val == "No") return(TRUE)
  
  good <- FALSE
  while(!good) {
    # Get info
    name <- readline_clean("What is your full name? ")
    address <- readline_clean("What is the email address of the person you'd like to notify? ")
    
    # Repeat back to them
    message("\nDoes everything look good?\n")
    message("Your name: ", name, "\n", "Send to: ", address)
    
    yn <- select.list(c("Yes", "No"), graphics = FALSE)
    if(yn == "Yes") good <- TRUE
  }
  
  # Get course and lesson names
  course_name <- attr(e$les, "course_name")
  lesson_name <- attr(e$les, "lesson_name")
  
  subject <- paste(name, "just completed", course_name, "-", lesson_name)
  body = ""
  
  # Send email
  swirl:::email(address, subject, body)
  
  hrule()
  message("I just tried to create a new email with the following info:\n")
  message("To: ", address)
  message("Subject: ", subject)
  message("Body: <empty>")
  
  message("\nIf it didn't work, you can send the same email manually.")
  hrule()
  
  # Return TRUE to satisfy swirl and return to course menu
  TRUE
}

readline_clean <- function(prompt = "") {
  wrapped <- strwrap(prompt, width = getOption("width") - 2)
  mes <- stringr::str_c("| ", wrapped, collapse = "\n")
  message(mes)
  readline()
}

hrule <- function() {
  message("\n", paste0(rep("#", getOption("width") - 2), collapse = ""), "\n")
}

test_func1 <- function() {
  try({
    func <- get('boring_function', globalenv())
    t1 <- identical(func(9), 9)
    t2 <- identical(func(4), 4)
    t3 <- identical(func(0), 0)
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func2 <- function() {
  try({
    func <- get('my_mean', globalenv())
    t1 <- identical(func(9), mean(9))
    t2 <- identical(func(1:10), mean(1:10))
    t3 <- identical(func(c(-5, -2, 4, 10)), mean(c(-5, -2, 4, 10)))
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func3 <- function() {
  try({
    func <- get('remainder', globalenv())
    t1 <- identical(func(9, 4), 9 %% 4)
    t2 <- identical(func(divisor = 5, num = 2), 2 %% 5)
    t3 <- identical(func(5), 5 %% 2)
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func4 <- function() {
  try({
    func <- get('evaluate', globalenv())
    t1 <- identical(func(sum, c(2, 4, 7)), 13)
    t2 <- identical(func(median, c(9, 200, 100)), 100)
    t3 <- identical(func(floor, 12.1), 12)
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func5 <- function() {
  try({
    func <- get('telegram', globalenv())
    t1 <- identical(func("Good", "morning"), "START Good morning STOP")
    t2 <- identical(func("hello", "there", "sir"), "START hello there sir STOP")
    t3 <- identical(func(), "START STOP")
    ok <- all(t1, t2, t3)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func6 <- function() {
  try({
    func <- get('mad_libs', globalenv())
    t1 <- identical(func(lugar = "Caracas", adjetivo = "sonrientes", sustantivo = "edificio"), "Noticias desde Caracas en la actualidad, donde los estudiantes sonrientes salieron a las calles en protesta por el nuevo edificio que se está instalando en el campus.")
    t2 <- identical(func(lugar = "Bogota", adjetivo = "hambrientos", sustantivo= "cafetín"), "Noticias desde Bogota en la actualidad, donde los estudiantes hambrientos salieron a las calles en protesta por el nuevo cafetín que se está instalando en el campus.")
    ok <- all(t1, t2)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}

test_func7 <- function() {
  try({
    func <- get('%p%', globalenv())
    t1 <- identical(func("Good", "job!"), "Good job!")
    t2 <- identical(func("one", func("two", "three")), "one two three")
    ok <- all(t1, t2)
  }, silent = TRUE)
  exists('ok') && isTRUE(ok)
}