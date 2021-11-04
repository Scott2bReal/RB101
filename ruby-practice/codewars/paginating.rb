=begin

Johnny is working as an intern for a publishing company, and was tasked with
cleaning up old code. He is working on a program that determines how many digits
are in all of the page numbers in a book with pages from 1 to n (inclusive).

For example, a book with 4 pages has 4 digits (one for each page) while a
12-page book has 15 (9 for 1-9, plus 2 each for 10, 11, 12).

Johnny's boss, looking to futureproof, demanded that the new program be able to
handle books up to 400,000,000,000,000,000 pages.

Data Struture: Array

Algorithm:
  Init pages array range 1..pages
  Map pages array so that each element is the size of array of digits
  Reduce that array with a +

=end

def page_digits(pages)
  pages_array = (1..pages)
  pages_array.map { |page| page.digits.size }.reduce(:+)
end

p page_digits(4)
p page_digits(12)
p page_digits(100)
p page_digits(1000)
p page_digits(10000)
