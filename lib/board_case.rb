class BoardCase
    attr_accessor :content, :position, :cases_count

    @@cases_count = 0


    def initialize        
       @content = " "
       

        if @@cases_count == 0
            @position = "A1"
        elsif @@cases_count == 1
            @position = "A2"
        elsif @@cases_count == 2
            @position = "A3"
        elsif @@cases_count == 3
            @position = "B1"
        elsif @@cases_count == 4
            @position = "B2"
        elsif @@cases_count == 5
            @position = "B3"
        elsif @@cases_count == 6
            @position = "C1"
        elsif @@cases_count == 7
            @position = "C2"
        elsif @@cases_count == 8
            @position = "C3"
        end

            @@cases_count +=1

            if @@cases_count == 9
                @@cases_count = 0
            end
      

    end

end