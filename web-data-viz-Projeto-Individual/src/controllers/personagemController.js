var personagemModel = require("../models/personagemModel");

function mostrarPersonagemFavorito(req, res) {
  var idUsuario = req.params.idUsuario;

  personagemModel.mostrarPersonagemFavorito(idUsuario)
    .then((resultado) => {
      if (resultado.length > 0) {
        res.status(200).json(resultado);
      } else {
        res.status(204).json([]);
      }
    })
    .catch(function (erro) {
      console.log("Erro ao buscar personagem favorito:", erro.sqlMessage);
      res.status(500).json(erro.sqlMessage);
    });
}


function contarPersonagemFavorito(req, res) {
    personagemModel.contarPersonagemFavorito()
        .then(resultado => {
            res.json(resultado);
            console.log(resultado);
            
            
        })
        .catch(erro => {
            console.log("Erro ao buscar contagem:", erro);
            res.status(500).json(erro.sqlMessage);
        });
}

function mostrarArmaduraFavorita(req, res) {
  var idUsuario = req.params.idUsuario;
  console.log(idUsuario);
  

  personagemModel.mostrarArmaduraFavorita(idUsuario)
    .then((resultado) => {
      if (resultado.length > 0) {
        res.status(200).json(resultado);
      } else {
        res.status(204).json([]);
      }
    })
    .catch(function (erro) {
      console.log("Erro ao buscar armadura do personagem favorito:", erro.sqlMessage);
      res.status(500).json(erro.sqlMessage);
    });
}


module.exports = {
  mostrarPersonagemFavorito,
  contarPersonagemFavorito,
  mostrarArmaduraFavorita
}