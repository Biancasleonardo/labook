import { Request, Response } from "express";
import { UserBusiness } from "../business/UserBusiness";
import { Authenticator } from "../services/Authenticator";
import { HashManager } from '../services/HashManager'

export class UserController {

    public async signup(req: Request, res: Response) {
        const { name, email, password } = req.body

        try {
            const userData = {
                name,
                email,
                password
            }

            const hashManager = new HashManager()
            const hashPassword = await hashManager.hash(userData.password)

            const userBusiness = new UserBusiness()
            const userId = await userBusiness.signup(userData.name, userData.email, hashPassword)

            const authenticator = new Authenticator()
            const accessToken = authenticator.generateToken({ id: userId })

            res.status(200).send({ token: accessToken })
        } catch (error) {
            res.status(400).send({ error });
        }
    }

}
