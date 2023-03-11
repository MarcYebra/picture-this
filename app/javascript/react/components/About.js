import React from 'react'

const About = () => {
  return (
    <div>
    <div className='grid-container'>
      <div className='grid-x'>
        <div className='grid-container cell medium-6 large-8 second-column'>
            <h1 className='cell'>Marc Yebra</h1> 
            <h5 className='about-developer-description'>Hello! I'm the engineer behind this web application. Before making 
            the decision to become a full-stack developer,
            I spent the previous five years running my own photography business. I understand the difficulties photographers face when trying to grow a client list/network.
            Fortunately, I had the pleasure of working with many clients which allowed me to understand how challenging it can be for clients to find the right photographer
            for their projects or events. Combing the struggles from both parties, Picture This was born.
            </h5>
            <h5 className='about-picture-this-description'><span style={{fontWeight: 'bold'}}>Picture This</span> makes finding and booking photographers more convenient for clients and reduces planning time and costs compared to the 
            conventional ways of searching for photographers. 
            </h5>
        </div>
        <div className='grid-container cell medium-6 large-4' >
          <img className='about-profile-image' src='https://picture-this-production.s3.amazonaws.com/Marc/about.png' />
        </div>       
        </div>
    </div>

    <div className='about-block'></div>
    </div>
  )
}

export default About