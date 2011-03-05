//id karlosgliberal (patxangas) http://www.investic.net 
/**
 * FizzBuzz www.12meses12katas.com
 * Node.js – CommonJS and Creating Custom Modules 
 * http://goo.gl/gqENy
 */
var sys = require('sys');
var FizzBuzz = exports.FizzBuzz = function(callback){
   modulo(callback);
}

/**
 * modulo para los multiplos 
 */
var modulo = function(callback){
  for (i=1;i<=100; i++){
    if(i % 3 == 0){
      if(i % 5 == 0){
        callback('FizzBuzz');
      }else{
        callback('Fizz');
      }
    }else if(i % 5 == 0){
      callback('Buzz');
    }else{
      letras(i, callback);
    }
  }
}

/**
 * Conversión en letras del retorno para comprobar
 * Si contienen 5 o 4 
 */
var letras = function(i, callback){
  i = i+''
  var tres = i.search('3');
  var cinco = i.search('5');

  if(tres != -1){
    callback('Fizz');
  }else if(cinco != -1){
    callback('Buzz');
  }else {
    callback(i);
  }
}
