# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Exam.create([{name: 'Term1 Exam'}, {name: 'Term2 Exam'}, {name: 'Term3 Exam'}])

Exam.all.each do |exam|
	exam.subjects.create([{name: 'Tamil' }, {name: 'English' }, {name: 'Maths' }, {name: 'Science' }, {name: 'Social Science' } ])
end

Subject.all.each do |subject|
  subject.topics.create([{ name: 'Topic1' }, { name: 'Topic2' }, { name: 'Topic3' }, { name: 'Topic4' }, { name: 'Topic5' }])
end

Topic.all.each do|topic|
  topic.chapters.create([{name: 'Chapter1', topic: topic},	{name: 'Chapter2', topic: topic}, {name: 'Chapter3', topic: topic},  {name: 'Chapter4', topic: topic}])
end


Chapter.all.each do|chapter|
  chapter.questions.create([{ question: 'Question1', category_type: 0 },
                            { question: 'Question2', category_type: 1 },
                            { question: 'Question3', category_type: 2 },
                            { question: 'Question4', category_type: 1 },
                            { question: 'Question5', category_type: 2 }])
end

Question.all.each do |question|
  question.answers.create([{ option: 'Option 1', is_correct: true},
                           { option: 'Option 2', is_correct: false },
                           { option: 'Option 3', is_correct: false },
                           { option: 'Option 4', is_correct: false },
                           { option: 'Skip', is_correct: false }])
end


# Exam.create([{name: 'Term1 Exam'}])

# Exam.all.each do |exam|
#   exam.subjects.create([{name: 'Tamil' } ])
# end

# Subject.all.each do |subject|
#   subject.topics.create([{ name: 'Topic1' }, { name: 'Topic2' }])
# end

# Topic.all.each do|topic|
#   topic.chapters.create([{name: 'Chapter1', topic: topic}])
# end


# Chapter.all.each do|chapter|
#   chapter.questions.create([{ question: 'Question1', category_type: 0 },
#                             { question: 'Question2', category_type: 1 },
#                             { question: 'Question3', category_type: 2 },
#                             { question: 'Question4', category_type: 1 },
#                             { question: 'Question5', category_type: 2 }])
# end

# Question.all.each do |question|
#   question.answers.create([{ option: 'Option 1', is_correct: true},
#                            { option: 'Option 2', is_correct: false },
#                            { option: 'Option 3', is_correct: false },
#                            { option: 'Option 4', is_correct: false },
#                            { option: 'Skip', is_correct: false }])
# end
