const express = require('express');
const router = express.Router();
const recipeIngredientController = require('../controllers/recipeIngredientController');

/** @route GET /api/recipeIngredients/:recipeId/ingredients */
router.get('/:recipeId/ingredients', recipeIngredientController.getRecipeIngredients);

/** @route POST /api/recipeIngredients/:recipeId/ingredients */
router.post('/:recipeId/ingredients', recipeIngredientController.addIngredientToRecipe);

/** @route PUT /api/recipeIngredients/:recipeId/ingredients/:ingredientId */
router.put('/:recipeId/ingredients/:ingredientId', recipeIngredientController.updateIngredientInRecipe);

/** @route DELETE /api/recipeIngredients/:recipeId/ingredients/:ingredientId */
router.delete('/:recipeId/ingredients/:ingredientId', recipeIngredientController.removeIngredientFromRecipe);

module.exports = router;