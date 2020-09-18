require 'to_do_list'

describe ToDoList do
  let(:list) { described_class.new }

  describe '#basket' do
    it "takes '' and returns 'Please use the add or done keyword, followed by a to-do entry'" do
      expect(list.basket("")).to eq "Please use the add or done keyword, followed by a to-do entry"
    end

    it "takes 'add buy milk' and returns '1. buy milk'" do
      expect(list.basket("add buy milk")).to eq "1. buy milk"
    end

    it "takes 'done 1' and returns '1. wash car'" do
      list.basket("add buy milk")
      list.basket("add wash car")
      expect(list.basket("done 1")).to eq "1. wash car"
    end

    it "takes 'done 2' and returns '1. buy milk'" do
      list.basket("add buy milk")
      list.basket("add wash car")
      expect(list.basket("done 2")).to eq "1. buy milk"
    end

    it "takes 'done 1' when only single entry on to_do_list and returns: 'You don't have any current to-do list entries.'" do
      list.basket("add buy milk")
      expect(list.basket("done 1")).to eq "You don't have any current to-do list entries."
      expect(list.list_basket).to be_empty
    end
  end
end
