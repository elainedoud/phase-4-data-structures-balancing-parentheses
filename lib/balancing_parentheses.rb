require_relative './stack'

def balancing_parentheses(str)
    stack = Stack.new

    str.chars.each do |c|
        if stack.peek == '(' && c == ')'
            stack.pop
        else 
            stack.push(c)
        end
    end
    stack.size
end

# your code here
# put the string into the stack
# determine if there is a ( , if there is a corresponding ) in the stack
# and vice versa
# keep count of any ( or ) does is not part of a pair