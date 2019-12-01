#Initial time: 5.678 sec
#After Index:  261.084 sec
#After PK:     1.607 sec

use uniprot_example;
select * from proteins;
load data local infile 'C:\\Users\\User\\Desktop\\insert.txt' into table proteins fields terminated by '|';

select *
from proteins
where protein_name like "%tumor%" and uniprot_id like "%human%"
order by uniprot_id;

create index uniprot_index on proteins (uniprot_id);
drop index uniprot_index on proteins;

alter table proteins add constraint pk_proteins primary key (uniprot_id);
alter table proteins drop primary key;

delete from proteins;