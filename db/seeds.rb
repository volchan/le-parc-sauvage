require 'yaml'

Item.destroy_all

items_data = YAML.load(File.read('db/seed_data/items.yml'))
items_data.each do |item|
  Item.create!(item)
end

Post.destroy_all
User.destroy_all

user = User.create!(first_name: "Claire", last_name: "Gautier", admin: true, email: "claire.gautier@edhec.com", password: "claire")

post_one = Post.create!(title: "Ouverture du Parc prochainement !",
            content: "Le CIRCAS entame en 2018 la construction du parc animalier. Il proposera au grand public un parcours ludique et accessible à tous au cours duquel vous pourrez observer de nombreuses espèces d’aniamaux, en particulier des rapaces, mais aussi une mini-ferme et d'autres surprises. Des espaces détente, restauration, points info, mais aussi des spectacles d'oiseaux en vol libre seront proposés. De quoi régaler petits et grands, avec un moment de détente et de découverte! Qui sommes-nous? Le Centre Inter Régional pour la Conservation des Animaux Sauvages est une association loi 1901 qui a pour objectif la préservation de la faune et la flore. Nous mettons en place un projet axé autour de LA Mission: Un Parc Zoologique dédié à la découverte et la connaissance des oiseaux de proie.",
            user: user)
post_one.photo.attach(io: File.open('db/seed_data/post1.png'), filename: "post1.png")


post_two = Post.create!(title: "Le CIRCAS, qui sommes nous ?",
            content: "Centre Inter Régional pour la Conservation des Animaux Sauvages. L’objectif général de l'association est la création d’un site pédagogique sur la thématique de l’environnement en implantant une volerie pédagogique et un centre de soins à la faune sauvage. La mentalité et les objectifs s’attachent à des axes privilégiés tels que :
             - Respect de l’environnement en créant des installations qui s’intègrent parfaitement dans le milieu.
             - Participer activement et concrètement sur des actions de conservation et de protection de l’environnement avec les organismes de l’Etat locaux, départementaux, régionaux, nationaux et Européens.
             - Favoriser l’accès à la connaissance et à la découverte pour tous les publics
             - Participer par des actions concrètes sur la préservation de l'envionnement et de la faune locale.
             En savoir plus : https://www.circas-volerie.fr/circas/",
            user: user)
post_two.photo.attach(io: File.open('db/seed_data/post2.png'), filename: "post2.png")

post_three = Post.create!(title: "Le Club Entreprise",
                          content: "Club Entreprises
Parrainage : le club « Grand Duc »
Si vous souhaitez participer à notre projet en nous soutenant financièrement, nous vous proposons de faire partie du

club d’entreprises « Grand Duc ».

Pourquoi ce club ?
Le plus grand et le plus puissant rapace nocturne n’a pas échappé aux conséquences de la modernisation et de nos croyances tenaces.

« Symbole de la nécessité d’une démarche éducative, victime de croyances et d’ignorance »

Son noble nom repris par les aristocrates français illustre sa préciosité et son charisme. L’oiseau, victime des croyances populaires, a longtemps été considéré comme néfaste et porteur de malheur. Maintenant classé parmi les espèces protégées, il incarne à la fois l’acharnement et la négligence humaine, mais aussi le travail pédagogique essentiel effectué depuis des années pour mettre fin à l’ignorance.

En un mot, le Grand Duc symbolise le long travail mené et à mener de protection des espèces via l’information et l’éducation.

Nous faisons de cette mission pédagogique notre mot d’ordre, et vous invitons à participer à notre action et agir pour la protection des espèces et la sensibilisation du grand public en nous soutenant financièrement.

Pourquoi devenir membre du club Grand Duc ?
Soutenir la cause animale et être acteur de la protection des espèces
Participer à un projet citoyen et responsable
Créer un échange entre le monde entrepreneurial et le monde naturel
Engager une démarche éco-responsable valorisante
Profiter du rayonnement du parc
Etre acteur du changement, pour notre avenir et celui de nos enfant
Comment devenir membre ?
Pour devenir membre actif du club d’entreprises « Grand Duc », le partenaire s’engage à apporter un soutien financier à partir de 1000 euros au C.I.R.C.A.S

Ce soutien peut également se traduire par un partenariat de compétences (apport de savoirs faire) ou de services (dons en nature) qui sera valorisé à hauteur de minimum 1000 euros.

Les modalités de la participation de l’entreprise partenaire seront indiquées et approuvées mutuellement par le biais d’une convention de partenariat valable pour une durée de 12 mois et renouvelable.

Le C.I.R.C.A.S s’engage à proposer des tarifs préférentiels ou activités gratuites au personnel et aux dirigeants, dans la limite des clauses prévues dans la convention de partenariat. Les actions de communication comporteront les logos et informations des partenaires afin qu’ils puissent jouir de la notoriété du parc, selon les modalités établies dans la convention de partenariat.

Le parrainage ne permet pas de bénéficier de déductions fiscales, mais la somme versée peut être déclarée comme frais commerciaux, justifiés par un reçu délivré par le C.I.R.C.A.S.



En savoir plus : https://www.circas-volerie.fr/circas/club-entreprises/",
user: user)

post_three.photo.attach(io: File.open('db/seed_data/post3.png'), filename: "post3.png")

post_four = Post.create!(title: "Carnet de naissance",
                          content: "Courant 2016 et 2017, notre groupe de cercopithèques de De Brazza (Cercopithecus neglectus) a subi une réorganisation conséquente suite aux recommandations du coordinateur du Programme d’Elevage Européen. Le Zoo de La Palmyre étant particulièrement expérimenté dans la reproduction de cette espèce, nous avons reçu des individus génétiquement importants afin de former un nouveau groupe reproducteur. En échange, tous les cercopithèques de De Brazza que nous possédions ont été transférés vers d’autres parcs zoologiques européens mais en situation de non reproduction, leur lignée étant déjà largement représentée.

Notre groupe familial se compose donc désormais de 4 individus : 1 mâle, 2 femelles et un petit né il y a 3 semaines. Son sexe n’a pas encore pu être déterminé par les soigneurs mais il est en pleine forme et déjà très actif. Le cercopithèque de De Brazza est l’un des primates les plus répandus d’Afrique dont il occupe les forêts de l’arc central équatorial. Il se nourrit de fruits, de feuilles et d’insectes. Il passe davantage de temps au sol et il est également plus silencieux que les autres cercopithèques. Les femelles donnent généralement naissance à un seul petit après 5 à 6 mois de gestation.
 ",
 user: user)

 post_four.photo.attach(io: File.open('db/seed_data/post4.png'), filename: "post4.png")

 post_five = Post.create!(title: "Début des spectacles",
  content: "Cest là, au parc d'attractions du Puy du Fou, qu'Emmanuel Macron, alors ministre de l'économie de François Hollande, avait lâché son fameux « Je ne suis pas socialiste » en août 2016, prenant la pose pour les photographes avec un Philippe de Villiers aux anges. Devenu président de la République, Emmanuel Macron s'affiche encore, hilare, au côté de l'ancien héraut du souverainisme, d'abord le 8 mai dernier au Stade de France, pour le match de football PSG-Les Herbiers, puis encore le 13 juin en Vendée, pour une rencontre avec des entrepreneurs locaux. Depuis lors, Philippe de Villiers ne boude pas son plaisir, et confie à qui veut l'entendre qu'il a l'oreille du jeune chef de l’État.

À défaut de faire encore de la politique – il y a progressivement renoncé, après avoir perdu le conseil général de Vendée en 2010 –, le fondateur du MPF, ex-candidat à la présidentielle (en 1995 et 2007), peut se consoler avec les affaires. Il a obtenu quelques succès d'édition auprès d'une frange de la droite ultraconservatrice. Mais il bénéficie surtout de l'aura du Puy du Fou, son œuvre, sa chose, qui lui confère encore une certaine notoriété, un peu d'influence et de pouvoir, et peut-être même plus encore. Car le secret sur les affaires de la famille Villiers dans ce parc à thèmes est l'un des mieux gardés qui soient.

Devenu le deuxième parc d'attractions français (2,26 millions de visiteurs en 2017, derrière les 14,8 millions de Disneyland Paris), le Puy du Fou affiche une communication bien huilée, qui vante son succès populaire et commercial. Il entretient la légende d'un château en ruine tombé dans l'oubli, dans la petite commune des Épesses, au fin fond du bocage vendéen, soi-disant découvert par Philippe de Villiers en 1977. Ce château servira de cadre à un grand spectacle historique (« la Cinéscénie »), un brin passéiste, contre-révolutionnaire et franchement identitaire, cela grâce à l'énergie du jeune énarque et au dévouement de nombreux bénévoles vendéens (voir cet épatant reportage de FR3 tourné en 1979).

Quatre décennies plus tard, le Puy du Fou est devenu un grand parc à thèmes – plusieurs villages historiques, spectacles.

",
user: user)

 post_five.photo.attach(io: File.open('db/seed_data/post5.png'), filename: "post5.png")



