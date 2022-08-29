class GrammerStats
    def initialize
       @checked = Array.new
    end

    def check(text)
        punctuation_check = text[-1] == "." || text[-1] == "!" || text[-1] == "?"
        first_letter_check = text.chr == text.chr.upcase
        check_text = first_letter_check && punctuation_check
        @checked.push check_text
        return check_text
    end

    def percentage_good
        @good = (@checked.count {|x| x == true}).to_f
        num_of_texts = (@checked.length).to_f
        ((@good/num_of_texts)*100).to_i
    end


end