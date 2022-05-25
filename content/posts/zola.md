+++ title = "Mermaid example" description = "an example of using mermaid in zola"

template = "mermaid.html" +++

Let's see can we include mermaid diagrams?

Let's use a shortcode for this.

{% mermaiddiagram() %} journey title My working day section Go to work Make tea: 5: Me Go upstairs: 3: Me Do work: 1: Me, Cat section Go home Go downstairs: 5: Me Sit down: 5: Me {% end %}