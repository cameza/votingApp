class AddMemberMailToNominee < ActiveRecord::Migration
  def change
    add_column :nominees, :member_mail, :string
  end
end
