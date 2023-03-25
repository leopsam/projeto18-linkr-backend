import { Router } from 'express';
import { createPostController, getPostsController } from '../controllers/posts.controller.js';
import authenticate from '../middlewares/authenticate.js';
import processRequestParams from '../middlewares/processRequestParams.js';
import { createPostSchema, getPostsSchema } from '../schemas/posts.requests.js';

const router = new Router();

router.get('/', processRequestParams(getPostsSchema), authenticate, getPostsController);
router.post('/', createPostController);

export { router as postRouter };
