const express = require('express');
const router = express.Router();
const ingredientController = require('../controllers/ingredientController');

/** @route GET /api/ingredients */
router.get('/', ingredientController.getAllIngredient);

/** @route GET /api/ingredients/:id */
router.get('/:id', ingredientController.getIngredientById);

/** @route POST /api/ingredients */
router.post('/', ingredientController.createIngredient);

/** @route PUT /api/ingredients/:id */
router.put('/:id', ingredientController.updateIngredient);

/** @route DELETE /api/ingredients/:id */
router.delete('/:id', ingredientController.deleteIngredient);

module.exports = router;