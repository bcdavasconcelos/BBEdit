// /usr/local/bin/node '/Users/bcdav/Dropbox/Application Support/BBEdit/Scripts/RemoveDiacritics.js "ἄνθρωπος"
// var phoneticLatin = greekUtils.toPhoneticLatin('Εύηχο: αυτό που ακούγεται ωραία.');
const args = (process.argv.slice(2));
var greekUtils = require('greek-utils');
var sanitized = greekUtils.sanitizeDiacritics(args[0]);
console.log(sanitized);