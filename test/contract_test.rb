require 'test_helper'

class ContractTest < ActiveSupport::TestCase
   
   def setup
      @contract = Contract.new(desc: " ", region: "South", value: "200000", saving: "50000", supplier: "schein", contact: "Shane Carr", dept: "msp", download: "here", validfrom: "", validto: "")
    end
    
    test "contract should be valid" do
       assert @contract.valid? 
    end
    
     test "desc should be present" do
       @contract.desc = " "
       assert_not @contract.valid?
    end
    
    test "desc should be too long" do
       @contract.desc = "a" * 101
       assert_not @contract.valid?
    end
    
     test "desc should be too short" do
       @contract.desc = "aaaa"
       assert_not @contract.valid?
    end
    
end