class RemoveMemberMailToNominee < ActiveRecord::Migration
  def change
    remove_column :nominees, :member_mail, :string
  end
end
