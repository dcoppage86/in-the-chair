In The Chair

User
    - has_many :appointments
    - has_many :providers, through: :appointments

    - first_name
    - last_name
    - email
    - password_digest
    - image

Appointment
    - belongs_to :user
    - belongs_to :provider

    - user_id
    - provider_id
    - day_and_time
    
Provider
    - has_many :appointments
    - has_many :users, through: :appointments

    - name
    - schedule




