
$(function(){var e=moment().format("ddd MMM DD").toUpperCase();$("#thisDay").append(e);var a=moment().dayOfYear(),t=moment().day();
    temp = sheetrock({
            url: "https://docs.google.com/spreadsheets/d/1fkv9awn6ErpH3bOgiNov13IgI2zjWzVAs1tH930Dv_o/pubhtml?gid=1113592492&single=true",
            query: 'select * where A <=' + a + ' and B>= ' + a,
            callback: function (error, options, response) {
               switch(t)
                {case 0:s=response.rows[1].cells.LAC_SUN,r=response.rows[1].cells.PCC_SUN;
                    break;
                    case 5:s=response.rows[1].cells.LAC_FRI,r=response.rows[1].cells.PCC_FRI;
                    break;
                    case 6:s=response.rows[1].cells.LAC_SAT,r=response.rows[1].cells.PCC_SAT;
                    ;break;
                    default:s=response.rows[1].cells.LAC_MTH,r=response.rows[1].cells.PCC_MTH;
                }
                $("#lac_hours").append(s),$("#pcc_hours").append(r);
            }
        
        });
     });
var slideout=new Slideout({panel:document.getElementById("panel"),menu:document.getElementById("menu"),padding:400,tolerance:70});document.querySelector("#menu_icon, #menu_icon_demo").addEventListener("click",function(){slideout.toggle()}),document.querySelector("#menu_icon").addEventListener("keypress",function(){(10==event.keyCode||13==event.keyCode)&&slideout.toggle();$('a#SiteMap').attr("tabindex",0).focus();});
