import React from 'react'
import Photographers from './Photographer-Index/Photographers'
import PhotographerShowContainer from './Photographer-Show/PhotographerShowContainer'
import NewPhotographer from './NewPhotographer'
import About from './About'
import QuestionsIndex from './QuestionsIndex.js'

import { BrowserRouter, Route, Switch } from 'react-router-dom'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/photographers" component={Photographers} />
        <Route exact path="/photographers/new" component={NewPhotographer} />
        <Route exact path="/photographers/:id" component={PhotographerShowContainer} />
        <Route exact path="/about" component={About} />
        <Route exact path="/questions" component={QuestionsIndex} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
