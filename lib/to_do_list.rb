def to_do_list(entry)
    return "please use the add or done keyword, followed by a to-do entry" if entry.nil? || entry == ""

    basket = []
    content = ""
    basket << entry[4,20]
    basket.each_with_index {|phrase,index|
    content = "#{index+1}. #{phrase}"
  }
    content
end
