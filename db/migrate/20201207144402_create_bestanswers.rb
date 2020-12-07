class CreateBestanswers < ActiveRecord::Migration[6.0]
  def change
    create_table :bestanswers do |t|

      add_column :questions, :best_answer_id, :integer, default: nil
      t.timestamps
    end
  end
end
