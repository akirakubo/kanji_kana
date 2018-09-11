#!/usr/bin/env ruby
# -*- coding: utf-8 -*-

File.foreach(ARGV[0]){|line|

	line.gsub!(/:/, '')

	yomi, word = line.split("\t")
	yomi = yomi.split('|')
	word = word.split('|')
	for i in 0..word.length-1
		if word[i] =~ /\p{Han}/ and yomi[i] =~ /^[\p{Hiragana}ー]/
		puts "#{word[i]}	#{yomi[i]}	#{word[i].length}	#{yomi[i].length}"
		end
	end
}
