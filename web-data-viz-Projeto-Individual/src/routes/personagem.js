var express = require("express");
var router = express.Router();

var personagemController = require("../controllers/personagemController");

router.get("/favoritos", function (req, res) {
    personagemController.contarPersonagemFavorito(req, res);
});

router.get("/:idUsuario", function (req, res) {
  personagemController.mostrarPersonagemFavorito(req, res);
});

router.get("/armadura/:idUsuario", function (req, res) {
  personagemController.mostrarArmaduraFavorita(req, res);
});

module.exports = router;