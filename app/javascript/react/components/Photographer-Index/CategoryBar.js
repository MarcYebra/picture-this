import { filter } from 'lodash'
import React from 'react'

const CategoryBar = (props) => {
  return (
    <div>
      <div className='categories-container'>
          <a href="/photographers" className='categories-button'>View All</a>
          <a href="/photographers" className='categories-button'>Celebrity</a>
          <a href="/photographers" className='categories-button'>Engagement</a>
          <a href="/photographers" className='categories-button'>Event</a>
          <a href="/photographers" className='categories-button'>Family</a>
          <a href="/photographers" className='categories-button'>Fashion</a>
          <a href="/photographers" className='categories-button'>Fitness</a>
          <a href="/photographers" className='categories-button'>Food</a>
          <a href="/photographers" className='categories-button'>Graduation</a>
          <a href="/photographers" className='categories-button'>Pet</a>
          <a href="/photographers" className='categories-button'>Portrait</a>
          <a href="/photographers" className='categories-button'>Sport</a>
          <a href="/photographers" className='categories-button'>Wedding</a>
      </div>
    </div>
  )
}

export default CategoryBar

