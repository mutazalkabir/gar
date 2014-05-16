/**
 * Created with JetBrains WebStorm.
 * User: tunc_akin
 * Date: 16.05.2014
 * Time: 10:48
 * To change this template use File | Settings | File Templates.
 */

convertDate = function(date){
        var _date = new Date(date);
        var myDate = _date.getDate() + "/" + (_date.getMonth() + 1) + "/" + _date.getFullYear();
        return myDate;
}