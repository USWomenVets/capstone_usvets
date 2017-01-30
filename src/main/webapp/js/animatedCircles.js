// var data = [
//     {id:'currentlyServe', percent:10},
//     {id:'militaryST', percent:20},
//     {id:'laborForce', percent:11},
//     {id:'educationBenefits', percent:80}
// ];
// data.forEach(function(e){
//     var canvas = document.getElementById(e.id);
//     var context = canvas.getContext('2d');
//
//     var startAngle = 1.5 * Math.PI;
//     var endAngle = (2 * Math.PI) / 100 * e.percent;
//
//     context.beginPath();
//     context.arc(64, 64, 60, startAngle, startAngle - endAngle, true);
//     context.lineWidth = 8;
//     context.lineCap = "round";
//     context.strokeStyle = 'red';
//     context.shadowOffsetX = 0;
//     context.shadowOffsetY = 0;
//     context.shadowBlur = 10;
//     context.shadowColor = '#656565';
//     context.strokeStyle = '#ad2323';
//     context.stroke();
// });
