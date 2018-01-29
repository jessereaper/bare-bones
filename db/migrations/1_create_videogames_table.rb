require "sqlite3"

db = SQLite3::Database.new "./db/dev.db"

db.execute <<-SQL
  create table videogames (
    name varchar(255),
    rate varchar(255),
    console varchar(255)
  );
SQL

[
  ["Final Fantasy 14", "8/10", "PC, ps4 if scrub"],[
    "Monster Hunter", "7/10", "PS4,pc coming soon to a store near u QQ"],
].each do |videogames|
  db.execute(
    "INSERT INTO videogames (name, rate, console) VALUES (?, ?, ?)", videogames
  )
end
