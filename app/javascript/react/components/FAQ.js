import React, {useEffect, useState} from 'react'
import QuestionTile from './QuestionTile'
import NewQuestion from './NewQuestion'

const FAQ = (props) => {
  const [questions, setQuestions] = useState([])

  const getQuestions = async () => {
    try {
      const response = await fetch(`/api/v1/question`)
      if(!response.ok) {
        const errorMessage = (`${response.status} ${response.statusText}`)
        const error = new Error(errorMessage)
        throw(error)
      }
      const questionsData = await response.json()
      setQuestions(questionsData)
    } catch (err) {
      console.error(`Error in Fetch: ${err.message}`)
    }
  }

  useEffect(( ) => {getQuestions()}, [])

  const addQuestion = async (formPayLoad) => {
    try{
      const response = await fetch(`/api/v1/question` , {
        method: 'POST',
        body: JSON.stringify(formPayLoad),
        headers: new Headers ({
          "Content-Type" : "application/json"
        })
      })
      if(!response.ok) {
        const newError = new Error(`${response.status} ${response.statusText}`)
        throw(newError)
      } 
      const responseBody = await response.json()
      setQuestions([...questions, responseBody])
    } catch (err) {
      console.error(`Error in Fetch: ${err.message}`)
    }
  }

  // const questionTiles = props.questions.map((question) => {
  //   return (
  //     <QuestionTile
  //       key={question.id}
  //       id={question.id}
  //       question={question.question}
  //       created_at={question.created_at}
  //     />
  //   )
  // })


  return(
    <div>
     <h1>FAQ</h1>  
     <h3>How long will it take until I receive my edited photos?</h3>
     <p>- On average, you should have your images sent by your photographer within two weeks. Please communicate with your 
      photographer if you need your images expedited, if you have any issues please send us an email: info@picturethis.com.
     </p>
     <h3>What if I don't like the edits made by the photographer?</h3>
     <p>- You are allowed a free request, with comments, to have your images re-edited. After that, you may be charged additional
      re-editing fees.
     </p>
      <h3>What happens if I need to cancel or reschedule my shoot?</h3>
      <p>- If you would like to cancel a photo shoot, please do so 48 hours prior to your appointment. Otherwise, you will not be able to request
        a refund on your deposit fee. If you need to reschedule a photo shoot, simply reach out to your photographer and they will do their best
        to accommodate.
      </p>

      <NewQuestion addQuestion={addQuestion} />
      <div>
        {/* {questionTiles} */}
      </div>
    </div>
  )
}

export default FAQ 