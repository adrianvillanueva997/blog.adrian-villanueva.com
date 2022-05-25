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

{% mermaiddiagram() %} graph TD;
    A-->B;
    A-->C;
    B-->D;
    C-->D; {% end %}
