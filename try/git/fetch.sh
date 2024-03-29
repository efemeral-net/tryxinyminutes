# bare repo
git init --bare /tmp/remote.git >/dev/null 2>&1

# main branch
git clone /tmp/remote.git /tmp/repo >/dev/null 2>&1
cd /tmp/repo
echo "git is awesome" > message.txt
git add message.txt >/dev/null 2>&1
git commit -m "add message" >/dev/null 2>&1
git push >/dev/null 2>&1

# ohmypy branch
git branch ohmypy >/dev/null 2>&1
git switch ohmypy >/dev/null 2>&1
echo "print('git is awesome')" > ohmy.py
git add ohmy.py >/dev/null 2>&1
git commit -m "ohmy.py" >/dev/null 2>&1
git push -u origin ohmypy >/dev/null 2>&1

# checkout main
cd /tmp
rm -rf /tmp/repo
git clone /tmp/remote.git /tmp/repo >/dev/null 2>&1
cd /tmp/repo

##CODE##