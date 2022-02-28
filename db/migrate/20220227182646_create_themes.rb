class CreateThemes < ActiveRecord::Migration[7.0]
  def change
    create_table :themes do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :bodyBg
      t.string :bgNavbar
      t.string :colorNavbar
      t.integer :heroHomeHeight
      t.string :heroHomeBgImage
      t.string :heroHomeBgColor
      t.string :heroHomeColor
      t.string :buttonBgColor
      t.string :buttonColor
      t.string :buttonShadow
      t.string :buttonBorderRadius
      t.integer :heroConsultantsHeight
      t.string :heroConsultantsBgImage
      t.string :heroConsultantsBgColor
      t.string :heroConsultantsColor
      t.integer :heroProfilHeight
      t.string :heroProfilBgImage
      t.string :heroProfilBgColor
      t.string :heroProfilColor
      t.string :backgroundProfilcolor
      t.integer :heroAboutHeight
      t.string :heroAboutBgImage
      t.string :heroAboutBgColor
      t.string :heroAboutColor
      t.string :footerBgColor
      t.string :footerColor
      t.string :footerHeight

      t.timestamps
    end
  end
end
