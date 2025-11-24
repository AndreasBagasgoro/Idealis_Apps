const express = require('express');
const router = express.Router();
const userController = require('../controllers/userController');

/** @route GET /api/users */
router.get('/', userController.getAllUsers);

/** @route GET /api/users/:id */
router.get('/:id', userController.getUserById);

/** @route POST /api/users */
router.post('/', userController.createUser);

/** @route PUT /api/users/:id */
router.put('/:id', userController.updateUser);

/** @route DELETE /api/users/:id */
router.delete('/:id', userController.deleteUser);

module.exports = router;