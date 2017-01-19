class Counter
    def self.add_instance
        #nb_plus = nb_instances != "" ? nb_instances.to_i : 0
        nb_plus = nb_instances.to_i      #    déja  "".to_i  => 0
        nb_plus +=1
        File.open File.dirname(__FILE__) + "/tmp/counter.txt" , "w" do |counter_file|
             counter_file.write nb_plus 
        end
    end

    def self.nb_instances
        File.open File.dirname(__FILE__) + "./tmp/counter.txt" , "a+" do |counter_file|
             line = counter_file.read            
        end
    end
end