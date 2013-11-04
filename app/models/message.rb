class Message
  include Mongoid::Document
  field :name
  field :email
  field :content

  validates :name, :email, :content, presence: true

  validates_format_of :email,
    with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, 
    message: "is an invalid email"

  after_create :send_email

  private

  def send_email
    Notifier.contact_form(self).deliver
  end
end
