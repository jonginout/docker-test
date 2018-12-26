const express = require('express')
const app = express()

app.get('/', (req, res, next) => {
  res.send(`<h1>Hello jongin!</h1>`)
})

app.listen(3000, () => {
  console.log('Server is running on 3000 port...')
})
