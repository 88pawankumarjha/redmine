<<<<<<< HEAD
class AddMissingIndexesToWikiContents < ActiveRecord::Migration
  def self.up
    add_index :wiki_contents, :author_id
  end

  def self.down
    remove_index :wiki_contents, :author_id
  end
end
=======
class AddMissingIndexesToWikiContents < ActiveRecord::Migration
  def self.up
    add_index :wiki_contents, :author_id
  end

  def self.down
    remove_index :wiki_contents, :author_id
  end
end
>>>>>>> 3817f1e30455f4df5135af5f608f1a3912fcf4ff
