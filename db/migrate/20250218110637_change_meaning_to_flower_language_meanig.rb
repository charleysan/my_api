class ChangeMeaningToFlowerLanguageMeanig < ActiveRecord::Migration[8.0]
  def change
    rename_column :flowers, :meaning, :flower_language_meaning  #:object, :field-want_to_change :name_want_to_change_to
  end
end
