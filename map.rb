def map(ar, &func)
	ar.each.reduce([]){ |rlt, orig|
		rlt + [func.call(orig)]
	}
end
a = map([1,2,3]) {|i| i*2}
p a