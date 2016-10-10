class ContController < ApplicationController

    def hello
        render text: 'Hello Coding Dojo!'
    end

    def say_hello
        render text: 'Saying Hello'
    end

    def say_hello_joe
        render text: 'Saying Hello Joe'
    end

    def times
        session['times'] = 0 unless session['times']
        session['times'] += 1
        render text: "You have been here #{session['times']} times"
    end

    def reset
        session.clear
        redirect_to '/times'
    end

end
