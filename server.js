import express from 'express'

const app = express()

app.get('/', (req, res) => {
    res.send('hello world')
})

const port = 8080
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
})