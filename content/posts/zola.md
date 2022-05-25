+++
title = "testing mermaid"
date = 2022-05-25
category = "test"

[taxonomies]
tags = ["test", "tests"]
categories = ["test"]
+++

Let's see can we include mermaid diagrams?

Let's use a shortcode for this.

{% mermaiddiagram() %} journey title My working day section Go to work Make tea: 5: Me Go upstairs: 3: Me Do work: 1: Me, Cat section Go home Go downstairs: 5: Me Sit down: 5: Me {% end %}

```mermaid
graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D;
```
