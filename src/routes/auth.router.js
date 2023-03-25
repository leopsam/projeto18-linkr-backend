import { Router } from 'express';
import { signIn, signUp, searchUser } from '../controllers/auth.controller.js';
//import { searchUser } from '../controllers/users.controller.js';
import processRequestParams from '../middlewares/processRequestParams.js';
import { signinSchema, signupSchema } from '../schemas/auth.requests.js';


const router = new Router();

router.post('/sign-in', processRequestParams(signinSchema), signIn);
router.post('/sign-up', processRequestParams(signupSchema), signUp);
router.post('/mebusca', searchUser);

export { router as authRouter };
