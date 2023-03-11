import React, {useState} from 'react'

const QuestionsIndex = (props) => {

  const answerOne = "On average, you should have your images sent by your photographer within two weeks. Please communicate with your photographer if you need your images expedited, if you have any issues please send us an email: info@picturethis.com."
  const answerTwo = "You are allowed a free request, with comments, to have your images re-edited. After that, you may be charged additional re-editing fees."
  const answerThree = "If you would like to cancel a photo shoot, please do so 48 hours prior to your appointment. Otherwise, you will not be able to request a refund on your deposit fee. If you need to reschedule a photo shoot, simply reach out to your photographer and they will do their best to accommodate."


  return(
    <div className='faq-container'>

    <div  className='faq-top-header'>
    <h1>FAQ</h1>
    </div>

    <div className='faq-main-wrapper'>
      <div className='faq-main'>
        <h2>How long will it take until I receive my edited photos?</h2>
      </div>
        <p className='faq-main-answer'>{answerOne}</p>
    </div>

    <div className='faq-main-wrapper'> 
      <div className='faq-main'>
        <h2>What if I don't like the edits made by the photographer?</h2>
      </div>
        <p className='faq-main-answer'>{answerTwo}</p>
    </div>

    <div className='faq-main-wrapper'>
      <div className='faq-main'>
        <h2>What happens if I need to cancel or reschedule my shoot?</h2>
      </div>
        <p className='faq-main-answer'>{answerThree}</p>
      </div>

      <div className='faq-community-question-header'>
        <h2>Have A Question? Ask Our Community!</h2>
      </div>

    </div>
  )
}

export default QuestionsIndex