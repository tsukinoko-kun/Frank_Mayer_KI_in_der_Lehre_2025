#import "@preview/charged-ieee:0.1.3": ieee
#import "@preview/plotst:0.2.0"
#let color-orage-400 = rgb("#FF8904")
#let color-sky-400 = rgb("#00BCFF")

#set par.line(numbering: "1")

#show: ieee.with(
  title: [Wie wirkt sich die Verwendung von KI auf den Lernerfolg von Software-Engineering-Studenten aus?],
  abstract: [
    Diese Arbeit untersucht den Einfluss von KI-basierten Chatbots auf den Lernerfolg von Studierenden im Fach Software Engineering. Im Rahmen eines quasi-experimentellen Designs werden zwei Studentengruppen – eine Kontrollgruppe und eine Gruppe, die KI-gestützte Tutorien erhält – hinsichtlich ihrer Leistungsentwicklung, Selbsteinschätzung und Interaktion mit den eingesetzten Tools analysiert. Die Ergebnisse liefern differenzierte Einblicke in die Effektivität von KI-Tutoren und beleuchten methodische Herausforderungen, die bei der Evaluation digitaler Lehr- und Lerntechnologien zu berücksichtigen sind.
  ],
  authors: (
    (
      name: "Frank Mayer",
      department: [Software Engineering],
      organization: [Hochschule Heilbronn],
      location: [Heilbronn, Deutschland],
      email: "fmayer2@stud.hs-heilbronn.de",
    ),
  ),
  index-terms: (
    "Artificial Intelligence in Education",
    "Generative AI",
    "Higher Education",
    "Software Engineering Education",
    "Learning Outcomes",
    "Self-assessment",
    "Tutoring Systems",
    "Quasi-experimental Design",
    "Qualitative Observation",
    "Educational Technology",
    "Student Motivation",
  ),
  bibliography: bibliography("refs.yaml", title: [Verweise]),
)

= Einführung

Chatbots wie ChatGPT sind noch relativ neu (Veröffentlichung 2022). @roumeliotis2023chatgpt
Aus meiner persönlichen Beobachtung geht hervor, dass Kommilitonen vermehrt derartige Chatbots im Studienalltag einsetzen. Dabei fällt auf, dass die Ausgaben der KI oftmals ohne kritische Hinterfragung übernommen werden. Es stellt sich daher die Frage, inwieweit der Einsatz solcher Tools den Lernprozess sinnvoll unterstützt.

Ziel dieser Arbeit ist es, zu ermitteln, ob und unter welchen Bedingungen KI-basierte Chatbots den Lernerfolg von Studierenden im Bereich Software Engineering – exemplarisch am Fach Programmierung – verbessern können.

Einige Studien legen nahe, dass personalisierte KI-Tutoren, die Lernstrategien wie distanziertes Lernen und gezielte Wiederholung fördern, signifikante Verbesserungen in den Lernleistungen bewirken können. Eine Untersuchung an der UniDistance Suisse zeigte, dass Studierende, welche einen derartigen KI-Tutor verwendeten, eine Verbesserung der Durchschnittsnoten um bis zu 15 Perzentilpunkten erzielten. @baillifard2024effective

Eine weitere Studie demonstrierte, dass ein individualisiertes KI-Tutorsystem, das auf drei Developmental Learning Networks (DLNs) fußt und als mobile Applikation zur Sprachvermittlung (Koreanisch) für Kinder implementiert wurde, den Lernfortschritt signifikant fördert. Dabei wurde der Lernstand kontinuierlich erfasst und die Applikation an die individuellen Präferenzen der Kinder angepasst. @kim2020individualized

= Forschungsfragen

== Hauptfrage
Inwiefern beeinflusst der Einsatz KI-basierter Tools den Lernerfolg von Studierenden im Hochschulkurs im Bereich Software Engineering am Beispiel Programmierung?

== Unterfragen
+ Wie verändert sich im Verlauf des Semesters die Selbsteinschätzung der Studierenden in Bezug auf ihren Wissensstand?
+ Wie unterscheidet sich der Umgang der Studierenden mit KI-Tools im Vergleich zur Interaktion mit menschlichen Tutoren?
+ In welchem Verhältnis steht die durch KI-Tools geförderte Selbsteinschätzung der Studierenden zu deren tatsächlich gemessenem Lernerfolg?

= Methodik

== Setting

Die vorliegende Untersuchung wird im Rahmen der Vorlesung "Interaktive Programme" an der Hochschule Heilbronn durchgeführt. Diese Vorlesung, die im ersten Semester des Bachelorstudiengangs Software Engineering angesiedelt ist, vermittelt grundlegende Programmierkenntnisse. Im Rahmen der Studie erproben die Studierenden gezielt Lernprozesse, wobei einerseits der Einsatz von KI-basierten Tools und andererseits traditionelle Lehrmethoden Anwendung finden.

Zusätzlich zur Vorlesung wird ein Tutorium als Zusatzveranstaltung angeboten, das von mir und einem Kollegen geleitet wird. Der Termin dieses Tutoriums wurde in Abstimmung mit den Studierenden auf zwei Tage nach der regulären Vorlesung festgelegt. Die Teilnahme erfolgt freiwillig, wird jedoch insbesondere denjenigen Studierenden nahegelegt, die anhand der Übungspunkte Schwierigkeiten bei der Aneignung der Lehrinhalte aufweisen.

== Forschungsdesign

Für diese Studie wird ein quasi-experimentelles Design gewählt, bei dem zwei Gruppen (Kontrollgruppe, KG und Experimentalgruppe, EG) verglichen werden.

Beide Gruppen setzen sich aus den Teilnehmenden der Vorlesung "Interaktive Programme" zusammen.

== Gruppen

Die Studierenden werden in zwei Gruppen unterteilt:

- *KG*: Nicht-KI-Gruppe #linebreak()
  Die Studierenden der Kontrollgruppe werden angewiesen, auf den Einsatz von KI-Tools zu verzichten. Sie nehmen an einem traditionellen Tutorium teil, in dem sie bei der Problemlösung unterstützt werden und Erklärungen zur Aufgabenstellung erhalten, ohne jedoch konkrete Lösungsansätze präsentiert zu bekommen. Stattdessen erhalten sie dezente Hinweise, die sie zur eigenständigen Erarbeitung anleiten. #linebreak()
  Da die Studierenden im ersten Semester über begrenzte Vorkenntnisse verfügen und nicht mit den technischen Hintergründen von KI-Tools vertraut sind, erfolgt eine gezielte Aufklärung über KI-basierte Tools sowie eine Empfehlung, welche dieser Tools aufgrund ihrer spezifischen Funktionalität nicht verwendet werden sollten. Es kann jedoch nicht gänzlich verhindert werden, dass Studierende außerhalb des Tutoriums auf KI-Tools zugreifen.

- *EG*: KI-Tutor-Gruppe #linebreak()
  Die Studierenden der Experimentalgruppe werden ermutigt, KI-gestützte Tools zur Unterstützung ihres Lernprozesses einzusetzen. Konkret sollen Chatbots wie Claude für Verständnisfragen herangezogen werden. Der Chatbot wird mittels Rollen-Prompts @zheng2023helpful so konfiguriert, dass er als tutorielle Instanz agiert, welche die Studierenden schrittweise durch den Lösungsweg führt, ohne konkrete Lösungsansätze zu liefern. #linebreak()

Die Verwendung meines Rollen-Prompts ist freiwillig, dieser steht im Kapitel "Verwendete Tools".

Um eine effektive Nutzung der KI-Tools zu gewährleisten, erhalten die Studierenden eine ausführliche Einführung sowie Unterstützung bei der Anwendung. Während Prüfungen, wie Tests und Klausuren, ist der Einsatz von KI-Tools untersagt. Diese Einschränkung dient zugleich der Überprüfung der in der Studie "Generative AI Can Harm Learning" @bastani2024generative dargestellten Ergebnisse, wonach der kurzfristige Lernerfolg durch KI-Einsatz im Anschluss an einen KI-unabhängigen Betrieb nachlässt.

Es werden keine zusätzlichen oder abgewandelten Aufgabenstellungen für die Versuchsteilnehmenden entwickelt. Alle Aufgaben wurden für den Kurs "Interaktive Programme" ohne Berücksichtigung dieses Versuches konzipiert. Die Bewertung erfolgt unabhängig von der Gruppenzugehörigkeit.

Die Teilnahme an der Studie steht sämtlichen Studierenden des Studiengangs Software Engineering, die an der Vorlesung "Interaktive Programme" partizipieren, uneingeschränkt und auf freiwilliger Basis offen. Es werden keinerlei partizipationsbezogene Anreize gewährleistet.

== Gruppenzuteilung

Zu Beginn des Semesters werden alle Studierenden um ihre freiwillige Teilnahme an der Studie gebeten. Im Zuge dessen erhalten sie detaillierte Informationen über die Zielsetzung der Untersuchung sowie die Zusammensetzung der Gruppen.

Vor Zuteilung erfolgte bereits eine Bewertung von sieben Aufgaben (über drei Wochen). Die Hälfte der Aufgaben wurde während der Vorlesungen durchgeführt, die andere Hälfte als Hausaufgaben. Die Zuteilung zu den Gruppen erfolgt unter Berücksichtigung der bisherigen Leistungsbewertung, um eine möglichst ausgeglichene Verteilung zu erreichen. "Ausgeglichen" bedeutet hier, dass beide Gruppen etwa gleich viele Teilnehmende sowie vergleichbare Gesamtpunktzahlen aus den bisherigen Aufgaben aufweisen.

== Verwendete Tools

Die Studierenden der Experimentalgruppe (EG) können eigenständig auswählen, welche KI-Tools sie einsetzen möchten. Es werden jedoch einige Tools empfohlen, die sich in bisherigen Anwendungen als geeignet erwiesen haben und in deren Handhabung eine Einführung erfolgt. Die empfohlenen Tools sind:

- *#link("https://claude.ai")[Claude]* #linebreak()
  Ein Chatbot, der auf dem Modell Claude 3.5 Sonnet basiert.
- *#link("https://copilot.cloud.microsoft")[Microsoft Copilot]* #linebreak()
  Ein Chatbot, der auf dem GPT-4-Modell von OpenAI basiert.
  Der Zugriff erfolgt kostenfrei über den Hochschulaccount.
- *#link("https://chat.openai.com")[ChatGPT]* #linebreak()
  Ein Chatbot, der auf den GPT-4o- und GPT-4o mini-Modellen von OpenAI basiert.

Basierend auf meinen Erfahrungen erweist sich Claude als besonders geeignet für tutorielle Unterstützung, da dieses LLM zunächst versucht, die zugrunde liegenden Probleme zu identifizieren, bevor Lösungsvorschläge unterbreitet werden. Dieses Vorgehen ähnelt dem moderner advanced reasoning Modelle (die erst nach Beginn des Versuchs verfügbar waren), wobei letzteres nach einer weiterführenden Reflexion der Aufgabenstellung fragt, während Claude 3.5 Sonnet dem Anwender Methoden zur detaillierten Problemanalyse liefert. Im Gegensatz dazu generiert GPT unmittelbar Lösungsvorschläge, die häufig nicht ausreichend auf das Problem eingehen, sofern die Aufgabenstellung nicht eindeutig formuliert wurde. @parmarprompt

Generischer Rollen-Prompt, der von mir mit dem Ziel geschrieben wurde eine Herangehensweise zu verfolgen wie das für uns Tutoren an der Hochschule Heilbronn üblich ist.

```text
[System Message – Rollenspiel für einen tutorischen LLM-Assistenten]

Du agierst als Tutor für die Vorlesung "Interaktive Programme" im ersten Semester des Studiengangs Software Engineering. Deine Rolle ist es, den Studierenden (Anwender) schrittweise und methodisch durch Lösungswege zu führen, ohne dabei fertige Lösungsansätze zu liefern. Dabei beachte bitte die folgenden Vorgaben:

1. **Aufgabenverständnis sicherstellen**
   - Beginne jede Sitzung damit, sicherzustellen, dass der Studierende die zu bearbeitende Aufgabe vollständig verstanden hat.
   - Frage gezielt nach, ob alle Kriterien, Bedingungen und Ziele der Aufgabe klar sind. Falls es Unklarheiten gibt, bitte den Studierenden, diese genauer zu beschreiben.
2. **Schrittweise, unterstützende Hinweise geben**
   - Leite den Studierenden in kleinen, nachvollziehbaren Schritten an.
   - Gib Hinweise, die den Denkprozess des Studierenden anregen, anstatt ihm konkrete Lösungen zu präsentieren.
   - Verwende Formulierungen wie: "Überlege, wie du ...", "Was wäre, wenn du ... ausprobierst?" oder "Welche Konsequenz hat ... für dein Programm?".
3. **Ermutigung zum selbständigen Arbeiten und Ausprobieren**
   - Berücksichtige, dass der Wissensstand zu Beginn noch niedrig sein kann, und animiere den Studierenden, experimentell vorzugehen und eigene Hypothesen zu entwickeln.
   - Stelle unterstützende Fragen, die den Studierenden dazu anregen, eigene Wege zur Lösungsfindung zu explorieren.
4. **Klärung bei Unklarheiten**
   - Wenn die Aufgabenstellung unklar ist oder der Studierende Nachfragen hat, bitte ihn, die Problemstellung oder seine Frage genauer zu formulieren.
   - Nutze präzisierende Fragen, um Missverständnisse zu vermeiden, bevor du weitere Hinweise gibst.
5. **Anleitung statt direkter Antworten**
   - Wenn der Studierende konkrete Fragen stellt, gib wenn möglich immer nur Hinweise oder eine Anleitung, wie er selbst zu einer Lösung gelangen kann – anstatt direkt die Antwort zu liefern.
   - Ermutige den Studierenden dazu, eigene Ansätze zu entwickeln und diese auszuprobieren.
6. **Kommunikationsstil und Didaktik**
   - Verwende eine unterstützende, geduldige und motivierende Sprache, die zum eigenständigen Denken anregt.
   - Passe den didaktischen Ansatz dem niedrigen Vorwissen an und gehe schrittweise vor, ohne den Studierenden zu über- oder unterfordern.

Ab sofort wirst du dem Anwender als Studierendem begegnen und ihn bei seinen Aufgaben begleiten, indem du ihn aktiv dazu anleitest, eigene Lösungswege zu entwickeln – immer mit dem Ziel, seine Selbständigkeit und sein Verständnis zu fördern.
```

== Datenerhebung

=== Messung

+ **Lernerfolg** – Der Lernerfolg wird anhand der Bewertung der Aufgaben quantifiziert. Dabei wird bewusst auf die Selbsteinschätzung der Studierenden verzichtet, da diese oftmals als unzuverlässig beurteilt wird. Die Bewertung erfolgt durch die Tutoren (mich und meine Kollegen). Hierzu stellt der Professor eine Musterlösung zur Verfügung, und es werden einheitliche Bewertungsstandards definiert. Jede Teilaufgabe wird vollständig von einem Tutor gewertet, um eine Vergleichbarkeit der Ergebnisse sicherzustellen.
+ **Interaktion mit Tutor/KI** – Der Umgang der Studierenden mit dem Tutor beziehungsweise den KI-Tools wird durch gezielte Beobachtungen erfasst. Während ich die Studierenden, die mit KI-Tools arbeiten, beobachte, übernimmt mein Kollege die Beobachtungen derjenigen, die im herkömmlichen Tutorium betreut werden. Diese Beobachtungen werden in einem Protokoll dokumentiert, das folgende Fragestellungen beinhaltet:
  - Inwieweit formulieren die Studierenden ihre Fragen präzise?
  - Wie gut erfassen die Studierenden die Antworten des Tutors bzw. der KI?
  - Wird bei Unklarheiten in den Antworten nachgefragt? (Indizien hierfür sind beispielsweise Zögern bei der Umsetzung oder zusätzliche Rückfragen an Kommilitonen)
+ **Selbsteinschätzung** – Die subjektive Wahrnehmung des eigenen Lernfortschritts, der erbrachten Leistung, der Motivation und des Wissensstands wird mittels eines Fragebogens erhoben. Dieser wird nach jedem Tutorium ausgefüllt und basiert auf einer fünfstufigen Likert-Skala, wobei 1 "stimme nicht zu" und 5 "stimme voll zu" repräsentiert. Bei Nichtteilnahme am Tutorium entfällt die Erhebung der Selbsteinschätzung. Es ist zudem zu beachten, dass die Teilnahme am Ausfüllen des Fragebogens freiwillig erfolgt. Der Fragebogen umfasst folgende Aussagen:
  - Die Aufgabenstellung war für mich ohne Hilfe verständlich (1-5).
  - Die Hilfestellung des Tutors/der KI war für mich hilfreich (1-5).
  - Ich konnte die Aufgabe ohne Hilfe lösen (1-5).
  - Die Unterstützung des Tutors/der KI hat meine Lösungsansätze beeinflusst (1-5).
  - Den Antworten des Tutors/der KI habe ich vertraut (1-5).
  - Mein Wissensstand hat sich durch die Aufgabe verbessert (1-5).
  - Ich fühle mich sicher, eine ähnliche Aufgabe ohne Hilfe lösen zu können (1-5).
  Der tatsächliche Lernerfolg wird abschließend anhand der Bewertung der eingereichten Lösungen quantifiziert.

=== Auswertung

+ **Aufgabenbewertung**: Sämtliche Aufgaben werden von meinem Kollegen und mir bewertet. Jede Teilaufgabe wird vollständig von einem Tutor beurteilt, sodass eine konsistente Bewertung gewährleistet werden kann. Die erzielten Punkte sowie deren Entwicklung im Verlauf des Semesters werden sowohl auf individueller Basis als auch anhand von Median und Durchschnitt innerhalb der jeweiligen Gruppen analysiert.
+ **Beobachtungen**: Die in den Protokollen dokumentierten Beobachtungen werden qualitativ ausgewertet. Besonderes Augenmerk gilt dabei signifikanten Auffälligkeiten und Unterschieden zwischen den Gruppen. Eine quantitative Auswertung ist in diesem Zusammenhang nicht vorgesehen; vielmehr sollen aus den qualitativen Daten relevante Muster und Differenzierungen abgeleitet werden.
+ **Selbsteinschätzung**: Die Auswertung der Selbsteinschätzungsdaten erfolgt anhand des Fragebogens. Hierbei wird insbesondere der Vergleich zwischen den Gruppen hinsichtlich potenzieller Überschätzungen in der Experimentalgruppe (EG) berücksichtigt.

== Aufgaben

=== Themen

Einführung in die Programmierung allgemein und in die Java-Syntax, Kontrollstrukturen, Datentypen, Debugging, Vererbung, Interfaces, Generics, Iteratoren sowie Lambda-Funktionen.

=== Stil der Aufgaben

Während der Vorlesung werden regelmäßig kleinere Aufgaben eingebettet, die jeweils innerhalb von ca. 15 Minuten bearbeitet und am Ende der Vorlesung abgegeben werden müssen. Für die Bearbeitung dieser Aufgaben stehen sowohl der Professor als auch die Tutoren für Fragen und Hilfestellungen zur Verfügung.

Im weiteren Wochenverlauf bearbeiten die Studierenden umfangreichere Aufgabenstellungen außerhalb der Vorlesungszeit, für die eine Bearbeitungsdauer von mehreren Stunden vorgesehen ist.

= Auswertung

== Selbsteinschätzungen

Im Folgenden werden die Ergebnisse der Selbsteinschätzungen der Studierenden differenziert nach den Gruppen #text(fill: color-sky-400)[KG] und #text(fill: color-orage-400)[EG] präsentiert. Aufgrund der geringen Gruppengrößen wird stets der Durchschnittswert angegeben.

#{
  let x_axis = plotst.axis(
    values: ("", "06.11.2024", "13.11.2024", "04.12.2024"),
    location: "bottom",
    show_markings: true,
  )
  let y_axis = plotst.axis(
    min: 0,
    max: 6,
    step: 1,
    location: "left",
    show_markings: true,
    helper_lines: true,
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 4.5),
            ("13.11.2024", 3),
            ("04.12.2024", 3),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Die Aufgabenstellung war für mich ohne Hilfe verständlich",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 3.5),
            ("13.11.2024", 5),
            ("04.12.2024", 4.5),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 4),
            ("13.11.2024", 3.5),
            ("04.12.2024", 3.5),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Die Hilfestellung des Tutors/der KI war für mich hilfreich",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 5),
            ("13.11.2024", 5),
            ("04.12.2024", 5),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 5),
            ("13.11.2024", 2.5),
            ("04.12.2024", 3),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Ich konnte die Aufgabe ohne Hilfe lösen",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 2.5),
            ("13.11.2024", 4),
            ("04.12.2024", 4),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 3),
            ("13.11.2024", 3),
            ("04.12.2024", 3.5),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Die Unterstützung des Tutors/der KI hat meine Lösungsansätze beeinflusst",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 4),
            ("13.11.2024", 3),
            ("04.12.2024", 5),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 4.5),
            ("13.11.2024", 4),
            ("04.12.2024", 4.5),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Den Antworten des Tutors/der KI habe ich vertraut",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 5),
            ("13.11.2024", 5),
            ("04.12.2024", 5),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 1),
            ("13.11.2024", 2),
            ("04.12.2024", 5),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Mein Wissensstand hat sich durch die Aufgabe verbessert",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 3.5),
            ("13.11.2024", 3.5),
            ("04.12.2024", 3.5),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )

  plotst.overlay(
    (
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 5),
            ("13.11.2024", 2.5),
            ("04.12.2024", 3.5),
          ),
        ),
        (100%, 100%),
        stroke: color-orage-400,
        caption: "Auswertung - Ich fühle mich sicher, eine ähnliche Aufgabe ohne Hilfe lösen zu können",
      ),
      plotst.graph_plot(
        plotst.plot(
          axes: (x_axis, y_axis),
          data: (
            ("06.11.2024", 3),
            ("13.11.2024", 4),
            ("04.12.2024", 4),
          ),
        ),
        (100%, 100%),
        stroke: color-sky-400,
      ),
    ),
    (100%, 20%),
  )
}

Das Feld "Sonstige Anmerkungen" wurde nie genutzt.

== Beobachtung

Die beobachteten Phänomene lassen sich wie folgt zusammenfassen:

=== EG

Die Studierenden der Experimentalgruppe tendieren dazu, ihre Anfragen unpräzise zu formulieren. Unpräzise bedeutet in diesem Kontext, dass bereits beim Lesen der Anfrage nicht ersichtlich ist, was genau von dem Chatbot erwartet wird. Obwohl sie ihre beabsichtigten Vorgehensweisen skizzieren, zeigt sich bereits in der Problembeschreibung eine gewisse Unschärfe. Die Large Language Models (insbesondere GPT) stellen bei auftretender Unklarheit oder Mehrdeutigkeit keine Rückfragen, sondern unterstellen, welche Informationen beabsichtigt übermittelt zu werden. @parmarprompt

Ich komme zu dem Schluss, dass die Studierenden nicht in der Lage sind, die Validität der von den LLMs generierten Ausgaben adäquat zu beurteilen. Dies begründet sich darin, dass ich anhand der Antworten erkenne, dass die Lösungsvorschläge der LLMs häufig nicht den Anforderungen der Aufgabenstellung entsprechen und nicht zu einer eigenständigen Problemlösung beitragen, die von den Studierenden nachvollzogen werden könnte.

Die LLMs erweisen sich jedoch als nützliche Unterstützung, da die Aufgabenstellungen überwiegend trivial sind und vergleichbare Problematik bereits in den öffentlich zugänglichen Trainingsdaten vorkommt. @tian2023chatgpt

Es konnte keine Zurückhaltung bei der Formulierung von Rückfragen festgestellt werden, sobald Unklarheiten gemäß den in Kapitel Methodik definierten Kriterien auftreten. Dies zeigt sich darin, dass die Studierenden mehrfach (3–5 Mal) mit dem Chatbot korrespondieren, bevor sie mit der praktischen Umsetzung beginnen.

=== KG

Die Studierenden der Kontrollgruppe wiesen anfangs, analog zur Experimentalgruppe, unpräzise Fragestellungen auf, die sich jedoch im zeitlichen Verlauf signifikant verbesserten.
Bei erkennbaren Unklarheiten in der Ausdrucksweise wurden ergänzend einschlägige Begriffe erläutert, um eine präzisere Formulierung und ein besseres gegenseitiges Verständnis zu ermöglichen.

Zu Beginn war die Kommunikation weniger effizient; im weiteren Verlauf zeigte sich jedoch eine rasche und kontinuierliche Verbesserung.
In der ersten Woche agierten die Studierenden noch zurückhaltend. Es stellte sich heraus, dass sie sich den Tutoren eher anvertrauten als dem Dozenten, was zu einer Zunahme von initialen sowie Folgefragen führte.

== Bewertungen

Im Verlauf des Semesters wird ein systematischer Vergleich der Punktzahlen der Gruppen #text(fill: color-sky-400)[KG] und #text(fill: color-orage-400)[EG] vorgenommen.
Da die Aufgaben unterschiedlich viele Punkte umfassen, wird der prozentuale Anteil der erreichten Punkte als Vergleichsmaßstab verwendet.
Zudem erfolgt die Berechnung des Durchschnitts innerhalb der jeweiligen Gruppen.

#figure(
  [
    #{
      let x_axis_tasks = plotst.axis(
        values: (
          "",
          "06.10",
          "07.10",
          "13.10",
          "14.10",
          "21.10",
          "27.10",
          "28.10",
          "03.11",
          "04.11",
          "10.11",
          "11.11",
          "02.12",
          "08.12",
          "09.12",
          "15.12",
          "16.12",
          "04.01",
        ),
        title: "Datum der Abgabe",
        location: "bottom",
        show_markings: false,
      )
      let y_axis = plotst.axis(
        min: 0,
        max: 101,
        step: 25,
        location: "left",
        title: "Erreichte Punkte in %",
        show_markings: true,
        helper_lines: true,
      )

      plotst.overlay(
        (
          plotst.graph_plot(
            plotst.plot(
              axes: (x_axis_tasks, y_axis),
              data: (
                ("06.10", 88),
                ("07.10", 50),
                ("13.10", 94),
                ("14.10", 95),
                ("21.10", 70),
                ("27.10", 90),
                ("28.10", 66),
                ("03.11", 83),
                ("04.11", 50),
                ("10.11", 100),
                ("11.11", 75),
                ("02.12", 91),
                ("08.12", 72),
                ("09.12", 84),
                ("15.12", 88),
                ("16.12", 100),
                ("04.01", 100),
              ),
            ),
            (100%, 100%),
            stroke: color-orage-400,
            caption: "Auswertung - Noten",
          ),
          plotst.graph_plot(
            plotst.plot(
              axes: (x_axis_tasks, y_axis),
              data: (
                ("06.10", 52),
                ("07.10", 53),
                ("13.10", 58),
                ("14.10", 93),
                ("21.10", 57),
                ("27.10", 83),
                ("28.10", 74),
                ("03.11", 94),
                ("04.11", 67),
                ("10.11", 75),
                ("11.11", 100),
                ("02.12", 85),
                ("08.12", 77),
                ("09.12", 89),
                ("15.12", 93),
                ("16.12", 89),
                ("04.01", 88),
              ),
            ),
            (100%, 100%),
            stroke: color-sky-400,
          ),
        ),
        (100%, 20%),
      )
    }
  ],
  scope: "parent",
  placement: top,
)

= Schlussfolgerung

Die Ergebnisse der Selbsteinschätzungen führen zu der Einschätzung, dass die Kontrollgruppe (KG) hinsichtlich des eigenständigen Problemlösens eine überlegene Lernerfahrung aufwies. Dieser Befund stützt sich insbesondere auf den Verlauf der Antwort zur Frage „Ich konnte die Aufgabe ohne Hilfe lösen“.

Der Verlauf der Frage „Mein Wissensstand hat sich durch die Aufgabe verbessert“ deutet hingegen darauf hin, dass die Experimentalgruppe (EG) möglicherweise einen höheren Lerneffekt erzielt hat – alternativ könnte es sein, dass die KG lediglich den Eindruck hatte, mehr gelernt zu haben. Da die Bewertungsresultate der Aufgaben beider Gruppen eng beieinanderliegen, lässt sich eine eindeutige Zuordnung jedoch nicht treffen.

= Diskussion

Die vorliegende Untersuchung weist mehrere methodische Limitationen auf, die bei der Interpretation der Ergebnisse berücksichtigt werden müssen. Ein wesentlicher Kritikpunkt bezieht sich auf die geringe Teilnehmerzahl, was die statistische Aussagekraft der Studie erheblich einschränkt. Zwar lässt sich aus den Selbsteinschätzungsdaten eine Tendenz erkennen, wonach die Kontrollgruppe (KG) eine moderat bessere Lernerfahrung aufwies als die Experimentalgruppe (EG), jedoch ist aufgrund der kleinen Stichprobe keine generalisierbare Aussage möglich. Im Durchschnitt nahmen 10 Studierende am Tutorium teil, wovon 6 an der Studie partizipierten.

Ein weiteres Problemfeld stellt die inkonsistente Ausfüllung des Fragebogens dar. Die vorliegenden Unstimmigkeiten in den Rückmeldungen der Teilnehmenden werfen erhebliche Zweifel an der Validität der erhobenen Selbsteinschätzungsdaten auf. Es ist demnach anzunehmen, dass methodische Schwächen in der Datenerhebung die ermittelten Ergebnisse beeinflusst haben.

Während des Versuchs wurde bewusst darauf verzichtet, frühzeitig einen Blick auf die Ergebnisse zu werfen, um eine Beeinflussung der Versuchsteilnehmenden zu vermeiden. Rückblickend hätte eine zeitnahe Kontrolle der Daten ermöglicht, die Teilnehmenden vermehrt zur regelmäßigen Fragebogenteilnahme anzuhalten. Dennoch stand für mich stets die Lernförderung der Studierenden im Vordergrund, sodass die Datenerhebung in einigen Aspekten nachrangig behandelt wurde.

Zudem gestaltete sich die präzise Definition der erforderlichen Daten für eine aussagekräftige Auswertung als herausfordernd. Diese retrospektive Erkenntnis unterstreicht die Notwendigkeit einer detaillierteren Planung der Datenerhebung in zukünftigen Studien, um methodische Unklarheiten von vornherein auszuschließen.

Zusammenfassend liefert die vorliegende Arbeit, trotz positiver Tendenzen in den Selbsteinschätzungen, wesentliche methodische Erkenntnisse, die als Grundlage für weiterführende Untersuchungen zum Einsatz von KI-Tools im Bildungsbereich herangezogen werden können. Für zukünftige Studien wird empfohlen, eine größere Stichprobe zu verwenden und die Datenerhebung konsequenter zu gestalten, um robuste und generalisierbare Ergebnisse zu erzielen.

#outline(
  title: [Abbildungsverzeichnis],
  target: figure,
)
