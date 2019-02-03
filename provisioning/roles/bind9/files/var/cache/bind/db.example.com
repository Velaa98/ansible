$ORIGIN example.com.
$TTL	86400
@       IN      SOA     nodo1.          nodo1@example.com. (
                              1
                         604800
                          86400
                        2419200
                          86400 )
;
@	IN	NS	nodo1.
nodo1	IN	A	10.0.0.10
nodo2	IN	A	10.0.0.11
drupal	IN	CNAME	nodo2
