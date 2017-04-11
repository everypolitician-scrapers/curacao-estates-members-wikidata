#!/bin/env ruby
# encoding: utf-8

require 'wikidata/fetcher'

en = WikiData::Category.new( 'Category:Members of the Estates of Curaçao', 'en').member_titles |
     WikiData::Category.new( 'Category:Presidents of the Estates of Curaçao', 'en').member_titles
nl = WikiData::Category.new( 'Categorie:Curaçaos politicus', 'nl').member_titles


EveryPolitician::Wikidata.scrape_wikidata(names: { en: en, nl: nl })

