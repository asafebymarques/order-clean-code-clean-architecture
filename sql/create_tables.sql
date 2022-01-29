create schema ccca;

create table ccca.item (
	id_item serial,
	category text,
	description text,
	price numeric,
	width integer,
	height integer,
	length integer,
	weight integer,
	primary key (id_item)
);

create table ccca.coupon (
	code text,
	percentage numeric,
	expire_date timestamp,
	primary key (code)
);

create table ccca.order (
	id_order serial,
	coupon text,
	code text,
	cpf text,
	issue_date timestamp,
	freight numeric,
	total numeric,
	sequence integer,
	primary key (id_order)
);

create table ccca.order_item (
	id_order integer,
	id_item integer,
	price numeric,
	quantity integer,
	primary key (id_order, id_item)
);

create table ccca.stock_entry (
	id_stock_entry serial,
	id_item integer,
	operation text,
	quantity integer,
	date timestamp,
	primary key (id_stock_entry)
);