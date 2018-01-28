require "sqlite3"

db = SQLite3::Database.new "./db/dev.db"

db.execute <<-SQL
  create table videogames (
    name text,
    rate text,
    console text
  );
SQL

[
  ["Final Fantasy 14", "8/10", "PC, ps4 if scrub"],
].each do |videogames|
  db.execute(
    "INSERT INTO videogames (name, rate, console) VALUES (?, ?, ?)", videogames
  )
end
