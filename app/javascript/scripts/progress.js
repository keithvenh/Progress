const ProgressBar = require('progressbar.js');

window.addEventListener('turbolinks:load', () => {

    let percents = {
        overall: {
            current: $('#overall').data('current'),
            max: $('#overall').data('max')
        },
        australia: {
            current: $('#australia').data('current'),
            max: $('#australia').data('max')
        },
        islands: {
            current: $('#islands').data('current'),
            max: $('#islands').data('max')
        },
        seAsia: {
            current: $('#se-asia').data('current'),
            max: $('#se-asia').data('max')
        },
        southAsia: {
            current: $('#south-asia').data('current'),
            max: $('#south-asia').data('max')
        },
        eastAfrica: {
            current: $('#east-africa').data('current'),
            max: $('#east-africa').data('max')
        },
        southernAfrica: {
            current: $('#southern-africa').data('current'),
            max: $('#southern-africa').data('max')
        },
        centralAfrica: {
            current: $('#central-africa').data('current'),
            max: $('#central-africa').data('max')
        },
        francophone: {
            current: $('#francophone').data('current'),
            max: $('#francophone').data('max')
        },
        anglophone: {
            current: $('#anglophone').data('current'),
            max: $('#anglophone').data('max')
        },
        latinAmerica: {
            current: $('#latin-america').data('current'),
            max: $('#latin-america').data('max')
        },
        other: {
            current: $('#other').data('current'),
            max: $('#other').data('max')
        }
    }

    console.log(percents.overall);
    
    let overall = $('#overall').circleProgress({
        startAngle: -Math.PI/2,
        thickness: 50,
        value: 0,
        size: 500,
        emptyFill: "rgba(245,211,39,0.1)",
        fill: {
            color: "#f5d327"
        },
        animation: {
            duration: 3000
        }
    });

    let circles = $('.circle').circleProgress({
        startAngle: -Math.PI/2,
        thickness: 30,
        value: 0,
        size: 300,
        fill: {
            color: "#f5d327"
        },
        animation: {
            duration: 2000
        }
    });

    $('#australia').circleProgress({
        fill: "#0fa707",
        value: (percents.australia.current / percents.australia.max),
        emptyFill: "rgba(15,167,7,0.1)"
    });

    $('#islands').circleProgress({
        fill: "#cc090e",
        value: (percents.islands.current / percents.islands.max),
        emptyFill: "rgba(204,9,14,0.1)"
    });
    
    $('#se-asia').circleProgress({
        fill: "#32168e",
        value: (percents.seAsia.current / percents.seAsia.max),
        emptyFill: "rgba(50,22,142,0.1)"
    });

    $('#south-asia').circleProgress({
        fill: "#cbce09",
        value: (percents.southAsia.current / percents.southAsia.max),
        emptyFill: "rgba(203,206,9,0.1)"
    });

    $('#east-africa').circleProgress({
        fill: "#057c7c",
        value: (percents.eastAfrica.current / percents.eastAfrica.max),
        emptyFill: "rgba(5,124,124,0.1)"
    });

    $('#southern-africa').circleProgress({
        fill: "#ce6209",
        value: (percents.southernAfrica.current / percents.southernAfrica.max),
        emptyFill: "rgba(206,98,9,0.1)"
    });

    $('#central-africa').circleProgress({
        fill: "#5f0c89",
        value: (percents.centralAfrica.current / percents.centralAfrica.max),
        emptyFill: "rgba(95,12,137,0.1)"
    });

    $('#francophone').circleProgress({
        fill: "#88c108",
        value: (percents.francophone.current / percents.francophone.max),
        emptyFill: "rgba(136,193,8,0.1)"
    });

    $('#anglophone').circleProgress({
        fill: "#133b89",
        value: (percents.anglophone.current / percents.anglophone.max),
        emptyFill: "rgba(19,59,137,0.1)"
    });

    $('#latin-america').circleProgress({
        fill: "#ce8a09",
        value: (percents.latinAmerica.current / percents.latinAmerica.max),
        emptyFill: "rgba(206,138,9,0.1)"
    });

    $('#other').circleProgress({
        fill: "#a20765",
        value: (percents.other.current / percents.other.max),
        emptyFill: "rgba(162,7,101,0.1)"
    });

    setTimeout(() => {
        overall.circleProgress({
            value: (percents.overall.current / percents.overall.max)
        })
    }, 500)

})