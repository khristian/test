class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :article_id #this is will be used as foreign key in article db
      t.string  :author_name
      t.text    :body
    end
  end
end
