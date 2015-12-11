#---
# Excerpted from "Seven Languages in Seven Weeks",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/btlang for more book information.
#---
module ActsAsCsv
  class CsvRow
    def method_missing(column)
      index = @headers.index(column.to_s)
      @row[index] unless index.nil?
    end

    def initialize(headers, row)
      @headers = headers
      @row = row
    end
  end

  def read
    @csv_contents = []
    filename = self.class.to_s.downcase + '.txt'
    file = File.new(filename)
    @headers = file.gets.chomp.split(', ')

    file.each do |row|
      @csv_contents << row.chomp.split(', ')
    end
  end

  def each
    @csv_contents.each { |row| yield CsvRow.new(@headers, row) }
  end

  attr_accessor :headers, :csv_contents
  def initialize
    read
  end
end

class RubyCsv # no inheritance! You can mix it in
  include ActsAsCsv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each { |row| p row.unit_price } # Good result
m.each { |row| p row.blah } # Tolerance test
