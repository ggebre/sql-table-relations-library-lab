def select_books_titles_and_years_in_first_series_order_by_year
  "Write your SQL query here"
  "SELECT books.title, books.year
  FROM books
  WHERE books.series_id=1
  ORDER BY books.year;"
end

def select_name_and_motto_of_char_with_longest_motto
  "Write your SQL query here"
  "SELECT name, motto
  FROM characters
  ORDER BY length(motto) DESC
  LIMIT 1;
  "
end

# GROUP BY character_books.book_id

def select_value_and_count_of_most_prolific_species
  "Write your SQL query here"
  "SELECT characters.species, COUNT(DISTINCT characters.id) AS count
  FROM characters
  INNER JOIN character_books
  ON characters.id=character_books.character_id
  GROUP BY characters.species
  ORDER BY count DESC
  LIMIT 1
  ;"

end

def select_name_and_series_subgenres_of_authors
  "Write your SQL query here"
  "SELECT authors.name, subgenres.name
  FROM authors 
  INNER JOIN series 
  ON authors.id=series.author_id
  INNER JOIN subgenres
  ON subgenres.id=series.subgenre_id;"
end

def select_series_title_with_most_human_characters
  "Write your SQL query here"

  "SELECT series.title
  FROM series 
  INNER JOIN characters
  ON characters.author_id=series.author_id
  WHERE characters.species='human'
  GROUP BY series.title
  ORDER BY COUNT(series.title) DESC
  LIMIT 1;"
end

def select_character_names_and_number_of_books_they_are_in
  "Write your SQL query here"
  "SELECT characters.name, COUNT(character_books.character_id) AS number_of_books
  FROM characters
  INNER JOIN character_books
  ON characters.id=character_books.character_id
  GROUP BY characters.name
  ORDER BY number_of_books DESC, characters.name
  ;"
end
