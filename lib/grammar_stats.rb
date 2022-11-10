class GrammarStats
    def initialize
      # ...
      @pass_count = 0
      @fail_count = 0
      @counter = 0
    end

    def check(text) # text is a string
      # Returns true or false depending on whether the text begins with a capital
      # letter and ends with a sentence-ending punctuation mark.

      @counter += 1

      letters = text.split("")
      first_char = letters[0]
      last_char = letters[-1]

      punctuation = [".","!","?"]

      if first_char == first_char.upcase && punctuation.include?(last_char)
        @pass_count += 1
        return true
      else
        @fail_count +=1
        return false
      end

    end

    def percentage_good
      # Returns as an integer the percentage of texts checked so
      # far that passed the check defined in the `check` method.
      # The number 55 represents 55%.

      if @fail_count == 0
        return 100
      end

      overall = (@pass_count.to_f / @counter) * 100
      return overall

    end
  end
