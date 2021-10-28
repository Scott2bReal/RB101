=begin

Write a function that when given a URL as a string, parses out just the domain
name and returns it as a string. For example:

domain_name("http://github.com/carbonfive/raygun") == "github"

domain_name("http://www.zombie-bites.com") == "zombie-bites"

domain_name("https://www.cnet.com") == "cnet"

Input: URL
Output: Just domain name as a string

Data Structure: Array

Algorithm:
  Split string into array delim '//'
  if array[0] starts with 'http'
    if array[1] starts with 'www'
      split array1 delim '.'
        return element[1]
  else if array[0] starts with 'www'
    split array delim '.'
      return array[1]

=end

def domain_name(url)
  array = url.split('//')
  if array[0].start_with?('http')
    if array[1].start_with?('www')
      array[1].split('.')[1]
    else
      array[1].split('.')[0]
    end
  elsif array[0].start_with?('www')
    array[0].split('.')[1]
  end
end

p domain_name("http://google.com") == "google"

p domain_name("http://google.co.jp") == "google"

p domain_name("www.xakep.ru") == "xakep"

p domain_name("https://youtube.com") == "youtube"
