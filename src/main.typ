#import "@preview/charged-ieee:0.1.0": ieee

#show: ieee.with(
  title: [Wie wirkt sich das Lernen mit KI auf die Noten von Software-Engineering-Studenten aus?],
  // abstract: [
  // ],
  authors: (
    (
      name: "Frank Mayer",
      department: [Software Engineering],
      organization: [Hochschule Heilbronn],
      location: [Heilbronn, Deutschland],
      email: "fmayer2@stud.hs-heilbronn.de"
    ),
  ),
  // index-terms: ("Scientific writing", "Learning", "Artificial intelligence", "Software engineering"),
  bibliography: bibliography("refs.bib"),
)

= Einführung

Für das Lernen geeignete, KI-basierte Tools sind recht neu. Studierende verwenden sie, Lehrende scheinen unsicher zu sein, wie sie damit umgehen sollen. Es gibt derzeit keinen einheitlichen Konsens darüber, ob und wie KI-Tools in der Lehre eingesetzt werden sollten. Ich möchte herausfinden, ob und unter welchen Bedingungen KI-basierte Tools einen positiven Effekt auf den Lernerfolg von Software-Engineering-Studierenden haben.

Ich sehe die Notwendigkeit, das Thema zu untersuchen, da ich selbst Software-Engineering studiere und einige Kommilitonen habe, die Tools wie ChatGPT verwenden, um sich die Arbeit zu erleichtern. Was ich dabei beobachte, ist besorgniserregend: falsche Informationen, kein Hinterfragen der Ergebnisse und kein Bewusstsein für den eigenen Lernprozess und Kenntnisstand.

Es könnte sein, dass diese neuen Tools einfach nicht korrekt eingesetzt werden. Es könnte aber auch sein, dass die Tools nicht geeignet sind, um den Lernerfolg zu verbessern.

Hierbei geht es mir ausschließlich um die Frage, ob die Nutzung von KI-Tools den Lernerfolg von Software-Engineering-Studierenden verbessert oder verschlechtert. Dass KI für die tägliche Arbeit von Software-Entwicklern eingesetzt werden kann, ist ein anderes Thema und wird hier nicht behandelt.

= Methodik

Ich arbeite als Tutor an der Hochschule Heilbronn im Fach Interaktive Programme, das ist die erste Programmierveranstaltung im Studium Software Engineering Bachelor.

Dabei habe ich die Möglichkeit, die Studierenden gezielt mit und ohne KI-Tools lernen zu lassen.
Ich werde die Studierenden in zwei Gruppen aufteilen:

- *Gruppe A*: Nicht-KI-Gruppe #linebreak()
  Die Studierenden werden dazu aufgefordert, keine KI-Tools zu verwenden. Die Aufgaben ohne KI-Tools zu lösen. Sie bekommen umfassendere Erklärungen von mir.
- *Gruppe B*: KI-Gruppe #linebreak()
  Die Studierenden werden dazu aufgefordert, nicht bewertete Übungen mit KI-Tools zu lösen, sowie diese für das Lernen einzusetzen. Sie bekommen nur dann eine Erklärung von mir, wenn die KI-Tools keine oder eine falsche Antwort/Erklärung liefern. Beides wird dann dokumentiert. #linebreak() Damit es nicht daran scheitert, dass die Studierenden keine KI-Tools kennen, oder nicht wissen, wie sie sie verwenden sollen, bekommen sie von mir eine Einführung und Unterstützung bei der Verwendung. Für alles, was bewertet wird, müssen sie die KI-Tools deaktivieren. Das dient dazu, das Ergebnis der Studie "Generative AI Can Harm Learning" @bastani2024generative zu verifizieren, bei der festgestellt wurde, dass die Nutzung von KI eine kurzzeitige Verbesserung des Lernerfolgs bewirkt, sobald die KI-Tools deaktiviert werden, fielen die Testpersonen jedoch hinter die Kontrollgruppe zurück.

Die Aufgaben sind regulär aus der Vorlesung und werden nicht verändert. Auch die Bewertung erfolgt ohne Rücksicht auf die Gruppenzugehörigkeit.

Die Teilnahme an der Studie ist freiwillig für alle Studierenden des Studiengangs Software Engineering, welche die Vorlesung Interaktive Programme besuchen. Es gibt keine Anreize für die Teilnahme.
