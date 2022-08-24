#! /usr/bin/env bash



echo -e "\nCriação de Pastas.\n"

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo -e "\nPastas Criadas.\n"



echo -e "\nCriação de Grupos.\n"

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo -e "\nGrupos Criados.\n"



echo -e "\nCriação de Usuários.\n"

useradd carlos -m -c "Carlos" -s /bin/bash -p $(openssl passwd Senha123)
useradd maria -m -c "Maria" -s /bin/bash -p $(openssl passwd Senha123)
useradd joao -m -c "João" -s /bin/bash -p $(openssl passwd Senha123)

useradd debora -m -c "Debora" -s /bin/bash -p $(openssl passwd Senha123)
useradd sebastiana -m -c "Sebastiana" -s /bin/bash -p $(openssl passwd Senha123)
useradd roberto -m -c "Roberto" -s /bin/bash -p $(openssl passwd Senha123)

useradd josefina -m -c "Josefina" -s /bin/bash -p $(openssl passwd Senha123)
useradd amanda -m -c "Amanda" -s /bin/bash -p $(openssl passwd Senha123)
useradd rogerio -m -c "Rogerio" -s /bin/bash -p $(openssl passwd Senha123)

echo -e "\nUsuários Criados.\n"



echo -e "\nAdição Usuários aos Grupos.\n"

usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

echo -e "\nUsuários Adicionados.\n"



echo -e "\nAlteração de Permissões.\n"

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo -e "\nPermissões Alteradas.\n"