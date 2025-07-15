class Contact
    include ActiveModel::Model
    include ActiveModel::Attributes

    attribute :name, :string
    attribute :email, :string
    attribute :content, :string

    validates :name, {presence: true}
    validates :email, {presence: true}
    validates :content, {presence: true}

end
