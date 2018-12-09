class CreateProfileTags < ActiveRecord::Migration[5.1]
  def change
    create_table :profile_tags do |t|
      t.references    :profile, index: true, foreign_key: true
      t.string        :content

      t.timestamps
    end
  end
end
