class School

    def initialize(name)
        @name = name 
    end 

    def roster
        if @roster == nil
            @roster = {}
        end 
        return @roster       
    end

    def add_student(name, grade_level)
        
        if @roster == nil
            @roster = roster
        end  

        if @roster == {}
            @roster[grade_level] = []
            @roster[grade_level] << name 
        elsif !@roster.include?(grade_level)
            @roster[grade_level] = []
            @roster[grade_level] << name 
        elsif @roster.include?(grade_level)
            @roster[grade_level] << name
        end
            
    end
    
    def grade(grade_number)
        return @roster[grade_number]
    end 

    def sort
        roster_array = @roster.to_a
    
        roster_array.collect do |grade|
            sorted_grade = grade[1].sort 
            grade[1] = sorted_grade 
        end

        roster_hash = roster_array.to_h 

        return roster_hash 

    end 

end 