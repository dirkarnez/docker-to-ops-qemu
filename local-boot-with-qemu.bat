"qemu-w64-setup-20211215\qemu-system-x86_64.exe" -machine q35 -device pcie-root-port,port=0x10,chassis=1,id=pci.1,bus=pcie.0,multifunction=on,addr=0x3 -device pcie-root-port,port=0x11,chassis=2,id=pci.2,bus=pcie.0,addr=0x3.0x1 -device pcie-root-port,port=0x12,chassis=3,id=pci.3,bus=pcie.0,addr=0x3.0x2 -device virtio-scsi-pci,bus=pci.2,addr=0x0,id=scsi0 -device scsi-hd,bus=scsi0.0,drive=hd0 -vga none -device isa-debug-exit -m 2G -no-reboot -cpu max -drive file=new_img.img,format=raw,if=none,id=hd0 -device virtio-net,bus=pci.3,addr=0x0,netdev=n0,mac=02:6d:a5:48:50:db -netdev user,id=n0,hostfwd=tcp::8083-:8083 -display none
pause
