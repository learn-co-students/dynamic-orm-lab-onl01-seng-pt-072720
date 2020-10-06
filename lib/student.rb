require_relative "../config/environment.rb"
require 'active_support/inflector'
require 'interactive_record.rb'
require 'pry'

class Student < InteractiveRecord

    self.column_names.each do |col_name| #Why don't I have to name the method? Is "attr_accessor" a keyword? Is that why it doesn't have an "=" afterwards?
        attr_accessor col_name.to_sym
        # binding.pry
    end

end
