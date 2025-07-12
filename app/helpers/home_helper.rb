module HomeHelper
    def get_age(birthday)
        now = Date.today
        age = now.year - birthday.year
        age -= 1 if birthday > now.years_ago(age)
        age
    end
end
