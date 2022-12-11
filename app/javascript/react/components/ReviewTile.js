import React from 'react'

const ReviewTile = (props) => {

  const handleDeleteReview = async (event) => {
    event.preventDefault()
    try {
      const response = await fetch (`/api/v1/photographers/${props.params.id}/reviews/${props.id}`, {
        method: "DELETE",
        credentials: "same-origin",
        headers: {
          "Content-Type": "application/json",
            Accept: "application/json",
          },
          body: null,
        })
  if (!response.ok) {
    const errorMessage = `${response.status} (${response.statusText})`
    const error = new Error(errorMessage)
    throw error
  }
  const responseBody = await response.json()
    window.location.reload()
  if(!response.error) {
    console.log(responseBody.message)
  } else if (responseBody.error[0] === "You need to be signed in first") {
    alert("You need to be signed in first")
  }
} catch(error) {
  console.error(`Error in fetch: ${error.message}`)
}
  }

let memberDelete
if (props.currentUser) {
  if (props.currentUser.id === props.review.user_id) {
    memberDelete = <button onClick={handleDeleteReview}>Delete</button>
  }
}

  return (
    <div className='tile-page'>
      <div className='review-display-tile'>
        <div className='delete-button'>
      <button  className= 'button delete' onClick={handleDeleteReview}>
        Delete 
      </button>
      </div>

        <p className='username-tile'>{props.username} | Rating:  {props.rating} / 5</p>
        <p className='title-tile'>{props.title}</p>
        <div className='review-show-space' >
        </div>
        <p className='review-tile'>"{props.body}"</p>
        <p className='timestamp-tile'>{props.created_at} </p>
      </div>
    </div>
  )
}


export default ReviewTile