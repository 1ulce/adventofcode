INPUT = [2978,3083]
INIT = 20151125
def calc
	r,c = INPUT
	idx = 0
	(r + c - 1).times do |n|
		idx += n
	end
	idx += c
	rlt = INIT
	(idx - 1).times {rlt = rlt * 252533 % 33554393}
	puts rlt
end

calc