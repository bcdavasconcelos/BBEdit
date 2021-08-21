const args = (process.argv.slice(2));
const grc = require("greek-transliteration");
const transliterate = grc.transliterate;
var theText = transliterate(args[0])
console.log(theText);