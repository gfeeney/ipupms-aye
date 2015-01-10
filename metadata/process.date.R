process.date <- function(dstring) {
  dstring <- gsub("*", "", dstring, fixed=TRUE)         # Remove "*"
  date <- rep(NA, length=length(dstring))               # Initialize output
  
  
  cs <- dstring == "5-05 to 2-06"                       # SPECIAL FOR COLOMBIA 2005
  (1:length(cs))[cs]                                    # metadata[47, ]
  date[cs] <- "2005-09-26"                              # Assign value
    # t1 <- 2005 + (31 + 28 + 31 + 30 + 15)/365         # t1=2005.370
    # t2 <- 2006 + (31 + 6)/365                         # t2=2006.101
    # (t1 + t2)/2 -> 2005.736 which converts to 26-Sep-2005
  
  
  cs <- dstring == "01/02-04/08"                        # SPECIAL FOR FRANCE 2006
  all(!is.na(cs))                                       #
  (1:length(cs))[cs]                                    # metadata[79, ]
  date[cs] <- NA                                        #

  
  cs <- substr(dstring, 1, 3) == "N/A"                  # Replace "N/A" by NA in dstring
  dstring[cs] <- NA                                     #
  cs <- substr(dstring, 1, 3) == "N.A."                 # Replace "N.A." by NA in dstring
  dstring[cs] <- NA                                     #
  cs <- substr(dstring, 1, 3) == "varies"               # Replace "varies" by NA in dstring
  dstring[cs] <- NA                                     #
  
  
  cs <- substr(dstring, 3, 3) == "-" &                  # "01-83 to 12-83" pattern  
    substr(dstring, 6, 6) == " " &
    !is.na(dstring)
  
  
  cs <- nchar(dstring) == 19 &                          # dstring of form "2001-09-11 00:00:00" nchar=19
        !is.na(dstring) 
  date[cs] <- substr(dstring[cs], 1, 10)                #
  
  
  year.from.year2 <- function(yr2) {                    # Function for year2 -> year
    yr  <- yr2                                          #
    c20th <- yr2 < 15                                   #
    yr[c20th] <- paste("20", yr2[c20th] , sep="")       #
    c19th <- yr2 >= 15                                  #
    yr[c19th] <- paste("19", yr2[c19th], sep="")        #
    yr                                                  #
  }                                                     #

  
  cs <- substr(dstring, 3, 3) == "-" &                  # dstring of form "dd-mm-yy" 
        substr(dstring, 6, 6) == "-" &                  #
        !is.na(dstring)                                 #
  day   <- substr(dstring[cs], 1, 2)                    #
  month <- substr(dstring[cs], 4, 5)                    #
  year2 <- substr(dstring[cs], 7,8)                     #
  year <- year.from.year2(year2)                        # 
  date[cs] <- paste(year, month, day, sep="-")          # END
  
  
  leadingzero <- function(x) {                          # Function to prepend leading zero
    y <- x
    cs <- x[nchar(x) == 1]
    y[cs] <- formatC(x[cs], width=2, flag="0")
  }
  
  
  cs <- substr(dstring, 3, 3) == "-" &                  # dstring of form "dd-m-yy" 
        substr(dstring, 5, 5) == "-" &
        !is.na(dstring)
  day <- substr(dstring[cs], 1, 2)
  month <- leadingzero(substr(dstring[cs], 4, 4))
  year2 <- substr(dstring[cs], 6, 7)
  year <- year.from.year2(year2)
  date[cs] <- paste(year, month, day, sep="-")          # END
  
  
  cs <- substr(dstring, 3, 3) == "/" &                  # dd/dd-mm-yy
        !is.na(dstring)  
  day   <- substr(dstring[cs], 1, 2)
  month <- substr(dstring[cs], 7, 8)
  year2 <- substr(dstring[cs], 10, 11)
  year <- year.from.year2(year2)
  date[cs] <- paste(year, month, day, sep="-")
  
  
  cs <- substr(dstring, 2, 2) == "/" &                  # d/dd-mm-yy
        !is.na(dstring)
  day   <- leadingzero(substr(dstring[cs], 1, 1))
  month <- substr(dstring[cs], 6, 7)
  year2 <- substr(dstring[cs], 9, 10)
  year <- year.from.year2(year2)
  date[cs] <- paste(year, month, day, sep="-")  
  
  
  cs <- substr(dstring, 2, 2) == "/" &                  # d/dd-m-yy
        !is.na(dstring)
  day   <- leadingzero(substr(dstring[cs], 1, 1))
  month <- leadingzero(substr(dstring[cs], 6, 6))
  year2 <- substr(dstring[cs], 8, 9)
  year <- year.from.year2(year2)
  date[cs] <- paste(year, month, day, sep="-")  
  

  date                                                # Return result
}
