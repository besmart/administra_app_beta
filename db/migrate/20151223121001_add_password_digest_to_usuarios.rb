class AddPasswordDigestToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :password_digest, :string
    remove_column :usuarios, :clave, :string
  end
end
