class User < ApplicationRecord
    # L'utilisateur doit pouvoir garder un mot de passer sécurisé
    has_secure_password

    # L'email ne doit pas etre nul, et doit etre unique dans toute la base
    validates :email, presence: true,
        uniqueness: true
end
