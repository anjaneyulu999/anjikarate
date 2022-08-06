function myfun()
{
var env = karate.env; //get java system property 'karate.env' from runner class
if(!env)
{
env = 'DEV';
}
var config= {requestUrl: 'https://jsonplaceholder.typicode.com/posts' }; //in DEV
if(env=='QA')
{
config= {requestUrl: 'https://jsonplaceholder.typicode.com/posts';
}
else if (env=='STG')
 {
 config= {requestUrl: 'https://jsonplaceholder.typicode.com/posts';
 }
 return (config);
 }