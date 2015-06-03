class Product < ActiveRecord::Base
  belongs_to :category
  has_many :line_items
  before_destroy :ensure_not_referenced_by_any_line_item

  has_attached_file :image, :styles => { 
    :medium => "300x300#",
    :tiny => "75x75#",
    :thumb => "100x100#" },
    :default_url => "missingproduct_:style.png"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  private
    #ensure there are no line items referenceing this product
    def ensure_not_referenced_by_any_line_item
      if line_items.empty?
        return true
      else
        errors.add(:base, "Do not delete. This item is currently in someone's cart.")
        return false
      end #if
    end #def
end #class
