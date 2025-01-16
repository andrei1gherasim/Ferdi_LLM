CREATE DATABASE "Ferdi"
    WITH
    OWNER = paperless
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

-- Table: PAYS
CREATE TABLE PAYS (
    "PaysCode" VARCHAR PRIMARY KEY,
    "PaysComplet" VARCHAR
);

INSERT INTO PAYS ("PaysCode", "PaysComplet") VALUES
    ('AGO', 'Angola'),
    ('BEN', 'Bénin'),
    ('BFA', 'Burkina Faso'),
    ('CMR', 'Cameroun'),
    ('CAF', 'Centrafrique'),
    ('COG', 'Congo (République du)'),
    ('COD', 'Congo (République Démocratique du)'),
    ('CIV', 'Côte d''Ivoire'),
    ('GAB', 'Gabon'),
    ('GHA', 'Ghana'),
    ('GIN', 'Guinée (Conakry)'),
    ('KEN', 'Kenya'),
    ('LBR', 'Liberia'),
    ('MDG', 'Madagascar'),
    ('MLI', 'Mali'),
    ('MRT', 'Mauritanie'),
    ('MOZ', 'Mozambique'),
    ('NER', 'Niger'),
    ('NGA', 'Nigeria'),
    ('SEN', 'Sénégal'),
    ('SLE', 'Sierra Leone'),
    ('ZAF', 'Afrique du Sud'),
    ('TZA', 'Tanzanie'),
    ('TCD', 'Tchad'),
    ('ZWE', 'Zimbabwe');

-- Table: ANNEES
CREATE TABLE ANNEES (
    "AnnéeCode" VARCHAR PRIMARY KEY,
    "AnnéeComplet" VARCHAR
);

INSERT INTO ANNEES ("AnnéeCode", "AnnéeComplet") VALUES
    ('1900', '1900'),
    ('1901', '1901'),
    ('1902', '1902'),
    ('1903', '1903'),
    ('1904', '1904'),
    ('1905', '1905'),
    ('1906', '1906'),
    ('1907', '1907'),
    ('1908', '1908'),
    ('1909', '1909'),
    ('1910', '1910'),
    ('1911', '1911'),
    ('1912', '1912'),
    ('1913', '1913'),
    ('1914', '1914'),
    ('1915', '1915'),
    ('1916', '1916'),
    ('1917', '1917'),
    ('1918', '1918'),
    ('1919', '1919'),
    ('1920', '1920'),
    ('1921', '1921'),
    ('1922', '1922'),
    ('1923', '1923'),
    ('1924', '1924'),
    ('1925', '1925'),
    ('1926', '1926'),
    ('1927', '1927'),
    ('1928', '1928'),
    ('1929', '1929'),
    ('1930', '1930'),
    ('1931', '1931'),
    ('1932', '1932'),
    ('1933', '1933'),
    ('1934', '1934'),
    ('1935', '1935'),
    ('1936', '1936'),
    ('1937', '1937'),
    ('1938', '1938'),
    ('1939', '1939'),
    ('1940', '1940'),
    ('1941', '1941'),
    ('1942', '1942'),
    ('1943', '1943'),
    ('1944', '1944'),
    ('1945', '1945'),
    ('1946', '1946'),
    ('1947', '1947'),
    ('1948', '1948'),
    ('1949', '1949'),
    ('1950', '1950'),
    ('1951', '1951'),
    ('1952', '1952'),
    ('1953', '1953'),
    ('1954', '1954'),
    ('1955', '1955'),
    ('1956', '1956'),
    ('1957', '1957'),
    ('1958', '1958'),
    ('1959', '1959'),
    ('1960', '1960'),
    ('1961', '1961'),
    ('1962', '1962'),
    ('1963', '1963'),
    ('1964', '1964'),
    ('1965', '1965'),
    ('1966', '1966'),
    ('1967', '1967'),
    ('1968', '1968'),
    ('1969', '1969'),
    ('1970', '1970'),
    ('1971', '1971'),
    ('1972', '1972'),
    ('1973', '1973'),
    ('1974', '1974'),
    ('1975', '1975'),
    ('1976', '1976'),
    ('1977', '1977'),
    ('1978', '1978'),
    ('1979', '1979'),
    ('1980', '1980'),
    ('1981', '1981'),
    ('1982', '1982'),
    ('1983', '1983'),
    ('1984', '1984'),
    ('1985', '1985'),
    ('1986', '1986'),
    ('1987', '1987'),
    ('1988', '1988'),
    ('1989', '1989'),
    ('1990', '1990'),
    ('1991', '1991'),
    ('1992', '1992'),
    ('1993', '1993'),
    ('1994', '1994'),
    ('1995', '1995'),
    ('1996', '1996'),
    ('1997', '1997'),
    ('1998', '1998'),
    ('1999', '1999'),
    ('2000', '2000'),
    ('2001', '2001'),
    ('2002', '2002'),
    ('2003', '2003'),
    ('2004', '2004'),
    ('2005', '2005'),
    ('2006', '2006'),
    ('2007', '2007'),
    ('2008', '2008'),
    ('2009', '2009'),
    ('2010', '2010'),
    ('2011', '2011'),
    ('2012', '2012'),
    ('2013', '2013'),
    ('2014', '2014'),
    ('2015', '2015'),
    ('2016', '2016'),
    ('2017', '2017'),
    ('2018', '2018'),
    ('2019', '2019'),
    ('2020', '2020'),
    ('2021', '2021'),
    ('2022', '2022'),
    ('2023', '2023'),
    ('2024', '2024'),
    ('Vigueur', 'En vigueur');

-- Table: BLOCS_LEGAUX
CREATE TABLE BLOCS_LEGAUX (
    "BlocLégalCode" VARCHAR PRIMARY KEY,
    "BlocLégalComplet" VARCHAR
);

INSERT INTO BLOCS_LEGAUX ("BlocLégalCode", "BlocLégalComplet") VALUES
    ('Lég', 'Législation'),
    ('Rég', 'Réglementation'),
    ('Conv', 'Convention');

-- Table: TEXTES_LEGAUX_STANDARDS
CREATE TABLE TEXTES_LEGAUX_STANDARDS (
    "TexteLégalStandardCode" VARCHAR PRIMARY KEY,
    "BlocLégalCode" VARCHAR REFERENCES BLOCS_LEGAUX("BlocLégalCode"),
    "TexteLégalStandardCodeCourt" VARCHAR,
    "TexteLégalStandardComplet" VARCHAR
);

INSERT INTO TEXTES_LEGAUX_STANDARDS ("TexteLégalStandardCode", "BlocLégalCode", "TexteLégalStandardCodeCourt", "TexteLégalStandardComplet") VALUES
    ('Lég_Loi', 'Lég', 'Loi', 'Loi'),
    ('Lég_Ordonnance', 'Lég', 'Ordonnance', 'Ordonnance'),
    ('Rég_Décret', 'Rég', 'Décret', 'Décret'),
    ('Rég_Arrêté', 'Rég', 'Arrêté', 'Arrêté'),
    ('Rég_Circulaire', 'Rég', 'Circulaire', 'Circulaire');

-- Table: TEXTES_LEGAUX_EXACTS
CREATE TABLE TEXTES_LEGAUX_EXACTS (
    "TexteLégalExactCode" VARCHAR PRIMARY KEY,
    "TexteLégalStandardCode" VARCHAR REFERENCES TEXTES_LEGAUX_STANDARDS("TexteLégalStandardCode"),
    "TexteLégalExactCodeCourt" VARCHAR,
    "TexteLégalExactComplet" VARCHAR
);

INSERT INTO TEXTES_LEGAUX_EXACTS ("TexteLégalExactCode", "TexteLégalStandardCode", "TexteLégalExactCodeCourt", "TexteLégalExactComplet") VALUES
    ('Lég_Loi_Loi', 'Lég_Loi', 'Loi', 'Loi'),
    ('Lég_Ordonnance_Ordonnance', 'Lég_Ordonnance', 'Ordonnance', 'Ordonnance'),
    ('Lég_Ordonnance_OrdonnanceLoi', 'Lég_Ordonnance', 'OrdonnanceLoi', 'Ordonnance-Loi'),
    ('Rég_Décret_Décret', 'Rég_Décret', 'Décret', 'Décret'),
    ('Rég_Décret_DécretLoi', 'Rég_Décret', 'DécretLoi', 'Décret-Loi'),
    ('Rég_Arrêté_Arrêté', 'Rég_Arrêté', 'Arrêté', 'Arrêté'),
    ('Rég_Arrêté_ArrêtéMin', 'Rég_Arrêté', 'ArrêtéMin', 'Arrêté ministériel'),
    ('Rég_Arrêté_ArrêtéInterMin', 'Rég_Arrêté', 'ArrêtéInterMin', 'Arrêté interministériel'),
    ('Rég_Circulaire_Circulaire', 'Rég_Circulaire', 'Circulaire', 'Circulaire'),
    ('Lég_Loi_Act', 'Lég_Loi', 'Act', 'Act'),
    ('Lég_Loi_Law', 'Lég_Loi', 'Law', 'Law'),
    ('Lég_Loi_Ordinance', 'Lég_Ordonnance', 'Ordinance', 'Ordinance'),
    ('Rég_Décret_Decree', 'Rég_Décret', 'Decree', 'Decree'),
    ('Rég_Décret_SI', 'Rég_Décret', 'SI', 'Statutory Instrument'),
    ('Rég_Décret_LegisI', 'Rég_Décret', 'LegisI', 'Legislation Instrument'),
    ('Rég_Décret_LegalI', 'Rég_Décret', 'LegalI', 'Legal Instrument'),
    ('Rég_Décret_GN', 'Rég_Décret', 'GN', 'Government Notice'),
    ('Rég_Décret_LN', 'Rég_Décret', 'LN', 'Legal Notice'),
    ('Rég_Arrêté_Order', 'Rég_Arrêté', 'Order', 'Order');

-- Table: REGIMES
CREATE TABLE REGIMES (
    "RégimeCode" VARCHAR PRIMARY KEY,
    "RégimeComplet" VARCHAR
);

INSERT INTO REGIMES ("RégimeCode", "RégimeComplet") VALUES
    ('Gen', 'Régime général'),
    ('Invest', 'Régime des investissements'),
    ('Min', 'Régime minier'),
    ('Pétrol', 'Régime pétrolier'),
    ('Gaz', 'Régime gazier'),
    ('Forest', 'Régime forestier');

-- Table: TEXTES_FISCAUX_STANDARDS
CREATE TABLE TEXTES_FISCAUX_STANDARDS (
    "TexteFiscStandardCode" VARCHAR PRIMARY KEY,
    "RégimeCode" VARCHAR REFERENCES REGIMES("RégimeCode"),
    "TexteFiscStandardCodeCourt" VARCHAR,
    "TexteFiscStandardComplet" VARCHAR
);

TRUNCATE TABLE TEXTES_FISCAUX_STANDARDS CASCADE;

INSERT INTO TEXTES_FISCAUX_STANDARDS ("TexteFiscStandardCode", "RégimeCode", "TexteFiscStandardCodeCourt", "TexteFiscStandardComplet") VALUES
    ('_Gen_CGI', '_Gen', '_CGI', 'Code général des impôts. Le Code général des impôts est un recueil législatif centralisant toutes les lois et règlements relatifs à la fiscalité. Il définit les types d’impôts, les modalités de calcul, de déclaration et de paiement, ainsi que les obligations des contribuables et les pouvoirs de l’administration fiscale, assurant une gestion cohérente des impôts. Inclut les fonds de logement.'),
    ('_Gen_IT', '_Gen', '_IT', 'Impôt sur le revenu. L''Impôt sur le revenu encadre la taxation des revenus des individus et des entreprises. Il précise les sources de revenus imposables, les barèmes d''imposition, les mécanismes de déclaration et de paiement, ainsi que les dispositions relatives aux exonérations et déductions fiscales.'),
    ('_Gen_CGT', '_Gen', '_CGT', 'Impôt sur les plus-values. L''Impôt sur les plus-values régit la taxation des gains réalisés lors de la vente d’actifs tels que biens immobiliers, actions ou autres investissements. Il définit les méthodes de calcul, les obligations de déclaration et de paiement, ainsi que les exemptions et déductions applicables.'),
    ('_Gen_GST', '_Gen', '_GST', 'Taxe sur les biens et services. La Taxe sur les biens et services régit la taxation des ventes de biens et des prestations de services. Elle définit les taux applicables, les obligations de déclaration et de paiement, ainsi que les exemptions et déductions, garantissant une collecte efficace des recettes fiscales.'),
    ('_Gen_VAT', '_Gen', '_VAT', 'Taxe sur la valeur ajoutée.'),
    ('_Gen_NHI', '_Gen', '_NHI', 'Assurance maladie nationale. L''Assurance Maladie Nationale est un cadre législatif et réglementaire régissant la couverture santé publique. Elle définit les droits et obligations des assurés, les modalités de financement, les prestations offertes, les procédures de déclaration et de remboursement, ainsi que les mécanismes de gestion et de contrôle du système de santé national.'),
    ('_Gen_PRT', '_Gen', '_PRT', 'Taxe sur les salaires. La Taxe sur les salaires régit la taxation des rémunérations versées par les employeurs à leurs employés. Elle définit les taux applicables, les obligations de déclaration et de paiement, ainsi que les exemptions et déductions possibles, assurant une collecte efficace des recettes fiscales liées aux salaires.'),
    ('_Gen_FI', '_Gen', '_FI', 'Loi sur les finances. Loi sur les finances englobe une régulation plus vaste du système financier national, établissant les bases et les principes de la gestion financière à long terme.la responsabilité financière.'),
    ('_Gen_LF', '_Gen', '_LF', 'Loi de finances. Loi de finances se focalise sur l’établissement et l’approbation du budget annuel de l’État, définissant les recettes et dépenses pour une période spécifique.'),
    ('_Invest_CI', '_Invest', '_CI', 'Code des investissements. Le Code des investissements est un cadre législatif qui régit les conditions et les procédures d’investissement dans le pays. Il définit les incitations fiscales, les droits et obligations des investisseurs, les secteurs prioritaires, et les mécanismes de protection et de promotion des investissements, visant à attirer et faciliter les investissements nationaux et étrangers.'),
    ('_Min_CM', '_Min', '_CM', 'Code minier. Le Code minier est un ensemble législatif régissant l’exploitation et la gestion des ressources minérales. Il définit les droits et obligations des exploitants, les procédures d’autorisation, les régulations environnementales, les régimes fiscaux et les mécanismes de contrôle, assurant une exploitation durable et équitable des ressources minières nationales.'),
    ('_Pétrol_CP', '_Pétrol', '_CP', 'Code pétrolier. Le Code pétrolier est un cadre législatif régissant l’exploration, l’exploitation et la gestion des ressources pétrolières. Il définit les droits et obligations des opérateurs, les procédures d’autorisation, les régulations environnementales, les régimes fiscaux et les mécanismes de contrôle, assurant une exploitation responsable et durable du secteur pétrolier.'),
    ('_Gaz_CG', '_Gaz', '_CG', 'Code gazier. Le Code gazier est un cadre législatif régissant l’exploration, l’exploitation et la gestion des ressources gazières. Il définit les droits et obligations des opérateurs, les procédures d’autorisation, les régulations environnementales, les régimes fiscaux et les mécanismes de contrôle, assurant une exploitation responsable et durable du secteur gazier.'),
    ('_Forest_CF', '_Forest', '_CF', 'Code forestier. Le Code forestier est un cadre législatif régissant la gestion, la protection et l’exploitation des ressources forestières. Il définit les droits et obligations des exploitants, les procédures d’autorisation, les régulations environnementales, les régimes fiscaux et les mécanismes de contrôle, assurant une exploitation durable et responsable des forêts nationales.');
;

-- Table: TEXTES_FISCAUX_EXACTS
CREATE TABLE TEXTES_FISCAUX_EXACTS (
    "TexteFiscExactCode" VARCHAR PRIMARY KEY,
    "TexteFiscStandardCode" VARCHAR REFERENCES TEXTES_FISCAUX_STANDARDS("TexteFiscStandardCode"),
    "TexteFiscExactCodeCourt" VARCHAR,
    "TexteFiscExactComplet" VARCHAR
);

TRUNCATE TABLE TEXTES_FISCAUX_EXACTS CASCADE;

INSERT INTO TEXTES_FISCAUX_EXACTS ("TexteFiscExactCode", "TexteFiscStandardCode", "TexteFiscExactCodeCourt", "TexteFiscExactComplet") VALUES
    ('_Gen_CGI_CGI', '_Gen_CGI', '_CGI', 'Code général des impôts. Le code général des impôts (CGI) est un texte législatif (loi ou ordonnance) qui regroupe les principales dispositions relatives à la fiscalité. Autrefois, le code général des impôts était un recueil de textes, regroupant l''ensemble des lois et ordonnance qui déterminaient la fiscalité. Aujourd''hui, le code général des impôts est le plus souvent une loi unique qui comprend l''ensemble des impôts. Dans les pays francophones, le nom d''un code général des impôts contient généralement les mots "portant code général des impôts". Dans les pays anglophones, il n''existe pas de code général des impôts, mais plusieurs lois sur chaque grand impôt.'),
    ('_Gen_CGI_CGImodif', '_Gen_CGI', '_CGImodif', 'Modification du Code général des impôts. Une modification du code général des impôts est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier le code général des impôts précédemment adopté. Dans les pays francophones, le nom d''une modification du code général des impôts contient généralement les mots "modifiant le code général des impôts" ou "portant modification du code général des impôts".'),
    ('_Gen_CGI_CGImodifModif', '_Gen_CGI', '_CGImodifModif', 'Modification de la Modification du Code général des impôts. Une modification d''une modification du code général des impôts est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier une modification du code général des impôts précédemment adopté. Dans les pays francophones, le nom d''une modification d''une modification du code général des impôts contient généralement les mots "portant modification de la loi n°X modifiant le code général des impôts".'),
    ('_Gen_CGI_CGIamendé', '_Gen_CGI', '_CGIamendé', 'Code général des impôts amendé. Un code général des impôts amendé est une version modifiée d''un code général des impôts jusqu''à une certaine date. Cette version amendée part donc du code général des impôts initial et inclut ensuite l''ensemble des modifications subséquentes. Un Code général des impôts amendé est une version mise à jour du code fiscal initial, intégrant toutes les modifications législatives et réglementaires jusqu’à une date spécifique. Il compile les règles fiscales en vigueur, facilitant la compréhension et l’application des obligations fiscales pour les contribuables et l’administration. Contrairement au code initial, il inclut les révisions et ajustements législatifs, offrant une vision complète et actuelle des régulations fiscales en vigueur.'),
    ('_Gen_CGI_CGIappli', '_Gen_CGI', '_CGIappli', 'Application du Code général des impôts. L''application du code général des impôts est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application du code général des impôts. Dans les pays francophones, le nom de l''application du code général des impôts contient généralement les mots "précisant les modalités d''application du code général des impôts". Il est fréquent qu''il existe plusieurs décrets d''application fixant les modalités d''application de différents articles du code général des impôts.'),
    ('_Gen_CGI_CGIappliModif', '_Gen_CGI', '_CGIappliModif', 'Modification de l''Application du Code général des impôts. Une modification d''une application du code général des impôts est un texte réglementaire (décret ou arrêté) dont l''objectif est de modifier les modalités d''application du code général des impôts déjà prises dans un autre texte réglementaire. Dans les pays francophones, le nom d''une modification de l''application du code général des impôts contient généralement les mots "modifiant les modalités d''application du code général des impôts".'),
    ('_Gen_CGI_CGImodifAppli', '_Gen_CGI', '_CGImodifAppli', 'Application de la Modification du Code général des impôts. L''application d''une modification du code général des impôts est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application d''une modification du code général des impôts. Dans les pays francophones, le nom de l''application d''une modification du code général des impôts contient généralement les mots "précisant les modalités d''application de la loi n°X modifiant le code général des impôts".'),
    ('_Gen_CGI_CGIsuppl', '_Gen_CGI', '_CGIsuppl', 'Supplément au Code général des impôts. Un supplément au code général des impôts est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) supplémentaire qui complète le code général des impôts. Il peut s''agir de tout texte relatif au code général des impôts qui ne peut pas être classé ailleurs. Un supplément au Code général des impôts est un texte législatif ou réglementaire additionnel qui complète le code initial. Il introduit de nouvelles dispositions, exemptions ou modifications fiscales, enrichissant ainsi le cadre existant pour mieux s’adapter aux évolutions économiques, sociales et administratives du pays, assurant une fiscalité dynamique.'),
    ('_Gen_CGI_CGIsupplModif', '_Gen_CGI', '_CGIsupplModif', 'Modification du Supplément au Code général des impôts. Une modification d''un supplément au code général des impôts est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) qui modifie un texte supplémentaire au code général des impôts. Il peut s''agir d''une modification de tout texte relatif au code général des impôts qui ne peut pas être classé ailleurs.'),
    ('_Gen_CGI_CGIsupplAmende', '_Gen_CGI', '_CGIsupplAmende', 'Supplément au Code général des impôts amendé. Un supplément au code général des impôts amendé est une version modifiée d''un texte supplémentaire au code général des impôts jusqu''à une certaine date. Cette version amendée part donc du supplément au code général des impôts initial et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Gen_CGI_CGIsupplAppli', '_Gen_CGI', '_CGIsupplAppli', 'Application du Supplément au Code général des impôts. Une application d''un supplément au code général des impôts est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application d''un texte supplémentaire au code général des impôts. Une application du Supplément au Code général des impôts est un texte réglementaire qui détaille les procédures, conditions et directives spécifiques nécessaires à la mise en œuvre des dispositions introduites par le supplément législatif. Elle assure l’application pratique et l’opérationnalisation du code fiscal amendé, garantissant son efficacité.'),
    ('_Gen_CGI_CGIsupplAppliModif', '_Gen_CGI', '_CGIsupplAppliModif', 'Modification de l''Application du Supplément au Code général des impôts. Une modification d''une application d''un supplément au code général des impôts est un texte réglementaire (décret ou arrêté) dont l''objectif est de modifier les modalités d''application d''un texte supplémentaire au code général des impôts.'),
    ('_Gen_CGI_CGIsupplAppliAmende', '_Gen_CGI', '_CGIsupplAppliAmende', 'Application du Supplément au Code général des impôts amendé. L''application d''un supplément au code général des impôts amendé est une version modifiée d''une application d''un texte supplémentaire au code général des impôts jusqu''à une certaine date. Cette version amendée part donc de l''application du supplément au code général des impôts initial et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Gen_CGI_CGIone', '_Gen_CGI', '_CGIone', 'Code des impôts directs et indirects. '),
    ('_Gen_CGI_CGIoneModif', '_Gen_CGI', '_CGIoneModif', 'Modification du Code des impôts directs et indirects. '),
    ('_Gen_CGI_CGIoneAmendé', '_Gen_CGI', '_CGIoneAmendé', 'Code des impôts directs et indirects amendé. '),
    ('_Gen_CGI_CGIbis', '_Gen_CGI', '_CGIbis', 'Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers. '),
    ('_Gen_CGI_CGIbisModif', '_Gen_CGI', '_CGIbisModif', 'Modification du Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers. '),
    ('_Gen_CGI_CGIbisAmendé', '_Gen_CGI', '_CGIbisAmendé', 'Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers amendé. '),
    ('_Gen_CGI_CGIproced', '_Gen_CGI', '_CGIproced', 'Livre de procédures fiscales. Le Livre de procédures fiscales est un texte législatif qui définit les règles et procédures administratives liées à la détermination, la déclaration, le paiement, le recouvrement et le contrôle des impôts. Structuré en titres et chapitres, il inclut également des dispositions sur le secret professionnel et le contentieux fiscal, assurant une gestion fiscale cohérente.'),
    ('_Gen_CGI_CGIprocedModif', '_Gen_CGI', '_CGIprocedModif', 'Modification du Livre de procédures fiscales. Définit les modalités de déclaration et de paiement, établit les délais et sanctions en cas de non-respect, et encadre le contrôle et le contentieux liés à cette taxe destinée à favoriser l’emploi des jeunes. Peut contenir « Livre de procédures fiscales » ou « LPF » dans le titre du document.'),
    ('_Gen_CGI_CGIprocedAmendé', '_Gen_CGI', '_CGIprocedAmendé', 'Livre de procédures fiscales amendé. Le Livre de procédures fiscales amendé est un manuel actualisé des procédures fiscales, intégrant les récentes modifications et directives régissant l''administration et le recouvrement des impôts. Il sert de référence complète pour les agents fiscaux, précisant les normes procédurales, les droits et obligations des contribuables, afin d''assurer transparence, conformité et efficacité conformément aux évolutions légales.'),
    ('_Gen_CGI_FL', '_Gen_CGI', '_FL', 'Fiscalité locale. '),
    ('_Gen_CGI_FLappli', '_Gen_CGI', '_FLappli', 'Application de la Fiscalité locale. '),
    ('_Gen_CGI_FondsLogement', '_Gen_CGI', '_FondsLogement', 'Fonds logement. Il institue un établissement public dédié au logement, définissant ses missions, ses sources de financement et son organisation. Il établit les modalités de fonctionnement et de gestion, visant à promouvoir le développement de l’habitat collectif et individuel. Ce cadre législatif assure l’autonomie financière et la gouvernance de l’entité. Une loi relative au Fonds logement crée une institution publique dédiée au développement et à la gestion des programmes de logement. Elle définit ses missions, son organisation, ses sources de financement et ses modalités de fonctionnement, visant à promouvoir l’habitat collectif et individuel et à soutenir les initiatives immobilières nationales.'),
    ('_Gen_CGI_FondsLogementAppli', '_Gen_CGI', '_FondsLogementAppli', 'Application du Fonds logement. Il définit l’organisation, la structure et le fonctionnement d’un organisme public. Il établit la composition des instances de gouvernance, les rôles des dirigeants, ainsi que les procédures administratives et réglementaires. Ce cadre vise à assurer une gestion efficace et une supervision adéquate de l’entité au sein de l’État.'),
    ('_Gen_CGI_TaxeLogement', '_Gen_CGI', '_TaxeLogement', 'Taxe logement. '),
    ('_Gen_CGI_TaxeLogementAppli', '_Gen_CGI', '_TaxeLogementAppli', 'Application de la Taxe logement. '),
    ('_Gen_CGI_IS', '_Gen_CGI', '_IS', 'Impôt sur les sociétés. '),
    ('_Gen_CGI_ISmodif', '_Gen_CGI', '_ISmodif', 'Modification de l''Impôt sur les sociétés. '),
    ('_Gen_CGI_ISamendé', '_Gen_CGI', '_ISamendé', 'Impôt sur les sociétés amendé. '),
    ('_Gen_CGI_ICA', '_Gen_CGI', '_ICA', 'Impôt sur le chiffre d''affaires. '),
    ('_Gen_CGI_ICAmodif', '_Gen_CGI', '_ICAmodif', 'Modification de l''Impôt sur le chiffre d''affaires. '),
    ('_Gen_CGI_TVA', '_Gen_CGI', '_TVA', 'Taxe sur la valeur ajoutée. '),
    ('_Gen_CGI_TVAmodif', '_Gen_CGI', '_TVAmodif', 'Modification de la Taxe sur la valeur ajoutée. '),
    ('_Gen_CGI_TVAamende', '_Gen_CGI', '_TVAamende', 'Taxe sur la valeur ajoutée amendé. '),
    ('_Gen_CGI_TVAappli', '_Gen_CGI', '_TVAappli', 'Application de la Taxe sur la valeur ajoutée. '),
    ('_Gen_CGI_TVAsuppl', '_Gen_CGI', '_TVAsuppl', 'Supplément à la Taxe sur la valeur ajoutée. '),
    ('_Gen_CGI_TVAsupplappli', '_Gen_CGI', '_TVAsupplappli', 'Application du Supplément à la Taxe sur la valeur ajoutée. '),
    ('_Gen_CGI_CPS', '_Gen_CGI', '_CPS', 'Contribution pour prestation de services rendus. '),
    ('_Gen_CGI_CPSmodif', '_Gen_CGI', '_CPSmodif', 'Modification de la Contribution pour prestation de services rendus. '),
    ('_Gen_CGI_ISCP', '_Gen_CGI', '_ISCP', 'Impôt spécial sur certains produits. Un impôt spécial sur certains produits est une loi ou un décret qui impose des taxes spécifiques sur des catégories de produits désignés. Il définit les taux applicables, les produits concernés et les modalités d’application, visant à réguler la consommation, encourager certaines industries ou augmenter les recettes fiscales ciblées.'),
    ('_Gen_CGI_ISCPmodif', '_Gen_CGI', '_ISCPmodif', 'Modification de l''Impôt spécial sur certains produits. Une modification de l''Impôt spécial sur certains produits est un texte législatif ou réglementaire qui ajuste les taux, les catégories de produits soumis ou les modalités d’application de l’impôt existant. Elle vise à adapter la fiscalité aux évolutions économiques, sociales ou environnementales, optimisant ainsi les recettes et régulant la consommation ciblée.'),
    ('_Gen_IT_IT', '_Gen_IT', '_IT', 'Impôt sur les revenus. '),
    ('_Gen_IT_ITmodif', '_Gen_IT', '_ITmodif', 'Modification de l''Impôt sur les revenus. '),
    ('_Gen_IT_ITamendé', '_Gen_IT', '_ITamendé', 'Impôt sur les revenus amendé. '),
    ('_Gen_IT_ITappli', '_Gen_IT', '_ITappli', 'Application de l''Impôt sur les revenus. '),
    ('_Gen_IT_ITappliModif', '_Gen_IT', '_ITappliModif', 'Modification de l''Application de l''Impôt sur les revenus. '),
    ('_Gen_IT_ITappliSuppl', '_Gen_IT', '_ITappliSuppl', 'Supplément à l''Application de l''Impôt sur les revenus. '),
    ('_Gen_IT_ITsuppl', '_Gen_IT', '_ITsuppl', 'Supplément à l''Impôt sur les revenus. '),
    ('_Gen_IT_ITsupplModif', '_Gen_IT', '_ITsupplModif', 'Modification du Supplément à l''Impôt sur les revenus. '),
    ('_Gen_CGI_CGT', '_Gen_CGI', '_CGT', 'Impôt sur les plus-values. '),
    ('_Gen_CGI_CGTmodif', '_Gen_CGI', '_CGTmodif', 'Modification de l''Impôt sur les plus-values. '),
    ('_Gen_CGI_CGTamende', '_Gen_CGI', '_CGTamende', 'Impôt sur les plus-values amendé. '),
    ('_Gen_GST_GST', '_Gen_GST', '_GST', 'Taxe sur les biens et services. '),
    ('_Gen_GST_GSTmodif', '_Gen_GST', '_GSTmodif', 'Modification de la Taxe sur les biens et services. '),
    ('_Gen_GST_GSTamende', '_Gen_GST', '_GSTamende', 'Taxe sur les biens et services amendé. '),
    ('_Gen_VAT_VAT', '_Gen_VAT', '_VAT', 'Taxe sur la valeur ajoutée. '),
    ('_Gen_VAT_VATmodif', '_Gen_VAT', '_VATmodif', 'Modification de la Taxe sur la valeur ajoutée. '),
    ('_Gen_VAT_VATamendé', '_Gen_VAT', '_VATamendé', 'Taxe sur la valeur ajoutée amendé. '),
    ('_Gen_VAT_VATappli', '_Gen_VAT', '_VATappli', 'Application de la Taxe sur la valeur ajoutée. '),
    ('_Gen_VAT_VATappliModif', '_Gen_VAT', '_VATappliModif', 'Modification de l''Application de la Taxe sur la valeur ajoutée. '),
    ('_Gen_VAT_VATappliAmende', '_Gen_VAT', '_VATappliAmende', 'Application de la Taxe sur la valeur ajoutée amendé. '),
    ('_Gen_VAT_VATappliSuppl', '_Gen_VAT', '_VATappliSuppl', 'Supplément à l''Application de la Taxe sur la valeur ajoutée. '),
    ('_Gen_VAT_VATappliSupplModif', '_Gen_VAT', '_VATappliSupplModif', 'Modification du Supplément à l''Application de la Taxe sur la valeur ajoutée. '),
    ('_Gen_VAT_VATsuppl', '_Gen_VAT', '_VATsuppl', 'Supplément à la Taxe sur la valeur ajoutée. '),
    ('_Gen_NHI_NHI', '_Gen_NHI', '_NHI', 'Assurance maladie nationale. '),
    ('_Gen_NHI_NHImodif', '_Gen_NHI', '_NHImodif', 'Modification de l''Assurance maladie nationale. '),
    ('_Gen_NHI_NHIamendé', '_Gen_NHI', '_NHIamendé', 'Assurance maladie nationale amendé. '),
    ('_Gen_NHI_NHIappli', '_Gen_NHI', '_NHIappli', 'Application de l''Assurance maladie nationale. '),
    ('_Gen_PRT_PRT', '_Gen_PRT', '_PRT', 'Taxe sur les salaires. '),
    ('_Gen_PRT_PRTmodif', '_Gen_PRT', '_PRTmodif', 'Modification de la Taxe sur les salaires. '),
    ('_Gen_PRT_PRTamendé', '_Gen_PRT', '_PRTamendé', 'Taxe sur les salaires amendé. '),
    ('_Gen_FI_FI', '_Gen_FI', '_FI', 'Loi sur les finances. Englobe un cadre législatif plus large régissant la gestion et la régulation des finances publiques et privées à long terme, incluant politiques fiscales et institutions financières.'),
    ('_Gen_FI_FImodif', '_Gen_FI', '_FImodif', 'Modification de la Loi sur les finances. '),
    ('_Gen_FI_FIamende', '_Gen_FI', '_FIamende', 'Loi sur les finances amendé. '),
    ('_Gen_LF_LOLF', '_Gen_LF', '_LOLF', 'Loi organique relative aux lois de finances. Une loi organique relative aux lois de finances (LOLF) est un texte législatif qui complète et précise les régles constitutionnelles qui encadrent l''élaboration, l''exécution et le contrôle des lois de finances. C''est donc une loi spéciale qui explique comment les lois de finances doivent être rédigées et mises en application. Dans les pays francophones, le nom d''une loi organique relative aux lois de finances contient généralement les mots "portant loi organique relative aux lois de finances" ou seulement "relative aux lois de finances".'),
    ('_Gen_LF_LOLFmodif', '_Gen_LF', '_LOLFmodif', 'Modification de la Loi organique relative aux lois de finances. Une modification d''une loi organique relative aux lois de finances est un texte législatif qui modifie les régles constitutionnelles qui encadrent l''élaboration, l''exécution et le contrôle des lois de finances. C''est donc une loi qui modifie la loi organique relative aux lois de finances. Dans les pays francophones, le nom d''une modification d''une loi organique relative aux lois de finances contient généralement les mots "portant modification de la loi organique relative aux lois de finances" ou "modifiant la loi organique relative aux lois de finances".'),
    ('_Gen_LF_LF', '_Gen_LF', '_LF', 'Loi de finances. Une loi de finances (LF) est un texte législatif (loi ou ordonnance) qui détermine le budget de l''Etat chaque année. Elle liste donc l''ensemble des recettes et des dépenses de l''Etat. La loi de finances contient souvent également des dispositions fiscales qui peuvent modifier le code général des impôts ou n''importe quelle autre loi fiscale. Dans les pays francophones, le nom d''une loi de finances contient généralement les mots ""portant loi de finances"" ou ""portant budget général de l''Etat"". Dans les pays anglophones, une loi de finances est dénommée ""Finance Act"". Aussi, le titre peut contenir : « Annexe fiscale Loi de finances ».'),
    ('_Gen_LF_LFmodif', '_Gen_LF', '_LFmodif', 'Modification de la Loi de finances. Une modification d''une loi de finances est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier une loi de finances précédemment adoptée, sans qu''il ne s''agisse d''une véritable loi de finances rectificative. Dans les pays francophones, le nom d''une modification d''une loi de finances contient généralement les mots "portant modification de la loi de finances" ou "portant modification du budget général de l''Etat". Dans les pays anglophones, une modification d''une loi de finances est dénommée "Finance (Amendment) Act".'),
    ('_Gen_LF_LFamende', '_Gen_LF', '_LFamende', 'Loi de finances amendé. Une loi de finances amendée est une version modifiée d''une loi de finances jusqu''à une certaine date. Cette version amendée part donc de la loi de finances initiale et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Gen_LF_LFratif', '_Gen_LF', '_LFratif', 'Ratification de la Loi de finances. La ratification d''une loi de finances est une loi votée pour ratifier une loi de finances initiale prise sous la forme d''une ordonnance. Dans les pays francophones, le nom d''une ratification d''une loi de finances contient généralement les mots "ratifiant la loi de finances" ou "portant ratification de la loi de finances".'),
    ('_Gen_LF_LFR', '_Gen_LF', '_LFR', 'Loi de finances rectificative. Une loi de finance rectificative est un texte législatif (loi ou ordonnance) pris pour remplacer une loi de finances initiale. Elle vise à remanier le budget prévisionnel au cours d''une année. La loi de finances rectificative peut contenir des dispositions fiscales qui peuvent modifier le code général des impôts ou n''importe quelle autre loi fiscale. Dans les pays francophones, le nom d''une loi de finances rectificative contient généralement les mots "portant loi de finances rectificative".'),
    ('_Gen_LF_LFRmodif', '_Gen_LF', '_LFRmodif', 'Modification de la Loi de finances rectificative. Une modification d''une loi de finances rectificative est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier une loi de finances rectificative déjà adoptée, sans qu''il ne s''agisse d''une nouvelle loi de finances rectificative. Dans les pays francophones, le nom d''une modification d''une loi de finances rectificative contient généralement les mots "portant modification de la loi de finances rectificative".'),
    ('_Gen_LF_LFRratif', '_Gen_LF', '_LFRratif', 'Ratification de la Loi de finances rectificative. La ratification d''une loi de finances rectificative est une loi votée pour ratifier une loi de finances rectificative prise sous la forme d''une ordonnance. Dans les pays francophones, le nom d''une ratification d''une loi de finances rectificative contient généralement les mots "ratifiant la loi de finances rectificative" ou "portant ratification de la loi de finances rectificative".'),
    ('_Gen_LF_LFappli', '_Gen_LF', '_LFappli', 'Application de la Loi de finances. L''application d''une loi de finances est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application d''une loi de finances. Dans les pays francophones, le nom de l''application d''une loi de finances contient généralement les mots "précisant les modalités d''application des dispositions fiscales de la loi de finances".'),
    ('_Gen_LF_LFappliModif', '_Gen_LF', '_LFappliModif', 'Modification de la Application de la Loi de finances. Une modification d''une application d''une loi de finances est un texte réglementaire (décret ou arrêté) dont l''objectif est de modifier les modalités d''application d''une loi de finances déjà prises dans un autre texte réglementaire. Dans les pays francophones, le nom d''une modification de l''application d''une loi de finances contient généralement les mots "modifiant les modalités d''application des dispositions fiscales de la loi de finances".'),
    ('_Invest_CI_CI', '_Invest_CI', '_CI', 'Code des investissements. Le code des investissements est un texte législatif (loi ou ordonnance) qui encadre les incitations à l''investissement. Il crée différents régimes d''investissement, explique les conditions pour être éligible à ces régimes et fixent les avantages fisaux accordés à chaque régime. Dans les pays francophones, le nom d''un code des investissements contient généralement les mots "portant code des investissements". Dans les pays anglophones, un code des investissements peut être dénommé par exemple "Investment Act" ou "Incentive Act".'),
    ('_Invest_CI_CImodif', '_Invest_CI', '_CImodif', 'Modification du Code des investissements. Une modification d''un code des investissements est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier un code des investissements précédemment adopté. Dans les pays francophones, le nom d''une modification d''un code des investissements contient généralement les mots "modifiant le code des investissements" ou "portant modification du code des investissements". Dans les pays anglophones, une modification d''un code des investissements peut être dénommé par exemple "Investment (Amendment) Act" ou "Incentive (Amendment) Act".'),
    ('_Invest_CI_CIamendé', '_Invest_CI', '_CIamendé', 'Code des investissements amendé. Un code des investissements amendé est une version modifiée d''un code des investissements jusqu''à une certaine date. Cette version amendée part donc du code des investissements initial et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Invest_CI_CIappli', '_Invest_CI', '_CIappli', 'Application du Code des investissements. L''application d''un code des investissements est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application d''un code des investissements. Dans les pays francophones, le nom de l''application d''un code des investissements contient généralement les mots "précisant les modalités d''application du code des investissements". Dans les pays anglophones, une application d''un code des investissements peut être dénommé par exemple "Investment Regulations" ou "Incentive Regulations".'),
    ('_Invest_CI_CIappliModif', '_Invest_CI', '_CIappliModif', 'Modification de l''Application du Code des investissements. Une modification d''une application d''un code des investissements est un texte réglementaire (décret ou arrêté) dont l''objectif est de modifier les modalités d''application d''un code des investissements déjà établi dans un autre texte réglementaire. Dans les pays francophones, le nom d''une modification de l''application d''un code des investissements contient généralement les mots "modifiant les modalités d''application du code des investissements" ou "portant modification des modalités d''application du code des investissements". Dans les pays anglophones, une modification d''une application d''un code des investissements peut être dénommé par exemple "Investment (Amendment) Regulations" ou "Incentive (Amendment) Regulations".'),
    ('_Invest_CI_CIsuppl', '_Invest_CI', '_CIsuppl', 'Supplément au Code des investissements. Un supplément au code des investissements est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) supplémentaire qui complète le code des investissements. Il peut s''agir de tout texte relatif au régime des investissements qui ne peut pas être classé ailleurs.'),
    ('_Min_CM_CM', '_Min_CM', '_CM', 'Code minier. Le code minier est un texte législatif (loi ou ordonnance) qui encadre la recherche et l''exploitation minière. Il crée différents régimes miniers, explique les conditions pour être éligible à ces régimes et fixent la fiscalité sectorielle applicable à chaque régime. Dans les pays francophones, le nom d''un code minier contient généralement les mots "portant code minier". Dans les pays anglophones, un code minier est dénommé "Mining Act" ou "Minerals and Mining Act".'),
    ('_Min_CM_CMmodif', '_Min_CM', '_CMmodif', 'Modification du Code minier. Une modification du code minier est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier un code minier précédemment adopté. Dans les pays francophones, le nom d''une modification d''un code minier contient généralement les mots "modifiant le code minier" ou "portant modification du code minier". Dans les pays anglophones, une modification d''un code minier peut être dénommé par exemple "Mining (Amendment) Act" ou "Minerals and Mining (Amendment) Act".'),
    ('_Min_CM_CMmodifModif', '_Min_CM', '_CMmodifModif', 'Modification de la Modification du Code minier. Une modification d''une modification du code minier est un texte législatif (loi ou ordonnance) dont l''objectif est de modifier une modification d''un code minier précédemment adoptée. Dans les pays francophones, le nom d''une modification d''une modification d''un code minier contient généralement les mots "modifiant la loi n°X modifiant le code minier".'),
    ('_Min_CM_CMamendé', '_Min_CM', '_CMamendé', 'Code minier amendé. Un code minier amendé est une version modifiée d''un code minier jusqu''à une certaine date. Cette version amendée part donc du code minier initial et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Min_CM_CMratif', '_Min_CM', '_CMratif', 'Ratification du Code minier. La ratification du code minier est une loi votée pour ratifier un code minier pris sous la forme d''une ordonnance. Dans les pays francophones, le nom d''une ratification d''un code minier contient généralement les mots "ratifiant le code minier" ou "portant ratification du code minier".'),
    ('_Min_CM_CMappli', '_Min_CM', '_CMappli', 'Application du Code minier. L''application du code minier est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application d''un code minier. Dans les pays francophones, le nom de l''application d''un code minier contient généralement les mots "précisant les modalités d''application du code minier". Dans les pays anglophones, une application d''un code minier peut être dénommé "Mining Regulations" ou "Minerals and Mining Regulations".'),
    ('_Min_CM_CMappliModif', '_Min_CM', '_CMappliModif', 'Modification de l''Application du Code minier. Une modification d''une application du code minier est un texte réglementaire (décret ou arrêté) dont l''objectif est de modifier les modalités d''application d''un code minier déjà prises dans un autre texte réglementaire. Dans les pays francophones, le nom d''une modification de l''application d''un code minier contient généralement les mots "modifiant les modalités d''application du code minier". Dans les pays anglophones, une modification d''une application d''un code minier peut être dénommé "Mining (Amendment) Regulations" ou "Minerals and Mining (Amendment) Regulations".'),
    ('_Min_CM_CMappliModifModif', '_Min_CM', '_CMappliModifModif', 'Modification de la Modification de l''Application du Code minier. Une modification d''une modification d''une application du code minier est un texte réglementaire (décret ou arrêté) dont l''objectif est de modifier une modification des modalités d''application d''un code minier déjà prise dans un autre texte réglementaire. Dans les pays francophones, le nom d''une modification d''une modification de l''application d''un code minier contient généralement les mots "modifiant le décret n°X modifiant les modalités d''application du code minier".'),
    ('_Min_CM_CMappliAmendé', '_Min_CM', '_CMappliAmendé', 'Application du Code minier amendé. Un application du code minier amendé est une version modifiée d''une application d''un code minier jusqu''à une certaine date. Cette version amendée part donc de l''application initiale du code minier et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Min_CM_CMappliSuppl', '_Min_CM', '_CMappliSuppl', 'Supplément à l''Application du code minier. Un supplément à l''application du code minier est un texte réglementaire (décret ou arrêté) supplémentaire qui complète l''application du code minier. Il peut s''agir de tout texte relatif à l''application du code minier qui ne peut pas être classé ailleurs.'),
    ('_Min_CM_CMconv', '_Min_CM', '_CMconv', 'Convention minière type. Une convention minière type est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) qui détermine le modèle de contrat minier qui doit être signé entre l''Etat et la société minière. La convention fixe les droits et obligations des deux parties, notamment les obligations fiscales de la société minière en phase de recherche et en phase d''exploitation. Elle reprend les éléments du code minier. Dans les pays francophones, le nom d''une convention minière type contient généralement les mots "portant convention minière type" ou "portant convention d''établissement type pour la recherche et l''exploitation minière".'),
    ('_Min_CM_CMconvModif', '_Min_CM', '_CMconvModif', 'Modification de la Convention minière type. Une modification de la convention minière type est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) dont l''objectif est de modifier la convention minière type précédemment adoptée. Dans les pays francophones, le nom d''une modification de la convention minière type contient généralement les mots "modifiant la convention minière type" ou "portant modification de la convention minière type".'),
    ('_Min_CM_CMfisc', '_Min_CM', '_CMfisc', 'Fiscalité minière. Un texte déterminant la fiscalité minière est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) qui détermine la fiscalité minière, généralement concernant les droits fixes, la redevance superficiaire et la redevance minière, lorsque cette fiscalité n''est pas directement déterminée dans le code minier ou le décret d''application du code minier. Dans les pays francophones, le nom d''un texte déterminant la fiscalité minière contient généralement les mots "déterminant les taxes et redevances minières" ou "portant fixation des taxes et redevances minières".'),
    ('_Min_CM_CMfiscModif', '_Min_CM', '_CMfiscModif', 'Modification de la Fiscalité minière. Une modification d''un texte déterminant la fiscalité minière est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) dont l''objectif est de modifier un texte déterminant la fiscalité minière précédemment adopté. Dans les pays francophones, le nom d''une modification d''un texte déterminant la fiscalité minière contient généralement les mots "modifiant les taxes et redevances minières" ou "portant modification de la loi n°X déterminant les taxes et redevances minières".'),
    ('_Min_CM_CMfiscAmende', '_Min_CM', '_CMfiscAmende', 'Fiscalité minière amendé. Un texte déterminant la fiscalité minière amendé est une version modifiée d''un texte déterminant la fiscalité minière jusqu''à une certaine date. Cette version amendée part donc du texte initial déterminant la fiscalité minière et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Min_CM_CMfiscAppli', '_Min_CM', '_CMfiscAppli', 'Application de la Fiscalité minière. L''application d''un texte déterminant la fiscalité minière amendé est un texte réglementaire (décret ou arrêté) dont l''objectif est de préciser les modalités d''application d''un texte déterminant la fiscalité minière. Dans les pays francophones, le nom de l''application d''un texte déterminant la fiscalité minière contient généralement les mots "précisant les modalités d''application des taxes et redevances minières".'),
    ('_Min_CM_CMfiscSuppl', '_Min_CM', '_CMfiscSuppl', 'Supplément à la Fiscalité minière. Un supplément à un texte déterminant la fiscalité minière amendé est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) supplémentaire qui complète un texte déterminant la fiscalité minière. Il peut s''agir de tout texte relatif aux droits fixes, à la redevance superficiaire ou à la redevance minière qui ne peut pas être classé ailleurs.'),
    ('_Min_CM_CMfiscSupplModif', '_Min_CM', '_CMfiscSupplModif', 'Modification du Supplément à la Fiscalité minière. Une modification d''un supplément à un texte déterminant la fiscalité minière est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) qui modifie un texte supplémentaire déterminant la fiscalité minière. Il peut s''agir d''une modification de tout texte relatif à l''application des droits fixes, de la redevance superficiaire ou de la redevance minière qui ne peut pas être classé ailleurs.'),
    ('_Min_CM_CMsuppl', '_Min_CM', '_CMsuppl', 'Supplément au Code minier. Un supplément au code minier est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) supplémentaire qui complète le code minier. Il peut s''agir de tout texte relatif au code minier qui ne peut pas être classé ailleurs. Un supplément au Code minier établit des règles additionnelles pour le secteur minier, définissant des obligations spécifiques telles que l’utilisation de ressources locales, la participation des entreprises nationales, ainsi que les mécanismes de contrôle et de sanction. Il complète le cadre législatif existant pour encadrer les activités minières.'),
    ('_Min_CM_CMsupplModif', '_Min_CM', '_CMsupplModif', 'Modification du Supplément au Code minier. Une modification d''un supplément au code minier est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) qui modifie un texte supplémentaire au code minier. Il peut s''agir d''une modification de tout texte relatif au code minier qui ne peut pas être classé ailleurs.'),
    ('_Min_CM_CMsupplAmende', '_Min_CM', '_CMsupplAmende', 'Supplément au Code minier amendé. Un supplément au code minier amendé est une version modifiée d''un supplément au code minier jusqu''à une certaine date. Cette version amendée part donc du supplément au code minier initial et inclut ensuite l''ensemble des modifications subséquentes.'),
    ('_Min_CM_CMitie', '_Min_CM', '_CMitie', 'Initiative pour la Transparence dans les Industries Extractives. Un texte relatif à l''Initiative pour la Transparence dans les Industries Extractives (ITIE) est un texte législatif (loi ou ordonnance) ou réglementaire (décret ou arrêté) qui organise la mise en œuvre de l''Initiative pour la Transparence dans les Insdustries Extractives. Dans les pays francophones, le nom d''un texte relatif à l''ITIE contient généralement les mots "portant création et organisation de l''Initiative pour la Transparence dans les Industries Extractives".'),
    ('_Pétrol_CP_CP', '_Pétrol_CP', '_CP', 'Code pétrolier. '),
    ('_Pétrol_CP_CPmodif', '_Pétrol_CP', '_CPmodif', 'Modification du Code pétrolier. '),
    ('_Pétrol_CP_CPamendé', '_Pétrol_CP', '_CPamendé', 'Code pétrolier amendé. '),
    ('_Pétrol_CP_CPappli', '_Pétrol_CP', '_CPappli', 'Application du Code pétrolier. '),
    ('_Pétrol_CP_CPappliModif', '_Pétrol_CP', '_CPappliModif', 'Modification de l''Application du Code pétrolier. '),
    ('_Pétrol_CP_CPconv', '_Pétrol_CP', '_CPconv', 'Convention pétrolière type. '),
    ('_Pétrol_CP_CPconvModif', '_Pétrol_CP', '_CPconvModif', 'Modification de la Convention pétrolière type. '),
    ('_Pétrol_CP_CPsuppl', '_Pétrol_CP', '_CPsuppl', 'Supplément au Code pétrolier. ');

-- Table: TEXTES
CREATE TABLE TEXTES (
    "TexteCode" VARCHAR PRIMARY KEY,
    "PaysCode" VARCHAR REFERENCES PAYS("PaysCode"),
    "AnnéeCodeDébut" VARCHAR REFERENCES ANNEES("AnnéeCode"),
    "AnnéeCodeFin" VARCHAR REFERENCES ANNEES("AnnéeCode"),
    "TexteLégalExactCode" VARCHAR REFERENCES TEXTES_LEGAUX_EXACTS("TexteLégalExactCode"),
    "TexteFiscExactCode" VARCHAR REFERENCES TEXTES_FISCAUX_EXACTS("TexteFiscExactCode"),
    "TexteCodeArborescence" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteCourt" VARCHAR,
    "TexteComplet" VARCHAR
);

-- Table: ASSOCIATIONS
CREATE TABLE ASSOCIATIONS (
    "AssociationCode" VARCHAR PRIMARY KEY,
    "AssociationComplet" VARCHAR
);

-- Table: ASSOCIATIONS_DES_TEXTES
CREATE TABLE ASSOCIATIONS_DES_TEXTES (
    "TexteAssociationCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "AssociationCode" VARCHAR REFERENCES ASSOCIATIONS("AssociationCode"),
    "TexteAssociationNuméro" INT,
    "TexteCibleCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteCibleArticle" VARCHAR
);

-- Table: SOURCES_DES_TEXTES
CREATE TABLE SOURCES_DES_TEXTES (
    "TexteSourcesCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteSourceNuméro" INT,
    "TexteSourceNom" VARCHAR,
    "TexteSourceLien" VARCHAR
);

-- Table: CITATIONS_DES_TEXTES
CREATE TABLE CITATIONS_DES_TEXTES (
    "TexteCitationCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "TexteCitationArticle" VARCHAR,
    "TexteCitationComplet" VARCHAR
);

-- Table: SOUS_REGIMES
CREATE TABLE SOUS_REGIMES (
    "SousRégimeCode" VARCHAR PRIMARY KEY,
    "RégimeCode" VARCHAR REFERENCES REGIMES("RégimeCode"),
    "SousRégimeComplet" VARCHAR
);

INSERT INTO SOUS_REGIMES ("SousRégimeCode", "RégimeCode", "SousRégimeComplet") VALUES
    ('Gen_Gen', 'Gen', 'Régime général'),
    ('Min_Rech', 'Min', 'Recherche minière'),
    ('Min_Expl', 'Min', 'Exploitation minière'),
    ('Pétrol_Rech', 'Pétrol', 'Recherche pétrolière'),
    ('Pétrol_Expl', 'Pétrol', 'Exploitation pétrolière'),
    ('Invest_ZoneFranche', 'Invest', 'Zone franche'),
    ('Invest_Invest', 'Invest', 'Régime des investissements');

-- Table: SOUS_REGIMES_STANDARDS
CREATE TABLE SOUS_REGIMES_STANDARDS (
    "SousRégimeStandardCode" VARCHAR PRIMARY KEY,
    "SousRégimeCode" VARCHAR REFERENCES SOUS_REGIMES("SousRégimeCode"),
    "SousRégimeStandardComplet" VARCHAR
);

INSERT INTO SOUS_REGIMES_STANDARDS ("SousRégimeStandardCode", "SousRégimeCode", "SousRégimeStandardComplet") VALUES
    ('Gen_Gen_Gen', 'Gen_Gen', 'Régime général'),
    ('Min_Rech_Explor', 'Min_Rech', 'Autorisation d''exploration minière'),
    ('Min_Rech_Prospect', 'Min_Rech', 'Autorisation de prospection minière'),
    ('Min_Rech_Rech', 'Min_Rech', 'Permis de recherche minière'),
    ('Min_Expl_ExplArtisan', 'Min_Expl', 'Autorisation d''exploitation minière artisanale'),
    ('Min_Expl_ExplSemiMéca', 'Min_Expl', 'Autorisation d''exploitation minière semi-mécanisée'),
    ('Min_Expl_ExplPetite', 'Min_Expl', 'Permis d''exploitation de petite mine'),
    ('Min_Expl_ExplGrande', 'Min_Expl', 'Permis d''exploitation de grande mine'),
    ('Min_Expl_ExplRejets', 'Min_Expl', 'Permis d''exploitation des rejets miniers'),
    ('Pétrol_Rech_Prospect', 'Pétrol_Rech', 'Autorisation de prospection pétrolière'),
    ('Pétrol_Rech_Explor', 'Pétrol_Rech', 'Permis d''exploration pétrolière'),
    ('Pétrol_Expl_ExplProvisoire', 'Pétrol_Expl', 'Permis d''exploitation pétrolière provisoire'),
    ('Pétrol_Expl_Expl', 'Pétrol_Expl', 'Permis d''exploitation pétrolière');

-- Table: SOUS_REGIMES_EXACTS
CREATE TABLE SOUS_REGIMES_EXACTS (
    "SousRégimeExactCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "SousRégimeStandardCode" VARCHAR REFERENCES SOUS_REGIMES_STANDARDS("SousRégimeStandardCode"),
    "SousRégimeExactComplet" VARCHAR
);

-- Table: PERIODES
CREATE TABLE PERIODES (
    "PériodeCode" VARCHAR PRIMARY KEY,
    "PériodeComplet" VARCHAR
);

-- Table: PHASES
CREATE TABLE PHASES (
    "PhaseCode" VARCHAR PRIMARY KEY,
    "PhaseComplet" VARCHAR
);

-- Table: SUBSTANCES
CREATE TABLE SUBSTANCES (
    "SubstanceCode" VARCHAR PRIMARY KEY,
    "SubstanceComplet" VARCHAR
);

-- Table: GROUPES_DE_SUBSTANCES
CREATE TABLE GROUPES_DE_SUBSTANCES (
    "SubstanceGroupeCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "SubstanceGroupeComplet" VARCHAR
);

-- Table: SUBSTANCES_DE_GROUPES_DES_SUBSTANCES
CREATE TABLE SUBSTANCES_DE_GROUPES_DES_SUBSTANCES (
    "SubtanceSubstanceGroupe" VARCHAR PRIMARY KEY,
    "SubstanceGroupeCode" VARCHAR REFERENCES GROUPES_DE_SUBSTANCES("SubstanceGroupeCode"),
    "SubstanceCode" VARCHAR REFERENCES SUBSTANCES("SubstanceCode")
);

-- Table: IMPOTS_STANDARDS
CREATE TABLE IMPOTS_STANDARDS (
    "ImpôtStandardCode" VARCHAR PRIMARY KEY,
    "ImpôtStandardComplet" VARCHAR
);

-- Table: IMPOTS_EXACTS
CREATE TABLE IMPOTS_EXACTS (
    "ImpôtExactCode" VARCHAR PRIMARY KEY,
    "TexteCode" VARCHAR REFERENCES TEXTES("TexteCode"),
    "ImpôtStandardCode" VARCHAR REFERENCES IMPOTS_STANDARDS("ImpôtStandardCode"),
    "ImpôtExactComplet" VARCHAR
);

-- Table: SOUS_IMPOTS
CREATE TABLE SOUS_IMPOTS (
    "SousImpôtCode" VARCHAR PRIMARY KEY,
    "SousImpôtComplet" VARCHAR
);

-- Table: SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtCode" VARCHAR PRIMARY KEY,
    "ImpôtStandardCode" VARCHAR REFERENCES IMPOTS_STANDARDS("ImpôtStandardCode"),
    "SousImpôtCode" VARCHAR REFERENCES SOUS_IMPOTS("SousImpôtCode")
);

-- Table: AMORTISSEMENTS
CREATE TABLE AMORTISSEMENTS (
    "AmortissementCode" VARCHAR PRIMARY KEY,
    "AmortissementComplet" VARCHAR
);

-- Table: AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtAmortissementCode" VARCHAR PRIMARY KEY,
    "ImpôtSousImpôtCode" VARCHAR REFERENCES SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtCode"),
    "AmortissementCode" VARCHAR REFERENCES AMORTISSEMENTS("AmortissementCode")
);

-- Table: SOUS_AMORTISSEMENTS
CREATE TABLE SOUS_AMORTISSEMENTS (
    "SousAmortissementCode" VARCHAR PRIMARY KEY,
    "SousAmortissementComplet" VARCHAR
);

-- Table: SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtAmortissementSousAmortissementCode" VARCHAR PRIMARY KEY,
    "ImpôtSousImpôtAmortissementCode" VARCHAR REFERENCES AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtAmortissementCode"),
    "SousAmortissementCode" VARCHAR REFERENCES SOUS_AMORTISSEMENTS("SousAmortissementCode")
);

-- Table: INFORMATIONS
CREATE TABLE INFORMATIONS (
    "InformationCode" VARCHAR PRIMARY KEY,
    "InformationComplet" VARCHAR
);

-- Table: INFORMATIONS_DES_SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS
CREATE TABLE INFORMATIONS_DES_SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS (
    "ImpôtSousImpôtAmortissementSousAmortissementInformationCode" VARCHAR PRIMARY KEY,
    "ImpôtSousImpôtAmortissementSousAmortissementCode" VARCHAR REFERENCES SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtAmortissementSousAmortissementCode"),
    "InformationCode" VARCHAR REFERENCES INFORMATIONS("InformationCode")
);

-- Table: UNITES
CREATE TABLE UNITES (
    "UnitéCode" VARCHAR PRIMARY KEY,
    "UnitéComplet" VARCHAR
);

-- Table: BASE_FISCALE
CREATE TABLE BASE_FISCALE (
    "BaseFiscCode" VARCHAR PRIMARY KEY,
    "SousRégimeExactCode" VARCHAR REFERENCES SOUS_REGIMES_EXACTS("SousRégimeExactCode"),
    "PériodeCode" VARCHAR REFERENCES PERIODES("PériodeCode"),
    "PhaseCode" VARCHAR REFERENCES PHASES("PhaseCode"),
    "SubstanceGroupeCode" VARCHAR REFERENCES GROUPES_DE_SUBSTANCES("SubstanceGroupeCode"),
    "ImpôtExactCode" VARCHAR REFERENCES IMPOTS_EXACTS("ImpôtExactCode"),
    "ImpôtSousImpôtAmortissementSousAmortissementInformationCode" VARCHAR REFERENCES INFORMATIONS_DES_SOUS_AMORTISSEMENTS_DES_AMORTISSEMENTS_DES_SOUS_IMPOTS_DES_IMPOTS_STANDARDS("ImpôtSousImpôtAmortissementSousAmortissementInformationCode"),
    "AnnéeCode" VARCHAR REFERENCES ANNEES("AnnéeCode"),
    "BaseFiscValeur" VARCHAR,
    "UnitéCode" VARCHAR REFERENCES UNITES("UnitéCode")
);

-- Table: CITATIONS_DES_VALEURS_DE_LA_BASE_FISCALE
CREATE TABLE CITATIONS_DES_VALEURS_DE_LA_BASE_FISCALE (
    "BaseFiscCitationCode" VARCHAR PRIMARY KEY,
    "BaseFiscCode" VARCHAR REFERENCES BASE_FISCALE("BaseFiscCode"),
    "BaseFiscCitationNuméro" INT,
    "TexteCitationCode" VARCHAR REFERENCES CITATIONS_DES_TEXTES("TexteCitationCode")
);
