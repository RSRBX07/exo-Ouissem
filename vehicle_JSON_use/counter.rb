require 'json'

class Counter
    def self.add_instance type        
        counts = counters        
        counts["vehicles"][type] = counts["vehicles"][type] + 1      #    déja  "".to_i  => 0        

        File.open File.dirname(__FILE__) + "/tmp/counter.json" , "w" do |counter_file|
            counts = counts.to_json            
            counter_file.write counts
        end
    end

    def self.counters
        File.open File.dirname(__FILE__) + "./tmp/counter.json" , "a+" 
        file = File.read(File.dirname(__FILE__) + '/tmp/counter.json')     
        file = '{"vehicles":{"Vehicle":0,"Plane":0}}' if file.chomp==""
        counters = JSON.parse(file)                      
    end
end