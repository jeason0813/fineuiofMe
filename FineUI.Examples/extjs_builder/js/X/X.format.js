
(function () {

    var F = Ext.util.Format;

    X.format = {

        capitalize: F.capitalize,

        date: F.dateRenderer,

        ellipsis: function (length) {
            return function (value) {
                return F.ellipsis(value, length, false);
            };
        },

        fileSize: F.fileSize,

        htmlEncode: F.htmlEncode,

        htmlDecode: F.htmlDecode,

        lowercase: F.lowercase,

        uppercase: F.uppercase,

        nl2br: F.nl2br,

        number: F.numberRenderer,

        stripScripts: F.stripScripts,

        stripTags: F.stripTags,

        trim: F.trim,

        usMoney: F.usMoney



    };


})();