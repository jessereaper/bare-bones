
require "sqlite3"

File.delete("./bleh.jess") if File.file?("./bleh.jess")

require_relative "migrations/1_create_videogame_table"
