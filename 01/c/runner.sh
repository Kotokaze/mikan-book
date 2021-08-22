clang -target x86_64-pc-win32-coff \
  -mno-red-zone \
  -fno-stack-protector \
  -fshort-wchar \
  -Wall \
  -c \
  hello.c

lld-link /Subsystem:efi_application /entry:EfiMain /out:hello.efi hello.o

bash $HOME/osbook/devenv/run_qemu.sh hello.efi
