

import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:openid_client/openid_client.dart';

void login() async {
  final oidUri = Uri.parse("http://192.168.1.96:8180/oauth/token");
  final issuer = await Issuer.discover(oidUri);
  final username = "evandro@evandro.com";
  final password = "evandro";
  final body = {
    'client': 'portalgrancoffe-code',
    'grant_type': 'password',
    'username': 'evandro@evandro.com',
    'password': 'evandro'
  };
var values = stringToBase64('portalgrancoffee-code:code123');
  var teste = utf8.decode(base64Url.decode("cG9ydGFsZ3JhbmNvZmZlZS1jb2RlOmNvZGUxMjM="));
  final headers = <String, String>{
    'Content-type': 'application/x-www-form-urlencoded',
    'authorization':  'Basic $values',
    'Cookie':
        'refreshToken=null'
  };

  final res = await http.post(oidUri, body: body, headers: headers);
  print(res);
}

func() async {
  // This URL is an endpoint that's provided by the authorization server. It's
// usually included in the server's documentation of its OAuth2 API.
  final authorizationEndpoint =
      Uri.parse("http://192.168.1.96:8180/oauth/token");

// The user should supply their own username and password.


// The authorization server may issue each client a separate client
// identifier and secret, which allows the server to tell which client
// is accessing it. Some servers may also have an anonymous
// identifier/secret pair that any client may use.
//
// Some servers don't require the client to authenticate itself, in which case
// these should be omitted.

// Make a request to the authorization endpoint that will produce the fully
// authenticated Client.
  print("entro");

//  var client = await oauth2.resourceOwnerPasswordGrant(
//      authorizationEndpoint, username, password,
//      identifier: 'portalgrancoffe-code',
//      secret: 'code123');

//
//  var client = await oauth2.clientCredentialsGrant(
//      authorizationEndpoint, username, password);
  print("saiu");

//  print(client) ;
}

class NetworkUtils {
  static final urlBase = 'http://192.168.1.96:8180';
  static final serverApi = 'api/';
  static final tokenEndpoint = 'oauth/token';

  static String clientIdentifier = 'portalgrancoffe-code';
  static String clientSecret = 'code123';

  static String storageKeyMobileToken = 'token';
}
 String stringToBase64(String credentials ) {
   Codec<String, String> stringToBase64 = utf8.fuse(base64);
  // return stringToBase64.encode(credentials);
   return base64Url.encode(utf8.encode(credentials));
 }