#import "@preview/charged-ieee:0.1.3": ieee
#import "@preview/plotst:0.2.0"
#let color-orage-400 = rgb("#FF8904")
#let color-sky-400 = rgb("#00BCFF")

#set par.line(numbering: "1")

#show: ieee.with(
  title: [Wie wirkt sich die Verwendung von KI auf den Lernerfolg von Software-Engineering-Studenten aus?],
  abstract: [
    In jüngster Zeit gewinnen KI-gestützte Tools zunehmend an Bedeutung im Bildungsbereich, wobei ihr Einsatzpotenzial für das Lernen von Software-Engineering-Studierenden bisher unzureichend erforscht ist. Diese Arbeit untersucht, ob und unter welchen Bedingungen KI-basierte Tools den Lernerfolg von Studierenden in Software-Engineering-Kursen positiv beeinflussen können.

    Der Untersuchungsrahmen ist die Lehrveranstaltung "Interaktive Programme" im ersten Semester des Studiengangs Software Engineering an der Hochschule Heilbronn. In einem quasi-experimentellen Design werden zwei Gruppen von Studierenden miteinander verglichen: eine Kontrollgruppe ohne Einsatz von KI-Tools und eine Experimentalgruppe, die spezifisch auf KI-gestützte Tutorien zurückgreifen soll. Neben der Bewertung der Aufgabenlösungen werden qualitative Beobachtungen und Selbsteinschätzungen der Studierenden genutzt, um den Einfluss der KI-Tools auf Lernerfolg, Motivation und Selbsteinschätzung zu analysieren.

    Die Ergebnisse dieser Studie sollen Hinweise darauf geben, wie KI-Tools im Kontext der Hochschullehre sinnvoll integriert werden können, um den Lernerfolg langfristig zu fördern, ohne das eigenständige Lernen der Studierenden zu beeinträchtigen.

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

Chatbots wie ChatGPT sind noch recht neu (Veröffentlichung 2022). @roumeliotis2023chatgpt

Ich meiner persönlichen Erfahrung sehe ich, wie Kommilitonen diese Chatbots im Studium verwenden. Was mir bei dieser Beobachtung zu bedenken gibt ist, dass die Ausgaben der KIs zu wenig hinterfragt wird. Ich stelle mir die Frage wie sinnvoll solche Tools zum Lernen sind.

Genau diese Frage möchte ich mit dieser Arbeit beantworten. Ziel ist es, zu untersuchen, ob und unter welchen Bedingungen KI-basierte Chatbots den Lernerfolg von Studierenden im Bereich Software Engineering, am Beispiel Programmierung, fördern können.

Einige Studien deuten darauf hin, dass der Einsatz personalisierter KI-Tutoren, die auf Lernstrategien wie Abstandslernen und gezielte Wiederholung setzen, die Lernleistungen signifikant steigern kann. Eine Untersuchung an der UniDistance Suisse ergab, dass Studierende, die einen solchen KI-Tutor nutzten, eine Verbesserung der Durchschnittsnoten um bis zu 15 Perzentilpunkte erzielten. @baillifard2024effective

Eine weitere Studie zeigt, dass ein individualisiertes KI-Tutorsystem, das auf drei Developmental Learning Networks (DLNs) basiert und als mobile App zur Sprachvermittlung (Koreanisch) für Kinder implementiert ist, den Lernfortschritt signifikant fördert. Dabei wurde der Lernstand kontinuierlich erfasst und die App an die individuellen Präferenzen der Kinder angepasst. @kim2020individualized

= Forschungsfragen

== Hauptfrage
Inwiefern beeinflusst der Einsatz KI-basierter Tools den Lernerfolg von Studierenden im Hochschulkurs im Bereich Software Engineering am Beispiel Programmierung?

== Unterfragen
+ Wie verändert sich im Verlauf des Semesters die Selbsteinschätzung der Studierenden in Bezug auf ihren Wissensstand?
+ Wie unterscheidet sich der Umgang der Studierenden mit KI-Tools im Vergleich zur Interaktion mit menschlichen Tutoren?
+ In welchem Verhältnis steht die durch KI-Tools geförderte Selbsteinschätzung der Studierenden zu deren tatsächlich gemessenem Lernerfolg?

= Methodik

== Setting

Die vorliegende Untersuchung wird im Rahmen der Vorlesung "Interaktive Programme" an der Hochschule Heilbronn durchgeführt. Diese Vorlesung ist Bestandteil des ersten Semesters im Bachelorstudiengang Software Engineering und vermittelt elementare Programmierkenntnisse. Im Zuge der Studie erproben die Studierenden gezielt Lernprozesse sowohl unter Einsatz als auch ohne Einsatz von KI-basierten Tools.

Ergänzend zur Vorlesung wird ein Tutorium als Zusatzveranstaltung angeboten. Dieses Tutorium wird von mir und einem Kollegen geführt. Der Termin wurde mit den Studierenden auf zwei Tage nach der Vorlesung abgestimmt. Die Teilnahme an diesem Tutorium erfolgt auf freiwilliger Basis, wird jedoch insbesondere den Studierenden nahegelegt, die Schwierigkeiten bei der Aneignung der Lehrinhalte aufweisen.

== Forschungsdesign

Für die vorliegende Studie wird ein quasi-experimentelles Design verwendet, bei dem zwei Gruppen von Studierenden untersucht werden: eine Kontrollgruppe (KG) und eine Experimentalgruppe (EG).

Beide Gruppen setzen sich aus den Teilnehmenden der Vorlesung "Interaktive Programme" zusammen.

== Gruppen

Die Studierenden werden in zwei Gruppen untergliedert:

- *KG*: Nicht-KI-Gruppe #linebreak()
  Die Studierenden in der Kontrollgruppe werden instruiert, auf den Einsatz von KI-Tools zu verzichten. Sie nehmen an einem traditionellen Tutorium teil, in dem ich sie bei der Problemlösung unterstütze und Erklärungen zur Aufgabenstellung bereitstelle, ohne konkrete Lösungsansätze zu offerieren. Stattdessen erhalten sie dezente Hinweise, die sie in Richtung einer möglichen Lösung anleiten, sodass sie diese eigenständig erarbeiten können. #linebreak()
  Da die Studierenden im ersten Semester über begrenzte Vorkenntnisse verfügen, erfolgt eine gezielte Information über KI-basierte Tools sowie eine Empfehlung, welche Tools aufgrund ihrer spezifischen Funktionalität nicht eingesetzt werden sollten. Es kann jedoch nicht vollständig verhindert werden, dass Studierende außerhalb des Tutoriums dennoch auf KI-Tools zurückgreifen.

- *EG*: KI-Tutor-Gruppe #linebreak()
  Die Studierenden in der Experimentalgruppe werden ermutigt, KI-gestützte Tools zur Unterstützung ihres Lernprozesses zu verwenden. Konkret sollen Chatbots wie Claude für Verständnisfragen herangezogen werden. Der Chatbot wird dahingehend konfiguriert, dass er als tutorielle Instanz agiert, welche die Studierenden schrittweise durch den Lösungsweg führt, ohne dabei konkrete Lösungsansätze zu liefern. #linebreak()
  Um sicherzustellen, dass die Studierenden die KI-Tools effizient einsetzen können, erhalten sie von mir eine ausführliche Einführung sowie Unterstützung bei deren Anwendung. Während Prüfungen, wie Tests und Klausuren, ist der Einsatz von KI-Tools untersagt. Diese Restriktion dient zugleich der Überprüfung der Ergebnisse der Studie "Generative AI Can Harm Learning" @bastani2024generative, welche darlegt, dass der Einsatz von KI-Tools zwar kurzfristig zu Lernfortschritten führen kann, jedoch im anschließenden, KI-unabhängigen Betrieb zu Leistungseinbußen im Vergleich zur Kontrollgruppe führt.

Die Aufgabenstellungen entstammen der regulären Vorlesung und werden unverändert übernommen. Die Bewertung erfolgt dabei unabhängig von der Gruppenzugehörigkeit.

Die Teilnahme an der Studie steht sämtlichen Studierenden des Studiengangs Software Engineering, die an der Vorlesung "Interaktive Programme" partizipieren, uneingeschränkt und auf freiwilliger Basis offen. Es werden keinerlei Anreize zur Teilnahme gewährt.

== Gruppenzuteilung

Zu Beginn des Semesters werden alle Studierenden um ihre freiwillige Teilnahme an der Studie gebeten. Im Zuge dessen erhalten sie detaillierte Informationen über das Ziel der Untersuchung sowie über die Zusammensetzung der Gruppen.

Vor der Zuteilung gab es bereits sieben bewertete Aufgaben (drei Wochen). Die Hälfte davon wurde während den Vorlesungen durchgeführt, die andere Hälfte waren Hausaufgaben. Die Zuteilung zu den Gruppen erfolgt unter Berücksichtigung der bisherigen Leistungsbewertung, um eine möglichst ausgeglichene Verteilung zu gewährleisten. Ausgeglichen heißt hier, dass die Gruppen gleich viele Teilnehmer und in Summe gleich viele Punkte bei den bisherigen Aufgaben erzielten.

== Verwendete Tools

Die Studierenden der Experimentalgruppe (EG) haben die Möglichkeit, eigenständig zu wählen, welche KI-Tools sie einsetzen möchten. Es werden jedoch einige Tools empfohlen, die sich in vorangegangenen Anwendungen als geeignet erwiesen haben, und es wird eine Einführung in deren Handhabung angeboten. Die empfohlenen Tools lauten:

- *#link("https://claude.ai")[Claude]* #linebreak()
  Ein Chatbot, der auf dem Claude 3.5 Sonnet basiert.
- *#link("https://copilot.cloud.microsoft")[Microsoft Copilot]* #linebreak()
  Ein Chatbot, der auf dem GPT-4-Modell von OpenAI basiert.
  Der Zugriff erfolgt kostenfrei über den Hochschulaccount.
- *#link("https://chat.openai.com")[ChatGPT]* #linebreak()
  Ein Chatbot, der auf den GPT-4o- und GPT-4o mini-Modellen von OpenAI basiert.

Auf Grundlage meiner persönlichen Erfahrungen erweist sich Claude als besonders geeignet als tutorielle Unterstützung, da dieses LLM zunächst versucht, die ursächlichen Probleme zu identifizieren, bevor Lösungsvorschläge unterbreitet werden. Im Gegensatz dazu generiert GPT unmittelbar Lösungsvorschläge, die häufig nicht adäquat auf das zugrunde liegende Problem eingehen, sofern dieses nicht eindeutig vom Nutzer formuliert wurde. @parmarprompt

== Datenerhebung

=== Messung

+ Der Lernerfolg wird anhand der Bewertung der Aufgaben quantifiziert. Hierbei wird bewusst auf Selbsteinschätzungen der Studierenden verzichtet, da diese oftmals als unzuverlässig gelten. Die Bewertung erfolgt durch die Tutoren. Der Professor stellt eine Musterlösung zur Verfügung, und es werden gemeinsame Bewertungsstandards definiert. Jede Teilaufgabe wird vollständig von einem Tutor bewertet, um die Vergleichbarkeit unter den Studierenden sicherzustellen.
+ Der Umgang der Studierenden mit dem Tutor beziehungsweise den KI-Tools wird durch gezielte Beobachtungen erhoben. Während ich die Studierenden beobachte, die mit KI-Tools arbeiten, übernimmt mein Kollege die Beobachtung jener, die im Tutorium Unterstützung von mir erhalten. Diese Beobachtungen werden in einem Protokoll dokumentiert, das folgende Fragestellungen beinhaltet:
  - Inwieweit formulieren die Studierenden ihre Fragen präzise?
  - Wie gut erfassen die Studierenden die Antworten des Tutors bzw. der KI?
  - Wird bei Unklarheiten in den Antworten nachgefragt? (Indikatoren hierfür sind beispielsweise Zögern bei der Umsetzung oder Rückfragen bei Kommilitonen)
+ Die Selbsteinschätzung der Studierenden wird mithilfe eines Fragebogens erhoben, der die subjektive Wahrnehmung des eigenen Lernfortschritts, der erbrachten Leistung, der Motivation und des Wissensstands direkt erfasst. Der Fragebogen soll nach jedem Tutorium ausgefüllt werden und basiert auf einer fünfstufigen Likert-Skala, wobei 1 für "stimme nicht zu" und 5 für "stimme voll zu" steht. Bei Nichtteilnahme am Tutorium entfällt die Erhebung der Selbsteinschätzung. Dazu kommt, dass ich die Studierenden nur um das Ausfüllen bitten kann, sie können nicht dazu gezwungen werden. Der Fragebogen umfasst folgende Aussagen:
  - Die Aufgabenstellung war für mich ohne Hilfe verständlich (1-5).
  - Die Hilfestellung des Tutors/der KI war für mich hilfreich (1-5).
  - Ich konnte die Aufgabe ohne Hilfe lösen (1-5).
  - Die Unterstützung des Tutors/der KI hat meine Lösungsansätze beeinflusst (1-5).
  - Den Antworten des Tutors/der KI habe ich vertraut (1-5).
  - Mein Wissensstand hat sich durch die Aufgabe verbessert (1-5).
  - Ich fühle mich sicher, eine ähnliche Aufgabe ohne Hilfe lösen zu können (1-5).
  Der tatsächliche Lernerfolg wird abschließend anhand der Bewertung der eingereichten Lösungen ermittelt.

=== Auswertung

+ *Bewertung der Aufgaben als Indikator für den Lernerfolg*: Sämtliche Aufgaben werden von meinem Kollegen und mir bewertet. Jede Teilaufgabe wird hierbei vollständig von einem Tutor beurteilt, um eine konsistente Bewertung zu gewährleisten. Die erzielten Punkte sowie deren Entwicklung im Verlauf des Semesters werden sowohl auf individueller Basis als auch anhand von Median und Durchschnitt innerhalb der jeweiligen Gruppen analysiert.
+ *Beobachtung des Umgangs mit dem Tutor und den KI-Tools*: Die in den Protokollen dokumentierten Beobachtungen werden qualitativ ausgewertet, wobei insbesondere signifikante Auffälligkeiten und Unterschiede zwischen den Gruppen erfasst werden. Eine quantitative Auswertung ist in diesem Zusammenhang nicht vorgesehen; vielmehr sollen aus den qualitativen Daten relevante Unterschiede und Gemeinsamkeiten abgeleitet werden.
+ *Selbsteinschätzung der Studierenden*: Die Erhebung der Selbsteinschätzung erfolgt anhand des Fragebogens und wird ebenfalls qualitativ analysiert. Hierbei liegt besonderes Augenmerk auf Unterschieden zwischen den Gruppen, insbesondere hinsichtlich potenzieller Überschätzungen in der Experimentalgruppe (EG). Diese Beobachtungen beruhen auf meinen bisherigen Erfahrungen und sollen empirisch überprüft werden.

== Aufgaben

_wird noch ergänzt_

= Auswertung

== Wenige Daten

Die Anzahl der Studierenden, die an der Untersuchung teilnahmen, war gering. Unter den wenigen Teilnehmenden war die regelmäßige Teilnahme am Tutorium noch seltener zu verzeichnen.
Im Durchschnitt besuchten 10 Studierende das Tutorium, von denen 6 am Versuch partizipierten.
Folglich ist die Genauigkeit der erhobenen Daten als eingeschränkt zu bewerten.

== Daten

=== Selbsteinschätzungen

Im Folgenden werden die Ergebnisse der Selbsteinschätzungen der Studierenden dargestellt, differenziert nach den Gruppen #text(fill: color-sky-400)[KG] und #text(fill: color-orage-400)[EG].
Aufgrund der geringen Gruppengrößen wird stets der Durchschnittswert angegeben.

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

=== Beobachtung

Die beobachteten Phänomene können wie folgt zusammengefasst werden:

==== EG

Die Studierenden tendieren dazu, ihre Anfragen unpräzise zu formulieren.
Obgleich sie ihre beabsichtigten Vorgehensweisen skizzieren, tritt bereits in der Problembeschreibung eine gewisse Ungenauigkeit zutage.
Die LLMs stellen bei auftretender Unklarheit oder Mehrdeutigkeit keine Rückfragen, sondern unterstellen, welche Informationen die Studierenden beabsichtigen. @parmarprompt

Die Studierenden sind nicht in der Lage, die Validität der von den LLMs generierten Ausgaben adäquat einzuschätzen.
Obwohl sie die Ergebnisse bei praktischer Erprobung testen können, fehlt es ihnen an Erfahrung, um zu beurteilen, ob die vorgeschlagene Lösung überhaupt funktionieren kann.
Die LLMs erweisen sich jedoch als nützliche Unterstützung, da die Aufgabenstellungen überwiegend einfach sind und vergleichbare Problematiken häufig in den öffentlich zugänglichen Trainingsdaten vorkommen. @tian2023chatgpt

Es lässt sich keine Zurückhaltung bei der Formulierung von Rückfragen feststellen, wenn Unklarheiten in den Ausführungen des Chatbots auftreten.

==== KG

Zu Beginn wiesen die Studierenden in der KG, analog zur EG, unpräzise Fragestellungen auf, die sich jedoch im zeitlichen Verlauf signifikant verbesserten.
Bei erkennbaren Unklarheiten in der Ausdrucksweise wurden zusätzlich relevante Begriffe erläutert, um den Studierenden eine präzisere Formulierung zu ermöglichen und das gegenseitige Verständnis zu fördern.

Anfangs war die Kommunikation weniger effizient, jedoch zeigte sich im Verlauf eine rasche und kontinuierliche Verbesserung.

In der ersten Woche agierten die Studierenden noch zurückhaltend.
Sie vertrauten sich den Tutoren schneller an als dem Dozenten, was dazu führte, dass sie vermehrt sowohl initiale als auch Folgefragen stellten.

=== Bewertungen

Im Verlauf des Semesters wird ein systematischer Vergleich der Punktzahlen der beiden Gruppen #text(fill: color-sky-400)[KG] und #text(fill: color-orage-400)[EG] vorgenommen.
Da die Aufgaben mit unterschiedlich vielen Punkten bewertet wurden, wird der prozentuale Anteil der erreichten Punkte als Vergleichsmaßstab herangezogen.
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

= Diskussion

Die vorliegende Untersuchung weist mehrere methodische Limitationen auf, die bei der Interpretation der Ergebnisse sorgfältig berücksichtigt werden müssen. Ein zentraler Kritikpunkt betrifft die geringe Anzahl der teilnehmenden Studierenden, wodurch die statistische Aussagekraft des Versuchs erheblich eingeschränkt wird. Obwohl aus den Selbsteinschätzungen eine Tendenz erkennbar ist, wonach die Kontrollgruppe (KG) eine moderat bessere Lernerfahrung verzeichnete als die Experimentalgruppe (EG), ist aufgrund der kleinen Stichprobe keine belastbare Generalisierung möglich.

Ein weiteres Problem stellt die unzuverlässige Ausfüllung des Fragebogens dar. Die Inkonsistenzen in den Rückmeldungen der Teilnehmenden werfen erhebliche Zweifel an der Validität der erhobenen Selbsteinschätzungsdaten auf. Es ist daher anzunehmen, dass methodische Schwächen in der Datenerhebung einen Einfluss auf die ermittelten Ergebnisse hatten.

Während des Versuchs wurde bewusst darauf verzichtet, frühzeitig in die Ergebnisse zu schauen, um eine Beeinflussung der Versuchsteilnehmenden zu vermeiden. Rückblickend hätte eine zeitnahe Kontrolle der Daten ermöglicht, den Teilnehmenden eine intensivere Aufforderung zum regelmäßigen Ausfüllen des Fragebogens zu geben. Dennoch stand für mich stets die Lernförderung der Studierenden im Vordergrund, wodurch die Datenerhebung in manchen Aspekten nachrangig behandelt wurde.

Zudem erwies es sich als herausfordernd, bereits zu Beginn der Studie präzise zu definieren, welche Daten letztlich für eine aussagekräftige Auswertung benötigt würden. Diese retrospektive Erkenntnis unterstreicht die Notwendigkeit einer detaillierteren Planung der Datenerhebung in zukünftigen Studien, um methodische Unklarheiten von vornherein zu vermeiden.

Zusammenfassend liefert die vorliegende Arbeit trotz positiver Tendenzen in den Selbsteinschätzungen wichtige methodische Erkenntnisse, die als Grundlage für weiterführende Untersuchungen zum Einsatz von KI-Tools im Bildungsbereich dienen können. Für zukünftige Studien wird empfohlen, eine größere Stichprobe zu verwenden und die Datenerhebung konsequenter zu gestalten, um robuste und generalisierbare Ergebnisse zu erzielen.

#outline(
  title: [Abbildungsverzeichnis],
  target: figure,
)
