# pandora-utilities

This module offer a serie of modules, with baby steps, for things used daily in the development of applications in javascript

### install
```sh
npm install --save pandora-utilities
```

and in your .js file

```js
var utils = require('pandora-utilities');
console.log(utils);
```

this console.log show a object with all tools in this utilities, like below:

```sh
=> {
    code: [Function],
    validation: [Function],
    string: [Function]
}
```

# utils.code
Code, is a tool for encode string/data, or compare string/data with a hash.

For encode a string or data, use example below: 

```sh
hash = utils.code.encode 'lorem ipsum'
=> 80a751fde577028640c419000e33eba6
```

or compare

```sh
equals = utils.code.compare 'lorem ipsum', hash
equals2 = utils.code.compare 'lorem ipsum 2', hash
console.log equals, equals2
=> true, false
```

# utils.string
String is a utilitie for formatter your string.

For format a string like a url (without special dots, or accents, and use hifen instead space), use like the example below:

```sh
urlHash = utils.string.urlEncode 'Lorem iPsum dolor''s sit amet!! pops'
=> 'lorem-ipsum-dolors-sit-amet-pops'
```

# utils.validation

Validation, is a tool box with many regex. Is useful for use this regex in all layers of your app, like html pattern, and extends this pattern to your script. And other layer, is your models, for api, etc. But a unique source, this utils.validation. See examples

```shell
validation = utils.validation
console.log validation.regularExpressions
=> {
    name: /^[a-zA-Z]{3,}(\s[a-zA-Z]{3,})?/,
    firstname: /^[A-z]{3,}$/,
    lastname: /^[a-zA-Z]{3,}(\s)?/
    ...
}
```

See list complete of regex:
- name
- firstname
- lastname
- email
- password
- objectId
- hexColor
- zipcode
- zipcodeMask
- state
- latitude
- longitude
- phone
- phoneMask

How html use regex without modifiers, and without / before and after regex, you can get regex in html format, using:

```shell
validation = utils.validation
console.log validation.regularExpressionsHtml
=> {
    name: '^[a-zA-Z]{3,}(\s[a-zA-Z]{3,})?',
    firstname: '^[A-z]{3,}$',
    lastname: '^[a-zA-Z]{3,}(\s)?'
    ...
}
```

Enjoy!