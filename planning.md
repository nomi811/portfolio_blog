# Planning my application
  1.  Answer Questions
    - What am I building?
    - Who am I building it for?
    - What features do I need to have?
  2.  User Stories
  3.  Model my Data
  4.  Think through the pages I need in my app

## Questions

  1.  What am I building?  I am building a personal site.  A place where I can blog, share examples of my work, and have people contact me.

  2.  Who am I building it for?  I am building it for myself, but also the community.  Sharing what I am learning by blogging is a great way to learn for myself, but I will teach others in the process.  Show potential employers that I know what I am doing.

  3.  What features do I want to have?
    - Posts
      - Create / Edit / Destroy
      - Markdown
      - Syntax highlighting
      - Comments (Disqus)

    - Projects
      - Create / Edit / Destroy

    - Contact
      - Contact form
      - Sendgrid

    - User (Devise)

## User Stories

  As a User
  I want to be able to create posts
  So that I can share what I am learning on my blog

  As a User
  I want to be able to edit & destroy Posts
  So that I can manage my blog

  As a User
  I want to be able to write posts in markdown format
  So that it's easy for me to write posts

  As a User
  I want to be able to highlight the various syntax of code blocks
  So that I can share code nicely on my blog

  As a User
  I want to show the visitors and potential employers examples of my work
  So that I can inform potential employers

  As a Visitor
  I want to be able to contact the blogger through a form on the site
  So that I can communicate with the blogger

  As a Visitor
  I want to be able to leave comments to posts
  So that I can give my opinions on the posts


## Modeling my Data

    **Post**
      title:string
      content:text

    **Project**
      title:string
      description:text
      link:string

    **User**


## Think through the pages I need in my app

  - Home
  - Posts#index
  - Posts#show
  - Projects#index
  - Projects#show
  - Contact
