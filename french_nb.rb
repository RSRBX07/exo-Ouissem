require 'delegate'

class Number < DelegateClass(Fixnum)        
    def initialize value=0        
        super   value
    end

    def spell_in_french
        unite_tte_lettres=["Zero","Un","Deux","Trois","Quatre","Cinq","Six","Sept","Huit","Neuf","Dix","Onze","Douze","Treize","Quattorze","Quinze","Seize","Dix-Sept","Dix-Huit","Dix-Neuf"]
        dizaines_tte_lettres = ["","","Vingt","Trente","Quarante","Cinquante","Soixante","Soixante","Quatre-vingt","Quatre-vingt"]
    #    if nombre < 17
    #        return unite_tte_lettres[nombre]
    #    elsif nombre < 20
    #        return "dix-" + unite_tte_lettres[nombre % 10]  
        if self < 20
            result = unite_tte_lettres[self]
        elsif (self < 70)||(self>=80 && self<90)
            result = dizaines_tte_lettres[self/10] + " " + unite_tte_lettres[self % 10]  
            result.gsub!("Zero","")
            result.gsub!("Un","et Un")        
        else
            result = dizaines_tte_lettres[self/10] + " " + unite_tte_lettres[self % 20]  
            result.gsub!("Zero","")
            result.gsub!("Un","et Un")
            result.gsub!("Onze","et Onze")        
        end
        result
    end
end