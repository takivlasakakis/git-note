
chapter_titles = [
"Strings, Numbers, Classes, and Objects",
"Class Hierarchies, Attributes, and Class Variables",
"Strings and Ranges",
"Arrays and Hashes",
"Loops and Iterators",
"Conditional Statements",
"Methods",
"Passing Arguments and Returning Values",
"Exception Handling",
"Blocks, Procs, and Lambdas",
"Symbols",
"Modules and Mixins",
"Files and IO",
"YAML",
"Marshal",
"Regular Expressions",
"Threads",
"Debugging and Testing",
"Ruby on Rails",
"Dynamic Programming"
]
p chapter_titles.length
i = 0
while i < chapter_titles.length
    # do stuff
    # puts chapter_titles[i]
    j = 0
    while j < chapter_titles[i].length
        # do stuff
        # puts chapter_titles[i][j]
        # if it's a comma delete it
        if chapter_titles[i][j] == ","
            chapter_titles[i] = ""
        elsif chapter_titles[i][j] == " "
            chapter_titles[i][j] = "-"
        elsif chapter_titles[i][j] == chapter_titles[i][j].upcase
            chapter_titles[i][j] = chapter_titles[i][j].downcase
        else
            # do nothing
        end
        j += 1
    end
    i += 1
end

for title in chapter_titles
    puts title
end
