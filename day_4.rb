require 'digest/md5'
INPUT = 'bgvyzdsv'

def calc
	1000000.times do |i|
		string = INPUT + i.to_s
		md5 = Digest::MD5.hexdigest(string)
		if md5.start_with?("00000")
			return i
		end
	end
end

puts calc