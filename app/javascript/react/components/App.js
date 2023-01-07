import React from 'react'
import Photographers from './Photographer-Index/Photographers'
import PhotographerShowContainer from './PhotographerShowContainer'
import NewPhotographer from './NewPhotographer'

import { BrowserRouter, Route, Switch } from 'react-router-dom'

export const App = (props) => {
  return (
    <BrowserRouter>
      <Switch>
        <Route exact path="/photographers" component={Photographers} />
        <Route exact path="/photographers/new" component={NewPhotographer} />
        <Route exact path="/photographers/:id" component={PhotographerShowContainer} />
      </Switch>
    </BrowserRouter>
  )
}

export default App
