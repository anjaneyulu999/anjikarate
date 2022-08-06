function myfunction(creds)
{
var temp = creds.username+':' creds.password;
var obj= java.type('java.util.Base64');
var encoded= obj.getEncoder().encodeTOString(temp.tostring().getBytes());
return('Basic ' +encoded);
}