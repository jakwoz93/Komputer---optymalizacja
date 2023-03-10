netsh int tcp show global
netsh int tcp set global autotuninglevel=disabled
ipconfig /flushdns
netsh int tcp set global autotuninglevel = normal
netsh interface tcp set heuristics enable