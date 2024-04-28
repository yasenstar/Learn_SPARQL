 SPARQL

# 00. Preface

"It is hardly surprising that the science they turned to for an explanation of things was divination, the science that revealed connections between words and things, proper names and the deductions that could be drawn from them...

-- Henri-Jean Martin,

The History and Power of Writing


## 00.1 Why Learn SPARQL?

### Time Berners-Lee (Web Inventor): "Trying to use the Semantic Web without SPARQL is like trying to use a relational database without SQL."

### SPARQL was not designed to query relational data, but to query data conforming to the RDF data model.
 
This book'sprimary goal is to quickly get you comfortable using SPARQL to retrieve and update data and to make the best use of that retrieved data.


## 00.2 SPARQL 1.1 Query Language Specification

### ex001.rq

## 00.3 Link to the book

### Sample codes

# 01. Jumping Right In: Some Data and Some Queries

## 01.01 The Data to Query

### Semantic Triple:
Subject (s)-> Predicate (p) -> Object (o)
 (see:RDF Triple:
:Obi-Wan_Kenobi - dbo:occupation -> :Jedi)
### ex002.ttl

## 01.02 Querying the Data

### Tool: arq, download from jena site

### Command: arq --data datafile.ttl --query queryfile.rq

#### ex003.rq

#### ex006.rq

#### ex007.rq

#### ex008.rq

#### ex010.rq

### Using Protege to build ontology and query data

## 01.03 More realistic Data and Matching on Multiple Triples
 (see:02.03.05 Blank Nodes and Why They're Useful)
### ex012.ttl

### ex013.rq

### ex015.rq

### ex017.rq

### ex019.rq

## 01.04 Searching for Strings

### ex021.rq

## 01.05 What Could Go Wrong?

### ex023.rq

## 01.06 Querying a Public Data Source

### DBpedia

### Public DBpedia SPARQL endpoint:
https://dbpedia.org/snorql/

#### dbpedia SPARQL Query Editor

### Wikidata Query Service:
https://query.wikidata.org/

### 120 Year of Olympics Data

### ex025.rq

## Summary

### What SPARQL is?

#### SPARQL is a recursive acronym for "SPARQL Protocol and RDF Query Language", which is described by a set of specifications from the W3C.
 (see:00.2 SPARQL 1.1 Query Language Specification)
### The basics of RDF
 (see:Recap RDF from Chapter 1)
#### RDF - Resource Description Framework - is a general model of how any piece of data, and representations of knowledge, can be expressed as so called triples.
 
RDF Triples can be aggregated into graphs withsubjects  andobjects as nodes, andpredicates as arcs.


#### RDF isn't a data format, but a data model with a choice of syntaxes for storing data files.
 
In this data model, you express facts with three-part statements known astriples.

 (see:Semantic Triple:
Subject (s)-> Predicate (p) -> Object (o))
### The meaning and role of URIs

#### A URI is a Uniform Resource Identifier.

#### URLs (Uniform Resource Locators), also known as web addresses, are one kind of URI.

#### A locator helps you find something, like a web page, and an identifier identifies somethings.

#### A URI may look like a URL, and there may actually be a web page at that address, but there might not be; its primary job is to provide an unique name for something, not to tell you about a web page where you can send your browser.

### The parts of a simple SPARQL query

#### The SPARQL Query Language specification recommends that files storing SPARQL queries have an extension of .rq, in lowercase.

#### A SPARQL query typically says "I want these pieces of information from the subset of the data that meets these conditions."
 
You describe the conditions withtriple patterns, which are similar to RDF triples but may include variables to add flexibility in how they match against the data.


### How to execute a SPARQL query with ARQ
 (see:Command: arq --data datafile.ttl --query queryfile.rq)
### How the same variable in multiple triple patterns can connect up the data in different triples

#### Check ex013.rq

### What can lead to a query returning nothing
 
Without theOPTIONAL  keyword, a SPARQL processor will only return data for a graph pattern if it can matchevery single triple patternin that graph pattern. -- this is the key reason lead to a query returning nothing.


### What SPARQL endpoints are and how to query the most popular one, DBpedia
 (see:Public DBpedia SPARQL endpoint:
https://dbpedia.org/snorql/)
#### A SPARQL Endpoint is a Point of Presence on an HTTP network that's capable of receiving and processing SPARQL Protocol requests.

#### It is identified by a URL commonly referred to as a SPARQL Endpoint URL.

#### Reference site @ "Learn SPARQL"

# 02. The Semantic Web, RDF, and Linked Data (and SPARQL)

## 02.01 What Exactly Is the "Semantic Web"?
 
The semantic web isa set ofstandards  andbest practices  for sharing data and the semantics of that data over the Web for use byapplications.


#### A set of Standards

##### the RDF data model

##### the SPARQL query language

##### the RDF Schema for storing vocabularies

##### OWL standards for storing ontologies

#### best practices for sharing data... over the Web for use by applications

##### Use Linked Data as a set of best practices for sharing data across the web infrastructure so that applications (not human beings!) can more easily retrieve data from public sites with no need for screen scraping.
 
The Linked Open Data Cloud -- http://lod-cloud.net/


#### the semantics of that data

##### The idea of "semantics" is often defined as "the meaning of words"

### "The Semantic Web is an extension of the current web in which information is given well-defined meaning, better enabling computers and people to work in cooperation." -- Tim Berners-Lee, James Hendler, Ora Lassila: The Semantic Web, Scientific American, 284(5), pp. 34-43(2001)

#### A Web of Data
 
The Semantic Web is anExtension of the traditional Web

 
The meaning of information (Semantics) is made explicit byformal (structured) and standardized knowledge representations (Ontologies).


##### Thereby it will be possible:
 
toprocess the meaning of information automatically

 
torelate andintegrateheterogeneous (异质) data

 
todeduceimplicit (not evident) information from existing (evident) information in an automated way

 
The Semantic Web is kind of aglobal database  that contains auniversal network of semantic propositions.


#### URI - Uniform Resource Identifier
 (see:A Web of Data)
##### Obi-Wan Kenobi: https://dbpedia/org/resource/Obi-Wan_Kenobi

##### Graph URIs are regarded as "Specifications & Solutions" in Semantic Web Technology Stack

#### RDF Triple:
:Obi-Wan_Kenobi - dbo:occupation -> :Jedi

##### RDF is the main interchange format for the Semantic Web Technology Stack

##### RDF is regarded as "Specifications & Solutions" in Semantic Web Technology Stack

#### RDFS - RDF Schema: enable the capability to form models (https://dbpedia.org/ontology/Agent)

##### RDFS is encoded into the RDF framework

#### OWL, description logics

##### logical rules: SWRL, SHACL

##### OWL and SKOS can help modeling classes and relations between classes

#### SPARQL

##### SPARQL is a standardized query language for the Semantic Web

##### SPARQL is a query language used to retrieve and manipulate data stored in RDF format

##### SPARQL supports graph pattern matching to navigate RDF data

## 02.02 URLs, URIs, IRIs, and Namespaces

### URL: Uniform Resource Locator, usually using specific protocols to locate resource within World Wide Web is the most common type of URI.

### URN: Universal Resource Names, one of the URI type with urn:scheme and the typical use example is ISBN system.

### URI: Uniform Resource Identifier, includes URL and URN.

#### RDF-related syntaxes such as Turtle, N3, and SPARQL use the <> brackets to tell a processor that something is an actual URI and not just some string of characters that begins with "http://"
 
The URIs that identify RDF resources are like the unique ID fields of relational database tables, except that they'reuniversally unique, which lets you link data from different sources around the world instead of just linking data from different tables in the same database.


### IRI: Internationalized Resource Identifier, compare to URI, it's characters are Unicode which means including Chinese, Japanese and Koreans etc.

#### The SPARQL Query Language specification refers to IRIs when it talks about naming resources, and not to URIs or URLs, because IRI is the most inclusive term.
 
Withnamespace term (a set of names used for a particular purpose), it is possible to distinguish between different senses of a word


### Namespace

#### Computer science: refer to a set of names used for a particular purpose

#### W3C: released a spec describing how XML developers could say that certain terms come from specific namespaces, then they could distinguish between different senses of a word
 (see:02.03 The Resources Description Framework (RDF))
## 02.03 The Resources Description Framework (RDF)
 (see:The basics of RDF)
### Recap RDF from Chapter 1
 
RDF is a data model in which the basic unit of information is known as atriple

 
A triple consists of asubject, apredicate, and anobject. You can also think of these as aresource identifier, anattribute or property name, and anattribute or property value

 
To remove any ambiguity from the information stated by a given triple, the triple's subject and predicate must beURIs. (We can use prefixed names in place of URIs)


### 02.03.01 Storing RDF in Files
 
The technical term for saving RDF as a string of bytes that can be saved on a disk isserialization.

 
All RDF serializations so far have beentext  files that used different syntaxes to represent the triples.

 
The serialization format is calledTurtle.

 
The simplest format is called N-Triples, in which you write out complete URIs inside of angle brackets and strings inside of quotation marks.Each triple is on its own line with a period at the end. (N-Triple has extention as .nt)


##### ex028.nt
 
The oldest RDF serialization,RDF/XML, was part of the original RDF specification in 1999.


##### ex029.rdf

##### ex030.rdf

##### ex031.n3

##### ex032.n3

### 02.03.02 Storing RDF in Databases
 
The best way to store RDF is to a database manager optimized for RDF triples, we call this atriplestore.


##### What is an RDF TripleStore (by OntoText)

##### TripleStore 101 (by DataVersity)

###### UK Gov's School Info Endpoint

##### About TripleStore (by DBpedia)

#### TripleStore Products (some)

##### Commercial

###### AllegroGraph

###### Amazon Neptune

###### AnzoGraph DB (Cambridge Semantics)

###### ArangoDB

https://arangodb.com/community-server/

 (see:ArangoDB Community Edition)
###### DataStax Enterprise Graph

###### GraphDB Enterprise (OntoText)
 (see:GraphDB Lite (OntoText))
###### Graphileon (GDB Tool)
 (see:AnzoGraph DB (Cambridge Semantics)DataStax Enterprise GraphMemgraph Enterprise/Cloud EditionNeo4j graph databaseONgDB EnterpriseRedisGraph)
###### MarkLogic

###### Memgraph Enterprise/Cloud Edition
 (see:Memgraph Community Edition)
###### Neo4j graph database
 (see:Neo4j Community)
###### ONgDB Enterprise
 (see:ONgDB Community)
###### RDFox

###### RedisGraph

###### Stardog

###### Virtuoso (OpenLink Software)

##### OpenSource

###### Apache's Jena Fuseki

Apache’s Fuseki, along with the entire Jena project and all its plugins, is still actively developed as of October 2020. It supports the SPARQL 1.1 update and gets new features and enhancements with each new release, which takes place every quarter or so. We know that Fuseki can scale loading the entire Wikidata dump.


###### ArangoDB Community Edition

###### Blazegraph

Blazegraph, previously known as  *Bigdata* , is a great triplestore that scales to billions of triples with thousands of proven use cases. In fact, it was so good that AWS bought the Blazegraph trademark almost five years ago and hired some of its staff, including the CEO. Unfortunately, that meant that most of Blazegraph’s development experience was used to create a competing product: Amazon Neptune. Although the official releases of Blazegraph have slowed down, it still supports SPARQL 1.1 and is by no means outdated.

 (see:Amazon Neptune)
###### BrightstarDB

BrightstarDB is an RDF triple store. It does not require the definition of a database schema, and with the RDF data model model , it can easily add and integrate data of all shapes. The core libraries have a small footprint and install with zero configuration for embedded applications.


###### cayley

Cayley is an open-source graph inspired by the graph database behind Freebase and Google's Knowledge Graph.


###### Filament

Filament is a graph persistence framework and associated toolkits based on a navigational query style. A default persistence engine is included for storing graph objects and properties into simple relational tables but the actual storage model is pluggable.


###### GraphDB Lite (OntoText)

GraphDB Lite is a free RDF triplestore that allows to store up to 100 million triples on a desktop computer. This version of GraphDB can be easily deployed using JAVA. SPARQL 1.1 queries are performed in memory, not using files based indices. Reasoning operations for inferencing are supported in GraphDB Lite.


###### Graph Engine

Graph Engine

= RAM Store + Computation Engine + Graph Model

Graph Engine (GE) is a distributed in-memory data processing engine, underpinned by a strongly-typed RAM store and a general distributed computation engine.



The distributed RAM store provides a globally addressable high-performance key-value store over a cluster of machines. Through the RAM store, GE enables the fast random data access power over a large distributed data set.



The capability of fast data exploration and distributed parallel computing makes GE a natural large graph processing platform. GE supports both low-latency online query processing and high-throughput offline analytics on billion-node large graphs.


###### HyperGraphDB

HyperGraphDB is a general purpose, open-source data storage mechanism based on a powerful knowledge management formalism known as directed hypergraphs designed mostly for knowledge management, AI and semantic web projects, it can also be used as an embedded object-oriented database for Java projects of all sizes.


###### JanusGraph

* Gremlin Query Language

###### MapGraph

MapGraph API makes it easy to develop high performance graph analytics on GPUs. The API is based on the Gather-Apply-Scatter (GAS) model as used in GraphLab. To deliver high performance computation and efficiently utilize the high memory bandwidth of GPUs, MapGraph's CUDA kernels use multiple sophisticated strategies, such as vertex-degree-dependent dynamic parallelism granularity and frontier compaction.


###### Memgraph Community Edition

###### Neo4j Community

Neo4j is an open-source graph database, implemented in Java described as embedded, disk-based, fully transactional Java persistence engine that stores data structured in graphs rather than in tables.


###### ONgDB Community

###### OrientDB Community Edition

OrientDB is a 2nd Generation Distributed Graph Database with the flexibility of Documents in one product. It can store 220,000 records per second on common hardware. Even for a Document based database, the relationships are managed as in Graph Databases with direct connections among records.


###### orly

Orly is a non-relational database, meant to be fast and to scale for billions of users. Orly provides a single path to data and will eliminate our need for memcache due to its speed and high concurrency.


###### sones

sones GraphDB is an object-orientated graph data storage for a large amount of highly connected semi-structured data in a distributed environment.


###### weaver

Weaver is a distributed graph store that provides horizontal scalability, high-performance, and strong consistency.Weaver enables users to execute transactional graph updates and queries through a simple python API


### 02.03.03 Data Typing

#### XML Schema 1.1 Part 2: Datatypes

#### Assignment of datatypes in Turtle

##### ex033.ttl

##### ex034.ttl

#### Assignment of datatypes in RDF/XML

##### ex035.rdf

### 02.03.04 Making RDF More Readable with Languages Tags and Labels

#### W3C SKOS (Simple Knowledge Organization System)

##### defining vocabularies, texonomies, and thesauruses

##### SKOS Specification

##### ISO 25964 thesaurus standard

#### ex036.ttl

##### List of ISO 639 language codes

##### List of ISO 3166 country codes

#### ex037.ttl

#### ex038.ttl

#### ex039.ttl

### 02.03.05 Blank Nodes and Why They're Useful
 (see:03.04 Searching Further in the Data)
#### ex040.ttl

#### ex041.ttl
 
The understore "_" prefix means that this is a special kind of node known asblank node orbnode.


#### BNode has no permanent identity; its only purpose is to group together some other values.

#### Query bnode as subject

##### SELECT ?c
WHERE
{
    ?s <...> [  <> ?c ]
}

##### [ ... content ... ] is a convenience in turtle and sparql to introduce a bnode (typically in an object position) and add some properties of that bnode

### 02.03.06 Named Graphs

#### Named graphs are another way to group triples together.

#### When you assign a name to a set of triples, you can then assign metadata to that set of triples, which we called named subsets of the graph

#### In a RDF database, a named graph is what we call a subset of our data that has been given a unique label (name). A graph database can contain any number of named graphs alongside its default graph, and each fact can be present in or absent from any graph.

## 02.04 Reusing and Creating Vocabularies: RDF Schema and OWL

### RDF Schema and the RDF based Web Ontology Language (OWL) add a typing mechanism to classify subjects and objects into hierarchies

#### RDF 1.2 Schema (RDFS)

##### rdfs classes

###### rdfs:Resource

###### rdfs:Class

###### rdfs:Literal

###### rdfs:Datatype

###### rdfs:langString

###### rdfs:HTML

###### rdfs:XMLLiteral

###### rdfs:JSON

###### rdfs:Property

##### rdfs properties

###### rdfs:range

###### rdfs:domain

###### rdf:type

###### rdfs:subClassOf

###### rdfs:subPropertyOf

###### rdfs:label

###### rdfs:comment

##### Container Classes and Properties

###### rdfs:Container

###### rdfs:Bag

###### rdfs:Seq

###### rdfs:Alt

###### rdfs:ContainerMembershipProperty

###### rdfs:member

##### RDF Collections

###### rdf:List

###### rdf:first

###### rdf:rest

###### rdf:nil

##### Reification Vocabulary

###### rdf:Statement

###### rdf:subject

###### rdf:predicate

###### rdf:object

##### Utility Properties

###### rdfs:seeAlso

###### rdfs:isDefinedBy

* S rdfs:isDefinedBy O

###### rdf:value

#### ex042.ttl

#### Google, Bing and Yahoo use OWL publish a joint vocabulary, example: http://schema.org/City

#### NCI use OWL to publish NCI Thesaurus (the source for CDISC's CT:s) in an RDF/XML format

### RDF Schema is itself a vocabulary with a schema whose triples declare facts

#### ex043.ttl

#### ex044.ttl

#### ex045.ttl

### Without defining a large, complex ontology, many RDF developers use just a few classes and properties from OWL to add metadata to their triples

#### ex046.ttl

## 02.05 Linked Data
 (see:Use Linked Data as a set of best practices for sharing data across the web infrastructure so that applications (not human beings!) can more easily retrieve data from public sites with no need for screen scraping.)
## 02.06 SPARQL's Past, Present, and Future

## 02.07 The SPARQL Specifications

### 1. Use URIs as names for things

### 2. Use HTTP URIs so that people can look up those names

### 3. When someone looks up a URI, provide useful information, using the standards (RDF, SPARQL)

### 4. Include links to other URIs so that they can discover more things.

# 03. SPARQL Queries: A Deeper Dive

## 03.01 More Readable Query Results

### 03.01.01 Using the Labels Provided by DBpedia

### 03.01.02 Getting Labels from Schemas and Ontologies

## 03.02 Data That Might Not Be There

### OPTIONAL
 (see:01.05 What Could Go Wrong?)
## 03.03 Finding Data That Doesn't Meet Certain Conditions

### FILTER
 (see:01.04 Searching for Strings)
### FILTER NOT EXISTS

### MINUS

## 03.04 Searching Further in the Data

### Although blank nodes have no permanent identity, we can use them to group together other values.

## 03.05 Searching with Blank Nodes

## 03.06 Eliminating Redundant Output

## 03.07 Combining Different Search Conditions

## 03.08 FILTERing Data Based on Conditions
 (see:01.04 Searching for Strings)
## 03.09 Retrieving a Specific Number of Results

## 03.10 Querying Named Graphs

## 03.11 Queries in Your Queries

## 03.12 Combining Values and Assigning Values to Variables

## 03.13 Creating Tables of Values in Your Queries

## 03.14 Sorting, Aggregating, Finding the Biggest and Smallest and...

### 03.14.01 Sorting Data

### 03.14.02 Finding the Smallest, the Biggest, the Count, the Average...

### 03.14.03 Grouping Data and Finding Aggregate Values within Groups

## 03.15 Querying a Remote SPARQL Service

## 03.16 Federated Queries: Searching Multiple Datasets with One Query

# 04. Copying, Creating, and Converting Data (and Finding Bad Data)

## 04.01 Query Forms: SELECT, DESCRIBE, ASK, and CONSTRUCT

## 04.02 Copying Data

## 04.03 Creating New Data

## 04.04 Converting Data

## 04.05 Finding Bad Data

### 04.05.01 Defining Rules with SPARQL

### 04.05.02 Generating Data About Broken Rules

### 04.05.03 Using Existing SPARQL Rules Vocabularies

## 04.06 Asking for a Description of a Resource

# 05. Datatypes and Functions

## 05.01 Datatypes and Queries

### 05.01.01 Representing Strings

### 05.01.02 Comparing Values and Doing Arithmetic

## 05.02 Functions

### 05.02.01 Program Logic Functions

### 05.02.02 Node Type and Datatype Checking Functions

### 05.02.03 Node Type Conversion Functions

### 05.02.04 Datatype Conversion

### 05.02.05 Checking, Adding, and Removing Spoken Language Tags

### 05.02.06 String Functions

#### STRLEN()

#### SUBSTR()

#### UCASE(), LCASE()

#### STRSTARTS(), STRENDS()

#### CONTAINS()

#### regex()
 (see:01.04 Searching for Strings)
### 05.02.07 Numeric Functions

### 05.02.08 Date and Time Functions

### 05.02.09 Hash Functions

## 05.03 Extension Functions

# 06. Updating Data with SPARQL

## 06.01 Getting Started with Fuseki

## 06.02 Adding Data to a Dataset

## 06.03 Deleting Data

## 06.04 Changing Existing Data

## 06.05 Named Graphs

### 06.05.1 Dropping Graphs

### 06.05.2 Named Graph Syntax Shortcuts: WITH and USING

### 06.05.03 Copying and Moving Entire Graphs

### 06.05.04 Deleting and Replacing Triples in Named Graphs

# 07. Query Efficiency and Debugging

## 07.01 Efficiency Inside the WHERE Clause

### 07.01.01 Reduce the Search Space

### 07.01.02 OPTIONAL Is Very Optional

### 07.01.03 Triple Pattern Order Matters

### 07.01.04 FILTERs: Where and What

### 07.01.05 Property Paths Can Be Expensive

## 07.02 Efficiency Outside the WHERE Clause

## 07.03 Debugging

### 07.03.01 Manual Debugging

### 07.03.02 SPARQL Algebra

### 07.03.03 Debugging Tools

# 08. Working with SPARQL Query Result Formats

## 08.01 SPARQL Query Results XML Format

### 08.01.01 Processing XML Query Results

## 08.02 SPARQL Query Results JSON Format

### 08.02.01 Processing JSON Query Results

## 08.03 SPARQL Query Results CSV and TSV Formats

### 08.03.01 Using CSV Query Results

### 08.03.02 Using TSV Query Results

# 09. RDF Schema, OWL, and Inferencing

## 09.01 What Is Inferencing?

### 09.01.01 Inferred Triples and Your Query

### 09.01.02 More than RDFS, Less than Full OWL

## 09.02 SPARQL and RDFS Inferencing

## 09.03 SPARQL and OWL Inferencing

## 09.04 Using SPARQL to Do Your Inferencing

## 09.05 Querying Schemas

# 10. Building Applications with SPARQL

## 10.01 Applications and Triples

### 10.01.01 Property Functions

### 10.01.02 Model-Driven Development

## 10.02 SPARQL and Web Application Development

## 10.03 SPARQL Processors

### 10.03.01 Standalone Processors

### 10.03.02 Triplestore SPARQL Support

### 10.03.03 Middleware SPARQL Support

### 10.03.04 Public Endpoints, Private Endpoints

## 10.04 SPARQL and HTTP

### 10.04.01 GET a Graph of Triple

### 10.04.02 PUT a Graph of Triples

### 10.04.03 POST a Graph of Triples

### 10.04.04 DELETE a Graph of Triples

# 11. A SPARQL Cookbook

## 11.01 Themes and Variations

## 11.02 Exploring the Data

### 11.02.01 How Do I Look at All the Data at Once?

### 11.02.02 What Classes Are Declared?

### 11.02.03 What Properties Are Declared?

### 11.02.04 Which Classes Have Instances?

### 11.02.05 What Properties Are Used?

### 11.02.06 Which Classes Use a Particular Property?

### 11.02.07 How Much Was a Given Property Used?

### 11.02.08 How Much Was a Given Class Used?

### 11.02.09 A Given Class Has Lots of Instances. What Are These Things?

### 11.02.10 What Data Is Stored About a Class' Instances?

### 11.02.11 What Value Does a Given Property Have?

### 11.02.12 A Certain Property's Values Are Resources. What Data Do We Have About Them?

### 11.02.13 How Do I Find Undeclared Properties?

### 11.02.14 How Do I Treat a URI as a String?

### 11.02.15 Which Data or Property Name Includes a Certain Substring?

### 11.02.16 How Do I Convert a String to a URI?

### 11.02.17 How Do I Query a Remote Endpoint?

### 11.02.18 How Do I Retrieve Triples from a Remote Endpoint?

## 11.03 Creating and Updating Data

### 11.03.01 How Do I Delete All the Data?

### 11.03.02 How Do I Globally Replace a Property Value?

### 11.03.03 How Do I Replace One Property with Another?

### 11.03.04 How Do I Change the Datatype of a Certain Property's Values?

### 11.03.05 How Do I Turn Resources into Instances of Declared Classes?
