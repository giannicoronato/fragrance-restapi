import { Router } from "express";
import { getFragrances, getFragrance, createFragrance, updateFragrance, deleteFragrance } from "../controllers/fragrances.controller.js";

const router = Router();

router.get("/fragrances", getFragrances);

router.get("/fragrances/:id", getFragrance);

router.post("/fragrances", createFragrance);

router.patch("/fragrances/:id", updateFragrance); 

router.delete("/fragrances/:id", deleteFragrance);

export default router;