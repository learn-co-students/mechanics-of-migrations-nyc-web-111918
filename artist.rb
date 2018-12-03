require 'pry'
class Artist < ActiveRecord::Migration
  attr_accessor :name, :genre, :age, :hometown, :id

  def initialize(attribute = {})
    attribute.each do |key, value|
      self.send(("#{key}="), value)
    end
  end


  # def save
  #   sql = <<-SQL
  #   INSERT INTO artists(age, genre, hometown, name) VALUES (?, ?, ?, ?)
  #   SQL
  #
  #   binding.pry
  #   DB.execute(sql, self.age, self.genre, self.hometown, self.name)
  #   sql_id = "SELECT last_insert_rowid() FROM artists"
  #   @id = DB.execute(sql_id).first
  # end
end
