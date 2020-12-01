class User < ApplicationRecord
    # L'utilisateur doit pouvoir garder un mot de passer sécurisé
    has_secure_password

    # L'email ne doit pas etre nul, et doit etre unique dans toute la base
    validates :email, presence: true, uniqueness: true

    # L'utilisateur a plusieurs tweets avec une clé user_id dans la table Tweets
    has_many :tweets

end

user = User.last
user.tweets