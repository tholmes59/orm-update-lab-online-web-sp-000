require_relative "../config/environment.rb"

class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]
  
  attr_accessor :id, :name, :grade  
  
  def initialize(id = nil, name, grade)
    @id = id
    @name = name
    @grade = grade
  end 
  
  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        name TEXT,
        album TEXT
        )
        SQL
    DB[:conn].execute(sql)
  end
  
  
end
