require 'watir-webdriver'

b = Watir::Browser.new :chrome
b.goto("http://adscash.in/login.php")
sleep 5
b.div(:class , 'navbar-collapse collapse clearfix').ul(:class, 'navigation clearfix').link(:href, 'login.php').click
puts "hello"
	sleep 1
	puts "enter your username"
	username = gets.chomp
	puts "enter your password"
	password = gets.chomp
	sleep 2
	go = nil
	url = b.url
until go
	b.text_field(name:"username").set username
	b.text_field(name:"password").set password
	sleep 2
	b.send_keys :enter
	sleep 1
	puts url,b.url 
	if url != b.url
		go = true
	end
end
sleep 1
b.goto("http://adscash.in/userpanel/browsing_page_updated.php")
b.link(:href, 'browsing_page_updated.php?topup_id=&action=submit&type=ads').click
search1 = gets.chomp
puts "hello1"
puts "helo"

b.goto('http://adscash.in/userpanel/browsing_page_updated.php?act=24')
sleep 25
#search1 = gets.chomp
puts "aaa"
b.input(:value, 'Click To Confirm').click
b.goto('http://adscash.in/userpanel/browsing_page_updated.php?act=25')
sleep 25
#search1 = gets.chomp
puts "bbb"
b.input(:value, 'Click To Confirm').click
puts "hello3"
search = gets.chomp
