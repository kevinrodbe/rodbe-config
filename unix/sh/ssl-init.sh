function ssl() {
  mkdir .cert
  mkcert -key-file ./.cert/key.pem -cert-file ./.cert/cert.pem "localhost"
  mkcert -install
}