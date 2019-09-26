require_relative 'printer_module'

class Array
    include Printer
end
class String
    include Printer
end
[1,2,3].print_each_element
"Hello".print_each_element