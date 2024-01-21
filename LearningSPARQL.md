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

## 00.3 Link to the book

### Sample codes

# 01. Jumping Right In: Some Data and Some Queries

## 01.01 The Data to Query

### Semantic Triple:
Subject (s)-> Predicate (p) -> Object (o)
 (see:RDF Triple:
:Obi-Wan_Kenobi - dbo:occupation -> :Jedi)
## 01.02 Querying the Data

### Tool: arq, download from jena site

### Command: arq --data datafile.ttl --query queryfile.rq

### Using Protege to build ontology and query data

## 01.03 More realistic Data and Matching on Multiple Triples

## 01.04 Searching for Strings

## 01.05 What Could Go Wrong?

## 01.06 Querying a Public Data Source

### DBpedia

### Public DBpedia SPARQL endpoint:
https://dbpedia.org/snorql/

### Wikidata Query Service:
https://query.wikidata.org/

## Summary

### What SPARQL is?

#### SPARQL is a recursive acronym for "SPARQL Protocol and RDF Query Language", which is described by a set of specifications from the W3C.
 (see:00.2 SPARQL 1.1 Query Language Specification)
### The basics of RDF

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

## 02.03 The Resources Description Framework (RDF)
 (see:The basics of RDF)
### 02.03.01 Storing RDF in Files

### 02.03.02 Storing RDF in Databases

### 02.03.03 Data Typing

### 02.03.04 Making RDF More Readable with Languages Tags and Labels

### 02.03.05 Blank Nodes and Why They're Useful
 (see:03.04 Searching Further in the Data)
### 02.03.06 Named Graphs

## 02.04 Reusing and Creating Vocabularies: RDF Schema and OWL

### RDF Schema and the RDF based Web Ontology Language (OWL) add a typing mechanism to classify subjects and objects into hierarchies

### Google, Bing and Yahoo use OWL publish a joint vocabulary, example: http://schema.org/City

### NCI use OWL to publish NCI Thesaurus (the source for CDISC's CT:s) in an RDF/XML format

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
