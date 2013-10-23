class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
    	t.string			:first_name
    	t.string			:last_name
    	t.integer			:account_number
    	t.string			:address
    	t.string			:city
    	t.string			:state
    	t.string			:zip
    	t.integer			:phone


      t.timestamps
    end
  end
end
