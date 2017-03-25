require 'open-uri'

=begin
Coded by Mr.MaGnoM
first script in ruby is just test
magsec.blogspot.com
fb.com/mr.magnom2
=end

def scan(site)
	begin
	source = open(site).read
	rescue
		
	end


if (source =~ /generator" content="Joomla/)
puts site + " => \e[32mJoomla !\e[0m"
File.open("joomla.html","a+") do |j|
j.puts"#{site}<br>"
end

elsif(source =~ /generator" content="WordPress/)
puts site + " => \e[31mWoordPress !\e[0m"
File.open("wp.html","a+") do |w|
w.puts"#{site}<br>"
end

elsif(source =~ /enerator" content="Drupal/)
puts site + " => \e[33mdrupal !\e[0m"
File.open("drupal.html","a+") do |d|
d.puts"#{site}<br>"
end

elsif(source =~ /generator" content="vBulletin/)
puts site + " => \e[35mvBulletin !\e[0m"
File.open("vb.html","a+") do |v|
v.puts"#{site}<br>"
end
else
puts site + " => \e[30mUnknown!\e[0m"
end
end

puts "\t+-------------------------+"
puts "\t|       CMS Detection     |"
puts "\t|    Coded by Mr.MaGnoM   |"
puts "\t| my first script in ruby |"
puts "\t+-------------------------+"
puts "\n"

print "ur list of sites : " 
list = gets.chomp
puts "\n"
arr = File.read(list).split()
arr.each do |x|
scan(x)
end
