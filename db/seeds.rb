# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

questions = [
  {
    title: 'You’re really busy at work and a colleague is telling you their life story and personal woes. You:',
    options: [
      { title: 'Don’t dare to interrupt them', option_type: 'introvert' },
      { title: 'hink it’s more important to give them some of your time; work can wait', option_type: 'extrovert' },
      { title: 'Listen, but with only with half an ear', option_type: 'introvert' },
      { title: 'Interrupt and explain that you are really busy at the moment', option_type: 'extrovert' }
    ]
  },
  {
    title: 'You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:',
    options: [
      { title: 'Look at your watch every two minutes', option_type: 'introvert' },
      { title: 'Bubble with inner anger, but keep quiet', option_type: 'extrovert' },
      { title: 'Explain to other equally impatient people in the room that the doctor is always running late',
        option_type: 'introvert' },
      { title: 'Complain in a loud voice, while tapping your foot impatiently', option_type: 'extrovert' }
    ]
  },
  {
    title: 'You’re having an animated discussion with a colleague regarding a project that you’re in charge of. You:',
    options: [
      { title: 'Don’t dare contradict them', option_type: 'introvert' },
      { title: 'Think that they are obviously right', option_type: 'extrovert' },
      { title: 'Defend your own point of view, tooth and nail', option_type: 'introvert' },
      { title: 'Continuously interrupt your colleague', option_type: 'extrovert' }
    ]
  },
  {
    title: 'You are taking part in a guided tour of a museum. You:',
    options: [
      { title: 'Are a bit too far towards the back so don’t really hear what the guide is saying',
        option_type: 'introvert' },
      { title: 'Follow the group without question', option_type: 'extrovert' },
      { title: 'Make sure that everyone is able to hear properly', option_type: 'introvert' },
      { title: 'Are right up the front, adding your own comments in a loud voice', option_type: 'extrovert' }
    ]
  },
  {
    title: 'During dinner parties at your home, you have a hard time with people who:',
    options: [
      { title: 'Ask you to tell a story in front of everyone else', option_type: 'introvert' },
      { title: 'Talk privately between themselves', option_type: 'extrovert' },
      { title: 'Hang around you all evening', option_type: 'introvert' },
      { title: 'Always drag the conversation back to themselves', option_type: 'extrovert' }
    ]
  }
]

questions.each do |question|
  ques = Question.find_or_create_by(title: question[:title])
  question[:options].each do |option|
    ques.options.find_or_create_by(option)
  end
end
