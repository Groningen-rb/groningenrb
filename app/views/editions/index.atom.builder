atom_feed do |feed|
  feed.title "Groningen.rb"
  
  @editions.each do |edition|
    feed.entry edition, published: edition.starts_at - 2.weeks do |entry|
      entry.title "Groningen.rb ##{edition.id}"
      entry.content edition.rendered_description
      entry.author do |author|
        author.name "Ivan Malykh"
      end
    end
  end
end