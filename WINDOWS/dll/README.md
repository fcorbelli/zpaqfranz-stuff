### Istruction for making zpaqfranz-full.exe

1) edit the resources.rc file
2) edit the fai.bat
3) run fai.bat
4) change function int Jidac::kickstart_resources(std::string i_package) in the source code
```
elenco_risorse.push_back(risorse(1, "LIBSSH",	"libcrypto-3-x64.dll", 	5130880, 	"C0674A225D30F1642CA1DA45AC040A9C1885D8F23883532B42987BAE458EDC4D"));
elenco_risorse.push_back(risorse(4, "LIBSSH",	"libgcc_s_seh-1.dll", 	150707,		"B22B954397A52703579D92DB64B57812AF70F2AFCAFE2E742A009C1640B9EC1A"));
elenco_risorse.push_back(risorse(6, "LIBSSH",	"libssh.dll", 			513146,		"7385986FFA0BDDB95CAEB835A8118E96099A91CB3AD5B42A3009A6E0EDFC6B7F"));
elenco_risorse.push_back(risorse(7, "LIBSSH",	"libwinpthread-1.dll", 	60798,		"5091B85A2A73B82AA3CF433F51AF338F6245319D1C041BC26B42A61CBDB2F880"));
elenco_risorse.push_back(risorse(9, "LIBSSH",	"zlib1.dll", 			120814,		"CB7AB3788D10940DF874ACD97B1821BBB5EE4A91F3EEC11982BB5BF7A3C96443"));
elenco_risorse.push_back(risorse(5, "LIBSODIUM","libsodium.dll", 		312928,		"C61B8E230C86AADBF79368DA30B616DAFB05B81F5AECB4A6857C14AB23493125"));
elenco_risorse.push_back(risorse(8, "LIBSODIUM","vcruntime140.dll", 	124544,		"D5E4D9A3E835FA679450145D6A7D94E36573A509317111904D9B3712C30D9066"));
elenco_risorse.push_back(risorse(2, "LIBCURL",	"libcurl-x64.dll", 		3193960,	"2EA8DBCA33DE476B23497A10ACE1A76C54DDCEF061E866771BF737A376DDC882"));
elenco_risorse.push_back(risorse(3, "LIBCURL",	"mailsend.exe", 		1253888,	"0E23BD1214D687DC2B2E28D4FEA12BC1C197BC85B5FFE90BB8888C43746B6F21"));
elenco_risorse.push_back(risorse(10, "MYSQL",	"mysql.exe", 			4809640,	"65DCBF7897E062A02B6018FFDE4635183E75DBCC075F21D3BE7CC5A27C45FD12"));
elenco_risorse.push_back(risorse(11, "MYSQL",	"mysqldump.exe", 		4875064,	"F2114A565E8A4D23FC62FD190B59BFFF56C71B8E06B2F9308D246875708A0091"));

```
5) link the resources.o when compiling zpaqfranz (just an example)
```
g++   -O3 -s -DSFTP -DHWSHA2 -DHWBLAKE3 blake3_windows_gnu.S c:\zpaqfranz\zpaqfranz.cpp  -o c:\zpaqfranz\zpaqfranz.exe -pthread -static -Wall -Wpedantic -lurlmon -frandom-seed=1234
```

Currently mailsend.exe is this one https://github.com/muquit/mailsend/releases/tag/1.19

MD5 (mailsend1.20b.exe)  2280d9ae8bc78f03e6cefa3041c25068
