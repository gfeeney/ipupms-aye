script <- c("cd c:", "ls")

script <- c("cmd.exe \"C:\\Program Files (x86)\\Git\\bin\\sh.exe ls\"")

system("cmd.exe script", intern=TRUE)

system("ls \"C:\\Program Files (x86)\\Git\\bin\\sh.exe ls\" ", intern=TRUE)

system("Program Files (x86)\\Git\\bin\\sh.exe echo"r intern=TRUE)

getwd()
script.bat <- "ls \"C:/Program Files (x86)/Git/bin/\""
system(script.bat, intern=TRUE)
