class ToDoList
attr_reader :entry, :list_basket

  def initialize
    @list_basket = []
    @content = ""
  end

  def basket(entry)
    return "Please use the add or done keyword, followed by a to-do entry" if entry.nil? || entry == ""

    if entry.include?('add')
      add_to_do_entry(entry)
    elsif entry.include?('done') && @list_basket.size == 1
      complete_to_do_entry(entry)
    elsif entry.include?('done')
      complete_to_do_entry(entry)
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
    @content
  end

  def complete_to_do_entry(entry)
    outtake = entry.split(" ")
    index = outtake.last.to_i
    @list_basket.delete_at(index-1)
    @list_basket.each_with_index {|phrase,index|
      @content = "#{index+1}. #{phrase}"
    }
    @list_basket.size < 1 ? @content = "You don't have any current to-do list entries." : @content
  end
end
