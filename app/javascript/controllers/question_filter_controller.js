import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["topic", "questions"]
  static actions = ["topic#change->filterQuestions"]

  connect() {
    const initialTopicId = this.topicTarget.value
    console.log("Stimulus controller connected. Initial topic ID:", initialTopicId)
    if (initialTopicId) {
      this.filterQuestions()
    }
  }

  filterQuestions() {
    // 1. Get the selected topic ID
    const topicId = this.topicTarget.value
    console.log("filterQuestions called with topic ID:", topicId)
    
    if (topicId) {
      // 2. Make an API call to fetch questions for that topic
      const url = `/topics/${topicId}/questions`
      console.log("Fetching questions from:", url)
      
      fetch(url)
        .then(response => response.json())
        .then(data => {
          console.log("Received questions data:", data)
          // 3. Populate the questions dropdown
          this.questionsTarget.innerHTML = data.map(question => 
            `<option value="${question.id}">${question.text}</option>`
          ).join('')
          // 4. Enable/disable the questions dropdown based on data
          this.questionsTarget.disabled = data.length === 0
          console.log("Questions dropdown updated. Disabled:", data.length === 0)
        })
        .catch(error => {
          console.error("Error fetching questions:", error)
        })
    } else {
      console.log("No topic selected, clearing questions dropdown")
      this.questionsTarget.innerHTML = ''
      this.questionsTarget.disabled = true
    }
  }
} 