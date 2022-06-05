import { IdGenerator } from "../services/IdGenerator"

export class UserBusiness {

    public async signup(name: string, email: string, password: string): Promise<string>{

        const idGenerator = new IdGenerator()
        const id = idGenerator.generate()

        // insere os dados no banco

        return id
    }
}