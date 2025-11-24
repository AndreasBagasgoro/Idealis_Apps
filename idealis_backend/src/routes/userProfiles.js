const express = require('express');
const router = express.Router();
const userProfileController = require('../controllers/userProfileController');

/** @route GET /api/profiles */
router.get('/', userProfileController.getAllProfiles);

/** @route GET /api/profiles/:id */
router.get('/:id', userProfileController.getProfileById);

/** @route GET /api/profiles/user/:userId */
router.get('/user/:userId', userProfileController.getProfileByUserId);

/** @route POST /api/profiles */
router.post('/', userProfileController.createProfile);

/** @route PUT /api/profiles/user/:userId */
router.put('/user/:userId', userProfileController.updateProfile);

/** @route DELETE /api/profiles/user/:userId */
router.delete('/user/:userId', userProfileController.deleteProfile);

module.exports = router;