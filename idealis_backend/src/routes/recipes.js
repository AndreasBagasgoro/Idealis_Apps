const express = require('express');
const router = express.Router();
const recipeController = require('../controllers/recipeController');

/** @route GET /api/recipes */
router.get('/', recipeController.getAllRecipes);

/** @route GET /api/recipes/:id */
router.get('/:id', recipeController.getRecipeById);

/** @route GET /api/recipes/user/:userId */
router.get('/user/:userId', recipeController.getRecipesByUserId);

/** @route POST /api/recipes */
router.post('/', recipeController.createRecipe);

/** @route PUT /api/recipes/:id */
router.put('/:id', recipeController.updateRecipe);

/** @route DELETE /api/recipes/:id */
router.delete('/:id', recipeController.deleteRecipe);


module.exports = router;