cordova.define("lijie.myplugin", function(require, exports, module) { var exec = require('cordova/exec');

exports.coolMethod = function(arg0,arg1,arg2, success, error) {
    exec(success, error, "myplugin", "coolMethod", [arg0,arg1,arg2]);
};

});
