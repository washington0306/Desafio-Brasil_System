//= require bootstrap



function startTimer(duration, display) {

    var timer = duration, minutes, seconds;

    setInterval(function () {

        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = 0;
            document.querySelector("#bond_type").disabled = true;
            document.querySelector("#title").disabled = true;
            document.querySelector("#author").disabled = true;
            document.querySelector("#edition").disabled = true;
            document.querySelector("#issn").disabled = true;
            document.querySelector("#year").disabled = true;
            document.querySelector("#publishing_company").disabled = true;
            document.querySelector("#button").disabled = true;
            display.textContent = 'Tempo esgotado';
            console.log('formulário desabilitado!');
        }

    }, 1000);
}
window.onload = function () {

    var duration = (6 * 10 ) - 1;
    var display = document.querySelector("#timer"); 

    startTimer(duration, display);
}

