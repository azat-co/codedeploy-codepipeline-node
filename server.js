const port = process.env.PORT || 80
require('http')
  .createServer((req, res) => {
    console.log(`incoming url: ${req.url} and incoming method: ${req.method}`)
    res.writeHeader(200,{'Content-Type': 'text/html'})
    res.end('<h1>Hello World from amazing Node University course AWS Intermediate</h1>')
  })
  .listen(port, (error)=>{
    console.log(`server is running on ${port}`)
  })
