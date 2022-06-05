import express from 'express' 
import cors from 'cors' 
import dotenv from 'dotenv'
import { userRouter } from './routes/userRouter'

dotenv.config()
const app = express() 

app.use(express.json()) 
app.use(cors()) 

app.use('/user', userRouter)

app.listen(3003, () => { 
console.log("Server is running in http://localhost:3003"); 
});