import * as jwt from "jsonwebtoken";
import { config } from 'dotenv'
import { authenticationData } from "../types";

config()

export class Authenticator {

    generateToken(info: authenticationData): string{

        const token = jwt.sign(
            {id: info.id},
            process.env.JWT_KEY as string,
            {expiresIn: process.env.JWT_EXPIRATION_TIME}
        )
        return token;
    }

    getTokenData(token: string): authenticationData {

        const payload = jwt.verify(
            token,
            process.env.JWT_KEY as string
        );

        return payload as authenticationData

    }
}

// import { sign, verify } from "jsonwebtoken";
// import { config } from "dotenv";
// import { authenticationData } from "../types";

// config()

// const { JWT_KEY } = process.env

// export const generateToken = (payload: authenticationData): string => sign(
//     payload,
//     JWT_KEY!,
//     { expiresIn: "1d" }
// )

// // Verifica se o token é valido, caso sim retorna o id
// export const getTokenData = (token: string): authenticationData | null => {
//     try {
//         const { id } = verify(token, JWT_KEY!) as authenticationData

//         return { id }
//     } catch (error) {
//         return null
//     }
// }