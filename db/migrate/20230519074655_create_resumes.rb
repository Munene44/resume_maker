class CreateResumes < ActiveRecord::Migration[7.0]
  def change
    create_table :resumes do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.text :summary
      t.text :work_experience

      t.timestamps
    end
  end
end
