# utils
return_random_sentance <- function(name){
    vec <- TNGvoices$text[TNGvoices$who == name]
    #len_voices <- seq_along(vec)

    output <- sample(vec,size = 1)
    output
}
