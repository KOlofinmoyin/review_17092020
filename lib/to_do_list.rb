class ToDoList
attr_reader :entry

  def initialize
    @list_basket = []
    @content = ""
  end

  def basket(entry)
    return "please use the add or done keyword, followed by a to-do entry" if entry.nil? || entry == ""

    if entry.include?('add')
      @list_basket << entry[4,20]
      p @list_basket
      @list_basket.each_with_index {|phrase,index|
        @content = "#{index+1}. #{phrase}"
      }
      @content
    elsif entry.include?('done')
      outtake = entry.split(" ")
      index = outtake.last.to_i
      @list_basket.delete_at(index-1)
      @list_basket.each_with_index {|phrase,index|
        @content = "#{index+1}. #{phrase}"
      }
      @content
    else
      @content = 0
    end

  end
end
