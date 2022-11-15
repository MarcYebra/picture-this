import React from "react"

const PhotographerTile = (props) => {
  return (
    <div>
        <p>First Name: {props.first_name}</p>
        <p>Last Name: {props.last_name}</p>
        <p>Email: {props.email}</p>
        <p>Description: {props.description}</p>
        <p>Location: {props.location}</p>

    </div>
  )
}

export default PhotographerTile