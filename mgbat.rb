def game
  gamecommands = ['sudo pacman -Syyu', 'sudo pacman -S yay', 'yay -S nvidia lutris mesa optimus-manager optimus-manager-qt steam game-mode', 'pip3 install protonup']
  for gamecommand in gamecommands
    puts '>>>COMMAND IN PROGRESS:' + gamecommand
    exec gamecommand
    puts '>>>COMMAND COMPLETE!'
  end
end

def prep
  prepcommands = ['sudo pacman -Syyu --noconfirm', 'sudo curl -O https://blackarch.org/strap.sh > strap.sh', 'sudo chmod +x strap.sh', 'sudo ./strap.sh']
  for prepcommand in prepcommands
    puts '>>>COMMAND IN PROGRESS:' + prepcommand
    exec prepcommand
    puts '>>>COMMAND COMPLETE!'
  end
end

def install
  installcommands = ['webapp', 'fuzzer', 'scanner', 'proxy', 'windows', 'dos', 'disassembler', 'cracker', 'voip', 'exploitation', 'recon', 'spoof', 'forensics', 'crypto', 'backdoor', 'networking', 'misc', 'defensive', 'wireless', 'automation', 'sniffer', 'binary', 'packer', 'reversing', 'mobile', 'malware', 'code-audit', 'social', 'honeypot', 'hardware', 'fingerprint', 'decompiler', 'config', 'debugger', 'firmware', 'bluetooth', 'database', 'automobile', 'nfc', 'tunnel', 'drone', 'unpacker', 'radio', 'keylogger', 'stego', 'scsanner', 'anti-forensics', 'ids', 'gpu']
  for installcommand in installcommands
    puts '>>>DOWNLOAD IN PROGRESS' + installcommand
    command = 'sudo pacman -S --noconfirm blackarch-' + installcommand
    exec command
    puts '>>>DOWNLOAD COMPLETE!'
  end
end

puts '>>>CTRL C TO CANCEL<<<'
game
prep
install
