require "minitest/autorun"
require_relative "encrypt_array.rb"
class Test_Encrypt_array < Minitest::Test 

	# def test_that_returns_string_with_shuffle1
	# 	assert_equal("OdIIa", encrypt_array("Hello", 5))
	# end
	# def test_that_returns_back_to_original_with_shuffle2
	# 	assert_equal("Hello", decrypt_array("OdIIa", 5))
	# end
	# def test_that_returns_string1_with_shuffle3
	# 	assert_equal(",_S3+", encrypt_array(";<=>?", 5))
	# end
	# def test_that_returns_string_with_shuffle4
	# 	assert_equal("(YD", encrypt_array("zyx", 5))
	# end
	# def test_that_returns_right_letters_with_shuffle5
	# 	assert_equal(";#.?z,", encrypt_array("hn]jf;", 5))
	# end	
	# def test_that_returns_right_letters_again_with_shuffle6
	# 	assert_equal("ghn]jf", encrypt_array("F4J1Mg", 5))
	# end
	# def test_that_returns_message_back_with_shuffle7
	# 	assert_equal("F4J1Mg", decrypt_array("ghn]jf", 5))
	# end
	# def test_that_returns_message_back_again_with_shuffle8
	# 	assert_equal("hn]jf;", decrypt_array(";#.?z,", 5))
	# end
	def test_that_returns_string1
		assert_equal("Mjqqt", encrypt_array("Hello", 5))
	end
	def test_that_returns_back_to_original2
		assert_equal("Hello", decrypt_array("Mjqqt", 5))
	end
	def test_that_returns_string13
		assert_equal("ABCDE", encrypt_array(";<=>?", 5))
	end
	def test_that_returns_string4
		assert_equal("&%$", encrypt_array("zyx", 5))
	end
	def test_that_returns_right_letters5
		assert_equal("msbokA", encrypt_array("hn]jf;", 5))
	end	
	def test_that_returns_right_letters_again6
		assert_equal("K9O6Rl", encrypt_array("F4J1Mg", 5))
	end
	def test_that_returns_message_back7
		assert_equal("bciWea", decrypt_array("ghn]jf", 5))
	end
	def test_that_returns_message_back_again8
		assert_equal("6w):u'", decrypt_array(";#.?z,", 5))
	end
end