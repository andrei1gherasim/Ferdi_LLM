with 
doc_tags as (
	select
		doc.title as title
		, tags.name as tag
	from documents_document as doc
	join documents_document_tags as doc_tags on doc_tags.document_id=doc.id
	join documents_tag as tags on doc_tags.tag_id = tags.id
)
select * 
from doc_tags
where 1=1
	and title in (select distinct title from doc_tags where tag='%country_name%')
	and tag<>'%country_name%'
order by title;