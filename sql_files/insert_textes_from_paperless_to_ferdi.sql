insert into textes 
SELECT * FROM public.dblink
('paperless',
'select
	doc.title as "TexteCode"
	, pays."PaysCode" as "PaysCode"
	, date_part(''year'', doc.created) as "AnnéeCodeDébut"
	, NULL as "AnnéeCodeFin"
	, NULL as "TexteLégalExactCode"
	, NULL as "TexteFiscExactCode"
	, NULL as "TexteCodeArborescence"
	, doc.title as "TexteCourt"
	, doc.content as "TexteComplet"
from documents_document as doc
join documents_document_tags as doc_tags on doc_tags.document_id=doc.id
join documents_tag as tags on doc_tags.tag_id = tags.id
join pays as pays on concat(pays."PaysCode", '' '', pays."PaysComplet") = tags.name') 
AS DATA("TexteCode" CHARACTER VARYING,
		"PaysCode" CHARACTER VARYING,
		"AnnéeCodeDébut" CHARACTER VARYING,
		"AnnéeCodeFin" CHARACTER VARYING,
		"TexteLégalExactCode" CHARACTER VARYING,
		"TexteFiscExactCode" CHARACTER VARYING,
		"TexteCodeArborescence" CHARACTER VARYING,
		"TexteCourt" CHARACTER VARYING,
		"TexteComplet" CHARACTER VARYING);