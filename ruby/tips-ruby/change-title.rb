# use string methods and regular expression to change a title

title = "Strings,  Numbers,    Classes, and  Objects"
changed_title = title.squeeze.delete(",").gsub(/\s/,'-').downcase
p changed_title