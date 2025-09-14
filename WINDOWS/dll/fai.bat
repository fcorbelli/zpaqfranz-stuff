::: https://github.com/muquit/mailsend/releases/tag/1.19


zpipe.exe -3 <libcrypto-3-x64.dll >1.lib
zpipe.exe -3 <libcurl-x64.dll     >2.lib
zpipe.exe -3 <mailsend.exe        >3.lib
zpipe.exe -3 <libgcc_s_seh-1.dll  >4.lib
zpipe.exe -3 <libsodium.dll       >5.lib
zpipe.exe -3 <libssh.dll          >6.lib
zpipe.exe -3 <libwinpthread-1.dll >7.lib
zpipe.exe -3 <vcruntime140.dll    >8.lib
zpipe.exe -3 <zlib1.dll           >9.lib
zpipe.exe -3 <mysql.exe           >10.lib
zpipe.exe -3 <mysqldump.exe       >11.lib
windres resources.rc -o resources.o
zpaqfranz sum *.exe *.dll -terse

rem ld -r -b binary 1.lib 2.lib 3.lib 4.lib 5.lib 6.lib 7.lib 8.lib 9.lib -o resources.o
