require_relative "../ennMethods.rb"



RSpec.describe Enumerable do
     describe "my_each" do
        it "checks my_each" do
        my_array = [1,2,5,4,6].my_each {|x|  x}
        array = [1,2,5,4,6].each {|x| x}
        expect(my_array).to eql(array)
        end
    end

    describe "my_each_with_index" do
        it "checks my_array == array" do
        my_array = [1,2,5,4,6].my_each_with_index {|x,y|  x}
        array = [1,2,5,4,6].each_with_index {|x,y| x}
        expect(my_array).to eql(array)
        end
        it "checks my_array == array" do
            my_array = [1,2,5,4,6].my_each_with_index {|x,y|  x > y}
            array = [1,2,5,4,6].each_with_index {|x,y| x > y}
            expect(my_array).to eql(array)
            end
    end

    describe "my_select" do
        it "checks my_select" do
        my_array = [1,2,5,4,6].my_select {|x|  x < 3}
        array = [1,2,5,4,6].select {|x| x < 3}
        expect(my_array).to eql(array)
        end
        it "checks my_select" do
            my_array = ["hi","hello"].my_select{|x| x == "hi"}
            array = ["hi","hello"].select{|x| x == "hi"}
            expect(my_array).to eql(array)
            end
    end

    describe "my_all?" do
        it "checks my_all?" do
        my_array = [1,2,5,4,6].my_all? {|x|  x > 0}
        array = [1,2,5,4,6].all? {|x| x > 0}
        expect(my_array).to eql(array)
        end
        it "checks my_all?" do
            my_array = [true,false,true].my_all?
            array = [true,false,true].all?
            expect(my_array).to eql(array)
            end
    end

    describe "my_any?" do
        it "checks my_any?" do
        my_array = [1,2,5,4,6].my_any? {|x|  x > 0}
        array = [1,2,5,4,6].any? {|x| x > 0}
        expect(my_array).to eql(array)
        end
        it "checks my_any?" do
            my_array = [true,false,true].my_any?
            array = [true,false,true].any?
            expect(my_array).to eql(array)
            end
    end

    describe "my_none?" do
        it "checks my_none?" do
        my_array = [1,2,5,4,6].my_none? {|x|  x > 0}
        array = [1,2,5,4,6].my_none? {|x| x > 0}
        expect(my_array).to eql(array)
        end
        it "checks my_none?" do
            my_array = [true,false,true].my_none?
            array = [true,false,true].my_none?
            expect(my_array).to eql(array)
            end
    end

    describe "my_count" do
       it "checks my_count" do
       my_array = [1,2,5,4,6].my_count {|x|  x>2}
       array = [1,2,5,4,6].count {|x| x>2}
       expect(my_array).to eql(array)
       end
   end

   describe "my_map" do
     before do
       @proc = Proc.new {|x| x > 2}
     end

     describe "my_map_v1" do
       it "checks my_map_v1 (only blocks)" do
       my_array = [1,2,5,4,6].my_map_v1 {|x|  x>2}
       array = [1,2,5,4,6].map {|x| x>2}
       expect(my_array).to eql(array)
       end
     end
     describe "my_map_v2" do
       it "checks my_map_v2 (blocks)" do
       my_array = [1,2,5,4,6].my_map_v2 {|x|  x>2}
       array = [1,2,5,4,6].map {|x| x>2}
       expect(my_array).to eql(array)
       end

       it "checks my_map_v2 (procs)" do
       my_array = [1,2,5,4,6].my_map_v2(@proc)
       array = [1,2,5,4,6].map {|x| x>2}
       expect(my_array).to eql(array)
       end
     end
  end

  describe "my_inject" do
    it "checks my_inject" do
    my_result = [1,2,5,4,6].my_inject {|result, element| result + element }
    result = [1,2,5,4,6].inject {|result, element| result + element}
    expect(my_result).to eql(result)
    end
   end

   describe "my_multiply_els" do
    it "checks my_inject" do
    my_result = multiply_els([1,2,3,4,6])
    result = [1,2,3,4,6].inject {|result,element| result * element}
    expect(my_result).to eql(result)
    end
   end

end
