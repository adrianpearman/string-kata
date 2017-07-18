module StringCalculator

  # def self.add(string)
  #   if string == '' || string == "0"
  #     return 0
  #   else
  #     return string.to_i
  #   end
  # end

  def self.add(string)
    string.gsub!(/\n/,",")
    return string.to_i unless string.include? ","
    digit_strings = string.split(",")
    digit_strings.inject(0){|t,s| t + s.to_i }
  end

  # ...and here when the above becomes too complex.

end


# TDD - Test Driven Development
# BDD - Behaviour Driven Development
