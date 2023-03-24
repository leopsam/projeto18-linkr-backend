import { db } from '../database/database.connection.js'
import bcrypt from 'bcrypt'
import pkg from 'uuid'

const {v4: uuidV4} = pkg

export async function signUp(req, res) {
  console.log("signUp (criação de usuario)") //deletar linha depois
  const { email, password, username, picture_url } = req.body  
  const passwordHash = bcrypt.hashSync(password, 10);

  const userExist = await db.query(`SELECT * FROM users`)
  userExist.rows.map((u)=>{
    if(u.email === email){
      return res.sendStatus(409)
    }
  })

  try {
    await db.query(`INSERT INTO users (email, password, username, picture_url) VALUES ($1, $2, $3, $4);`, [email, passwordHash, username, picture_url ])
    res.sendStatus(201)
  } catch (error) {
    res.status(422).send(error.message)
  }
}

export async function signIn(req, res) {
  console.log("signIn (login de usuario)") //deletar linha depois
  const { email, password} = req.body 

  const userExist = await db.query(`SELECT * FROM users WHERE email = $1;`, [email])  
  if(!userExist.rows[0]) return res.status(401).send("usuario ou senha invalidos")

  const user = (userExist.rows[0])

  try {    
    if(bcrypt.compareSync(password, userExist.rows[0].password)){
      const token = uuidV4()
     
      await db.query(`INSERT INTO session (user_id, token) VALUES ($1, $2);`, [userExist.rows[0].id, token])  

      res.status(200).send({token, user})  
    }else{
      res.status(401).send("usuario ou senha invalidos")
    }
  } catch (error) {
    res.status(422).send(error.message)
  }
}