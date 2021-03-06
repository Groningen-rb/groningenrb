# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

editions = Edition.create!([
  {
    doors_open_at: Time.zone.parse('2010-07-28 20:00'),
    edition_number: 1,
    title: 'Groningen.rb #1',
    body: "## Voor alle rubyboeren en railsninja's in het noorden des lands\n\nHeb je ooit wel eens van Ruby gehoord of werk je dagelijks met Rails? Kom dan op 28 Juli naar Groningen! Dan zal namelijk de allereerste Groningen.rb gaan plaatsvinden. Onder het genot van het een paar ijskoude pilsjes, zul je te weten komen hoe groot de noordelijke Ruby wereld is en wat er daarbinnen zoal gebeurt.\n\n<a href=\"http://mediact.nl\" title=\"mediaCT\">MediaCT</a> heeft een prachtige ruimte in hun herenpand ter beschikking gesteld, dit is gevestigd op&nbsp;<a href=\"http://goo.gl/maps/yPSK\" title=\"mediaCT, Zuiderpark 22\">Zuiderpark 22</a>. Daarnaast nemen ze ook nog eens het eerstje rondje op hun rekening! De rest van de drankjes wordt gesponsord door&nbsp;<a href=\"http://credeble.com\" title=\"Credeble\">Credeble</a>.\n\nAls je van plan bent te komen, laat het dan op Twitter even weten met de hashtags #groningenrb #ikbenerbij. Geen twitter? Geen probleem, je bent alsnog van harte welkom!\n\nTot 28 Juli!",
    location: 'Zuiderpark 22, Groningen'
  },
  {
    doors_open_at: Time.zone.parse('2010-10-11 20:00'), 
    edition_number: 2,
    title: 'Groningen.rb #2', 
    body: "Jawel, hij komt er! En wel op 11 oktober. Reserveer die avond alvast in Google Calendar en <a href=\"http://twitter.com/?status=%23groningenrb+%23ikbenerbij%20http://groningen-rb.org\">tweet even dat je er bij bent</a>.\n\nWe kunnen wederom terecht op het kantoor van <a href=\"http://mediact.nl\"><strong>mediaCT</strong></a> op <a href=\"http://goo.gl/maps/IpxD\">Zuiderpark 22</a>, <a href=\"http://twitter.com/pberkenbosch\"><strong>Peter Berkenbosch</strong></a> zal een lightning talk doen over Behavior Driven Development met <a href=\"http://cukes.info/\">Cucumber</a>\n\nGroningen.rb is een evenement met het doel de verschillende <a href=\"http://en.wikipedia.org/wiki/Ruby_(programming_language)\">Ruby</a> en <a href=\"http://en.wikipedia.org/wiki/Ruby_on_Rails\">Rails</a> projecten en talenten in het noorden van het land in kaart te brengen.\n\nNatuurlijk ben je ook welkom als je geen twitter hebt, kom gewoon langs!\n\nBinnenkort meer nieuws.\n\nTot 11 Oktober!", 
    location: 'Zuiderpark 22, Groningen' 
  },
  {
    doors_open_at: Time.zone.parse('2011-01-10 20:00'), 
    edition_number: 3, 
    title: 'Groningen.rb #3', 
    body: "Op 10 Januari is het alweer tijd voor de 3e editie van Groningen.rb.\n\nHet zal deze keer plaats vinden op: <a href=\"http://goo.gl/maps/rx3h\" title=\"Praediniussingel 41, locatie Groningen.rb #3\">Praediniussingel 41</a>, dat is dus een andere locatie! <a href=\"http://www.adix.nl/\" title=\"Adix\">Adix</a> - de rails hosters in Groningen - zijn zo gastvrij om een prachtige ruimte in hun grachtenpand beschikbaar te stellen voor onze meet-up.\n\nDit keer is er geen lezing, maar zal er daadwerkelijk gelivecode gaan worden! Hoe en wat blijft nog een een verrassing, maar het wordt tof! Ook voor niet-zo-into-Ruby-mensen zal het een leuke avond worden en valt er in ieder geval een boel op te steken!\n\nMocht je van plan zijn te komen, <a href=\"http://twitter.com/?status=%23groningenrb+%23ikbenerbij%20http://groningen-rb.org\">tweet</a> dat dan vooral even, dan weten we hoeveel mensen we ongeveer kunnen verwachten. Niet-twitteraars zijn natuurlijk ook van harte welkom.\n\nTot 10 Januari!\n<a href=\"http://twitter.com/egbrt\">@egbrt</a>", 
    location: 'Praediniussingel 41, Groningen' 
  },
  {
    doors_open_at: Time.zone.parse('2011-03-16 20:00'), 
    edition_number: 4, 
    title: 'Groningen.rb #4', 
    body: "Op deze vierde Groningen.rb zal <a href=\"http://twitter.com/thedjinn\">Emil Loer</a> een lekker technisch verhaal vertellen over het versnellen van Ruby met C-extensies en hoe dit te verpakken als gem. Erg interessant, dus hou 20:00 op 16 maart alvast vrij in je agenda!\n\nWe hebben wederom een frisse locatie kunnen vinden en mogen deze keer onze meetup houden op het kantoor van <a href=\"http://codigy.nl/\">Codigy</a> aan het prachtige <a href=\"http://goo.gl/maps/BzGw\">Hoge der A</a>, tot dan!\n\nTeam Groningen.rb", 
    location: 'Hoge der A 12, Groningen' 
  },
  {
    doors_open_at: Time.zone.parse('2011-05-31 20:00'),
    edition_number: 5,
    title: 'Groningen.rb #5',
    body: "De vijfde incarnatie van de Groningse Ruby User Group alweer! Deze keer is het weer tijd voor een <a href=\"http://agilepainrelief.com/notesfromatooluser/2008/10/tdd-randori-session.html\">Randori</a>.\n\nWe zijn welkom op het kantoor van <a href=\"http://www.factlink.com/\">Factlink</a> en ze sponsoren ook de drankjes! Bel aan bij Gino op <a href=\"http://goo.gl/maps/qtVn\">Stationsweg 3D</a> en vraag naar Groningen.rb of Factlink om binnen te komen.\n\nTeam Groningen.rb",
    location: ''
  },
  {
    doors_open_at: Time.zone.parse('2011-07-25 20:00'),
    edition_number: 6,
    title: 'Groningen.rb #6',
    body: "Tijdens deze zesde editie van Groningen.rb gaat <a href=\"http://twitter.com/yoazt\">Joost Lubach</a> over de voor- en nadelen van <a href=\"http://haml-lang.com/\">HAML</a> en <a href=\"http://sass-lang.com/\">SASS/SCSS</a> vertellen. Zeker een interessante sessie voor de frontenders die snel met behulp van Ruby on Rails een concept willen neerzetten.\n\nWe zijn welkom op het kantoor van <a href=\"http://www.pythonheads.nl/\">Pythonheads</a> op <a href=\"http://goo.gl/qaKch\">Oosterstraat 29a</a>, uiteraard in Groningen. Ingang via het steegje links.\n\nTeam Groningen.rb",
    location: ''
  },
  {
    doors_open_at: Time.zone.parse('2011-11-10 20:00'), 
    edition_number: 7, 
    title: 'Groningen.rb #7', 
    body: "Alweer de zevende editie is op komst. En dit keer zijn we om 20:00 welkom bij <a href=\"http://www.belsimpel.nl/\">BelSimpel</a> op het volgende adres: <a href=\"http://g.co/maps/vffb2\">Grotemarkt 8A, Groningen</a>.\n\nBinnenkort maken we het volledige programma bekend.", 
    location: 'Grotemarkt 8A, Groningen' 
  },
  {
    doors_open_at: Time.zone.parse('2012-01-09 20:00'), 
    edition_number: 8, 
    title: 'Groningen.rb #8', 
    body: "Tijdens deze achtste bijeenkomst vertelt <a href=\"http://twitter.com/gideondk\">Gideon de Kok</a> over het <a href=\"http://www.playframework.org/2.0\">Play! 2.0</a> framework.\n\n**- \"OMGWTF?!! JAVA?!! grmbl!\#\$\%^\#\$\".** Ja, kennis verbreden kan geen kwaad!\n\nPlay! is een framework dat op Java en Scala gebaseerd is en veel overeenkomsten met Ruby on Rails heeft zoals REST en Stateless Model. Tijdens deze editie wordt Play! vooral vanuit de Scala hoek benaderd.\n\nLocatie: Het Heerenhuis, <a href=\"http://maps.google.com/maps?q=Het+Heerenhuis,+Spilsluizen,+Groningen,+Nederland&hl=nl&ll=53.221922,6.564194&spn=0.000553,0.00142&sll=53.106716,6.097673&sspn=0.146128,0.363579&vpsrc=6&hq=Het+Heerenhuis,+Spilsluizen,+Groningen,+Nederland&t=h&z=20&layer=c&cbll=53.221922,6.564194&panoid=r5MOSFuu6yWAIgeMzRRHrA&cbp=12,335.5,,0,0.76\">Spilsluizen 9 Groningen</a>", 
    location: 'Spilsluizen 9 Groningen' 
  },
  {
    doors_open_at: Time.zone.parse('2012-06-20 20:00'), 
    edition_number: 9, 
    title: 'Groningen.rb #9', 
    body: "Ge&iuml;nspireerd door het laatste <a href=\"http://euruko2012.org\">EuRuKo</a> gaan we een Lightning Talks avond organiseren. Kijk op <a href=\"http://lanyrd.com/chcxc\">Lanyrd</a> voor de uitgebreide informatie over deze editie. Natuurlijk kan je ook via Twitter laten weten of je komt!\n\nDe avond zal er als volgt uitzien:\n\n@ivdma - API's\n\n@thedjinn - BarTune architectuur\n\njij met het onderwerp die jou inspireert? <a href=\"http://twitter.com/groningenrb\">laat het ons weten</a>\n\nTot 20 juni in de Launch Cafe!\n\n**P.S.** Wil je in de toekomst een bepaalde spreker zien, over een bepaalde onderwerp meer weten, zelf ergens over praten of gewoon je Git(hub) skills verbeteren? Kijk dan op <a href=\"https://github.com/Groningen-rb/call-for-proposals\">groningen-rb/call-for-proposals</a> repository; clone deze; en submit een pull request met jouw voorstel.", 
    location: 'Herestraat 106, Groningen' 
  }
  # { starts_at: Time.zone.parse('2012-07-12 20:00'), description: "## Groningen.rb #10 - Reload\n\n*Binnenkort meer info!*" }
])