class Class

  def attr_accessor_with_history(attr_name)
    attr_name = attr_name.to_s   # make sure it's a string
    attr_reader attr_name        # create the attribute's getter
    attr_reader attr_name+"_history" # create bar_history getter
    class_eval %Q{  #"YOUR CODE HERE, USE %Q FOR MULTILINE STRINGS"
      #Getter
      def #{attr_name}; @#{attr_name}; end
      
      #Setter
      def #{attr_name}= val
        #@#{attr_name}_history.is_nil? 
        @#{attr_name}_history ||= [nil] #Initialize to empty array, if it's first time else return existing array
        @#{attr_name}_history << val  #Append the value to the array

        #Set the val to the attribute
        @#{attr_name} = val
      end

      #History
      def #{attr_name}_history; @#{attr_name}_history; end
    }
  end
end
