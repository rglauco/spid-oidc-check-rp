echo ...
echo ... Questo comando serve a rinnovare la chiave ed il certificato di firma e di criptografica utilizzati da spid-oidc-check-rp.
echo ... Verrà ora richiesto di inserire la password per la chiave privata di firma, almeno 6 caratteri
echo ... 
openssl req -x509 -sha256 -days 730 -newkey rsa:2048 -keyout spid-oidc-check-rp-sig.key -out spid-oidc-check-rp-sig.crt
echo ... 
echo ... Ora si dovrà reinserire la password per rimuoverla dalla chiave
echo ...
openssl rsa -in spid-oidc-check-rp-sig.key -out spid-oidc-check-rp-sig.key
echo ...
echo ... Chiave e certificato di firma sono stati salvati rispettivamente in spid-oidc-check-rp-sig.key e spid-oidc-check-rp-sig.crt
echo ...
echo ...
echo ... Verrà ora richiesto di inserire la password per la chiave privata di crittografia, almeno 6 caratteri
echo ... 
openssl req -x509 -sha256 -days 730 -newkey rsa:2048 -keyout spid-oidc-check-rp-enc.key -out spid-oidc-check-rp-enc.crt
echo ... 
echo ... Ora si dovrà reinserire la password per rimuoverla dalla chiave
echo ...
openssl rsa -in spid-oidc-check-rp-enc.key -out spid-oidc-check-rp-enc.key
echo ...
echo ... Chiave e certificato di crittografia sono stati salvati rispettivamente in spid-oidc-check-rp-enc.key e spid-oidc-check-rp-enc.crt