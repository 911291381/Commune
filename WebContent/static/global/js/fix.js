'use strict';

/**
 * String fix
 * @param g
 */
(function(g) {
    var pt = String.prototype;
    pt.startsWith = pt.startsWith || function(str) {
        return (str != null) && (this.indexOf(str) === 0);
    };

    pt.endsWith = pt.endsWith || function(str) {
        return (str != null) && (this.lastIndexOf(str) === this.length - str.length);
    };
}(window));

/**
 * console fix
 */
(function(g) {
    var _console = g.console || {
        version : '0.2.0'
    };
    var methods = [ 'assert', 'clear', 'count', 'debug', 'dir', 'dirxml', 'exception', 'error', 'group',
            'groupCollapsed', 'groupEnd', 'info', 'log', 'profile', 'profileEnd', 'table', 'time', 'timeEnd',
            'timeStamp', 'trace', 'warn' ];

    for (var i = 0, len = methods.length; i < len; i++) {
        var key = methods[i];
        if (typeof _console[key] === 'undefined') {
            _console[key] = function() {
            };
        }
    }

    g.console = _console;
}(window));