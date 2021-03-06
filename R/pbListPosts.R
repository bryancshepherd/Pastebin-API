# code to list posts by a specific user
# api_dev_key and session_key must be previously defined

pbListPosts <- function(session_key, api_dev_key, user = "beepbeepbeep", api_results_limit = 1000) {
  if(api_results_limit > 1000) stop("'api_results_limit' must be between 1 and 1000'")
  if(api_results_limit < 1) stop("'api_results_limit' must be between 1 and 1000'")

  postList <- as.character(postForm(
    uri = 'http://pastebin.com/api/api_post.php',
    api_user_name = user,
    api_dev_key = api_dev_key,
    api_user_key = session_key, # session key, from getUserKey()
    api_results_limit = api_results_limit,
    api_option = "list"
  ))
  # extract the paste IDs
  paste_key <- NA
  a2 <- strsplit(postList, "<paste>")
  for(i in 1:length(a2[[1]])){
    test.a <- regexpr("<paste_key>.*</paste_key>", a2[[1]][i])
    test.b <- regmatches(a2[[1]][i], test.a) 
    test.b <- sub("</paste_key>", "", test.b)
    paste_key <- c(paste_key, sub("<paste_key>", "", test.b))
  }
  paste_key[!is.na(paste_key)]
}
