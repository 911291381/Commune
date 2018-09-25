function pushParam(param, name, value) {
    if (value != undefined && value != null) {
        param[name] = value;
    }
}

(function(_) {
    var _dateSep = '-'; // 日期分隔符
    var _sep = ' '; // 主分隔符
    var _timeSep = ':'; // 时间分隔符

    /**
     * 补0操作
     * 
     * @param value
     *            数值
     * @param len
     *            长度
     * @returns 补0后的字符串
     */
    function _fillZore(value, len) {
        var str = '' + value;
        var zNum = len - str.length;
        while (zNum > 0) {
            str = '0' + str;
            zNum--;
        }

        return str;
    }
    
    function _handleSep(sep, _sep){
        return (sep !== null && sep !== undefined) ? sep : _sep;
    }

    function _date(value, dateSep) {
        var d = new Date(value);

        var year = _fillZore(d.getFullYear(), 4);
        var month = _fillZore(d.getMonth() + 1, 2);
        var date = _fillZore(d.getDate(), 2);

        return [ year, month, date ].join(_handleSep(dateSep,_dateSep));
    }

    function _datetime(value, dateSep, sep, timeSep) {
        var d = new Date(value);

        var hour = _fillZore(d.getHours(), 2);
        var minute = _fillZore(d.getMinutes(), 2);
        var second = _fillZore(d.getSeconds(), 2);

        return _date(value,dateSep) + _handleSep(sep, _sep) + [ hour, minute, second ].join(_handleSep(timeSep, _timeSep));
    }

    _.$fmt = {
        date : function(value, dateSep) {
            return _date(value, dateSep);
        },
        datetime : function(value, dateSep, sep, timeSep) {
            return _datetime(value, dateSep, sep, timeSep);
        }
    };
})(window);
