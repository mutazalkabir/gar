/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 16.05.2014
 * Time: 10:48
 * To change this template use File | Settings | File Templates.
 */

convertDate = function(date){
        var intDate = parseInt(date * 1000);
        var _date = new Date(intDate);

        var myDate = _date.getDate() + "/" + (_date.getMonth() + 1) + "/" + _date.getFullYear();
        return myDate;
}

convertDateWithHour = function(date){
    var intDate = parseInt(date * 1000);
    var _date = new Date(intDate);

    var myDate = _date.getDate() + "/" + (_date.getMonth() + 1) + "/" + _date.getFullYear() + " " + _date.getHours()+":"+_date.getMinutes();
    return myDate;
}

createDate = function(){
    var date = new Date();
    var now = date.getDate() + "/" + (date.getMonth() + 1) + "/" + date.getFullYear() + " " + date.getHours()+":"+date.getMinutes();
    return now;
}

convertToMiliseconds = function(day, month, year){
    var date = new Date(""+ day +"-"+monthsArray[month]+"-"+year +" 16:00:00");
    var milliseconds = date.getTime();
    return milliseconds;
}

monthsArray = {
    "Ocak":"01",
    "Şubat":"02",
    "Mart":"03",
    "Nisan":"04",
    "Mayıs":"05",
    "Haziran":"06",
    "Temmuz":"07",
    "Ağustos":"08",
    "Eylül":"09",
    "Ekim":"10",
    "Kasım":"11",
    "Aralık":"12"
}