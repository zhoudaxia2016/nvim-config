const expand = require('@emmetio/expand-abbreviation').expand
module.exports = plugin => {
  plugin.setOptions({ dev: true });

  plugin.registerFunction('EmmetComplete', [null, ([trigger]) => {
    console.log('abc')
    return expand(trigger).replace(/^\s+/mg, '')
  }], { sync: true })
}
