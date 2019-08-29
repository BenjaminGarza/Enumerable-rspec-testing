require "./ennMethods.rb"



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
    

end