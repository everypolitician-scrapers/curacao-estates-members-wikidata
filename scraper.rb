#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

# Find all P39s
query = 'SELECT DISTINCT ?item WHERE { ?item wdt:P39 wd:Q28479658 }'
p39s = EveryPolitician::Wikidata.sparql(query)

en = WikiData::Category.new( 'Category:Members of the Estates of Curaçao', 'en').member_titles |
     WikiData::Category.new( 'Category:Presidents of the Estates of Curaçao', 'en').member_titles
nl = WikiData::Category.new( 'Categorie:Curaçaos politicus', 'nl').member_titles

EveryPolitician::Wikidata.scrape_wikidata(ids: p39s, names: { en: en, nl: nl })

