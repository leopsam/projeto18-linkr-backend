import Joi from 'joi';

export const signinSchema = Joi.object({
  email: Joi.string().email().required(),
  password: Joi.string().required(),
});

export const signupSchema = Joi.object({
  email: Joi.string().email().required(),
  password: Joi.string().required(),
  picture_url: Joi.string()
    .uri({ scheme: ['http', 'https'] })
    .required(),
  username: Joi.string().required(),
});
