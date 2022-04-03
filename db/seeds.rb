# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Add initial role in database.


# Capistrano-rails-collection cammands
#cap production rails:rake:log:clear
#cap production rails:rake:tmp:clear
#cap production rails:rake:db:drop
#cap production rails:rake:db:reset
#cap production rails:rake:db:setup
#cap production rails:rake:db:seed
#cap production rails:rake:db:migrate
#cap production rails:rake:db:rollback


# Roles

unless Role.all.present?
    roles = Role.create(
        [
            {name: "Superuser"},
            {name: "Administrator"},
            {name: "Guest"},
            {name: "User"},
            {name: "Demo"}

            

        ])
else
    roles = Role.all

end





# Users
unless User.all.present?
    users = User.create([
        {login: "superuser",  email: "superuser@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "Superuser").id},
        {login: "root",  email: "root@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id: Role.find_by(name: "Administrator").id},
        {login: "user",  email: "user@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "User").id},
        {login: "guest",  email: "guest@gmail.com",  password: "AMOSXZIBITDE88", password_confirmation: "AMOSXZIBITDE88", role_id:  Role.find_by(name: "Guest").id},
        {login: "demo",  email: "demo@gmail.com",  password: "demo2019", password_confirmation: "demo2019", role_id: Role.find_by(name: "Superuser").id}


    
    ])
else   
    users = User.all
end



# Profile
unless Profile.all.present?
    profile = Profile.create([
        {
            first_name: "Super",  
            last_name: "User",
            
            user_id: User.find_by(login: "superuser").id
        },
        {
            first_name: "Root",  
            last_name: "Root",
           
            user_id: User.find_by(login: "root").id
        },
        {
            first_name: "User",  
            last_name: "User",
          
            user_id: User.find_by(login: "user").id
        },
        {
            first_name: "Guest",  
            last_name: "Guest",
           
            user_id: User.find_by(login: "guest").id
        },
        {
            first_name: "Demo",  
            last_name: "Demo",
            
            user_id: User.find_by(login: "demo").id
        }
    
    ])

end



unless Feature.all.present?
    features = Feature.create([
        {
            name: "Utilisateurs" 
            
        },
        {
            name: "Paramètres"
        },
        {
            name: "Configurations" 
        }
    
    ])

end

unless DebtType.all.present?
    debt_types = DebtType.create([
        {
            name: "Emprunt",
            user_id: User.find_by(login: "superuser").id 
            
        },
        {
            name: "Crédit",
            user_id: User.find_by(login: "superuser").id
        }
    
    ])

end

unless IncomeType.all.present?
    income_types = IncomeType.create([
        {
            name: "Rémunération",
            user_id: User.find_by(login: "superuser").id 
            
        },
        {
            name: "Profit/Bénéfice",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Profit",
            user_id: User.find_by(login: "superuser").id
        }
    
    ])

end

unless Priority.all.present?
    priorities = Priority.create([
        {
            name: "Très élevée",
            user_id: User.find_by(login: "superuser").id 
            
        },
        {
            name: "Elévée",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Normale",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Basse",
            user_id: User.find_by(login: "superuser").id
        },
        {
            name: "Facultative",
            user_id: User.find_by(login: "superuser").id
        }
    
    ])

end



