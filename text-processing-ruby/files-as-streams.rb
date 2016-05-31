# opening the file ourselves and
# treating the file as a stream with the
# each_line method
File.open("log-file") do |log_file|
    log_file.each_line do |request|
        if request.include?("127") then puts request end
    end
end


puts "Now using the foreach method..."

File.foreach("log-file") do |request|
    if request.include?("127") then puts request end
end

class ClassName
    def something
        
    end
end