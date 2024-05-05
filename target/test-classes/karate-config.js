 function id(){
 var Config = {
 
name:'Mahesh',
ish: 'https://reqres.in/api/users',
}

var env =karate.env

karte.log('the value is',env);
if (env == 'dev'){
Config.ish: 'https://reqres.in/api/users/dev'
}
else(env=='qa'){
Config.ish : 'https://reqres.in/api/users/qa'
}
 return Config;
 }
