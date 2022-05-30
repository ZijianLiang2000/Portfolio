class CreatePersonalPortfolios < ActiveRecord::Migration[6.1]
  def change
    create_table :personal_portfolios do |t|

      t.timestamps
    end
  end
end
