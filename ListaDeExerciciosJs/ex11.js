var nome = "Ana";

function mostrarNome() {
    var nome = "Carlos";
    console.log(nome); //Carlos, porque o var é usado para valores globais
}

mostrarNome();
console.log(nome); // Carlos, Ana


var nome = "Ana";

function mostrarNome() {
    let nome = "Carlos";
    console.log(nome); //Carlos
}

mostrarNome();
console.log(nome); //Ana, porque esta usando VAR