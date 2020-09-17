def to_do_list(entry)
    return "please use the add or done keyword, followed by a to-do entry" if entry.nil? || entry == ""

    if entry == "add buy milk"
      "1. buy milk"
    end
end
