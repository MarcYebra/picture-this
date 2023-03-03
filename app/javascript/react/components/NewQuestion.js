import React, {useState} from 'react'

const NewQuestion = (props) => {
  const [newQuestion, setNewQuestion] = useState({
    question: ""
  })

  const handleFieldChange = (event) => {
    const fieldName = event.currentTarget.name
    const userInput = event.currentTarget.value
    setNewQuestion({...newQuestion, [fieldName]: userInput})
  }
  
  const handleSubmit = (event) => {
    event.preventDefault()
    props.addQuestion(newQuestion)
    setNewQuestion({
      question: ""
    })
  }
  

  

  return (
    <form onSubmit={handleSubmit}>
      <h1>Community Questions</h1>

        <label htmlFor='question'>
          Have A Question?
          <input type="text" name="question" value={newQuestion.question}  onChange={handleFieldChange} placeholder='Ask your question here'/>
        </label>

        <input type="submit" />
      </form>
  )
}

export default NewQuestion