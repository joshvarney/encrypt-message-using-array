def encrypt_array(message, shift)
	message_indexes = []
	encrypted_message = []
	char1 = ('A'..'z').to_a - ['\\']
	char2 = ('!'..'!').to_a
	char3 = ('#'..'?').to_a
	char_arr = char1 + char2 + char3
    seed = 1
	char_arr = char_arr.shuffle(random: Random.new(seed)) 
	message = message.split("")
	message.each { |element| element 
		if element == " "
			message_indexes.push(element)
		else
			char_arr.each { |char| char   
				if element == char
					message_indexes.push(char_arr.index(char))
				end
			}
		end
	}
	message_indexes.each { |element| element
		if element == " "
			encrypted_message.push(element)
		else
			char_arr = char_arr.rotate(shift)	
			char_arr.each_with_index { |char, char_index| char_index
				if element == char_index
					encrypted_message.push(char)
					char_arr = char_arr.rotate(-shift)
				end
			}
		end
	}
	encrypted_message = encrypted_message.join
end		
def decrypt_array(message, shift)
	message_indexes = []
	decrypted_message = []
	char1 = ('A'..'z').to_a - ['\\']
	char2 = ('!'..'!').to_a
	char3 = ('#'..'?').to_a
	char_arr = char1 + char2 + char3
    seed = 1
	char_arr = char_arr.shuffle(random: Random.new(seed))
	message = message.split("")
	message.each { |element| element 
		if element == " "
			message_indexes.push(element)
		else
			char_arr.each { |char| char   
				if element == char
					message_indexes.push(char_arr.index(char))
				end
			}
		end
	}
	message_indexes.each { |element| element
		if element == " "
			decrypted_message.push(element)
		else
			char_arr = char_arr.rotate(-shift)	
			char_arr.each_with_index { |char, char_index| char_index
				if element == char_index
					decrypted_message.push(char)
					char_arr = char_arr.rotate(shift)
				end
			}
		end
	}
	decrypted_message = decrypted_message.join
end		