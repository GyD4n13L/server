# Minden, ami egy szerverhez kellhet!


Mi kellhet egy szerverre!?
 *DHCP
 *DNS
 *SAMBA/FTP
 *VPN
 *FIREWALL
 *LDAP/ActiveDirector
 
 Ha nem akarunk folyamatban a jeszavak megadásával bajlódni, akkor állítsuk be a jelsző kérésének a kikapcsolását.
  STEP 1: Nyissuk meg a terminált.
  STEP 2 Nyissuk meg a 'visudo' állományt
    sudo visudo
  STEP 3: Keressük meg a "#includedir /etc/sudoers.d" sor és illeszük be alá a következőt:
  $root_fiók_neve ALL=(ALL) NOPASSWD:ALL
