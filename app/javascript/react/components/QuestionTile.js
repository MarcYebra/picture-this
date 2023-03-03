import React from 'react'

const QuestionTile = (props) => {



  return (
    <div>
      <div>{props.created_at}</div>
      <div>{props.question}</div>
    </div>
  )
}

export default QuestionTile 