import { filter } from 'lodash'
import React from 'react'
import {Link} from 'react-router-dom'

const CategoryBar = (props) => {

  return (
    <div>
      <div className='categories-container'>
        <Link to='/photographers'><div className='categories-button'>View All</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Celebrity</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Engagement</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Event</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Family</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Fashion</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Fitness</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Food</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Graduation</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Pet</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Portrait</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Sport</div></Link>  
        <Link to='/photographers'><div className='categories-button'>Wedding</div></Link>  
      </div>
    </div>
  )
}

export default CategoryBar

