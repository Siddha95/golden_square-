=begin
1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.
2. Design the Method Signature

Include the name of the method, its parameters, return value, and side effects.

# EXAMPLE

# `extract_upper` extracts uppercase words from a string
# improve_grammar check if a text starts with capital letter and ends with a sentence-ending punctuation mark.
improve_grammar
#uppercase_words = extract_uppercase(mixed_words)
input_text = improve_grammar(text)

#mixed_words: a string (e.g. "hello WORLD")
text : a string

#uppercase_words: a list of strings (e.g. ["WORLD"])
input_text: a list of strings

# The method doesn't print anything or have any other side-effects
3. Create Examples as Tests

Make a list of examples of what the method will take and return.

# EXAMPLE

improve_grammar("hello WORLD") => false
improve_grammar("HELLO WORLD") => false
improve_grammar("hello world") => false
improve_grammar("hello WoRLD") => false
improve_grammar("hello WORLD!") => false
improve_grammar("Hello world!") => true
improve_grammar("") => "There are no words here!"
improve_grammar(nil) throws an error
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.


=end

def improve_grammar(text)

  def check_upcase(char)
    if char == char.upcase
      return true
    else
      return false
    end
  end

  def check_punctuation(char)
    if char == "?" || char == "!" || char == "."
      return true
    else
      return false
    end
  end

   if (check_upcase(text[0]) == true) && (check_punctuation(text[-1]) == true)
     return true
   else
     return false
   end
end
