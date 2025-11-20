var database = require("../database/config");

function mostrarPersonagemFavorito(idUsuario) {
    var instrucaoSql = `
        SELECT 
            p.idPersonagem,
            p.nome,
            p.forca,
            p.velocidade,
            p.stamina,
            p.cosmo,
            p.durabilidade
        FROM personagem p JOIN usuario u
        ON p.idPersonagem = u.fkPersonagemFavorito
        WHERE u.idUsuario = ${idUsuario};
    `;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}


function contarPersonagemFavorito() {
    var instrucao = `
        SELECT 
            p.nome AS personagem,
            COUNT(u.fkPersonagemFavorito) AS escolhas
        FROM personagem p
        LEFT JOIN usuario u
            ON u.fkPersonagemFavorito = p.idPersonagem
        GROUP BY p.idPersonagem;
    `;

    return database.executar(instrucao);
}

function mostrarArmaduraFavorita(idUsuario) {
    var instrucaoSql = `
        SELECT 
            a.nome as armadura
        FROM personagem p JOIN usuario u
        ON p.idPersonagem = u.fkPersonagemFavorito
        JOIN armadura a
        ON p.idPersonagem = a.fkPersonagem
        WHERE u.idUsuario = ${idUsuario};
    `;

  console.log("Executando a instrução SQL: \n" + instrucaoSql);
  return database.executar(instrucaoSql);
}


module.exports = {
  mostrarPersonagemFavorito,
  contarPersonagemFavorito,
  mostrarArmaduraFavorita

}



 