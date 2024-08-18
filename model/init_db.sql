
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS shows;

CREATE TABLE products (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(10) NOT NULL,
    descr VARCHAR(600) NOT NULL,
    img_url VARCHAR(300),
    collection VARCHAR(15),
    year VARCHAR(10),
    creative_dir VARCHAR(40),
    material VARCHAR(255),
    show_id INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE shows (
    id INT NOT NULL AUTO_INCREMENT,
    collection VARCHAR(15) NOT NULL,
    year VARCHAR(10) NOT NULL,
    vid_url VARCHAR(300) NOT NULL,
    creative_dir VARCHAR(40),
    prod_amount INT,
    location VARCHAR(30),
    house_name VARCHAR(30),
    about VARCHAR(2500),
    PRIMARY KEY (id)
);

INSERT INTO products (name, descr, img_url, collection, year, creative_dir, material, show_id)
VALUES 
('LOOK 1', 'Black velvet cape with Phoenix-wing shaped shoulders adorned with a 3D chrome trompe l\'oeil feathers embroidery.\n\Eggs earrings in shiny silver palladium.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1761-667c12b3eaa0c-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, chrome, palladium', 1),
('LOOK 2', 'Long draped dress in black washed silk with Phoenix-wing shaped shoulders and impossible V neckline. It is worn over a nude dentelle Chantilly embroidered culotte.\n\Long gloves in black velvet.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1762-667d5e678076c-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Washed silk, velvet', 1),
('LOOK 3', 'Black velvet short-sleeved top embroidered with silver metal and sequins inspired by the design of the iconic Schiaparelli “Apollo of Versailles” cape from the 1938 Zodiac collection.\n\It is paired with matching embroidered long gloves and long skirt.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1763-667c130bef29d-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, metal, sequins', 1),
('LOOK 4', 'Black velvet bustier dress embroidered with a contrasted white polka dots pattern in pearls and rhinestones and enhanced with an impossible V neckline inspired by a vintage shoe, conical breasts and an openwork on the belly revealing the navel under a pendant Egg bijou.\n\Egg pendant earrings in shiny silver palladium, rhinestones and pearls.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1764-667c18b23fe1b-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, rhinestones, palladium, pearls', 1),
('LOOK 5', 'Black wool crepe top with Phoenix-wing shaped shoulders and adorned with a tonal velvet bow. Matching crepe long skirt and long black velvet gloves.\n\Black velvet headpiece inspired by a vintage shoe, topped with a tonal satin rosebud.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1765-667c1348ef04b-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool, velvet, satin', 1),
('LOOK 6', 'Black velvet maxi dress with Phoenix-wing shaped shoulders and an impossible V neckline. The dress is entirely embroidered with hammered gold brass pieces.\n\Matching clutch adorned with signature Padlock clasp in hammered gold brass.\n\Egg bracelet in shiny gold palladium and rhinestones.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1766-667c1366969a1-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, brass, palladium', 1),
('LOOK 7', 'Dark grey wool flannel cape with Phoenix-wing shaped shoulders and adorned with a shawl collar and bow in tonal velvet.\n\Egg-shaped shiny silver palladium minaudiere. Black crinoline veil.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1767-667c1390de02e-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool, velvet, palladium', 1),
('LOOK 8', 'Dusty brown wool satin bustier dress enhanced with tonal 3D thorn embroidery and satin rose embroidery at the neckline. The bustier line is inspired by a vintage shoe.\n\Dusty brown crinoline veil.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1768-667c13a84e732-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool satin', 1),
('LOOK 9', 'Asymmetric illusion dress in sheer black draped mesh trimmed with a swirling volume mille-feuille of moving circles in tonal satin organza at the hem.\n\Nude crinoline veil.\n\Egg pendant earrings in black resin and rhinestones.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1769-667c13c641116-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Mesh, satin, resin, rhinestones', 1),
('LOOK 10', 'Corset bustier dress in silver silk satin enhanced with a swirling volume, a mille-feuille of moving circles in tonal satin organza at the hem and a 3D vintage shoe trompe l\'oeil at the back.\n\Half-eggs pendant earrings in shiny silver palladium and rhinestones.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1770-667c13dfec7c1-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Silk satin, palladium, rhinestones', 1),
('LOOK 11', 'Black heavy wool crepe tuxedo jacket enhanced with a tonal satin lapel embroidered with signature Measuring Tape and a satin bow. It is worn over a white cotton piqué tuxedo vest and with matching cropped trousers.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1771-667c13fb454b7-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool, satin, cotton', 1),
('LOOK 12', 'Bi-material bustier dress with dusting-effect embroidery on tulle and black velvet corset. It is embellished with a black satin 3D rose embroidery at the neck.\n\Nude crinoline veil.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1772-667c141f3f67b-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, satin', 1),
('LOOK 13', 'Oversized trompe l\'oeil jumpsuit in ecru neoprene jersey fully embroidered with brown tones sequins and faux horsehair recreating a zebra skin.\n\Egg wire necklace in shiny silver palladium and rhinestone.\n\Midnight blue crinoline veil.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1773-667c143d37488-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Neoprene jersey, sequins, faux horsehair, palladium, rhinestone', 1),
('LOOK 14', 'Nude jumpsuit in mesh fully embroidered with tonal 3D leather thorns. It is worn underneath a black jersey pareo skirt.\n\Long gloves in black velvet.\n\Black velvet minaudiere topped with an extra-large velvet and tonal rhinestone rosebud.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1774-667c146b37173-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Mesh, leather, jersey, velvet, rhinestone ', 1),
('LOOK 15', 'Ball gown entirely embroidered with geometric sequins in black resin and enhanced by a tulle train with aerodynamic volume.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1775-667d604d9e009-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Sequins, resin', 1),
('LOOK 16', 'Jacket entirely embroidered with ecru trompe l\'oeil feathers tips made in silk organza topped with contrasted black pearls and matching toque.\n\Black wool and mohair cropped trousers.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1776-667c14ac46872-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Silk, pearls, wool, mohair', 1),
('LOOK 17', 'Navy and black worsted wool jacket entirely embroidered with tonal trompe l\'oeil feathers tips made in silk organza topped with contrasted grey pearls at the end enhanced with a contrasted lapel in black satin.\n\Matching cropped trousers.\n\Eggs earrings in shiny silver palladium.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1777-667c14c22f5ec-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool, silk, pearls, satin, palladium', 1),
('LOOK 18', 'Bustier gown in navy blue duchesse satin with exaggerated hipline composed of several layers of hand-cut ribbons revealing the skin as it falls down the body.\n\The neckline, inspired by a vintage shoe, is embellished with contrasting black rhinestone and sequin embroidery and topped with a shiny silver palladium Egg.\n\Long gloves in black embroidered sheer mesh.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1778-667c14e2e05b5-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Satin, rhinestone, sequin, palladium, mesh', 1),
('LOOK 19', 'Midnight blue oversized neoprene dress enhanced with an impossible V neckline embellished with a tonal bow.\n\Midnight blue crinoline veil.\n\Egg earrings in shiny silver palladium and matching rhinestone wire necklace with shiny silver palladium Egg pendant.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1779-667c1505eef0b-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Neoprene, palladium, rhinestone', 1),
('LOOK 20', 'Long wool crepe black skirt with a tonal satin basque. It is worn with a midnight-blue satin bra embellished with lace in the signature Keyhole motif of the Maison and tonal satin bows at the shoulders.\n\Long gloves in sheer black mesh and tonal lace with signature Keyhole motif.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1780-667c1520020c1-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool, satin, lace, mesh', 1),
('LOOK 21', 'Midnight blue wool bustier dress entirely embroidered with tonal sequins and faux horsehair and 3D shiny silver miniature eggs and slit at the back.\n\Long gloves in sheer black mesh.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1781-667c15421a507-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Wool, sequins, faux horsehair, mesh', 1),
('LOOK 22', 'Butterfly volume black velvet bustier dress entirely covered with a tonal faux horsehair, sequins and velvet embroidery from the Schiaparelli archives.\n\Light green crinoline veil.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1782-667c155d1d033-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, faux horsehair, sequins, velvet', 1),
('LOOK 23', 'Illusion corset dress in sheer pale green mesh entirely embroidered with dusting- effect rhinestones and sequins.\n\Nude crinoline veil.\n\Egg pendant earrings in light green resin, rhinestones and pearls and matching ring.\n\Long gloves in sheer black mesh and matching stockings.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1783-667c15766074c-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Mesh, rhinestones, sequins, resin, pearls', 1),
('LOOK 24', 'Jacket in black silk and wool piqué with shawl collar entirely embroidered with trompe l\'oeil feather tips made in orange silk organza.\n\Skirt in black silk crepe, draped and slit up the side.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1784-667c1599ca35f-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Silk, wool, silk', 1),
('LOOK 25', 'Orange red crepe long-sleeved maxi dress enhanced with an impossible V neckline and mille-feuille of moving circles in tonal satin organza at the hem. It is worn over a nude dentelle Chantilly embroidered culotte.\n\Matching clutch adorned with signature Padlock clasp in hammered warm silver metal.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1785-667c15e97c5d1-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Satin, metal', 1),
('LOOK 26', 'Bustier in sheer black mesh and lace with signature Keyhole motif of the Maison. “Fallen dress” absinth satin skirt.\n\Eggs earrings in degraded green resin.\n\Long gloves in sheer black mesh.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1786-667c16123af33-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Mesh, lace, satin, resin', 1),
('LOOK 27', 'Electric blue satin gown enhanced with high slits hold by a bow on each side.\n\Matching clutch adorned with signature Padlock clasp in hammered warm silver metal.\n\Electric blue crinoline veil.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1787-667c163b0c2e8-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Satin, metal', 1),
('LOOK 28', 'Butterfly volume black velvet sleeveless dress with a tonal tulle explosion embroidered with contrasted light pink square-shaped rhinestones on the lining. The embroidery was inspired by the design of the iconic Schiaparelli “Apollo of Versailles” cape from the 1938 Zodiac collection.\n\Matching embroidered tights and long gloves in black velvet.\n\Black velvet headpiece inspired by a vintage shoe, topped with tonal feathers.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1788-667c166b79316-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Velvet, rhinestones', 1),
('LOOK 29', 'Bustier dress in pink silk satin duchesse made of layers of hand-cut ribbons revealing the skin as it drapes down the body.\n\The dress is enhanced with tonal 3D trompe l\'oeil vintage shoes at the neckline and an exaggerated hipline.\n\Long gloves in sheer pink mesh.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1789-667c168a4a414-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Silk satin, mesh', 1),
('LOOK 30', 'Jacket in ecru crepe satin with a draped satin and tulle skirt with aerodynamic volume, entirely embroidered with sequins and shiny silver Egg crystals.\n\Black crinoline veil.\n\Black velvet headpiece inspired by a vintage shoe, topped with tonal feathers.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1790-667d624d96894-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Satin, tulle, sequins, crystals, velvet', 1),
('LOOK 31', 'Corset bustier in nude organza with an impossible V neckline entirely embroidered with black contrasted dusting-effect sequins slowly gradating into black fringes and then finishing into a long black velvet skirt.\n\Egg ring in black palladium.', 'https://www.schiaparelli.com/fstrz/r/s/c/www.schiaparelli.com/img/collections/produits/2024/06/schiaparelli-HCFW2425-1791-667c17af4649c-big.jpeg.webp?frz-v=135', 'FALL-WINTER', '2024/25', 'Daniel Roseberry', 'Sequins, velvet, palladium', 1);


INSERT INTO shows (collection, year, vid_url, creative_dir, prod_amount, location, house_name, about)
VALUES 
('FALL-WINTER', '2024/25', 'https://secure.massmotionmedia.com/schiaparelli/projects/schiap_hc_fw2425_fullshow/videos/20240627115516_1920x1080_5000_ad2ee774-4925-40c3-8606-ee444931ce46.mp4', 'Daniel Roseberry', 31, 'PARIS FRANCE', 'Schiaparelli', 'By March of 1932, Elsa Schiaparelli\'s reputation was already made: a shape-shifting entrepreneur, she blurred the lines between fashion and art and life and art.\n\nA glorious enigma, she was (depending on who you asked) elusive or scandalous, shocking for her freedom, her lack of inhibition, and her apparent inability to care about convention. As her close friend Salvador Dalí said of her, “No one knows how to say Schiaparelli, but everyone knows what it means.”\n\nNine years later, for the opening gala of the Ambassadeurs restaurant in Paris, Schiaparelli wore a gown painted by Dunand, with a coq-feathered stole smartly wrapped around her shoulders. It was an homage to the great ballerina Anna Pavlova, who had died that same year, and for whom, with her short black hair and sharp features, Schiaparelli was often mistaken. But if Pavlova was always associated with her iconic performance in “The Dying Swan,” then Schiaparelli was a phoenix, a magical creature whose power lay in her ceaseless ability to reinvent—not only herself, but fashion, too.\n\nThe context of this collection, which honors Elsa\'s singular gift for rebirth, is second only to its form. Each piece is clear in its silhouette and its technique: you can see every look\'s origins, how each moved from sketch to study to fabric. As well, each look here is meant to elicit some type of emotion, albeit—to paraphrase Hemingway—an emotion that is deeply controlled. Each gown, each bustier, each shoe, every piece of folded velvet feather, or triple organza spike, seeks to catch the eye and hold it. The larger design, too, is meant to arrest but also to some extent mystify, to keep its secrets.\n\nThat larger design is the continuously expanding universe of Maison Schiaparelli. I was told recently that “People don’t buy Schiaparelli, they collect it.” That kind of devotion is inspired only by a unique relationship between client and creation. This is what makes Haute Couture so special: it’s an expression of my vision for the Maison today, one free from marketing and merchandising. But it’s also something else: a way for me to honor that relationship, one of the most intimate ones in the world—the one in which I give women the power to be reborn, again and again and again.
');

