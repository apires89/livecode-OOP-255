require 'csv'
require 'byebug'

class BaseRepository
  def initialize(csv_file)
    @csv_file = csv_file
    @elements = []
    @next_id = 1
    load_csv if File.exists? @csv_file
  end

  def add(element)
    #set element id
    element.id = @next_id

    @next_id += 1

    @elements << element

    save_csv

    @next_id += 1
  end

  def all
    @elements
  end

  def find(id)
    @elements.find {|element| element.id == id}
  end


  private

  def load_csv
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file, csv_options) do|row|
      row[:id] = row[:id].to_i
      #old version
      #row[:price] = row[:price].to_i
      #Meal.new(row)
      @elements << build_element(row)
    end
    @next_id = @elements.empty? ? 1 : @elements.last.id + 1
  end

  def save_csv
    CSV.open(@csv_file, 'wb') do |csv|
      byebug
      csv << @elements.last.headers
      @elements.each do |element|
        csv << element.to_csv_row
      end
    end
  end
end
