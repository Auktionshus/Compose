vault kv put secret/mongoSecrets ConnectionString=mongodb+srv://GroenOlsen:BhvQmiihJWiurl2V@auktionshusgo.yzctdhc.mongodb.net/?retryWrites=true&w=majority
vault kv put secret/JWT Secret=266BABE7C9DB9A34A7EB26E867FB2CA8833303E2CE6AAF28F6DDF04950718141 Issuer=issuer
vault kv get -mount=secret mongoSecrets