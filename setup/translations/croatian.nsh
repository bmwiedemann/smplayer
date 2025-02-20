﻿;Language: Croatian (1050)
;Croatian language strings for the Windows SMPlayer NSIS installer.
;
;Save file as UTF-8 w/ BOM
;

!if ! ${NSIS_PACKEDVERSION} > 0x2999999
!insertmacro LANGFILE "Croatian" "Hrvatski"
!else
!insertmacro LANGFILE "Croatian" = "Hrvatski" =
!endif

; Startup
${LangFileString} Installer_Is_Running "Instalacijski program je već pokrenut."
${LangFileString} Installer_No_Admin "Morate biti prijavljeni kao administrator kada instaliravate ovaj program."
${LangFileString} SMPlayer_Is_Running "Primjerak SMPlayera je pokrenut. Zatvorite SMplayer i pokušajte ponovno."

${LangFileString} OS_Not_Supported "Nepodržan operativni sustav.$\nSMPlayer ${SMPLAYER_VERSION} zahtijeva minimum Windows XP i možda neće raditi ispravno na vašem sustavu.$\nSigurno želite nastaviti ovu instalaciju?"
${LangFileString} OS_Not_Supported_VistaRequired "Nepodržan operativni sustav.$\nSMPlayer ${SMPLAYER_VERSION} zahtijeva najmanje Windows Vistu i možda neće raditi ispravno na vašem sustavu.$\nSigurno želite nastaviti ovu instalaciju?"
${LangFileString} Win64_Required "64-bitni Windows operativni sustav je potreban za instalaciju ovog softvera."
${LangFileString} Existing_32bitInst "Trenutno je instalirana 32-bitna instalacija SMPlayera. Najprije morate deinstalirati 32-bitni SMPlayer."
${LangFileString} Existing_64bitInst "Trenutno je instalirana 64-bitna instalacija SMPlayera. Najprije morate deinstalirati 64-bitni SMPlayer."

; Welcome page
${LangFileString} WelcomePage_Title "$(^NameDA) program instalacije"
${LangFileString} WelcomePage_Text "Program instalacije će vas voditi kroz instalaciju $(^NameDA).$\r$\n$\r$\nPreporučljivo je da zatvorite sve primjerke SMPlayera prije pokretanja instalacije. To će omogućiti ažuriranje bitnih datoteka programa bez potrebe za ponovnim pokretanjem vašeg računala.$\r$\n$\r$\n$_KLIKNI"

; Components Page
${LangFileString} ShortcutGroupTitle "Prečaci"
${LangFileString} MPlayerGroupTitle "Mplayer komponente"
${LangFileString} MPlayerMPVGroupTitle "Multimedijski pogon"

${LangFileString} Section_SMPlayer "SMPlayer (potrebno)"
${LangFileString} Section_SMPlayer_Desc "SMPlayer, zajedeničke knjižnice i dokumentacija."

${LangFileString} Section_DesktopShortcut "Radna površina"
${LangFileString} Section_DesktopShortcut_Desc "Stvara SMplayer prečac na radnoj površini."

${LangFileString} Section_StartMenu "Start izbornik"
${LangFileString} Section_StartMenu_Desc "Stvara stavku Start izbornika za SMPlayer."

${LangFileString} Section_MPlayer "MPlayer (potrebno)"
${LangFileString} Section_MPlayer_Desc "MPlayer; potrebno za reprodukciju."

${LangFileString} Section_MPlayerCodecs "Binarni kôdeki"
!ifdef WIN64
${LangFileString} Section_MPlayerCodecs_Desc "Binarni kôdeki nisu podržani u ovoj inačici."
!else
${LangFileString} Section_MPlayerCodecs_Desc "Neobavezni kôdeki za MPlayer. (Potrebna je internet veza za instalaciju)"
!endif

${LangFileString} Section_MPV_Desc "Značajkama bogat fork MPlayera && MPlayera2"

${LangFileString} Section_YTDL "Youtube podrška (potrebno je preuzimanje)"
${LangFileString} Section_YTDL_Desc "Onogućuje reprodukciju Youtube videozapisa."

${LangFileString} Section_MEncoder_Desc "Prateći program za MPlayer koji se može koristiti za enkôdiranje ili transformiranje podržanih zvučnih ili video streamova."

${LangFileString} Section_IconThemes "Tema ikona"
${LangFileString} Section_IconThemes_Desc "Dodatna tema ikona za SMPlayer."

${LangFileString} Section_Translations "Jezici"
${LangFileString} Section_Translations_Desc "Ne-engleske jezične datoteke za SMPlayer."

${LangFileString} Section_ResetSettings_Desc "Briše SMPlayer osobitosti ostale od prijašnje instalacije."

${LangFileString} MPlayer_Codec_Msg "Paket binarnih kôdeka daje podršku za kôdeke koji još nisu izvorno ugrađeni, Poput novijih inačica RealVidea i još mnogo neuobičajenih formata.$\nImajte na umu da nužno ne moraju reproducirati većinu uobičajenih formata poput DVD-a, MPEG-1/2/4, itd."

; Upgrade/Reinstall Page
${LangFileString} Reinstall_Header_Text "Odaberite vrstu instalacije"
${LangFileString} Reinstall_Header_SubText "Odaberite način prepisivanja ili deinstalacije."

${LangFileString} Reinstall_Msg1 "Otkrivena je postojeća instalacija SMPlayera u sljedećoj mapi:"
${LangFileString} Reinstall_Msg2 "Odaberite nastavak instalacije:"
${LangFileString} Reinstall_Overwrite "Prepiši ($Inst_Type) preko postojeće instalacije"
${LangFileString} Reinstall_Uninstall "Deinstaliraj (ukloni) postojeću instalaciju"
${LangFileString} Reinstall_Msg3_1 "Kliknite 'Pokreni' kada ste spremni za nastavak."
${LangFileString} Reinstall_Msg3_2 "Kliknite 'Sljedeće' kada ste spremni za nastavak."
${LangFileString} Reinstall_Msg3_3 "Kliknite 'Deinstaliraj' kada ste spremni za nastavak."
${LangFileString} Reinstall_Msg4 "Promijeni postavke instalacije"
${LangFileString} Reinstall_Msg5 "Vrati na početno SMPlayer podešavanja"

${LangFileString} Remove_Settings_Confirmation "Sigurno želite vratiti izvorne SMPlayer postavke? Ova radnja se ne može poništiti."

${LangFileString} Type_Reinstall "reinstaliraj"
${LangFileString} Type_Downgrade "nadogradi na stariju inačicu"
${LangFileString} Type_Upgrade "nadogradi"

${LangFileString} StartBtn "Pokreni"

; Codecs Section
${LangFileString} Codecs_DL_Msg "Preuzimanje MPlayer kôdeka..."
${LangFileString} Codecs_DL_Retry "MPlayer kôdeki nisu uspješno instalirani. Pokušaj ponovno?"
${LangFileString} Codecs_DL_Failed "Neuspjelo preuzimanje MPlayer kôdeka: '$R0'."
${LangFileString} Codecs_Inst_Failed "Neuspjelo instaliranje MPlayer kôdeka."

; Uninstaller
${LangFileString} Uninstaller_No_Admin "Ova instalaciju može deinstalirati samo korisnik s administratorskim ovlastima."
${LangFileString} Uninstaller_Aborted "Deinstalaciju prekinuo korisnik."
${LangFileString} Uninstaller_NotInstalled "Čini se da SMPlayer nije instaliran u direktoriju '$INSTDIR'.$\r$\nIpak nastavite (nije preporučljivo)?"
${LangFileString} Uninstaller_InvalidDirectory "SMPlayer instalacija nije pronađena."
${LangFileString} Uninstaller_64bitOnly "Ova instalacija jedino može biti deinstalirana na 64-bitnim Windowsima."

; Vista & Later Default Programs Registration
${LangFileString} Application_Description "SMPlayer je potpuno sučelje za MPlayer, od osnovnih značajki poput reprodukcije video snimaka, DVD-a VCD-a, do naprednijih značajki poput podrške za MPlayer filtere, edl popise i još mnogo toga."

; Misc
${LangFileString} Info_Codecs_Backup "Stvaranje sigurnosne kopije kôdeka prijašnjih instalacija..."
${LangFileString} Info_Codecs_Restore "Vraćanje sigurnosne kopije kôdeka prijašnjih instalacija..."
${LangFileString} Info_Del_Files "Brisanje datoteka..."
${LangFileString} Info_Del_Registry "Brisanje ključeva registra..."
${LangFileString} Info_Del_Shortcuts "Brisanje prečaca..."
${LangFileString} Info_Rest_Assoc "Vraćanje na početno pridruživanja datoteka..."
${LangFileString} Info_RollBack "Vraćanje promjena..."
${LangFileString} Info_Files_Extract "Raspakiravanje datoteka..."
${LangFileString} Info_SMTube_Backup "Sigurnosno kopiranje SMTubea..."
${LangFileString} Info_SMTube_Restore "Vraćanje sigurnosne kopije prijašnje instalacije SMTuba..."
${LangFileString} Info_MPV_Backup "Sigurnosno kopiranje mpv-a..."
${LangFileString} Info_MPV_Restore "Vraćanje sigurnosne kopije prijašnje instalacije mpv-a..."

; MPV
${LangFileString} MPV_DL_Msg "Preuzimanje mpv-a..."
${LangFileString} MPV_DL_Retry "mpv nije uspješno instaliran. Pokušaj ponovno?"
${LangFileString} MPV_DL_Failed "Neuspjelo preuzimanje mpv-a: '$R0'."
${LangFileString} MPV_Inst_Failed "Neuspjelo instaliranje mpv-a."

; YouTube-DL
${LangFileString} YTDL_DL_Retry "YouTube-dl nije uspješno instaliran. Pokušaj ponovno?"
${LangFileString} YTDL_DL_Failed "Neuspjelo preuzimanje Youtube-dl: '$R0'."
${LangFileString} YTDL_Update_Check "Provjeravanje youtube-dl nadopuna..."
${LangFileString} YTDL_Error_Msg1 "Upozorenje: youtube-dl se zatvorio abnormalno s izlaznim kôdom: $YTDL_Exit_code"
${LangFileString} YTDL_Error_Msg2 "Visual C++ 2010 Runtime (x86) je potreban za youtube-dl."

; SMTube
${LangFileString} SMTube_Incompatible_Msg1 "Trenutna SMTube instalacije je nekompatibilna s ovom inačicom SMPlayera."
${LangFileString} SMTube_Incompatible_Msg2 "Nadogradite na posljednju inačicu SMTuba."

; Post install
${LangFileString} Info_Cleaning_Fontconfig "Brisanje priručne memorije slova..."
${LangFileString} Info_Cleaning_SMPlayer "Brisanje SMPlayer postavki..."
