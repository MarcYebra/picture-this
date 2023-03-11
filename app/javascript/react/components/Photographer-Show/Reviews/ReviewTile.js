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

let currentUserDelete
if (props.currentUser) {
  if (props.currentUser.id === props.review.user_id) {
    currentUserDelete = <button onClick={handleDeleteReview}>Delete</button>
  }
}

  return (
    <div className='review-tile-container'>
      <div className='review-tile-username'>{props.username} 
        <div>{props.created_at}</div>
      </div>
      <div className='review-tile-title-body'>
        <div className='review-tile-title'>{props.title}</div> | <div className='review-tile-rating'>{props.rating}/5</div>
        <div className='review-tile-body'>{props.body}</div>
        <button onClick={handleDeleteReview} className='review-tile-delete-review'>
          Delete
        </button>
      </div>
    </div>
  )
}

export default ReviewTile
