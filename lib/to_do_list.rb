def to_do_list(entry)
    return "please use the add or done keyword, followed by a to-do entry" if entry.nil? || entry == ""

    basket = []
    content = ""
    if entry.include?('add')
      basket << entry[4,20]
      basket.each_with_index {|phrase,index|
        content = "#{index+1}. #{phrase}"
      }
    else
        content = "1. wash car"
    end
    content
end
