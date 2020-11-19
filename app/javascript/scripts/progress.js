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
        thickness: 100,
        value: 0,
        size: 1000,
        fill: {
            color: "#f5d327"
        }
    });

    let circles = $('.circle').circleProgress({
        startAngle: -Math.PI/2,
        thickness: 75,
        value: 0,
        size: 750,
        fill: {
            color: "#f5d327"
        }
    });

    $('#australia').circleProgress({
        fill: "#0fa707",
        value: (percents.australia.current / percents.australia.max)
    });

    $('#islands').circleProgress({
        fill: "#cc090e",
        value: (percents.islands.current / percents.islands.max)
    });
    
    $('#se-asia').circleProgress({
        fill: "#32168e",
        value: (percents.seAsia.current / percents.seAsia.max)
    });

    $('#south-asia').circleProgress({
        fill: "#cbce09",
        value: (percents.southAsia.current / percents.southAsia.max)
    });

    $('#east-africa').circleProgress({
        fill: "#057c7c",
        value: (percents.eastAfrica.current / percents.eastAfrica.max)
    });

    $('#southern-africa').circleProgress({
        fill: "#ce6209",
        value: (percents.southernAfrica.current / percents.southernAfrica.max)
    });

    $('#central-africa').circleProgress({
        fill: "#5f0c89",
        value: (percents.centralAfrica.current / percents.centralAfrica.max)
    });

    $('#francophone').circleProgress({
        fill: "#88c108",
        value: (percents.francophone.current / percents.francophone.max)
    });

    $('#anglophone').circleProgress({
        fill: "#133b89",
        value: (percents.anglophone.current / percents.anglophone.max)
    });

    $('#latin-america').circleProgress({
        fill: "#ce8a09",
        value: (percents.latinAmerica.current / percents.latinAmerica.max)
    });

    $('#other').circleProgress({
        fill: "#a20765",
        value: (percents.other.current / percents.other.max)
    });

    setTimeout(() => {
        overall.circleProgress({
            value: (percents.overall.current / percents.overall.max)
        })
    }, 500)

})