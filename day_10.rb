INPUT = "3113322113"

def calc
	rlt = INPUT.chars.map(&:to_i)
	50.times do 
		last = 0
		cache = 0
		array = []
		rlt.each.with_index do |int, idx|
			if int == last
				cache += 1
			elsif int != last && last != 0
				array.push cache + 1
				array.push last
				cache = 0
			end
			if idx == rlt.count - 1
				array.push cache + 1
				array.push int
			end
			last = int
		end
		rlt = array
	end
	puts rlt.join.size
end
calc