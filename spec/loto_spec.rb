require "./lib/loto/loto.rb"

RSpec.describe Loto do
    it 'get grid' do
        Loto.new
    end

    it 'return nil when initialized' do        
         expect(Loto.new.picked_grid).to be_nil
         expect(Loto.new.picked_grid).not_to be_a PickedGrid 
    end

    it 'return an array after picking' do                 
         l=Loto.new     
         expect(l.picked_grid).not_to be_a PickedGrid 
         l.pick
         first_picked_grid = l.picked_grid.grid
         expect(l.picked_grid).to be_a PickedGrid
         expect(l.picked_grid.grid.size).to equal 5
         # verifier que pick ne change pas le tirage une fois il est déjà fait
         l.pick
         expect(l.picked_grid.grid).to eql first_picked_grid
         # verifier que la ligne (attr_reader :picked_grid) existe toujours dans la class loto
         expect(l).to respond_to :picked_grid     
    end

    it 'verify if add_grid with a grid in arguments push soon this one to the list grids' do
        l = Loto.new
        p = Party.new l
        gr1 = [1,2,3,4,5]
        gr2 = [6,7,8,9,10]        
        p.add_grid gr1
        p.add_grid gr2
        #p.add_grid 
        gr3 = p.scanned_grid        
        expect(p.grids).to include gr1
        expect(p.grids).to include gr2
        expect(p.grids).to include gr3
    end
end