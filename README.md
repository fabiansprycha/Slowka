# Słówka z kafelków

Prosta apka do nauki pisania angielskich słówek: dziecko widzi polskie słowo i układa angielskie z przemieszanych kafelków z literami.

Listę słówek wpisuje się w zakładce „Lista słówek” (`pies - dog`, jedna para w linii). Zapisuje się w przeglądarce.

Deploy: GitHub Actions publikuje `index.html` na GitHub Pages przy każdym pushu do `main`.

Zestaw domyślny: „Słówka na sprawdzian”, Stars and Heroes 3, Unit 2.

Apkę można dodać do ekranu głównego telefonu (manifest, ikony i service worker). `build.sh` składa `index.html` ze źródła apki.
