export PATH=/usr/local/bin:$PATH

alias cdg="cd ~/git/"
alias cds="cd ~/git/SSHOT/"
alias cdd="cd ~/git/SSHOT/slingshot_docs"
alias cdcng="cd ~/git/SSHOT/slingshot_controller_ng"
alias cdfabric="cd /Users/vsachs/git/SSHOT/slingshot_controller_ng/src/main/java/com/services/fabric"
alias cdl="cd ~/git/LONESSHOT/"
alias cdf="cd ~/git/LONESSHOT/fmctl/"
alias cdt="cd ~/git/LONESSHOT/sitf-tests"
alias cdp="cd ~/git/personal/"
alias cdm="cd ~/git/personal/mac_setup/"

alias e="emacs-27.2"
alias resource="source ~/.bashrc"
alias gisr="grep -Iisr"

## controller
alias mvnpa="mvn package -DskipTests=true -o"
alias mvnp="skipAnalysis=true mvn package -DskipTests=true -o"
alias mvni="skipAnalysis=true mvn install -DskipTests=true -o"
alias runcng="java -jar ~/git/SSHOT/slingshot_controller_ng/target/slingshot-*999.999.999*-with-dependencies.jar"

## git aliases
alias gits="git status"
# See what files Changed
alias gitic="git diff-tree --name-only -r"
# See what branches merged to (local?) master
alias gitmm="git branch --merged master"

#find
alias fl="find ./ -name"
alias fu="find ~/ -name"
alias fa="find / -name"

#docker aliases
alias dhngc="docker ps --filter ancestor=sshot-ngc --format {{.ID}} | xargs docker rm -f"
alias drngc="docker run -d -p 127.0.0.1:8000:8000 -p 127.0.0.1:9000:9000 sshot-ngc"

#ssh
alias genrsa="ssh-keygen -t rsa -b 4096 -o -a 100"
alias gened25519="ssh -t ed25519 -a 100"

# houston-image-server
alias mount_img="mount.cifs //15.115.64.57/Builds/1.Builds_SDG/1.SPP_Builds/HPC-Slingshot ~/drive-o -o username=sdg,password=Compaq123"
