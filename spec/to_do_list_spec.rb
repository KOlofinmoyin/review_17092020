require 'to_do_list'

describe ToDoList do
  let(:list) { described_class.new }

  describe '#basket' do
    it "takes '' and returns 'please use the add or done keyword, followed by a to-do entry'" do
      expect(list.basket("")).to eq "please use the add or done keyword, followed by a to-do entry"
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
  end
end
