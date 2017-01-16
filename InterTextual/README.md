#InterTextual
InterTextual is a tool for organizing small pieces of text based on their relationships to each other, in the form of a graph.

##Nodes
There are two types of nodes in the graph:

1. **Topics** - These have a brief title and a longer text description. They describe an idea or theme that is related to many snippets.
1. **Snippets** - These have a title and an ordered list of text chunks.

##Edges
There are also two types of edges in the graph:

1. **Tags** - These are references to a Topic, with a name and a weight (the strength of the association). Snippets may have many tags relating them to topics.
1. **Subtopics** - These are directed references, connecting a parent Topic with child Topics. 

##Additional concepts
 - **Synonyms** - These are alternative names for a Topic, and they redirect to that topic. This allows a Topic to have a single, cannonical name, but still handle a variety of references to itself. For example, the Topic "intertextual" might have a synonym "inter-textual".
 - **Tag weight** - Tags form a relationship between a Snippet and a Topic. However, some relationships are stronger than others. Tag weight is a numeric value dictating the strength of the relationship between Snippet and Topic.
