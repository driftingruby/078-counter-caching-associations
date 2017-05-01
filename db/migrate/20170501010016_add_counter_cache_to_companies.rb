class AddCounterCacheToCompanies < ActiveRecord::Migration[5.0]
  def change
    add_column :companies, :users_count, :integer, default: 0
    Company.find_each { |company| Company.reset_counters(company.id, :users) }
  end
end
