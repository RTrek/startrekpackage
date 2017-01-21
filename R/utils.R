# utils
return_random_sentance <- function(name){
    vec <- startrek::TNGvoices$text[startrek::TNGvoices$who == name]
    #len_voices <- seq_along(vec)

    output <- sample(vec,size = 1)
    output
}
