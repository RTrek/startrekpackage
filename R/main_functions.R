## main functions

#' Return a phrase that Picard uttered
#'
#' Be as eloquent as our favorite archaeologist, diplomat and
#' decorated Starfleet officer Jean-Luc Picard, or as we
#' tend to say "JLP". The startrek package does not help
#' you in becoming a Starfleet officer, or archaeologist
#' for that matter. But perhaps you will use the same
#' phrasing when you order your Tea Earl Grey.
#' As Picard once said : "Darmok and Jalad... at Tanagra".
#'
#' @return a phrase
#' @export
#' @aliases JPL Jeanluc
#' @family Darmok
#' @examples
#' Picard()
Picard <- function(){
    return_random_sentance("PICARD")
}
#' Talk like Commander Beverly Cheryl Crusher, MD, (née Howard)
#'
#' Talk with the sensible and kind insight that
#' a Chief Medical Officer on a starship develops.
#'
#' @return a phrase
#' @export
#' @aliases "Dr. Crusher"
#' @inheritParams Picard
#' @family Darmok
Beverly <- function(){
    return_random_sentance("BEVERLY")
}

#' Talk like Commander Data
#'
#' Like an Amazon Echo in clothes, but a fully functional
#' one if we have to believe Yara. This function comes
#' with inspirational sentances like: " Deck seventeen.",
#' or " Captain. There are just in the Federation,
#' eighty-one different variations of signing."
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Data()
Data <- function(){
    return_random_sentance("DATA")
}

#' Speak like Geordi
#'
#' Truly man with a vision. Geordi can
#' see in many frequencies. Expect a lot
#' of technobabble and a few creepy romance words.
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Geordi()
Geordi <- function(){
    return_random_sentance("GEORDI")
}

#' Speak Like Guinan
#'
#' A barkeeper with an enourmous gun
#' and lots of huge hats. A being outside
#' of time and incredibly wise.
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Guinan()
Guinan <- function(){
    return_random_sentance("GUINAN")
}

#' Computer voice
#'
#' Always ready to tell us about schip problems
#' or anything really. The Siri of the 24th century,
#' but you know, working. Almost never misanderstanding you.
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Guinan()
Computer <- function(){
    return_random_sentance("COMPUTER VOICE")
}

#' Talk like Pulaski
#'
#' Rough around the edges, probably an alcoholic
#' but a good Chief Medical Officer in absence of
#' Beverly. Also slightly racist towards Data
#'
#' @seealso Beverly Data
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Pulaski()
Pulaski <- function(){
    return_random_sentance("PULASKI")
}

#' "Q"
#'
#' Incredibly annoying character.
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Q()
Q <- function(){
    return_random_sentance("Q")
}

#' William (Will) "Number One" Riker
#'
#' The original leaning man. Riker has a tendency
#' to solve diplomatic disputes by sleeping with
#' anyone around. The man, the legend.
#'
#' @aliases "Number One" Will
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Riker()
Riker <- function(){
    return_random_sentance("RIKER")
}

#' Troi
#'
#' An empath, Bezoid? Anyway, she can say
#' inspirational stuff such as:
#' " What the future holds.
#' No one can know.
#' But forward we look And Forward you go..."
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Troi()
Troi <- function(){
    return_random_sentance("TROI")
}

#' The boy
#'
#' Son of Beverly, eager to work. A warpdrive genius.
#' Incredibly annoying.
#'
#' @seealso Beverly
#' @aliases "the boy" "young wesley"
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Wesley()
Wesley <- function(){
    return_random_sentance("WESLEY")
}

#'@rdname Wesley
the_boy <- function(){
    Wesley()
}

#' Leutenant Commander Worf
#'
#' The man, the Klingon, has honor
#' has the metal thingy around him.
#' Killer chef with a Bathleth.
#' Worst security officer on the show, I mean
#' really how many times has the Enterprise been
#' taken over? Come on!
#'
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Worf()
Worf <- function(){
    return_random_sentance("WORF")
}


#' Dathon
#'
#' The enigmatic Tamarians also known as
#' the Children of Tama are called "incomprehensible.
#' Although meetings with this species has not lead
#' to conflicts communications was never possible.
#' Dathon, the chief of this folk, speaks in riddles.
#' "Shaka. When the walls fell", "Temba. His arms wide."
#'
#' @aliases Darmok Jalad
#' @return a phrase
#' @export
#' @family Darmok
#' @inheritParams Picard
#' @examples
#' Dathon()
Dathon <- function(){
    return_random_sentance("DATHON")
}

#' @rdname Dathon
Darmok <- function(){
    Dathon()
}



#' Call a random phrase from Q, Worf, Wesley, Picard, Data or Guinan
#'
#' Usefull if you want a phrase at the end of a long process.
#' @export
#' @examples
#' random_tng_character()
random_tng_character <- function(){
    number <- sample(letters[1:6],size = 1)
    out <- switch(number,
           a = Q(),
           b = Worf(),
           c = Wesley(),
           d = Picard(),
           e = Data(),
           f = Guinan()
    )
    who <- switch(number,
                  a = "Q (annoyingly):",
                  b = "Worf:",
                  c = "Wesley:",
                  d = "Picard:",
                  e = "Data:",
                  f = "Guinan:")
    paste(who, out, collapse = " ")
}
