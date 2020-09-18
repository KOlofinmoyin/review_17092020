class ToDoList
attr_reader :entry

  def initialize
    @list_basket = []
    @content = ""
  end

  def basket(entry)
    return "Please use the add or done keyword, followed by a to-do entry" if entry.nil? || entry == ""

    if entry.include?('add')
      add_to_do_entry(entry)
      @content
    elsif entry.include?('done') && @list_basket.size == 1
      complete_to_do_entry(entry)
      @content = "You don't have any current to-do list entries."
    elsif entry.include?('done')
      complete_to_do_entry(entry)
      @content
    else
      @content = 0
    end

  end

  private

  def add_to_do_entry(entry)
    @list_basket << entry[4,20]
    @list_basket.each_with_index {|phrase,index|
      @content = "#{index+1}. #{phrase}"
    }
  end

  def complete_to_do_entry(entry)
    outtake = entry.split(" ")
    index = outtake.last.to_i
    @list_basket.delete_at(index-1)
    @list_basket.each_with_index {|phrase,index|
      @content = "#{index+1}. #{phrase}"
    }
  end
end
