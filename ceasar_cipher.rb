#Implement a caesar cipher that takes in a string and the shift factor and then outputs the modified string:

def caesar_cipher(string, shift_factor) 
	alphabet = ("a".."z").to_a.concat(("A".."Z").to_a)
	word = ""


	string.each_char do |letter|
		if alphabet.include?(letter)
			word += alphabet[alphabet.index(letter) + shift_factor]
		else 
			word += letter
		end
	end
	word
end


p caesar_cipher("what a string!", 5)