class CreateSecurityQuestions < ActiveRecord::Migration
  def change
    create_table :security_questions do |t|
      t.string :sec_question

      t.timestamps
    end
  end
end
