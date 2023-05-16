function calculateTime(){
    var years;
    var months;
    var start_lvl = Number(document.getElementById("select-your-lvl").value); 
    var finish_lvl = Number(document.getElementById("select-wanted-lvl").value); 
    var time = Number(document.getElementById("text-time").value);
    var result = ((finish_lvl - start_lvl) / time) * 7;
    years = Math.floor(result/365);
    months = Math.ceil((result-365*years)/30);
    if (years == 0 && months == 1) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + months + ' месяц.'; }
    if (years == 0 && months >= 2 && months <= 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + months + ' месяца.'; }
    if (years == 0 && months > 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + months + ' месяцев.'; }
    if (years == 1 && months == 1) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' год и ' + months + ' месяц.'; }
    if (years == 1 && months >= 2 && months <= 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' год и ' + months + ' месяца.'; }
    if (years == 1 && months > 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' год и ' + months + ' месяцев.'; }
    if (years >= 2 && years <= 4 && months == 1) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' года и ' + months + ' месяц.'; }
    if (years >= 2 && years <= 4 && months >= 2 && months <= 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' года и ' + months + ' месяца.'; }
    if (years >= 2 && years <= 4 && months > 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' года и ' + months + ' месяцев.'; }
    if (years > 4 && months == 1) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' лет и ' + months + ' месяц.'; }
    if (years > 4 && months >= 2 && months <= 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' лет и ' + months + ' месяца.'; }
    if (years > 4 && months > 4) 
        { document.getElementById("result").innerHTML = 'На обучение  Вас уйдёт ' + years + ' лет и ' + months + ' месяцев.'; }
}