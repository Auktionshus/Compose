# Creation of Vault data
Because Vault is running in dev mode data is not kept when the container is shutdown. Because of this we have created a script to populate the Vault with the necessary data

# If the script fails
We have issues with the script not always working when pulling from GitHub, if this happens to you, you will have to do it manually.

# Populate Vault Manually
1. Open Vault with https://localhost:8201/ in the browser
2. Login with 00000000-0000-0000-0000-000000000000 As the token
3. In secret create new secret with path "mongoSecrets", key should be "ConnectionString" and the value "mongodb+srv://GroenOlsen:BhvQmiihJWiurl2V@auktionshusgo.yzctdhc.mongodb.net/?retryWrites=true&w=majority"
4. now create another path for secret called "JWT" add 2 secrets the first key should be "Secret" with value "266BABE7C9DB9A34A7EB26E867FB2CA8833303E2CE6AAF28F6DDF04950718141"
5. the second key should be "Issuer" with value "issuer"
6. Restart the services not running if they dont do it themselves

## Json Example
### mongoSecrets
{
  "ConnectionString": "mongodb+srv://GroenOlsen:BhvQmiihJWiurl2V@auktionshusgo.yzctdhc.mongodb.net/?retryWrites=true&w=majority"
}
### JWT
{
  "Issuer": "issuer",
  "Secret": "266BABE7C9DB9A34A7EB26E867FB2CA8833303E2CE6AAF28F6DDF04950718141"
}
