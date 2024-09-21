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

INSERT INTO TEXTES_FISCAUX_STANDARDS ("TexteFiscStandardCode", "RégimeCode", "TexteFiscStandardCodeCourt", "TexteFiscStandardComplet") VALUES
    ('Gen_CGI', 'Gen', 'CGI', 'Code général des impôts'),
    ('Gen_IT', 'Gen', 'IT', 'Impôt sur le revenu'),
    ('Gen_VAT', 'Gen', 'VAT', 'Taxe sur la valeur ajoutée'),
    ('Gen_NHI', 'Gen', 'NHI', 'Assurance maladie nationale'),
    ('Gen_LF', 'Gen', 'LF', 'Loi de finances'),
    ('Invest_CI', 'Invest', 'CI', 'Code des investissement'),
    ('Min_CM', 'Min', 'CM', 'Code minier'),
    ('Pétrol_CP', 'Pétrol', 'CP', 'Code pétrolier'),
    ('Gaz_CG', 'Gaz', 'CGI', 'Code gazier'),
    ('Forest_CF', 'Forest', 'CF', 'Code forestier');

-- Table: TEXTES_FISCAUX_EXACTS
CREATE TABLE TEXTES_FISCAUX_EXACTS (
    "TexteFiscExactCode" VARCHAR PRIMARY KEY,
    "TexteFiscStandardCode" VARCHAR REFERENCES TEXTES_FISCAUX_STANDARDS("TexteFiscStandardCode"),
    "TexteFiscExactCodeCourt" VARCHAR,
    "TexteFiscExactComplet" VARCHAR
);

INSERT INTO TEXTES_FISCAUX_EXACTS ("TexteFiscExactCode", "TexteFiscStandardCode", "TexteFiscExactCodeCourt", "TexteFiscExactComplet") VALUES
    ('Gen_CGI_CGI', 'Gen_CGI', 'CGI', 'Code général des impôts'),
    ('Gen_CGI_CGImodif', 'Gen_CGI', 'CGImodif', 'Modification du Code général des impôts'),
    ('Gen_CGI_CGImodifModif', 'Gen_CGI', 'CGImodifModif', 'Modification de la Modification du Code général des impôts'),
    ('Gen_CGI_CGIamendé', 'Gen_CGI', 'CGIamendé', 'Code général des impôts amendé'),
    ('Gen_CGI_CGIappli', 'Gen_CGI', 'CGIappli', 'Application du Code général des impôts'),
    ('Gen_CGI_CGIappliModif', 'Gen_CGI', 'CGIappliModif', 'Modification de l''Application du Code général des impôts'),
    ('Gen_CGI_CGIone', 'Gen_CGI', 'CGIone', 'Code des impôts directs et indirects'),
    ('Gen_CGI_CGIoneModif', 'Gen_CGI', 'CGIoneModif', 'Modification du Code des impôts directs et indirects'),
    ('Gen_CGI_CGIoneAmendé', 'Gen_CGI', 'CGIoneAmendé', 'Code des impôts directs et indirects amendé'),
    ('Gen_CGI_CGIbis', 'Gen_CGI', 'CGIbis', 'Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers'),
    ('Gen_CGI_CGIbisModif', 'Gen_CGI', 'CGIbisModif', 'Modification du Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers'),
    ('Gen_CGI_CGIbisAmendé', 'Gen_CGI', 'CGIbisAmendé', 'Code de l''enregistrement, du timbre et de l''impôt sur le revenu des capitaux mobiliers amendé'),
    ('Gen_CGI_CGIproced', 'Gen_CGI', 'CGIproced', 'Livre de procédures fiscales'),
    ('Gen_CGI_CGIprocedModif', 'Gen_CGI', 'CGIprocedModif', 'Modification du Livre de procédures fiscales'),
    ('Gen_CGI_CGIprocedAmendé', 'Gen_CGI', 'CGIprocedAmendé', 'Livre de procédures fiscales amendé'),
    ('Gen_IT_IT', 'Gen_IT', 'IT', 'Impôt sur les revenus'),
    ('Gen_IT_ITmodif', 'Gen_IT', 'ITmodif', 'Modification de l''Impôt sur les revenus'),
    ('Gen_IT_ITamendé', 'Gen_IT', 'ITamendé', 'Impôt sur les revenus amendé'),
    ('Gen_IT_ITappli', 'Gen_IT', 'ITappli', 'Application de l''Impôt sur les revenus'),
    ('Gen_IT_ITappliModif', 'Gen_IT', 'ITappliModif', 'Modification de l''Application de l''Impôt sur les revenus'),
    ('Gen_VAT_VAT', 'Gen_VAT', 'VAT', 'Taxe sur la valeur ajoutée'),
    ('Gen_VAT_VATmodif', 'Gen_VAT', 'VATmodif', 'Modification de la Taxe sur la valeur ajoutée'),
    ('Gen_VAT_VATamendé', 'Gen_VAT', 'VATamendé', 'Taxe sur la valeur ajoutée amendé'),
    ('Gen_VAT_VATappli', 'Gen_VAT', 'VATappli', 'Application de la Taxe sur la valeur ajoutée'),
    ('Gen_VAT_VATappliModif', 'Gen_VAT', 'VATappliModif', 'Modification de l''Application de la Taxe sur la valeur ajoutée'),
    ('Gen_LF_LF', 'Gen_LF', 'LF', 'Loi de finances'),
    ('Gen_LF_LFmodif', 'Gen_LF', 'LFmodif', 'Modification de la Loi de finances'),
    ('Gen_LF_LFR', 'Gen_LF', 'LFR', 'Loi de finances rectificative'),
    ('Gen_LF_LFRmodif', 'Gen_LF', 'LFRmodif', 'Modification de la Loi de finances rectificative'),
    ('Gen_LF_LFappli', 'Gen_LF', 'LFappli', 'Application de la Loi de finances'),
    ('Gen_LF_LFappliModif', 'Gen_LF', 'LFappliModif', 'Modification de l''Application de la Loi de finances'),
    ('Gen_CGI_IS', 'Gen_CGI', 'IS', 'Impôt sur les sociétés'),
    ('Gen_CGI_ISmodif', 'Gen_CGI', 'ISmodif', 'Modification de l''Impôt sur les sociétés'),
    ('Gen_CGI_ISamendé', 'Gen_CGI', 'ISamendé', 'Impôt sur les sociétés amendé'),
    ('Min_CM_CM', 'Min_CM', 'CM', 'Code minier'),
    ('Min_CM_CMmodif', 'Min_CM', 'CMmodif', 'Modification du Code minier'),
    ('Min_CM_CMamendé', 'Min_CM', 'CMamendé', 'Code minier amendé'),
    ('Min_CM_CMappli', 'Min_CM', 'CMappli', 'Application du Code minier'),
    ('Min_CM_CMappliModif', 'Min_CM', 'CMappliModif', 'Modification de l''Application du Code minier'),
    ('Min_CM_CMconv', 'Min_CM', 'CMconv', 'Convention minière type'),
    ('Min_CM_CMconvModif', 'Min_CM', 'CMconvModif', 'Modification de la Convention minière type'),
    ('Min_CM_CMfisc', 'Min_CM', 'CMfisc', 'Fiscalité minière'),
    ('Min_CM_CMfiscModif', 'Min_CM', 'CMfiscModif', 'Modification de la Fiscalité minière'),
    ('Pétrol_CP_CP', 'Pétrol_CP', 'CP', 'Code pétrolier'),
    ('Pétrol_CP_CPmodif', 'Pétrol_CP', 'CPmodif', 'Modification du Code pétrolier'),
    ('Pétrol_CP_CPamendé', 'Pétrol_CP', 'CPamendé', 'Code pétrolier amendé'),
    ('Pétrol_CP_CPappli', 'Pétrol_CP', 'CPappli', 'Application du Code pétrolier'),
    ('Pétrol_CP_CPappliModif', 'Pétrol_CP', 'CPappliModif', 'Modification de l''Application du Code pétrolier'),
    ('Pétrol_CP_CPconv', 'Pétrol_CP', 'CPconv', 'Convention pétrolière type'),
    ('Pétrol_CP_CPconvModif', 'Pétrol_CP', 'CPconvModif', 'Modification de la Convention pétrolière type');

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
