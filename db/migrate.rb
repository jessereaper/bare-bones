
require "sqlite3"

File.delete("./dev.db") if File.file?("./dev.db")

require_relative "migrations/1_create_videogame_table"
