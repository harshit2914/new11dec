const express = require("express");
const app = express();
PORT = process.env.PORT || 8000;

app.get("/",(req,res)=>{
    return res.json({
      message:"hey i am node js in conatianer for learning docker" , 

    })
})

app.listen (PORT ,()=>{
    console.log(`Server started on PORT ${PORT}`)
})