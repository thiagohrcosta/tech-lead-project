

# MENTORIZER - APP

![main banner](https://res.cloudinary.com/dloadb2bx/image/upload/v1620574033/mentormain_xkjene.png)


## Technologies
This project was created with:

 - [Ruby](https://www.ruby-lang.org/pt/)
 - [Rails](https://rubygems.org/gems/rails)
 - [ERB](https://ruby-doc.org/stdlib-2.7.1/libdoc/erb/rdoc/ERB.html) (for template system with Ruby)
 - [Pry-byebug](https://rubygems.org/gems/pry-byebug/versions/3.4.0?locale=pt-BR) (for debugging)
 - [Bootstrap](https://getbootstrap.com/)
 - [Pg_Search](https://rubygems.org/gems/pg_search/versions/1.0.5?locale=pt-BR)
 - [Postgresql](https://www.postgresql.org/)

## The team
| Giorgio                                                                                                                             | Gillys                                                                                                                              | Rodrigo                                                                                                                             | Thiago                                                                                                                              |
|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------|
| <img  src="https://avatars.githubusercontent.com/u/76529564?v=4"  alt="Kitten"  title="A cute kitten"  width="150"  height="150" /> | <img  src="https://avatars.githubusercontent.com/u/70576668?v=4"  alt="Kitten"  title="A cute kitten"  width="150"  height="150" /> | <img  src="https://avatars.githubusercontent.com/u/76494354?v=4"  alt="Kitten"  title="A cute kitten"  width="150"  height="150" /> | <img  src="https://avatars.githubusercontent.com/u/28869405?v=4"  alt="Kitten"  title="A cute kitten"  width="150"  height="150" /> |
| [Github](https://github.com/GiorgioZucca)                                                                                           | [Github](https://github.com/gillysayres)                                                                                            | [Github](https://github.com/rhortega)                                                                                               | [Github](https://github.com/thiagohrcosta/)                                                                                         |
|                                                                                                                                     | [Linkedin](https://www.linkedin.com/in/gillysdantas/)                                                                               |                                                                                                                                     | [Linkedin](https://www.linkedin.com/in/thiago-costa-3566a4176/)                                                                     |


Working tools:
- **Dailying meets:** to see what was done and what needs to be done;
- **Trello:** team management tool;


## Search parcial words with Pg_Search
The user can type any kind of word in search bar like `jav javas  javascript` and the **Pg_Search** will match with the most probable result

     class DeveloperProfile < ApplicationRecord

     include PgSearch::Model

     pg_search_scope :search_by_all,
        against: [ :name, :description, :price, :technologies ],
        using: {
          tsearch: { prefix: true }
        }





## CSS Grid

To display developers on index page was used CSS grid in a each  tanking only four random results :
![CSS Grid](https://res.cloudinary.com/dloadb2bx/image/upload/v1620573532/mentor10_t0pb7o.png)
   ```
.developer-grid{
    display: grid;
    grid-template-columns: 1fr 1fr 1fr 1fr;
    grid-gap: 16px;
    margin: 10px;
}

.developer-card{
    width: 250px;
    margin: 10px 0;
    border: 1px solid #E8E8E8;
    box-shadow: 2px 2px 2px 1px rgba(0, 0, 0, 0.2);
}
```

The same technique was used to display all developers on our platform. But now when your select one passing the mouse the others will be unfocused

![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1620573724/mentorDevs_m27wbe.png)
## See a developer profile

If the user is logged on Mentorizer he can see the complete profile of a developer.

![devProfile](https://res.cloudinary.com/dloadb2bx/image/upload/v1620572390/mentor2_sitwze.png)

But not only that. The user can also hire this developer.
![hiringDev](https://res.cloudinary.com/dloadb2bx/image/upload/v1620573495/mentor7_ve49qb.png)

## After hire a developer
After hire a developer the user can send him a message and talk to him.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1620574216/mentor8_tphjtp.png)
## How to run this project
Download or clone it. . Then run in the main folder the command `rails server`. If needed, run `bundle install` to check if all gems are correctly installed. Then open the project on `localhost:3000.

Or just check it on [heroku](https://tech-lead-536.herokuapp.com/).


## What user can do?
As user you can manipulate all **CRUD** operations like:

 - Guest can see the main page only;
 - Guest can create a user profile;
 - User can see his profile and devs profile;
 - User can browse for all dev on developers page;
 - User can become a developer on Mentorize by creating a dev profile;
 - User can hire a developer;
 - User with developer profile can hire another developer;
 - After hire a developer the user can see in his own profile a field to talk with de dev or mark as complete if the job is done.
 - Developer after hired can see the contract information on his profile and talk with who hired him.

## Development routine

 **April 29**

