\name{pbDeletePost}
\alias{pbDeletePost}
\title{Delete Pastebin posts}
\description{
  Delete Pastebin posts.
}
\usage{
  pbDeletePost(paste, session_key, api_dev_key)
}
\arguments{
  \item{paste}{a vector of paste IDs (such as can be generated using /code{pbListPosts()})}
  
  \item{session_key}{Session key, generated by /code{getUserKey}}
  
  \item{api_dev_key}{Development key for Pastebin API, from http://pastebin.com/api/}
}
\value{
  \item{output}{no output generated.}
}
\examples{
# generate a session key first
# user_name <- "your username"
# user_password <- "your password"
# dev_key <- "your dev key"

# session_key <- getUserKey(api_user_name = user_name, api_user_password = user_password, api_dev_key = dev_key) 
# a <- pbListPosts(session_key = session_key, user = user_name) # lists all of your posts
# pbDeletePost(a) # delete all posts
# pbListPosts(session_key = session_key, user = user_name) # no posts listed
}
