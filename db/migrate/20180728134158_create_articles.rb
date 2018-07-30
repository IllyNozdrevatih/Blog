class CreateArticles < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :name ,null:false,default:''
      t.text :description ,null:false
      t.integer :user_id ,null:true,default:0
      t.timestamps null:false
    end
  end
end