title: Learning Python, Building gtRPG
tags:
- code
- music
- education
- guitar
- Python
date: 2020-07-23
---

<!-- TODO: add captions -->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-6">
            <img src="/2020/07/23/learning-python-building-gtrpg/gtrpg-dashboard.png" alt="">
        </div>
        <div class="col-lg-6">
            <img src="/2020/07/23/learning-python-building-gtrpg/gtrpg-code.png" alt="">
        </div>
    </div>
</div>

Last year I began using [Python](https://www.python.org/) professionally for the first time, and quickly came to love the language for it's flexibility and readability. In an effort to become more familiar with the language, I decided to build a small personal project using Python.

I was mostly using Python for automation scripting at work, so I wanted the project to also feature a web framework. I eventually settled on [Flask](https://flask.palletsprojects.com/en/1.1.x/) for two reasons: 1) The "micro"-ness and extensibility of Flask seemed appealing, and 2) I found [Miguel Grinberg's multi-part Flask tutorial](https://blog.miguelgrinberg.com/post/the-flask-mega-tutorial-part-i-hello-world) to be a fantastic introduction to both the Flask framework and the Python ecosystem.

So with that, I began building a gamified guitar practice app called [gtRPG](https://github.com/bcerney/gtrpg). gtRPG is an idea I've played with since my time teaching private guitar lessons - applying [gamification](https://en.wikipedia.org/wiki/Gamification) principles to guitar practice. gtRPG attempts to enhance guitar practice using common [RPG](https://en.wikipedia.org/wiki/Role-playing_game) elements. With gtRPG, users can choose Categories - musical genres or activities that the User wants to improve in - and create Tasks - practice items associated with a given Category. Users can then complete tasks in practice Sessions to earn XP towards leveling up.

<!-- TODO: add captions -->
<div class="container-fluid">
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-10">
            <img src="/2020/07/23/learning-python-building-gtrpg/gtrpg-new-session.png" alt="">
        </div>
        <div class="col-lg-1"></div>
    </div>
</div>

After about 3 months of sporadic work, I had a functional version of gtRPG. I deployed it to [gtrpg.com](http://www.gtrpg.com/) via [Heroku](https://www.heroku.com/) and began testing it out. I also [shared the app on Reddit](https://www.reddit.com/r/learnpython/comments/eudo21/java_developer_learning_python_created_a_web_app/) to get some user feedback and see how it performed in the wild.

Some potential improvements for the future:

- UI Improvements: The look and feel of the site could use some work (navigation bar bugs, giant drop-down menus, tedious checkboxes, etc.)
- Learning Paths: Pre-built series of Tasks in a given Category.
- Model Improvements: The Category model as currently constructed proved limiting - it fails to accurately capture Tasks that span multiple Categories (e.g. A Task can fall under Country, Acoustic, and Fingerstyle, but it can only be associated with one Category). I think an easy improvement might be moving to a tag-based system.
- Rebranding: The concept can and should be generalized for all instruments.

Overall, I learned a ton about Python and enjoyed working with Flask. For my next development project, I plan to tackle the [Django](https://www.djangoproject.com/) web framework next as that is what I'm currently using at work.
