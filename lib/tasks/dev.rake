if Rails.env.development? || Rails.env.test?
  require "factory_bot"
  require 'faker'

  QUESTION_DATA = { "topics" => [
    {
      "topic" => "parks",
      "questions" => [
        {
          "question" => "How often do you visit parks or recreation facilities in our city?",
          "type" => "multiple_choice",
          "options" => ["Daily", "Weekly", "Monthly", "Rarely", "Never"]
        },
        {
          "question" => "What types of activities do you typically engage in at the parks?",
          "type" => "multiple_select",
          "options" => [
            "Walking or running",
            "Biking",
            "Playing sports",
            "Picnicking",
            "Attending events",
            "Other"
          ]
        },
        {
          "question" => "How would you rate the overall condition of the parks and recreation facilities?",
          "type" => "multiple_choice",
          "options" => ["Excellent", "Good", "Fair", "Poor", "Very poor"]
        },
        {
          "question" => "Are there sufficient parks and green spaces in your neighborhood?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        },
        {
          "question" => "How important is it to you that parks include amenities like playgrounds, sports fields, or picnic areas?",
          "type" => "multiple_choice",
          "options" => [
            "Very important",
            "Somewhat important",
            "Neutral",
            "Not very important",
            "Not important at all"
          ]
        },
        {
          "question" => "Do you feel safe when visiting our city’s parks?",
          "type" => "multiple_choice",
          "options" => ["Always", "Most of the time", "Sometimes", "Rarely", "Never"]
        },
        {
          "question" => "What additional features or improvements would you like to see in our parks?",
          "type" => "open_ended"
        },
        {
          "question" => "Are the current park programs and events meeting your needs?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "I’m not aware of any programs/events"]
        },
        {
          "question" => "What barriers, if any, prevent you from using parks and recreation facilities more frequently?",
          "type" => "multiple_select",
          "options" => [
            "Lack of time",
            "Accessibility issues",
            "Lack of amenities or activities",
            "Safety concerns",
            "Other"
          ]
        },
        {
          "question" => "Would you be willing to support additional funding for park improvements through taxes or fees?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        }
      ]
    }, {
      "topic" => "communications",
      "questions" => [
        {
          "question" => "How do you primarily receive information about city updates, news, and events?",
          "type" => "multiple_choice",
          "options" => [
            "City website",
            "Social media",
            "Email newsletters",
            "Local news outlets",
            "Printed materials",
            "Word of mouth",
            "Other"
          ]
        },
        {
          "question" => "How frequently do you visit the city's official website?",
          "type" => "multiple_choice",
          "options" => ["Daily", "Weekly", "Monthly", "Rarely", "Never"]
        },
        {
          "question" => "How would you rate the usability of the city’s website?",
          "type" => "multiple_choice",
          "options" => ["Excellent", "Good", "Fair", "Poor", "Very poor"]
        },
        {
          "question" => "What information or services do you most often seek on the city’s website?",
          "type" => "multiple_select",
          "options" => [
            "Event information",
            "City services (e.g., permits, utilities)",
            "News and updates",
            "Meeting schedules and minutes",
            "Contact information",
            "Other"
          ]
        },
        {
          "question" => "How satisfied are you with the city’s communication through social media?",
          "type" => "multiple_choice",
          "options" => ["Very satisfied", "Somewhat satisfied", "Neutral", "Somewhat dissatisfied", "Very dissatisfied"]
        },
        {
          "question" => "Which social media platforms do you use to follow the city?",
          "type" => "multiple_select",
          "options" => [
            "Facebook",
            "Twitter (X)",
            "Instagram",
            "YouTube",
            "Nextdoor",
            "Other"
          ]
        },
        {
          "question" => "What type of content would you like to see more of on the city’s social media channels?",
          "type" => "open_ended"
        },
        {
          "question" => "How effective is the city at keeping you informed about emergencies or urgent updates?",
          "type" => "multiple_choice",
          "options" => ["Very effective", "Somewhat effective", "Neutral", "Not very effective", "Not effective at all"]
        },
        {
          "question" => "Would you use a mobile app if the city developed one for accessing news, services, and alerts?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        },
        {
          "question" => "What improvements would you suggest for the city’s communication methods, website, or social media presence?",
          "type" => "open_ended"
        }
      ]
    }, {
      "topic" => "public safety",
      "questions" => [
        {
          "question" => "How safe do you feel in your neighborhood during the day?",
          "type" => "multiple_choice",
          "options" => ["Very safe", "Somewhat safe", "Neutral", "Somewhat unsafe", "Very unsafe"]
        },
        {
          "question" => "How safe do you feel in your neighborhood at night?",
          "type" => "multiple_choice",
          "options" => ["Very safe", "Somewhat safe", "Neutral", "Somewhat unsafe", "Very unsafe"]
        },
        {
          "question" => "How would you rate the responsiveness of local police or emergency services?",
          "type" => "multiple_choice",
          "options" => ["Excellent", "Good", "Fair", "Poor", "Very poor"]
        },
        {
          "question" => "What are your primary safety concerns in your community?",
          "type" => "multiple_select",
          "options" => [
            "Theft or burglary",
            "Traffic safety",
            "Drug-related issues",
            "Violent crime",
            "Natural disasters",
            "Other"
          ]
        },
        {
          "question" => "Do you feel there is adequate police presence in your area?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        },
        {
          "question" => "Have you participated in any community safety programs (e.g., neighborhood watch)?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not aware of any"]
        },
        {
          "question" => "How informed do you feel about safety issues or alerts in your community?",
          "type" => "multiple_choice",
          "options" => ["Very informed", "Somewhat informed", "Neutral", "Not very informed", "Not informed at all"]
        },
        {
          "question" => "What channels do you use to receive public safety information?",
          "type" => "multiple_select",
          "options" => [
            "City website",
            "Social media",
            "Email alerts",
            "Local news outlets",
            "Neighborhood groups",
            "Other"
          ]
        },
        {
          "question" => "What improvements would you like to see in public safety services or programs?",
          "type" => "open_ended"
        },
        {
          "question" => "Would you support additional funding to enhance public safety in your community?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        }
      ]
    }, {
      "topic" => "priorities",
      "questions" => [
        {
          "question" => "Which areas should the city prioritize for funding?",
          "type" => "multiple_select",
          "options" => [
            "Public safety",
            "Education",
            "Infrastructure (roads, bridges, utilities)",
            "Parks and recreation",
            "Economic development",
            "Environmental sustainability",
            "Affordable housing",
            "Other"
          ]
        },
        {
          "question" => "How satisfied are you with how the city allocates its budget?",
          "type" => "multiple_choice",
          "options" => ["Very satisfied", "Somewhat satisfied", "Neutral", "Somewhat dissatisfied", "Very dissatisfied"]
        },
        {
          "question" => "What percentage of the city’s budget do you think should be dedicated to public safety?",
          "type" => "open_ended"
        },
        {
          "question" => "How important is it to increase funding for public transportation?",
          "type" => "multiple_choice",
          "options" => [
            "Very important",
            "Somewhat important",
            "Neutral",
            "Not very important",
            "Not important at all"
          ]
        },
        {
          "question" => "What areas of infrastructure need the most improvement in your opinion?",
          "type" => "multiple_select",
          "options" => [
            "Road maintenance",
            "Sidewalks and pedestrian safety",
            "Water and sewer systems",
            "Public transportation",
            "Street lighting",
            "Other"
          ]
        },
        {
          "question" => "Would you support an increase in taxes or fees to fund priority projects?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        },
        {
          "question" => "How would you rate the transparency of the city’s budget and spending information?",
          "type" => "multiple_choice",
          "options" => ["Excellent", "Good", "Fair", "Poor", "Very poor"]
        },
        {
          "question" => "Which city services or programs do you feel are currently underfunded?",
          "type" => "open_ended"
        },
        {
          "question" => "What is the most important goal the city should achieve with its budget over the next five years?",
          "type" => "open_ended"
        },
        {
          "question" => "Do you feel that residents are given enough opportunity to provide input on budget decisions?",
          "type" => "multiple_choice",
          "options" => ["Yes", "No", "Not sure"]
        }
      ]
    }]}



  namespace :dev do
    desc "Sample data for local development environment"
    task prime: "db:setup" do

      # sample users
      admin = User.create!(first_name: 'Admin', last_name: 'User', email: 'admin@example.com', password: 'password', password_confirmation: 'password')
      admin.add_role :admin
      User.create!(first_name: 'Test', last_name: 'User', email: 'test@example.com', password: 'password', password_confirmation: 'password')

      # sample customers
      10.times do |n|
        name = "#{%w(City Village Town Borough County).sample} of #{Faker::Address.city}"
        Customer.create!(name: name)
      end

      # sample topics, questions, and options
      topics = QUESTION_DATA['topics']
      topics.each do |h|
        topic_key = h['topic']
        topic = Topic.create!(key: topic_key, label: topic_key.titleize)
        questions = h['questions']
        questions.each do |q|
          question_text = q['question']
          options = q['options']
          question = Question.create!(text: question_text, topic: topic)
          if options
            options.each do |option|
              Option.create!(text: option, question: question)
            end
          end
        end
      end
    end
  end
end
