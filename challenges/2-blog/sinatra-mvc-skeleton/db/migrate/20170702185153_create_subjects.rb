class CreateSubjects < ActiveRecord::Migration[5.0]
  def change
    create_table :create_subjects do |t|
      t.integer  :entry_id
      t.integer  :tag_id

    end
  end
end
