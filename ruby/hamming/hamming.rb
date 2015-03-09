class Hamming
	def self.compute(string1, string2)
		string1.length == string2.length or raise "Input Strings should be the same length."

    (0..string1.length-1).reduce(0) do | distance, n |
      (string1[n] != string2[n]) ? distance+1 : distance
    end

	end
end