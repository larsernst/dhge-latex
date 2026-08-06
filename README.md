# DHGE-LaTeX

Inoffizielles LaTeX-Template für Projektarbeiten für Technik-Studiengänge an der Dualen Hochschule Gera Eisenach

# Inhaltsverzeichnis <!-- omit in toc -->

- [Installation](#installation)
  - [LaTeX Installation](#latex-installation)
    - [Perl](#perl)
  - [Setup](#setup)
    - [Visual Studio Code: empfohlene Erweiterungen](#visual-studio-code-empfohlene-erweiterungen)
    - [Einstellen von TeXstudio zur Nutzung von `latexmk`](#einstellen-von-texstudio-zur-nutzung-von-latexmk)
    - [Einstellen von LaTeX Workshop (VSCode)](#einstellen-von-latex-workshop-vscode)
- [Latex Tipps](#latex-tipps)
  - ["Variablen"](#variablen)
  - [Environment (Umgebung)](#environment-umgebung)
    - [Common Environments](#common-environments)
  - [Fonts](#fonts)
- [Zitate und Literaturverzeichnis](#zitate-und-literaturverzeichnis)
  - [Zitat als Fußnote einfügen](#zitat-als-fußnote-einfügen)
  - [Hochgestelltes Zitat einfügen](#hochgestelltes-zitat-einfügen)
  - [Tipps](#tipps)
    - [Firma als Autor](#firma-als-autor)
    - [Mehrere Autoren](#mehrere-autoren)
    - [Indirektes Zitat](#indirektes-zitat)
- [Abbildungen](#abbildungen)
  - [LaTeX Abbildungen](#latex-abbildungen)
  - [dhge-latex Abbildungen](#dhge-latex-abbildungen)
- [Glossar](#glossar)
- [Anlagenverzeichnis](#anlagenverzeichnis)
  - [Verwendung](#verwendung)
    - [Longfigure](#longfigure)
- [Code mit Minted einfügen](#code-mit-minted-einfügen)
- [Spezielle Abschnitte](#spezielle-abschnitte)
  - [SubSubSubSection](#subsubsubsection)
- [Unicode Alphabete](#unicode-alphabete)
- [Kusche Mode](#kusche-mode)
  - [Probleme im Kusche Mode](#probleme-im-kusche-mode)
- [Abstract](#abstract)
- [Absatztrenner](#absatztrenner)

# Installation

## LaTeX Installation
Eine Installation von MikTeX über [proTeXt](https://www.tug.org/protext/) wird empfohlen.
Als Editor bieten sich beispielsweise [Visual Studio Code](https://code.visualstudio.com/) in Kombination mit der [latex-workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop) Extension oder alternativ [TeXstudio](https://www.texstudio.org/) an.

>Bei einer bereits bestehenden Installation sollten die installierten Packages auf Updates überprüft werden. Andererseits kann es zu Problemen beim Bauen kommen.

### Perl

Möchte man Dokumente mit `latextmk` bauen, was wir im Abschnitt [Setup](#setup) empfehlen, wird eine funktionierende Perl-Installation benötigt.
Nutzer von macOS und Linux haben meistens schon ein vorinstalliertes Perl.

**Überprüfung einer Installation**

Wenn man herausfinden möchte, ob man bereits ein funktionierendes Perl hat oder die unten genannte Installation erfolgreich verlief, kann man in einer Kommandozeile (Terminal) seiner Wahl ``perl -v`` ausführen.
Ist Perl korrekt installiert, wird die Version ausgegeben:

![Perl ist unter Windows korrekt installiert](assets/readme/perl-windows.jpg)

Ist die Perl-Installation nicht vorhanden oder dem Terminal unbekannt, wird stattdessen folgendes ausgegeben:

![Kein Perl installiert](assets/readme/no-perl-windows.jpg)

**Installation unter Windows**

Für Windows Nutzer empfiehlt sich Strawberry Perl, was [hier](https://strawberryperl.com/) erhältlich ist.

## Setup

Das Repository downloaden, clonen, oder die Template Funktion nutzen, um ein eigenes Repository zu erstellen.

Das Projekt sollte sich nun bauen lassen.

Wir empfehlen den `latexmk` Befehl zum Kompilieren des Projekts.
Während die Visual Studio Code Erweiterung "LaTeX Workshop" standardmäßig `latexmk` verwendet, ist bei TeXstudio eine Anpassung der Einstellungen erforderlich, siehe [hier](#einstellen-von-texstudio-zur-nutzung-von-latexmk)

### Visual Studio Code: empfohlene Erweiterungen

Wir empfehlen für die Arbeit in Visual Studio Code ausgewählte Erweiterungen, die sowohl für das Schreiben mit LaTeX, als auch für das Studium an der DHGE<!--ähem Plantuml--> hilfreich sind.
Um sie zu prüfen und ggf. zu installieren, kann in dem Erweiterungsmenü nach `@recommended` gesucht werden:

![Empfohlene Erweiterungen in VS Code](assets/readme/vscode-recom-exts.png)

### Einstellen von TeXstudio zur Nutzung von `latexmk`

1. Die TeXstudio-Einstellungen öffnen: Im Menüband `Optionen`, dann `TeXstudio konfigurieren...` anklicken
2. Im Abschnitt `Befehle` sichergehen, dass der Latexmk-Eintrag befüllt ist, z.B. mit: `latexmk.exe -pdf -silent -synctex=1 %`
3. Im Abschnitt `Erzeugen` den Standardcompiler `Latexmk` in der Drop-down Liste auswählen

### Einstellen von LaTeX Workshop (VSCode)

Die Erweiterung "LaTeX Workshop" für Visual Studio Code bietet eine Vielzahl von Einstellungsmöglichkeiten und kann auf die individuellen Bedürfnisse angepasst werden.
z.B. kann ein externer PDF-Betrachter oder ein automatisches Build-Intervall eingerichtet werden.
Die Einstellungen für die Erweiterung findet man am Ende der Einstellungen von Visual Studio Code selbst:

1. im Menüband `Datei` anklicken
2. über `Einstellungen` hovern und dort `Einstellungen` anklicken.
3. Am Ende der Liste `Erweiterungen` aufklappen und das Kapitel `LaTeX` anklicken.

![Einstellungen für LaTeX Workshop](assets/readme/vscode-latex-settings.jpg)

# Latex Tipps

<!-- todo: add more -->
Ein relativ simples [LaTeX-Tutorial](https://www.latex-tutorial.com/tutorials/first-document/) zum einfachen Einstieg in die Welt von TeX.
> _ist allerdings durch das Template nicht nötig, nachfolgendes sollte ausreichen_

Für einen Einstieg in das wissenschaftliche Schreiben an sich bietet sich ein Artikel von Sebastian Hahner an, der ebenfalls auf LaTeX eingeht: [Wissenschaftliches Schreiben Schnelleinstieg](https://github.com/sebinside/WissenschaftlichesSchreiben-Schnelleinstieg)

## "Variablen"

Variablen gibt es in TeX an sich nicht wie in anderen Sprachen.

```latex
\def\<variablenName>{<variablenWert>}
```

Der `\def` Befehl definiert ein Command der letztendlich Folgendem entspricht:

```latex
\newcommand{\<variablenName>}{<variablenWert>}
```

Richtig werden diese "Variablen" dann durch `\<variablenName>`**`{}`** aufgerufen.

Alternativ ist aber auch möglich, sie durch `\<variablenName>` aufzurufen.\
> Hier ist zu beachten, dass nach der Variable das Leerzeichen fehlen wird, da dieses als Argument des Befehls aufgenommen wird

## Environment (Umgebung)

Ein Codeblock, welcher bestimmte Abläufe vor und nach dem eigenen Code laufen lässt.

```latex
\begin{<environment>}
  <codeAndText>
\end{<environment>}
```

### Common Environments

- [itemize/enumerate](https://en.wikibooks.org/wiki/LaTeX/List_Structures)
- [table/tabular](https://en.wikibooks.org/wiki/LaTeX/Tables)
- [figure](https://en.wikibooks.org/wiki/LaTeX/Floats,_Figures_and_Captions)

## Fonts

> Die Standardfonts sind zwar ganz in Ordnung, aber ich finde, das geht schöner :^)

Für Fließtext wird Palatino, ein für LaTeX optimierter Klon von Palladio Roman L verwendet.

Die vorgestellte Font-Konfiguration basiert auf [diesem Stackoverflow Thread](https://tex.stackexchange.com/a/114166), wo auch eine Vorschau betrachtet werden kann.
**Die Fonts sind standardmäßig im Template aktiv.**

Wer diese Fonts **nicht** verwenden möchte, kann in ``config.tex`` ``CFANCYFONTS`` auf ``0`` setzen, um den LaTex-Standard wiederherzustellen.

# Zitate und Literaturverzeichnis

> Nach den Hinweisen von Prof. Dr. Kusche werden Literaturverweise **inline** im Text angegeben, nicht in Fußnoten ausgelagert.

## Inline-Zitat einfügen

Dafür wird der `cite` Befehl genutzt. Dieser besitzt folgende Syntax:

```latex
\cite[Postnote]{literatur_id}
```

Beispiel:

```latex
... siehe \cite[S. 42]{mapi}
```

Der Zitatschlüssel (z.B. `[Mic13a]`) wird automatisch aus dem Schlüssel in `literatur.bib` gebildet und ist alphabetisch sortiert. Nur fortlaufende Nummern als Zitatschlüssel sind unerwünscht.

## Zitat als Fußnote einfügen

Dafür wird der `footcite` Befehl genutzt. Dieser besitzt folgende Syntax:

```latex
\footcite[Postnote]{literatur_id}
```

Beispiel:

```latex
\footcite[S. 42]{mapi}
```

## Hochgestelltes Zitat einfügen

Alternativ kann nun auch der `supercite` Befehl verwendet werden:

```latex
\supercite[Postnote]{literatur_id}
```

Beispiel:

```latex
\supercite[S. 42]{mapi}
```

***

<!-- todo: is this still a thing? the vscode extension does this pretty well without crying -->
**Bei jeder Änderung in `literatur.bib` müssen folgende Schritte durchgeführt werden:**

1. Das Projekt kompilieren (`pdflatex.exe -synctex=1 -interaction=nonstopmode "template".tex`)
2. Biber ausführen (`biber.exe "template"`)
3. Das Projekt 2x kompilieren

***

> Werden die oben genannten Schritte nicht durchgeführt, kommt es zu Darstellungsfehlern bei Zitaten und dem Literaturverzeichnis.

***

## Tipps

### Firma als Autor

Wird als "Autor" eine Firma verwendet, sollten doppelte `{}` in der `literatur.bib` verwendet werden.
Das bewirkt Wunder.

### Mehrere Autoren

Mehrere Autoren können mit `and` verknüpft werden. Beispielsweise: `author={Felix Prillwitz and Oliver Kogel and 谭九鼎}`

### Indirektes Zitat

Wird `\footcite` oder `\supercite` mit beiden optionalen Parametern aufgerufen, so ist die Syntax wie folgt:

```latex
\footcite[Prenote][Postnote]{id}
```

Beispiel:

```latex
\supercite[Vgl.][]{Computerphile.2020}
```

# Abbildungen

- Abbildungen werden durch das Template in `assets/img` gefunden.
  - `\includegraphics{<imgName>}` entspricht `\includegraphics{assets/img/<imgName>}`
  - anpassbar durch `\graphicspath {{<newImagePath>}}`
    - **`<newImagePath>`** ist aus der sicht von `build/` zu sehen
    - `\graphicspath {{../assets/img/}}}`

## LaTeX Abbildungen

```latex
\begin{figure}[<options>]
  \caption{<captionName>}
  \includegraphics[<imgOptions>]{<imgName>}
  \label{<labelName>}
\end{figure}
```

Beispiel:

```latex
\begin{figure}[h]
  \centering
  \caption{testImgName}
  \includegraphics[scale=0.75]{imgName}
  \label{fig:anlagentest}
\end{figure}
```

- `[h]` - entspricht dem Fixieren an der Stelle im Text
- `[scale=0.75]` - skaliert das Bild auf 75% der Originalgröße
- `fig:anlagentest` - `fig:` oder `tab:` ist ein typischer Anfang von Referenzen für entsprechend `figure` oder `table` Umgebung

Einsteigern wird [dieses Tutorial von Overleaf](https://www.overleaf.com/learn/latex/Inserting_Images) empfohlen,
welches einen Überblick über Bilder und ihre Optionen wie z.B. Positionierung in LaTeX bietet.

## dhge-latex Abbildungen

```latex
\dhgefigure[1]{2}[3]{4}{5}[6][7]
```

kann mit bis zu sechs Argumenten aufgerufen werden:

1. **Optional** Float Position, standardmäßig `tbp`
2. Relativer Bild-Pfad mit oder ohne Dateiendung (relativ zum `./assets/img` Ordner, kann in `template.tex` angepasst werden)
3. `\includegraphics` Optionen (weglassen für Standard (Breite = Textbreite))
4. Bildunterschrift
5. Label für die Figure/Grafik
6. **Optional:** ID
7. **Optional:** "Postnote", beispielsweise um Seitenzahlen anzugeben

Beispiel:

```latex
% allen Optionen (optionale Optionen können sowohl `[]` als auch `{}` sein (hier `[]`), required müssen `{}` sein)
\dhgefigure[h]{mapi_outgoing_illustration}[scale=0.75]{Absenden einer MAPI Nachricht}{fig:mapi}[mapi][S. 17ff]
% nur notwendige Optionen
\dhgefigure{mapi_outgoing_illustration}{Absenden einer MAPI Nachricht}{fig:mapi}
```

***

Der `dhgefigure` Befehl wird nun auch als Snippet für Visual-Studio-Code mitgeliefert.

# Glossar

> Ersetzt das Abkürzungsverzeichnis: Enthält alle Fachbegriffe **und** Abkürzungen, deren Bedeutung nicht für jeden Leser klar und eindeutig ist (auch firmeninterne Begriffe!). Jeder Eintrag wird mit einem (kurzen) Absatz Beschreibung versehen.
> Das Glossar wird automatisch **alphabetisch sortiert**, mit **Hanging Indent** und **fett gedrucktem** Fachbegriff formatiert.
> Es erscheint hinter den Anhängen, aber vor dem Literaturverzeichnis.

> Wer statt des Glossars das klassische Abkürzungsverzeichnis (acro-Paket, Stand vor der Glossar-Umstellung) verwenden möchte, setzt in der `config.tex` den Schalter `CGLOSSAR` auf `0` und pflegt die Abkürzungen in `abk.tex` (siehe das dortige Beispiel). Das Abkürzungsverzeichnis erscheint dann vor dem Hauptteil hinter dem Tabellenverzeichnis. Mit `CGLOSSAR=1` (Voreinstellung) gilt das Glossar in `glossar.tex`.

## Fachbegriff definieren

```latex
\newglossaryentry{1}{
  name = {2},
  description = {3}
}
```

1. ID des Begriffs, damit wird im Fließtext referenziert.
2. Der Begriff selbst
3. Die Erläuterung (ein kurzer Absatz)

Beispiel:

```latex
\newglossaryentry{latex}{
  name = {LaTeX},
  description = {Ein Textsatzsystem zur Erstellung wissenschaftlicher Dokumente auf Basis des Satzprogramms \TeX.}
}
```

## Abkürzung definieren

```latex
\newacronym[description={4}]{1}{2}{3}
```

1. ID der Abkürzung, damit wird im Fließtext referenziert.
2. Die Abkürzung selbst
3. Der ausgeschriebene Begriff
4. (Optional) Erläuterung, da bei den meisten Abkürzungen allein der ausgeschriebene Wortlaut ohne Erklärung nicht sinnvoll ist

Beispiel:

```latex
\newacronym[description={Die Duale Hochschule Gera-Eisenach ...}]{dhge}{DHGE}{Duale Hochschule Gera-Eisenach}
```

## Verwendung im Text

Im Fließtext wird der Eintrag mit

```latex
\gls{latex}
```

aufgerufen. Für Abkürzungen gilt: Bei der ersten Verwendung wird `lang (KURZ)` gedruckt, danach nur noch `KURZ`.
Der bisherige Befehl `\ac{id}` aus dem acro-Paket funktioniert weiterhin (entspricht `\gls{id}`).

## Kompilierung

Für das Glossar ist ein zusätzlicher Verarbeitungsschritt nötig (`makeglossaries`).
Wird das Projekt mit `latexmk` kompiliert (empfohlen, siehe [Setup](#setup)), kümmert sich die mitgelieferte `.latexmkrc` automatisch darum.
Beim Hinzufügen/Entfernen von Einträgen sind unter Umständen mehrere Kompilierläufe nötig.

# Anlagenverzeichnis

> Im Kusche-Modus wird **kein separates Anhangs-Verzeichnis** erzeugt: Die Anhänge werden mit Großbuchstaben (A, B, C, ...) nummeriert und wie normale Hauptkapitel am Ende des Inhaltsverzeichnisses gelistet. Abbildungen und Tabellen in den Anhängen heißen dann A.1, A.2, B.1 usw.

## Verwendung im Kusche-Modus

Anhänge werden in der `anlagen.tex` mit dem Befehl `\anhang{Titel}` eingeleitet:

```latex
\anhang{Titel von Anhang A}
% Abbildungen/Tabellen/Code-Listings zu Anhang A

\anhang{Titel von Anhang B}
% Abbildungen/Tabellen/Code-Listings zu Anhang B
```

Die Anhänge werden automatisch fortlaufend mit A, B, C, ... nummeriert (auch bei nur einem Anhang: er heißt dann eben "A").

## Verwendung im Standard-Modus

> wird automatisch generiert

- Anlagen werden in der anlagen.tex hinterlegt.
  - hierbei ist zu beachten:
    - die Anlage muss sich in einer Umgebung vom Typ `figure`, `table` oder `longfigure` befinden
    - die Anlage benötigt eine Beschriftung `\caption{}`
  - ein Label ist für eine automatische Verknüpfung im Anlagenverzeichnis nicht nötig
  - der vorgefertigte Befehl `\dhgefigure`, kann verwendet werden, da dieser beide Anforderungen erfüllt
  - siehe Beispiel `build/tests/anlagen.tex`

Beispiel:

```latex
\begin{table}
    \caption{TestBeschriftung}
    \begin{tabular}{c | c}
        1 & 1 \\
    \end{tabular}
\end{table}
```

### Longfigure

Damit auch nicht-Floats in den Anlagen möglich sind, gibt es die `longfigure`-Environment.
Diese verhält sich im Grunde wie `figure`. Der Inhalt darf jedoch über Seitengrenzen hinweg gehen.
Das ist besonders für Code-Beispiele für den Anhang praktisch.

# Code mit Minted einfügen

**Hier eine kurze Anleitung für das Minted Package. Damit lässt sich Code mit Syntaxhervorhebung direkt in LaTeX einfügen.**

1. Python [hier](https://www.python.org/) herunterladen und installieren und **sicherstellen, dass Python zur Umgebung (PATH) hinzugefügt ist**

![Python PATH](assets/readme/python-path.png)

2. Pygments installieren (`pip install Pygments`)
3. `\usepackage {minted}` in `build/package.config.tex` hinzufügen
4. `--shell-escape` flag im Compiler-Aufruf setzen
5. [Minted Kurz-Anleitung](https://www.overleaf.com/learn/latex/Code_Highlighting_with_minted) oder [Minted Documentation](https://ctan.mc1.root.project-creative.net/macros/latex/contrib/minted/minted.pdf) lesen

***

Bei Proxy-Problemen mit pip, kann auch das `Pygments.whl` file runtergeladen und dann mit pip installiert werden.
[Pygments Download](https://pypi.org/project/Pygments/#files)

# Spezielle Abschnitte

## SubSubSubSection

Falls man einen Abschnitt 4. Stufe schreiben möchte, kann das mit

```latex
\dhgeparagraph{}
```

umgesetzt werden.

Beispiel:

```latex
\dhgeparagraph{This is a SubSubSubSection}
```

# Unicode Alphabete

Falls chinesische, japanische o.ä. Alphabete verwendet werden müssen (bspw. bedingt durch Autoren), ist die einfachste Methode, das `CJKutf8` Package zu laden.

Eine Anleitung finden Sie in [diesem Artikel](https://www.overleaf.com/learn/latex/chinese).

# Kusche Mode

Prof. Dr. Kusche stellt an Praxisarbeiten, die er betreut, andere Anforderungen als Prof. Dr. Dorendorf.
Deshalb wurde der ``CKUSCHE``-Schalter in ``config.tex`` eingeführt. Er ist die Voreinstellung des Templates und setzt die "Hinweise zu Praxis- und Bachelor-Arbeiten" von Prof. Dr. Kusche um:

- es gibt ein Abstract (deutsch und englisch)
- das Abstract wird nicht im Inhaltsverzeichnis geführt
- das Abstract erscheint vor dem Inhaltsverzeichnis
- das Abstract hat keine Kapitelnummer
- Abbildungen, Tabellen, usw. werden zweistufig ``hauptkapitel.lfd`` nummeriert, in den Anhängen entsprechend ``A.1``, ``A.2``, ``B.1``, ...
- Kapitel steht links im Footer / Header, analog zur Seitenzahl
- Seitenzahlen vor dem Hauptteil sind römisch, ansonsten durchgehend arabisch (auch in Anhängen und Literaturverzeichnis)
- Serifen-Font 12pt
- es gibt kein separates Anhangs-Verzeichnis: Anhänge werden mit Großbuchstaben (A, B, C, ...) nummeriert und wie normale Hauptkapitel im Inhaltsverzeichnis geführt
- statt des Abkürzungsverzeichnisses gibt es ein Glossar (hinter den Anhängen, vor dem Literaturverzeichnis)
- Literaturverzeichnis erscheint zuletzt

## Probleme im Kusche Mode

Leider gibt es Anforderungen von Prof. Dr. Kusche, die bislang nicht umgesetzt werden konnten.
Wir freuen uns natürlich sehr über Ideen, Fixes und Anregungen aus der Community.

# Abstract

Das Template generiert ein Abstract in deutscher und englischer Sprache vor dem Inhaltsverzeichnis (hinter dem Deckblatt).

In der ``abstract.tex`` wird pro Sprache je 2 Absätze mit jeweils 5-10 Zeilen erwartet:
1. Absatz: "inhaltliche Einordnung" (Themenbereich der Arbeit)
2. Absatz: "eigene Leistung" (Neuwert bzw. Erkenntnis/Ergebnis der Arbeit)

Das Abstract wird nicht im Inhaltsverzeichnis geführt.

Um das Abstract zu deaktivieren, muss in der ``config.tex`` der ``CHASABSTRACT``-Schalter auf ``0`` gesetzt werden.

# Absatztrenner

Absätze können mit Einrückungen oder vertikalen Abständen getrennt werden.
Der LaTeX Standard sind Einrückungen, Abstände sind aus beliebten WYSIWYG-Editoren wie LibreOffice bekannt.
An der Studienrichtung Technik der DHGE werden Abstände in Arbeiten bevorzugt, weshalb das die Voreinstellung des Templates ist.

Wenn Einrückungen bevorzugt werden, kann das in der ``config.tex`` geändert werden, indem der ``CEINR``-Schalter auf ``1`` gesetzt wird.
