import React from 'react'
import Dropzone from 'react-dropzone'

const PhotoUpload = (props) => {
  const [ photos, setPhotos ] = useState([])
  const [newPhotoUpload, setPhotoUpload] = useState({
    photo: " "
  })

  const fetchPhotos = async () => {
    try {
      const response = await fetch("/api/v1/photos")
      if (!response.ok) {
        const errorMessage = `${response.status} (${response.statusText})`
        throw new Error(errorMessage)
      }
      const photoData = await response.json()
      setPhotos(photoData)
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  useEffect( () => {
    fetchPhotos()
  }, [] )

  const photoTiles = photos.map((photo) => {
    return(
      <li>
        <img src={photo.photo} />
      </li>
    )
  })

  const handleFileUpload = (acceptedFiles) => {
    setPhotoUpload({
      ...newPhotoUpload, 
      photo: acceptedFiles[0]
    })

    setPhotoUpload([
      ...newPhotoUpload,
      <li key={acceptedFiles[0].path}>
        {acceptedFiles[0].path} - {acceptedFiles[0].size} bytes
      </li>
    ])
  }

  let body = new FormData()
  body.append("photo", newPhotoUpload.photo)
  
  const addPhoto = async (event) => {
    event.preventDefault()
    let body = new FormData()
    body.append("photo", newPhotoUpload.photo)

    try {
      const response = await fetch("/api/v1/photos", {
        method: "POST",
        credentials: "same-origin",
        body: body
      })
      if (!response.ok) {
        const errorMessage = `${response.status} ({response.statusText})`
        throw new Error(errorMessage)
      }
      const newPhoto = await response.json()
      setPhotos([
        ...photos,
        newPhoto
      ])
    } catch (error) {
      console.error(`Error in Fetch: ${error.message}`)
    }
  }

  return (
    <div>

      <div>
      {photoTiles}
      </div>

      <form className='callout' onSubmit={addPhoto}>
        <Dropzone onDrop={handleFileUpload} >
          {({getRootProps, getInputProps}) => (
            <section>
              <div {...getRootProps()}>
                <input {...getInputProps()} />
                <p>Drag files, or click here to select files</p>
              </div>
            </section>
          )}
        </Dropzone>

        <input className='button' type='submit' value='Submit' />
      </form>

    </div>
  )
}

export default PhotoUpload