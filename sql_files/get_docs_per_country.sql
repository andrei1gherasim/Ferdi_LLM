select
	doc.title as title
	, doc.content as content
	, tags.name as country
from documents_document as doc
join documents_document_tags as doc_tags on doc_tags.document_id=doc.id
join documents_tag as tags on doc_tags.tag_id = tags.id
where tags.name='%country_name%';