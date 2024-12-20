--
-- PostgreSQL database dump
--

-- Dumped from database version 16.4 (Debian 16.4-1.pgdg120+1)
-- Dumped by pg_dump version 16.4 (Debian 16.4-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: advanced_sale_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.advanced_sale_details (
    id bigint NOT NULL,
    advanced_sale_id bigint NOT NULL,
    inventary_id bigint NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.advanced_sale_details OWNER TO postgres;

--
-- Name: advanced_sale_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.advanced_sale_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.advanced_sale_details_id_seq OWNER TO postgres;

--
-- Name: advanced_sale_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.advanced_sale_details_id_seq OWNED BY public.advanced_sale_details.id;


--
-- Name: advanced_sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.advanced_sales (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    warehouse_id bigint NOT NULL,
    seller_id bigint NOT NULL,
    bank_account_id bigint NOT NULL,
    payment_receipt_id bigint NOT NULL,
    type_document character varying(255) NOT NULL,
    payment_receipt_code character varying(255) NOT NULL,
    igv numeric(5,2) NOT NULL,
    exchange_rate numeric(5,2) NOT NULL,
    payment_condition character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    days integer NOT NULL,
    currency_type character varying(255) NOT NULL,
    observation text,
    sale_value numeric(10,2) NOT NULL,
    total_igv numeric(10,2) NOT NULL,
    exonerated numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.advanced_sales OWNER TO postgres;

--
-- Name: advanced_sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.advanced_sales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.advanced_sales_id_seq OWNER TO postgres;

--
-- Name: advanced_sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.advanced_sales_id_seq OWNED BY public.advanced_sales.id;


--
-- Name: article_transfer_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_transfer_details (
    id bigint NOT NULL,
    article_transfer_id bigint NOT NULL,
    inventary_id bigint NOT NULL,
    quantity integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.article_transfer_details OWNER TO postgres;

--
-- Name: article_transfer_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_transfer_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_transfer_details_id_seq OWNER TO postgres;

--
-- Name: article_transfer_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_transfer_details_id_seq OWNED BY public.article_transfer_details.id;


--
-- Name: article_transfers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.article_transfers (
    id bigint NOT NULL,
    warehouse_origin_id bigint NOT NULL,
    warehouse_destination_id bigint NOT NULL,
    observation character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.article_transfers OWNER TO postgres;

--
-- Name: article_transfers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.article_transfers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.article_transfers_id_seq OWNER TO postgres;

--
-- Name: article_transfers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.article_transfers_id_seq OWNED BY public.article_transfers.id;


--
-- Name: articles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.articles (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    line_id bigint NOT NULL,
    costs numeric(10,2) NOT NULL,
    expenses numeric(10,2) NOT NULL,
    costs_plus_expenses numeric(10,2) NOT NULL,
    sale_price numeric(10,2) NOT NULL,
    sale_shop numeric(10,2) NOT NULL,
    sale_wholesale numeric(10,2) NOT NULL,
    is_exonerated boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.articles OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.articles_id_seq OWNER TO postgres;

--
-- Name: articles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.articles_id_seq OWNED BY public.articles.id;


--
-- Name: bank_accounts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.bank_accounts (
    id bigint NOT NULL,
    bank_id bigint NOT NULL,
    owner character varying(255) NOT NULL,
    cci character varying(255) NOT NULL,
    currency_type character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.bank_accounts OWNER TO postgres;

--
-- Name: bank_accounts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.bank_accounts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.bank_accounts_id_seq OWNER TO postgres;

--
-- Name: bank_accounts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.bank_accounts_id_seq OWNED BY public.bank_accounts.id;


--
-- Name: banks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.banks (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.banks OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.banks_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.banks_id_seq OWNER TO postgres;

--
-- Name: banks_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.banks_id_seq OWNED BY public.banks.id;


--
-- Name: batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.batches (
    id bigint NOT NULL,
    inventory_id bigint NOT NULL,
    code character varying(255) NOT NULL,
    due_date date NOT NULL,
    stock integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.batches OWNER TO postgres;

--
-- Name: batches_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.batches_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.batches_id_seq OWNER TO postgres;

--
-- Name: batches_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.batches_id_seq OWNED BY public.batches.id;


--
-- Name: cache; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache (
    key character varying(255) NOT NULL,
    value text NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache OWNER TO postgres;

--
-- Name: cache_locks; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cache_locks (
    key character varying(255) NOT NULL,
    owner character varying(255) NOT NULL,
    expiration integer NOT NULL
);


ALTER TABLE public.cache_locks OWNER TO postgres;

--
-- Name: cash_movements; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.cash_movements (
    id bigint NOT NULL,
    account_id bigint NOT NULL,
    type_movement character varying(255) NOT NULL,
    amount numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.cash_movements OWNER TO postgres;

--
-- Name: cash_movements_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.cash_movements_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.cash_movements_id_seq OWNER TO postgres;

--
-- Name: cash_movements_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.cash_movements_id_seq OWNED BY public.cash_movements.id;


--
-- Name: concepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.concepts (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    group_of_concept_id bigint NOT NULL,
    is_expense boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.concepts OWNER TO postgres;

--
-- Name: concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.concepts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.concepts_id_seq OWNER TO postgres;

--
-- Name: concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.concepts_id_seq OWNED BY public.concepts.id;


--
-- Name: customer_amortization_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_amortization_details (
    id bigint NOT NULL,
    customer_amortization_id bigint NOT NULL,
    payment_receipt_id bigint NOT NULL,
    due_date date NOT NULL,
    balance numeric(10,2) NOT NULL,
    amortization numeric(10,2) NOT NULL,
    final_balance numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.customer_amortization_details OWNER TO postgres;

--
-- Name: customer_amortization_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_amortization_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_amortization_details_id_seq OWNER TO postgres;

--
-- Name: customer_amortization_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_amortization_details_id_seq OWNED BY public.customer_amortization_details.id;


--
-- Name: customer_amortizations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_amortizations (
    id bigint NOT NULL,
    credit_customer_id bigint NOT NULL,
    payment_receipt_id bigint NOT NULL,
    bank_account_id bigint NOT NULL,
    currency_type character varying(255) NOT NULL,
    bank character varying(255) NOT NULL,
    customer character varying(255) NOT NULL,
    amount numeric(10,2) NOT NULL,
    observation text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.customer_amortizations OWNER TO postgres;

--
-- Name: customer_amortizations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_amortizations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_amortizations_id_seq OWNER TO postgres;

--
-- Name: customer_amortizations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_amortizations_id_seq OWNED BY public.customer_amortizations.id;


--
-- Name: customer_credits; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customer_credits (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    seller_id bigint NOT NULL,
    credit_limit numeric(10,2) NOT NULL,
    credit_used numeric(10,2) DEFAULT '0'::numeric NOT NULL,
    credit_remaining numeric(10,2) DEFAULT '0'::numeric NOT NULL,
    is_active boolean DEFAULT true NOT NULL,
    payment_receipt_id bigint,
    currency_type character varying(255) NOT NULL,
    exchange_rate numeric(5,2) NOT NULL,
    die_date date NOT NULL,
    observation text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.customer_credits OWNER TO postgres;

--
-- Name: customer_credits_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customer_credits_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customer_credits_id_seq OWNER TO postgres;

--
-- Name: customer_credits_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customer_credits_id_seq OWNED BY public.customer_credits.id;


--
-- Name: customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.customers (
    id bigint NOT NULL,
    company_name character varying(255) NOT NULL,
    type_id bigint NOT NULL,
    type_document character varying(255) NOT NULL,
    document_number character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    zone_id bigint NOT NULL,
    ubigeo_id bigint NOT NULL,
    phone_number character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    manager_id bigint NOT NULL,
    status character varying(255) NOT NULL,
    credit_limit numeric(10,2) NOT NULL,
    cultivation character varying(255),
    hectareas character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.customers OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.customers_id_seq OWNER TO postgres;

--
-- Name: customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;


--
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.failed_jobs (
    id bigint NOT NULL,
    uuid character varying(255) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT CURRENT_TIMESTAMP NOT NULL
);


ALTER TABLE public.failed_jobs OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.failed_jobs_id_seq OWNER TO postgres;

--
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.failed_jobs_id_seq OWNED BY public.failed_jobs.id;


--
-- Name: group_of_concepts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.group_of_concepts (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    is_expense boolean NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.group_of_concepts OWNER TO postgres;

--
-- Name: group_of_concepts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.group_of_concepts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.group_of_concepts_id_seq OWNER TO postgres;

--
-- Name: group_of_concepts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.group_of_concepts_id_seq OWNED BY public.group_of_concepts.id;


--
-- Name: inventories; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.inventories (
    id bigint NOT NULL,
    article_id bigint NOT NULL,
    warehouse_id bigint NOT NULL,
    stock integer NOT NULL,
    to_be_collected_from_supplier integer NOT NULL,
    to_be_delivered_to_customer integer NOT NULL,
    cost_price numeric(10,2) NOT NULL,
    sale_price numeric(10,2) NOT NULL,
    status character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.inventories OWNER TO postgres;

--
-- Name: inventories_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.inventories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.inventories_id_seq OWNER TO postgres;

--
-- Name: inventories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.inventories_id_seq OWNED BY public.inventories.id;


--
-- Name: job_batches; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.job_batches (
    id character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    total_jobs integer NOT NULL,
    pending_jobs integer NOT NULL,
    failed_jobs integer NOT NULL,
    failed_job_ids text NOT NULL,
    options text,
    cancelled_at integer,
    created_at integer NOT NULL,
    finished_at integer
);


ALTER TABLE public.job_batches OWNER TO postgres;

--
-- Name: jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.jobs (
    id bigint NOT NULL,
    queue character varying(255) NOT NULL,
    payload text NOT NULL,
    attempts smallint NOT NULL,
    reserved_at integer,
    available_at integer NOT NULL,
    created_at integer NOT NULL
);


ALTER TABLE public.jobs OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.jobs_id_seq OWNER TO postgres;

--
-- Name: jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.jobs_id_seq OWNED BY public.jobs.id;


--
-- Name: lines; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.lines (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    category character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.lines OWNER TO postgres;

--
-- Name: lines_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.lines_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.lines_id_seq OWNER TO postgres;

--
-- Name: lines_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.lines_id_seq OWNED BY public.lines.id;


--
-- Name: loan_of_merchandise_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loan_of_merchandise_details (
    id bigint NOT NULL,
    loan_of_merchandise_id bigint NOT NULL,
    inventary_id bigint NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.loan_of_merchandise_details OWNER TO postgres;

--
-- Name: loan_of_merchandise_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loan_of_merchandise_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loan_of_merchandise_details_id_seq OWNER TO postgres;

--
-- Name: loan_of_merchandise_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loan_of_merchandise_details_id_seq OWNED BY public.loan_of_merchandise_details.id;


--
-- Name: loan_of_merchandises; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.loan_of_merchandises (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    warehouse_id bigint NOT NULL,
    seller_id bigint NOT NULL,
    payment_receipt_id bigint NOT NULL,
    type_document character varying(255) NOT NULL,
    payment_receipt_code character varying(255) NOT NULL,
    igv numeric(5,2) NOT NULL,
    payment_condition character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    observation text,
    sale_value numeric(10,2) NOT NULL,
    total_igv numeric(10,2) NOT NULL,
    exonerated numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.loan_of_merchandises OWNER TO postgres;

--
-- Name: loan_of_merchandises_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.loan_of_merchandises_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.loan_of_merchandises_id_seq OWNER TO postgres;

--
-- Name: loan_of_merchandises_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.loan_of_merchandises_id_seq OWNED BY public.loan_of_merchandises.id;


--
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.migrations (
    id integer NOT NULL,
    migration character varying(255) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE public.migrations OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.migrations_id_seq OWNER TO postgres;

--
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;


--
-- Name: money_transfers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.money_transfers (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    amount numeric(10,2) NOT NULL,
    source_account_id bigint NOT NULL,
    destination_account_id bigint NOT NULL,
    exchange_rate numeric(5,2) NOT NULL,
    observation text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.money_transfers OWNER TO postgres;

--
-- Name: money_transfers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.money_transfers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.money_transfers_id_seq OWNER TO postgres;

--
-- Name: money_transfers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.money_transfers_id_seq OWNED BY public.money_transfers.id;


--
-- Name: password_reset_tokens; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.password_reset_tokens (
    email character varying(255) NOT NULL,
    token character varying(255) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE public.password_reset_tokens OWNER TO postgres;

--
-- Name: payment_receipts; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.payment_receipts (
    id bigint NOT NULL,
    code character varying(255) NOT NULL,
    type_document character varying(255) NOT NULL,
    url_qr character varying(255) NOT NULL,
    advances numeric(10,2) NOT NULL,
    free_ops numeric(10,2) NOT NULL,
    taxed_ops numeric(10,2) NOT NULL,
    op_tax_free numeric(10,2) NOT NULL,
    op_exempt_ops numeric(10,2) NOT NULL,
    vat numeric(10,2) NOT NULL,
    discounts numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    status character varying(255) NOT NULL,
    observation text,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.payment_receipts OWNER TO postgres;

--
-- Name: payment_receipts_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.payment_receipts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.payment_receipts_id_seq OWNER TO postgres;

--
-- Name: payment_receipts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.payment_receipts_id_seq OWNED BY public.payment_receipts.id;


--
-- Name: purchase_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchase_details (
    id bigint NOT NULL,
    purchase_id bigint NOT NULL,
    article_id bigint NOT NULL,
    unit_of_measurement character varying(255) NOT NULL,
    batch_code character varying(255) NOT NULL,
    due_date date NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    freight numeric(10,2) NOT NULL,
    other numeric(10,2) NOT NULL,
    costs_plus numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.purchase_details OWNER TO postgres;

--
-- Name: purchase_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchase_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchase_details_id_seq OWNER TO postgres;

--
-- Name: purchase_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchase_details_id_seq OWNED BY public.purchase_details.id;


--
-- Name: purchases; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.purchases (
    id bigint NOT NULL,
    supplier_id bigint NOT NULL,
    warehouse_id bigint NOT NULL,
    payment_receipt_id bigint NOT NULL,
    type_document character varying(255) NOT NULL,
    payment_receipt_code character varying(255) NOT NULL,
    date_of_entry date NOT NULL,
    igv numeric(5,2) NOT NULL,
    exchange_rate numeric(5,2) NOT NULL,
    payment_condition character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    currency_type character varying(255) NOT NULL,
    observation text,
    sale_value numeric(10,2) NOT NULL,
    total_igv numeric(10,2) NOT NULL,
    exonerated numeric(10,2) NOT NULL,
    subtotal numeric(10,2) NOT NULL,
    total_freight numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.purchases OWNER TO postgres;

--
-- Name: purchases_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.purchases_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.purchases_id_seq OWNER TO postgres;

--
-- Name: purchases_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.purchases_id_seq OWNED BY public.purchases.id;


--
-- Name: sale_details; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sale_details (
    id bigint NOT NULL,
    sale_id bigint NOT NULL,
    batch_id bigint NOT NULL,
    quantity integer NOT NULL,
    unit_price numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.sale_details OWNER TO postgres;

--
-- Name: sale_details_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sale_details_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sale_details_id_seq OWNER TO postgres;

--
-- Name: sale_details_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sale_details_id_seq OWNED BY public.sale_details.id;


--
-- Name: sales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sales (
    id bigint NOT NULL,
    customer_id bigint NOT NULL,
    warehouse_id bigint NOT NULL,
    seller_id bigint NOT NULL,
    bank_account_id bigint NOT NULL,
    payment_receipt_id bigint NOT NULL,
    type_document character varying(255) NOT NULL,
    payment_receipt_code character varying(255) NOT NULL,
    igv numeric(5,2) NOT NULL,
    exchange_rate numeric(5,2) NOT NULL,
    payment_condition character varying(255) NOT NULL,
    status character varying(255) NOT NULL,
    days integer NOT NULL,
    currency_type character varying(255) NOT NULL,
    observation text,
    sale_value numeric(10,2) NOT NULL,
    total_igv numeric(10,2) NOT NULL,
    exonerated numeric(10,2) NOT NULL,
    total numeric(10,2) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.sales OWNER TO postgres;

--
-- Name: sales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sales_id_seq OWNER TO postgres;

--
-- Name: sales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sales_id_seq OWNED BY public.sales.id;


--
-- Name: sellers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sellers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    document_number character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    ubigeo_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.sellers OWNER TO postgres;

--
-- Name: sellers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.sellers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.sellers_id_seq OWNER TO postgres;

--
-- Name: sellers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.sellers_id_seq OWNED BY public.sellers.id;


--
-- Name: sessions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.sessions (
    id character varying(255) NOT NULL,
    user_id bigint,
    ip_address character varying(45),
    user_agent text,
    payload text NOT NULL,
    last_activity integer NOT NULL
);


ALTER TABLE public.sessions OWNER TO postgres;

--
-- Name: suppliers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.suppliers (
    id bigint NOT NULL,
    company_name character varying(255) NOT NULL,
    type_document character varying(255) NOT NULL,
    document_number character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    phone character varying(255) NOT NULL,
    ubigeo_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.suppliers OWNER TO postgres;

--
-- Name: suppliers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.suppliers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.suppliers_id_seq OWNER TO postgres;

--
-- Name: suppliers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.suppliers_id_seq OWNED BY public.suppliers.id;


--
-- Name: taking_times; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.taking_times (
    id bigint NOT NULL,
    type_document character varying(255) NOT NULL,
    initial_date timestamp(0) without time zone NOT NULL,
    final_date timestamp(0) without time zone NOT NULL,
    time_in_seconds integer NOT NULL
);


ALTER TABLE public.taking_times OWNER TO postgres;

--
-- Name: taking_times_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.taking_times_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.taking_times_id_seq OWNER TO postgres;

--
-- Name: taking_times_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.taking_times_id_seq OWNED BY public.taking_times.id;


--
-- Name: type_of_customers; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.type_of_customers (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.type_of_customers OWNER TO postgres;

--
-- Name: type_of_customers_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.type_of_customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.type_of_customers_id_seq OWNER TO postgres;

--
-- Name: type_of_customers_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.type_of_customers_id_seq OWNED BY public.type_of_customers.id;


--
-- Name: ubigeos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.ubigeos (
    id bigint NOT NULL,
    name character varying(255),
    code character varying(255),
    tag character varying(255),
    search_engine character varying(255),
    number_of_children character varying(255),
    level integer,
    parent_code character varying(255),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.ubigeos OWNER TO postgres;

--
-- Name: ubigeos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.ubigeos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.ubigeos_id_seq OWNER TO postgres;

--
-- Name: ubigeos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.ubigeos_id_seq OWNED BY public.ubigeos.id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    email character varying(255) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(255) NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    custom_fields json,
    avatar_url character varying(255)
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.users_id_seq OWNER TO postgres;

--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.users_id_seq OWNED BY public.users.id;


--
-- Name: warehouses; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.warehouses (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    address character varying(255) NOT NULL,
    zone_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.warehouses OWNER TO postgres;

--
-- Name: warehouses_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.warehouses_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.warehouses_id_seq OWNER TO postgres;

--
-- Name: warehouses_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.warehouses_id_seq OWNED BY public.warehouses.id;


--
-- Name: zones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.zones (
    id bigint NOT NULL,
    name character varying(255) NOT NULL,
    ubigeo_id bigint NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE public.zones OWNER TO postgres;

--
-- Name: zones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.zones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER SEQUENCE public.zones_id_seq OWNER TO postgres;

--
-- Name: zones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.zones_id_seq OWNED BY public.zones.id;


--
-- Name: advanced_sale_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sale_details ALTER COLUMN id SET DEFAULT nextval('public.advanced_sale_details_id_seq'::regclass);


--
-- Name: advanced_sales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales ALTER COLUMN id SET DEFAULT nextval('public.advanced_sales_id_seq'::regclass);


--
-- Name: article_transfer_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfer_details ALTER COLUMN id SET DEFAULT nextval('public.article_transfer_details_id_seq'::regclass);


--
-- Name: article_transfers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfers ALTER COLUMN id SET DEFAULT nextval('public.article_transfers_id_seq'::regclass);


--
-- Name: articles id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles ALTER COLUMN id SET DEFAULT nextval('public.articles_id_seq'::regclass);


--
-- Name: bank_accounts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts ALTER COLUMN id SET DEFAULT nextval('public.bank_accounts_id_seq'::regclass);


--
-- Name: banks id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks ALTER COLUMN id SET DEFAULT nextval('public.banks_id_seq'::regclass);


--
-- Name: batches id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches ALTER COLUMN id SET DEFAULT nextval('public.batches_id_seq'::regclass);


--
-- Name: cash_movements id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_movements ALTER COLUMN id SET DEFAULT nextval('public.cash_movements_id_seq'::regclass);


--
-- Name: concepts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concepts ALTER COLUMN id SET DEFAULT nextval('public.concepts_id_seq'::regclass);


--
-- Name: customer_amortization_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortization_details ALTER COLUMN id SET DEFAULT nextval('public.customer_amortization_details_id_seq'::regclass);


--
-- Name: customer_amortizations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortizations ALTER COLUMN id SET DEFAULT nextval('public.customer_amortizations_id_seq'::regclass);


--
-- Name: customer_credits id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_credits ALTER COLUMN id SET DEFAULT nextval('public.customer_credits_id_seq'::regclass);


--
-- Name: customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);


--
-- Name: failed_jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs ALTER COLUMN id SET DEFAULT nextval('public.failed_jobs_id_seq'::regclass);


--
-- Name: group_of_concepts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_of_concepts ALTER COLUMN id SET DEFAULT nextval('public.group_of_concepts_id_seq'::regclass);


--
-- Name: inventories id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories ALTER COLUMN id SET DEFAULT nextval('public.inventories_id_seq'::regclass);


--
-- Name: jobs id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs ALTER COLUMN id SET DEFAULT nextval('public.jobs_id_seq'::regclass);


--
-- Name: lines id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lines ALTER COLUMN id SET DEFAULT nextval('public.lines_id_seq'::regclass);


--
-- Name: loan_of_merchandise_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandise_details ALTER COLUMN id SET DEFAULT nextval('public.loan_of_merchandise_details_id_seq'::regclass);


--
-- Name: loan_of_merchandises id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandises ALTER COLUMN id SET DEFAULT nextval('public.loan_of_merchandises_id_seq'::regclass);


--
-- Name: migrations id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);


--
-- Name: money_transfers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.money_transfers ALTER COLUMN id SET DEFAULT nextval('public.money_transfers_id_seq'::regclass);


--
-- Name: payment_receipts id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_receipts ALTER COLUMN id SET DEFAULT nextval('public.payment_receipts_id_seq'::regclass);


--
-- Name: purchase_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_details ALTER COLUMN id SET DEFAULT nextval('public.purchase_details_id_seq'::regclass);


--
-- Name: purchases id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases ALTER COLUMN id SET DEFAULT nextval('public.purchases_id_seq'::regclass);


--
-- Name: sale_details id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_details ALTER COLUMN id SET DEFAULT nextval('public.sale_details_id_seq'::regclass);


--
-- Name: sales id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales ALTER COLUMN id SET DEFAULT nextval('public.sales_id_seq'::regclass);


--
-- Name: sellers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers ALTER COLUMN id SET DEFAULT nextval('public.sellers_id_seq'::regclass);


--
-- Name: suppliers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers ALTER COLUMN id SET DEFAULT nextval('public.suppliers_id_seq'::regclass);


--
-- Name: taking_times id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taking_times ALTER COLUMN id SET DEFAULT nextval('public.taking_times_id_seq'::regclass);


--
-- Name: type_of_customers id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_of_customers ALTER COLUMN id SET DEFAULT nextval('public.type_of_customers_id_seq'::regclass);


--
-- Name: ubigeos id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubigeos ALTER COLUMN id SET DEFAULT nextval('public.ubigeos_id_seq'::regclass);


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users ALTER COLUMN id SET DEFAULT nextval('public.users_id_seq'::regclass);


--
-- Name: warehouses id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses ALTER COLUMN id SET DEFAULT nextval('public.warehouses_id_seq'::regclass);


--
-- Name: zones id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zones ALTER COLUMN id SET DEFAULT nextval('public.zones_id_seq'::regclass);


--
-- Data for Name: advanced_sale_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advanced_sale_details (id, advanced_sale_id, inventary_id, quantity, unit_price, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: advanced_sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.advanced_sales (id, customer_id, warehouse_id, seller_id, bank_account_id, payment_receipt_id, type_document, payment_receipt_code, igv, exchange_rate, payment_condition, status, days, currency_type, observation, sale_value, total_igv, exonerated, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: article_transfer_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_transfer_details (id, article_transfer_id, inventary_id, quantity, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: article_transfers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.article_transfers (id, warehouse_origin_id, warehouse_destination_id, observation, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: articles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.articles (id, name, line_id, costs, expenses, costs_plus_expenses, sale_price, sale_shop, sale_wholesale, is_exonerated, created_at, updated_at) FROM stdin;
1	Foliar Max	1	200.00	27.00	227.00	272.40	350.00	482.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
2	Foliar Grow	1	336.00	34.00	370.00	444.00	560.00	143.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
3	Foliar Boost	1	179.00	48.00	227.00	272.40	504.00	183.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
4	Acaricida Plus	2	226.00	17.00	243.00	291.60	291.00	273.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
5	Acaricida Ultra	2	454.00	10.00	464.00	556.80	480.00	235.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
6	Acaricida Forte	2	208.00	17.00	225.00	270.00	471.00	309.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
7	Aceite Gold	3	329.00	36.00	365.00	438.00	365.00	361.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
8	Aceite Supreme	3	178.00	48.00	226.00	271.20	164.00	464.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
9	Aceite Shield	3	496.00	22.00	518.00	621.60	552.00	416.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
10	Adherente Pro	4	323.00	34.00	357.00	428.40	596.00	182.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
11	Adherente Super	4	397.00	47.00	444.00	532.80	510.00	231.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
12	Adherente Max	4	355.00	11.00	366.00	439.20	344.00	273.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
13	Bioestimulante Green	5	252.00	16.00	268.00	321.60	565.00	310.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
14	Bioestimulante Power	5	325.00	25.00	350.00	420.00	582.00	344.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
15	Bioestimulante Eco	5	388.00	11.00	399.00	478.80	477.00	452.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
16	Fungicida Ultra	6	312.00	49.00	361.00	433.20	360.00	490.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
17	Fungicida Plus	6	171.00	18.00	189.00	226.80	206.00	240.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
18	Fungicida Shield	6	224.00	43.00	267.00	320.40	560.00	179.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
19	Herbicida Pro	7	229.00	12.00	241.00	289.20	278.00	198.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
20	Herbicida Ultra	7	283.00	23.00	306.00	367.20	302.00	125.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
21	Herbicida Gold	7	432.00	48.00	480.00	576.00	248.00	394.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
22	Hormona Max	8	279.00	25.00	304.00	364.80	204.00	227.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
23	Hormona Grow	8	325.00	12.00	337.00	404.40	292.00	116.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
24	Hormona Boost	8	350.00	47.00	397.00	476.40	518.00	240.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
25	Insecticida Plus	9	188.00	26.00	214.00	256.80	193.00	310.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
26	Insecticida Shield	9	195.00	10.00	205.00	246.00	266.00	334.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
27	Insecticida Supreme	9	382.00	27.00	409.00	490.80	175.00	399.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
28	Nematicida Power	10	360.00	29.00	389.00	466.80	178.00	471.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
29	Nematicida Control	10	351.00	44.00	395.00	474.00	544.00	195.00	t	2024-12-15 19:26:21	2024-12-15 19:26:21
30	Nematicida Defense	10	223.00	14.00	237.00	284.40	567.00	227.00	f	2024-12-15 19:26:21	2024-12-15 19:26:21
\.


--
-- Data for Name: bank_accounts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.bank_accounts (id, bank_id, owner, cci, currency_type, created_at, updated_at) FROM stdin;
1	1	Juan Perez	002-000000000000000000	Soles	\N	\N
2	1	Juan Perez	009-000000000000000000	D├│lares	\N	\N
3	2	Juan Perez	011-000000000000000000	Soles	\N	\N
4	2	Juan Perez	011-000000000000000000	D├│lares	\N	\N
5	3	Juan Perez	002-000000000000000000	Soles	\N	\N
6	3	Juan Perez	009-000000000000000000	D├│lares	\N	\N
\.


--
-- Data for Name: banks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.banks (id, name, created_at, updated_at) FROM stdin;
1	Banco Interbank	\N	\N
2	Banco Scotiabank	\N	\N
3	Bando de Cr├®dito BCP	\N	\N
\.


--
-- Data for Name: batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.batches (id, inventory_id, code, due_date, stock, unit_price, created_at, updated_at) FROM stdin;
53	44	BATCH1980	2025-04-15	0	56.00	2024-09-07 15:28:00	2024-10-29 11:42:00
79	62	BATCH3859	2025-03-15	0	23.00	2024-09-09 15:25:00	2024-11-04 11:02:00
10	10	BATCH1042	2025-03-15	11	63.00	2024-09-14 11:48:00	2024-11-05 10:10:00
42	37	BATCH3804	2025-05-15	0	36.00	2024-09-30 09:55:00	2024-10-07 11:24:00
82	7	BATCH1183	2025-06-15	52	76.00	2024-09-22 10:11:00	2024-09-22 10:11:00
75	10	BATCH9305	2025-05-15	0	84.00	2024-09-20 09:36:00	2024-11-02 15:20:00
16	16	BATCH4734	2025-02-15	0	37.00	2024-09-27 08:36:00	2024-09-24 12:14:00
51	43	BATCH4402	2025-03-15	28	81.00	2024-09-07 15:28:00	2024-09-15 12:58:00
21	21	BATCH1111	2025-02-15	0	35.00	2024-09-11 14:23:00	2024-11-16 14:42:00
31	29	BATCH9519	2025-05-15	10	69.00	2024-09-14 14:41:00	2024-11-19 11:23:00
76	60	BATCH7729	2025-06-15	0	26.00	2024-09-09 15:25:00	2024-09-07 14:50:00
8	8	BATCH8442	2025-04-15	0	55.00	2024-09-14 11:48:00	2024-09-05 14:07:00
1375	269	BATCH7147	2025-03-15	30	76.00	2024-11-15 11:05:00	2024-11-23 16:30:00
59	14	BATCH9750	2025-05-15	0	87.00	2024-09-24 15:02:00	2024-10-31 10:16:00
78	49	BATCH6759	2025-02-15	52	35.00	2024-09-09 15:25:00	2024-11-07 12:42:00
69	56	BATCH8284	2025-05-15	9	61.00	2024-09-13 13:37:00	2024-11-02 08:48:00
14	14	BATCH2322	2025-04-15	0	86.00	2024-09-13 15:58:00	2024-10-03 15:09:00
18	18	BATCH8166	2025-02-15	0	63.00	2024-09-27 08:36:00	2024-09-01 14:50:00
11	11	BATCH4170	2025-02-15	0	94.00	2024-09-13 15:58:00	2024-11-06 12:56:00
4	4	BATCH2910	2025-01-15	33	86.00	2024-09-06 10:52:00	2024-10-07 11:24:00
30	20	BATCH4223	2025-06-15	61	85.00	2024-09-09 14:41:00	2024-11-27 10:27:00
45	39	BATCH4228	2025-04-15	0	20.00	2024-09-30 09:55:00	2024-09-08 14:09:00
26	25	BATCH1256	2025-04-15	0	74.00	2024-09-09 14:41:00	2024-09-13 12:01:00
39	35	BATCH9338	2025-04-15	0	38.00	2024-09-18 12:22:00	2024-10-28 15:53:00
27	26	BATCH6721	2025-02-15	0	31.00	2024-09-09 14:41:00	2024-10-26 10:45:00
24	24	BATCH8776	2025-01-15	15	58.00	2024-09-11 14:23:00	2024-11-11 10:58:00
7	7	BATCH7588	2025-06-15	47	99.00	2024-09-14 11:48:00	2024-09-26 09:44:00
83	65	BATCH8370	2025-01-15	0	36.00	2024-09-22 10:11:00	2024-09-12 13:48:00
35	33	BATCH8987	2025-03-15	66	50.00	2024-09-14 14:41:00	2024-10-15 10:21:00
34	32	BATCH3033	2025-04-15	0	59.00	2024-09-14 14:41:00	2024-09-21 08:25:00
43	38	BATCH9379	2025-05-15	0	58.00	2024-09-30 09:55:00	2024-09-13 13:37:00
56	46	BATCH6351	2025-04-15	0	82.00	2024-09-24 15:02:00	2024-11-09 11:14:00
57	13	BATCH7450	2025-06-15	21	88.00	2024-09-24 15:02:00	2024-10-07 09:27:00
52	7	BATCH9424	2025-02-15	33	41.00	2024-09-07 15:28:00	2024-09-26 16:25:00
72	58	BATCH7567	2025-05-15	0	85.00	2024-09-20 09:36:00	2024-09-12 13:48:00
88	70	BATCH1565	2025-03-15	0	26.00	2024-09-05 14:29:00	2024-10-03 14:22:00
62	50	BATCH4361	2025-05-15	0	65.00	2024-09-07 14:30:00	2024-09-27 16:35:00
17	17	BATCH5361	2025-06-15	0	22.00	2024-09-27 08:36:00	2024-09-18 12:48:00
74	9	BATCH9228	2025-01-15	49	81.00	2024-09-20 09:36:00	2024-11-12 14:02:00
5	5	BATCH6716	2025-06-15	61	69.00	2024-09-06 10:52:00	2024-09-27 13:35:00
15	15	BATCH5694	2025-01-15	0	49.00	2024-09-13 15:58:00	2024-10-20 14:43:00
54	45	BATCH9628	2025-01-15	0	89.00	2024-09-07 15:28:00	2024-11-20 15:25:00
81	64	BATCH2352	2025-04-15	61	49.00	2024-09-22 10:11:00	2024-10-21 11:42:00
20	20	BATCH3487	2025-04-15	81	90.00	2024-09-27 08:36:00	2024-10-16 13:19:00
22	22	BATCH4508	2025-03-15	0	52.00	2024-09-11 14:23:00	2024-10-12 09:34:00
28	27	BATCH5252	2025-01-15	0	93.00	2024-09-09 14:41:00	2024-10-20 08:07:00
9	9	BATCH1417	2025-06-15	0	35.00	2024-09-14 11:48:00	2024-09-08 15:30:00
6	6	BATCH5110	2025-02-15	34	33.00	2024-09-14 11:48:00	2024-11-24 12:03:00
1	1	BATCH4025	2025-02-15	0	25.00	2024-09-06 10:52:00	2024-11-21 16:01:00
63	51	BATCH7006	2025-03-15	0	24.00	2024-09-07 14:30:00	2024-09-12 13:02:00
2	2	BATCH4503	2025-04-15	0	76.00	2024-09-06 10:52:00	2024-09-24 14:42:00
3	3	BATCH1030	2025-02-15	0	74.00	2024-09-06 10:52:00	2024-09-24 09:25:00
47	4	BATCH3458	2025-04-15	68	37.00	2024-09-10 09:01:00	2024-10-10 15:52:00
23	23	BATCH5765	2025-03-15	0	33.00	2024-09-11 14:23:00	2024-10-28 12:55:00
40	4	BATCH7845	2025-04-15	9	24.00	2024-09-18 12:22:00	2024-09-24 09:25:00
87	69	BATCH7638	2025-01-15	0	83.00	2024-09-05 14:29:00	2024-09-22 12:52:00
80	63	BATCH5659	2025-02-15	0	50.00	2024-09-09 15:25:00	2024-10-04 08:21:00
84	66	BATCH5186	2025-03-15	0	44.00	2024-09-22 10:11:00	2024-09-19 14:57:00
77	61	BATCH6905	2025-03-15	0	40.00	2024-09-09 15:25:00	2024-10-12 08:24:00
48	41	BATCH5430	2025-02-15	0	64.00	2024-09-10 09:01:00	2024-10-12 09:34:00
38	22	BATCH3491	2025-04-15	0	33.00	2024-09-18 12:22:00	2024-09-24 09:25:00
85	67	BATCH3291	2025-02-15	0	42.00	2024-09-22 10:11:00	2024-11-20 15:25:00
71	57	BATCH5445	2025-05-15	0	96.00	2024-09-20 09:36:00	2024-09-18 12:11:00
44	5	BATCH9561	2025-03-15	21	33.00	2024-09-30 09:55:00	2024-10-24 10:04:00
49	24	BATCH9162	2025-05-15	80	76.00	2024-09-10 09:01:00	2024-10-07 12:08:00
60	48	BATCH4125	2025-06-15	0	24.00	2024-09-24 15:02:00	2024-11-24 10:02:00
61	49	BATCH1202	2025-02-15	0	95.00	2024-09-07 14:30:00	2024-10-13 16:02:00
19	19	BATCH9512	2025-05-15	0	44.00	2024-09-27 08:36:00	2024-09-05 11:06:00
25	5	BATCH3831	2025-04-15	15	100.00	2024-09-11 14:23:00	2024-10-19 15:14:00
58	47	BATCH6111	2025-02-15	0	66.00	2024-09-24 15:02:00	2024-10-31 10:16:00
29	28	BATCH8839	2025-04-15	0	66.00	2024-09-09 14:41:00	2024-10-26 12:31:00
70	48	BATCH3653	2025-02-15	44	24.00	2024-09-13 13:37:00	2024-10-11 15:35:00
13	13	BATCH3606	2025-01-15	37	75.00	2024-09-13 15:58:00	2024-11-06 12:56:00
37	1	BATCH5105	2025-04-15	26	97.00	2024-09-18 12:22:00	2024-10-07 12:08:00
67	54	BATCH9361	2025-06-15	0	54.00	2024-09-13 13:37:00	2024-11-27 12:04:00
64	33	BATCH6690	2025-04-15	0	73.00	2024-09-07 14:30:00	2024-10-31 09:42:00
86	68	BATCH6730	2025-02-15	0	59.00	2024-09-05 14:29:00	2024-10-23 13:53:00
41	36	BATCH4414	2025-05-15	0	86.00	2024-09-30 09:55:00	2024-10-24 10:04:00
32	30	BATCH6140	2025-06-15	0	40.00	2024-09-14 14:41:00	2024-11-07 08:03:00
12	12	BATCH4896	2025-06-15	1	74.00	2024-09-13 15:58:00	2024-10-01 09:03:00
50	42	BATCH6300	2025-06-15	0	70.00	2024-09-10 09:01:00	2024-10-07 12:08:00
65	52	BATCH9860	2025-02-15	0	74.00	2024-09-07 14:30:00	2024-11-23 11:42:00
73	59	BATCH5821	2025-03-15	0	92.00	2024-09-20 09:36:00	2024-11-20 09:43:00
46	40	BATCH5158	2025-04-15	0	53.00	2024-09-10 09:01:00	2024-11-02 09:12:00
98	49	BATCH5706	2025-04-15	72	37.00	2024-09-04 09:40:00	2024-09-04 09:40:00
118	65	BATCH7676	2025-06-15	46	24.00	2024-09-02 12:50:00	2024-10-29 11:42:00
105	4	BATCH5989	2025-01-15	80	83.00	2024-09-16 10:33:00	2024-09-16 10:33:00
107	30	BATCH4434	2025-01-15	77	80.00	2024-09-21 15:49:00	2024-09-21 15:49:00
93	74	BATCH4273	2025-05-15	0	92.00	2024-09-13 12:24:00	2024-11-27 10:27:00
109	62	BATCH1212	2025-06-15	73	92.00	2024-09-21 15:49:00	2024-09-21 15:49:00
99	79	BATCH6777	2025-05-15	0	83.00	2024-09-04 09:40:00	2024-11-02 08:17:00
116	6	BATCH1335	2025-04-15	51	57.00	2024-09-02 12:50:00	2024-09-02 12:50:00
122	12	BATCH7362	2025-01-15	94	39.00	2024-09-29 14:56:00	2024-09-29 14:56:00
137	30	BATCH8268	2025-03-15	73	33.00	2024-09-25 13:22:00	2024-09-25 13:22:00
146	11	BATCH2556	2025-03-15	100	23.00	2024-09-02 13:42:00	2024-09-02 13:42:00
148	54	BATCH8054	2025-03-15	94	28.00	2024-09-02 13:42:00	2024-09-02 13:42:00
163	12	BATCH7657	2025-04-15	57	91.00	2024-09-05 13:39:00	2024-09-05 13:39:00
171	21	BATCH4052	2025-03-15	50	34.00	2024-09-10 08:19:00	2024-09-10 08:19:00
100	80	BATCH4375	2025-03-15	0	34.00	2024-09-04 09:40:00	2024-10-13 10:28:00
150	92	BATCH8349	2025-05-15	0	64.00	2024-09-02 13:42:00	2024-10-03 15:09:00
141	91	BATCH3869	2025-01-15	51	100.00	2024-09-03 10:18:00	2024-11-30 16:51:00
103	83	BATCH1765	2025-06-15	62	99.00	2024-09-16 10:33:00	2024-09-07 13:58:00
155	107	BATCH7614	2025-02-15	17	88.00	2024-09-21 11:06:00	2024-11-17 11:09:00
165	114	BATCH3995	2025-01-15	24	65.00	2024-09-05 13:39:00	2024-10-03 15:09:00
166	60	BATCH5086	2025-02-15	0	50.00	2024-09-11 10:33:00	2024-10-19 13:33:00
134	98	BATCH1988	2025-03-15	0	83.00	2024-09-27 08:58:00	2024-09-01 09:32:00
130	76	BATCH6932	2025-02-15	0	62.00	2024-09-18 10:56:00	2024-09-18 12:48:00
176	118	BATCH7850	2025-06-15	0	68.00	2024-09-08 16:53:00	2024-10-24 14:21:00
139	102	BATCH8192	2025-05-15	11	58.00	2024-09-25 13:22:00	2024-11-12 12:07:00
159	111	BATCH7548	2025-05-15	0	82.00	2024-09-18 16:05:00	2024-09-12 11:15:00
143	46	BATCH4493	2025-04-15	0	50.00	2024-09-03 10:18:00	2024-11-06 12:56:00
127	17	BATCH4383	2025-02-15	0	48.00	2024-09-18 10:56:00	2024-10-09 08:34:00
160	112	BATCH8058	2025-01-15	3	45.00	2024-09-18 16:05:00	2024-10-24 14:19:00
172	35	BATCH8837	2025-01-15	0	43.00	2024-09-10 08:19:00	2024-10-24 10:04:00
115	89	BATCH4213	2025-06-15	0	60.00	2024-09-25 15:52:00	2024-10-11 09:46:00
173	116	BATCH8740	2025-04-15	0	33.00	2024-09-10 08:19:00	2024-09-13 13:37:00
142	53	BATCH6086	2025-06-15	34	88.00	2024-09-03 10:18:00	2024-11-02 08:48:00
135	99	BATCH5127	2025-06-15	0	86.00	2024-09-27 08:58:00	2024-11-27 11:52:00
102	82	BATCH3174	2025-04-15	0	37.00	2024-09-16 10:33:00	2024-09-29 10:42:00
125	92	BATCH8418	2025-06-15	0	55.00	2024-09-29 14:56:00	2024-11-06 12:56:00
114	88	BATCH8180	2025-03-15	0	88.00	2024-09-25 15:52:00	2024-11-23 13:12:00
168	31	BATCH1578	2025-02-15	0	96.00	2024-09-11 10:33:00	2024-10-05 11:03:00
153	75	BATCH7480	2025-03-15	70	48.00	2024-09-21 11:06:00	2024-09-13 12:01:00
96	77	BATCH8960	2025-02-15	0	100.00	2024-09-04 09:40:00	2024-11-23 11:42:00
147	104	BATCH2353	2025-02-15	0	50.00	2024-09-02 13:42:00	2024-10-16 10:10:00
140	32	BATCH7587	2025-01-15	0	40.00	2024-09-25 13:22:00	2024-11-26 16:23:00
128	74	BATCH7626	2025-03-15	2	84.00	2024-09-18 10:56:00	2024-11-14 15:27:00
167	115	BATCH1489	2025-03-15	0	84.00	2024-09-11 10:33:00	2024-10-13 16:02:00
174	38	BATCH6271	2025-02-15	0	80.00	2024-09-10 08:19:00	2024-11-21 16:01:00
175	117	BATCH2247	2025-03-15	0	43.00	2024-09-10 08:19:00	2024-10-12 09:34:00
152	93	BATCH6286	2025-04-15	0	61.00	2024-09-21 11:06:00	2024-10-28 13:22:00
112	86	BATCH9830	2025-01-15	0	61.00	2024-09-25 15:52:00	2024-09-06 15:02:00
157	109	BATCH5630	2025-06-15	0	71.00	2024-09-18 16:05:00	2024-10-13 09:51:00
161	91	BATCH1016	2025-01-15	0	49.00	2024-09-05 13:39:00	2024-11-27 12:04:00
138	101	BATCH5000	2025-02-15	0	95.00	2024-09-25 13:22:00	2024-09-07 14:50:00
120	90	BATCH2395	2025-01-15	0	39.00	2024-09-02 12:50:00	2024-11-24 12:03:00
149	105	BATCH9726	2025-06-15	0	99.00	2024-09-02 13:42:00	2024-11-25 12:33:00
123	14	BATCH3706	2025-03-15	50	86.00	2024-09-29 14:56:00	2024-11-02 14:33:00
145	55	BATCH8261	2025-06-15	0	33.00	2024-09-03 10:18:00	2024-11-06 12:56:00
169	101	BATCH8826	2025-01-15	0	27.00	2024-09-11 10:33:00	2024-11-04 11:02:00
89	71	BATCH6675	2025-02-15	0	22.00	2024-09-05 14:29:00	2024-09-06 08:40:00
162	113	BATCH2505	2025-01-15	59	94.00	2024-09-05 13:39:00	2024-11-14 16:33:00
113	87	BATCH9800	2025-04-15	0	61.00	2024-09-25 15:52:00	2024-11-11 15:55:00
170	32	BATCH2586	2025-06-15	0	90.00	2024-09-11 10:33:00	2024-11-07 08:03:00
91	73	BATCH2219	2025-04-15	0	23.00	2024-09-13 12:24:00	2024-09-18 12:48:00
151	106	BATCH4814	2025-01-15	0	54.00	2024-09-21 11:06:00	2024-10-16 13:19:00
136	100	BATCH5350	2025-01-15	0	23.00	2024-09-25 13:22:00	2024-09-28 08:19:00
90	72	BATCH9784	2025-04-15	0	70.00	2024-09-05 14:29:00	2024-10-22 11:06:00
92	17	BATCH3038	2025-05-15	7	87.00	2024-09-13 12:24:00	2024-11-14 15:27:00
164	53	BATCH1070	2025-02-15	91	34.00	2024-09-05 13:39:00	2024-10-20 10:46:00
106	84	BATCH3853	2025-02-15	0	84.00	2024-09-21 15:49:00	2024-11-04 11:02:00
55	9	BATCH7515	2025-02-15	0	55.00	2024-09-07 15:28:00	2024-10-06 08:23:00
129	94	BATCH1291	2025-01-15	0	31.00	2024-09-18 10:56:00	2024-11-20 15:52:00
124	15	BATCH2183	2025-02-15	0	29.00	2024-09-29 14:56:00	2024-11-03 09:37:00
94	75	BATCH5794	2025-04-15	22	50.00	2024-09-13 12:24:00	2024-10-13 09:40:00
97	78	BATCH1463	2025-02-15	0	83.00	2024-09-04 09:40:00	2024-11-14 10:48:00
121	91	BATCH1574	2025-05-15	19	92.00	2024-09-29 14:56:00	2024-10-16 10:10:00
104	3	BATCH4471	2025-01-15	23	60.00	2024-09-16 10:33:00	2024-11-25 15:08:00
110	80	BATCH1038	2025-01-15	0	36.00	2024-09-21 15:49:00	2024-11-04 11:02:00
95	76	BATCH6434	2025-06-15	0	81.00	2024-09-13 12:24:00	2024-11-12 09:19:00
119	45	BATCH4668	2025-04-15	51	21.00	2024-09-02 12:50:00	2024-11-29 16:44:00
144	103	BATCH7419	2025-06-15	0	92.00	2024-09-03 10:18:00	2024-10-03 15:09:00
126	93	BATCH4039	2025-01-15	0	46.00	2024-09-18 10:56:00	2024-10-11 10:34:00
131	95	BATCH1165	2025-04-15	0	38.00	2024-09-27 08:58:00	2024-11-27 11:31:00
132	96	BATCH9062	2025-03-15	0	23.00	2024-09-27 08:58:00	2024-11-05 14:45:00
117	57	BATCH5246	2025-01-15	0	44.00	2024-09-02 12:50:00	2024-11-12 16:30:00
158	110	BATCH3745	2025-04-15	0	38.00	2024-09-18 16:05:00	2024-11-09 10:01:00
156	108	BATCH8790	2025-01-15	0	59.00	2024-09-18 16:05:00	2024-11-27 13:58:00
179	99	BATCH8527	2025-04-15	72	87.00	2024-09-08 16:53:00	2024-09-08 16:53:00
183	13	BATCH4288	2025-06-15	93	57.00	2024-09-17 10:24:00	2024-09-17 10:24:00
185	92	BATCH2628	2025-02-15	74	63.00	2024-09-17 10:24:00	2024-09-17 10:24:00
186	7	BATCH9042	2025-02-15	52	68.00	2024-09-21 16:16:00	2024-09-21 16:16:00
188	123	BATCH6026	2025-06-15	0	96.00	2024-09-21 16:16:00	2024-10-29 11:42:00
191	11	BATCH7488	2025-06-15	72	70.00	2024-09-09 09:15:00	2024-09-09 09:15:00
193	13	BATCH5646	2025-03-15	88	92.00	2024-09-09 09:15:00	2024-09-09 09:15:00
197	77	BATCH6853	2025-03-15	89	49.00	2024-09-20 16:22:00	2024-09-20 16:22:00
211	1	BATCH9792	2025-06-15	79	64.00	2024-09-14 10:16:00	2024-09-14 10:16:00
212	21	BATCH8245	2025-03-15	89	72.00	2024-09-14 10:16:00	2024-09-14 10:16:00
214	4	BATCH9738	2025-01-15	94	23.00	2024-09-14 10:16:00	2024-09-14 10:16:00
220	5	BATCH4327	2025-06-15	79	65.00	2024-09-15 09:11:00	2024-09-15 09:11:00
225	110	BATCH5322	2025-05-15	81	56.00	2024-09-10 08:58:00	2024-09-10 08:58:00
236	74	BATCH2831	2025-05-15	73	83.00	2024-09-16 10:43:00	2024-09-16 10:43:00
249	77	BATCH8807	2025-06-15	53	63.00	2024-09-18 08:55:00	2024-09-18 08:55:00
256	21	BATCH7102	2025-04-15	58	51.00	2024-09-11 13:27:00	2024-09-11 13:27:00
259	4	BATCH6763	2025-06-15	89	75.00	2024-09-11 13:27:00	2024-09-11 13:27:00
228	119	BATCH3753	2025-05-15	39	41.00	2024-09-02 13:22:00	2024-11-27 11:52:00
195	127	BATCH6336	2025-05-15	0	44.00	2024-09-09 09:15:00	2024-10-16 10:10:00
223	138	BATCH5594	2025-01-15	0	30.00	2024-09-10 08:58:00	2024-09-11 09:06:00
221	136	BATCH5589	2025-06-15	0	50.00	2024-09-10 08:58:00	2024-09-26 12:52:00
224	139	BATCH1181	2025-03-15	0	86.00	2024-09-10 08:58:00	2024-09-14 10:50:00
218	135	BATCH1056	2025-04-15	0	95.00	2024-09-15 09:11:00	2024-10-28 14:28:00
250	51	BATCH9769	2025-04-15	0	81.00	2024-09-18 08:55:00	2024-10-22 15:19:00
222	137	BATCH6419	2025-06-15	0	22.00	2024-09-10 08:58:00	2024-11-14 09:20:00
240	150	BATCH4122	2025-04-15	0	37.00	2024-09-16 10:43:00	2024-10-26 12:31:00
202	130	BATCH5382	2025-02-15	3	24.00	2024-09-28 10:54:00	2024-10-07 11:08:00
257	35	BATCH1524	2025-03-15	14	37.00	2024-09-11 13:27:00	2024-11-25 15:08:00
231	144	BATCH2278	2025-01-15	33	71.00	2024-09-22 15:53:00	2024-11-23 13:12:00
254	143	BATCH9849	2025-02-15	0	24.00	2024-09-23 09:50:00	2024-11-21 12:20:00
239	28	BATCH4659	2025-02-15	30	27.00	2024-09-16 10:43:00	2024-11-01 13:01:00
190	125	BATCH3248	2025-01-15	0	86.00	2024-09-21 16:16:00	2024-11-12 14:02:00
180	120	BATCH1653	2025-02-15	23	45.00	2024-09-08 16:53:00	2024-11-13 09:07:00
258	23	BATCH6693	2025-01-15	0	96.00	2024-09-11 13:27:00	2024-10-07 11:24:00
226	140	BATCH1997	2025-06-15	0	97.00	2024-09-02 13:22:00	2024-11-27 11:52:00
237	149	BATCH2305	2025-02-15	0	47.00	2024-09-16 10:43:00	2024-10-17 08:53:00
232	145	BATCH3196	2025-06-15	0	90.00	2024-09-22 15:53:00	2024-11-08 12:21:00
208	19	BATCH6484	2025-03-15	0	66.00	2024-09-02 13:13:00	2024-10-11 10:34:00
203	68	BATCH5272	2025-01-15	0	40.00	2024-09-28 10:54:00	2024-11-06 16:22:00
204	131	BATCH8066	2025-02-15	0	73.00	2024-09-28 10:54:00	2024-09-04 08:18:00
235	148	BATCH3659	2025-02-15	0	22.00	2024-09-22 15:53:00	2024-09-17 10:20:00
251	155	BATCH5071	2025-06-15	0	23.00	2024-09-23 09:50:00	2024-10-29 11:10:00
206	16	BATCH4061	2025-06-15	0	31.00	2024-09-02 13:13:00	2024-09-15 08:27:00
245	153	BATCH1115	2025-03-15	0	81.00	2024-09-02 15:46:00	2024-10-23 11:44:00
181	121	BATCH9631	2025-02-15	26	88.00	2024-09-17 10:24:00	2024-11-09 11:14:00
213	37	BATCH1919	2025-04-15	32	92.00	2024-09-14 10:16:00	2024-11-25 15:08:00
262	130	BATCH3850	2025-02-15	52	98.00	2024-09-10 10:18:00	2024-10-19 10:00:00
242	151	BATCH4092	2025-02-15	0	67.00	2024-09-02 15:46:00	2024-09-03 15:17:00
261	159	BATCH2386	2025-01-15	0	24.00	2024-09-10 10:18:00	2024-09-22 12:52:00
229	142	BATCH6726	2025-06-15	27	62.00	2024-09-02 13:22:00	2024-11-29 13:16:00
210	133	BATCH1488	2025-04-15	0	58.00	2024-09-02 13:13:00	2024-10-16 13:19:00
227	141	BATCH2769	2025-05-15	0	38.00	2024-09-02 13:22:00	2024-11-27 11:31:00
247	154	BATCH7416	2025-05-15	0	48.00	2024-09-18 08:55:00	2024-10-19 13:33:00
244	152	BATCH4685	2025-02-15	0	56.00	2024-09-02 15:46:00	2024-11-17 09:36:00
178	97	BATCH8159	2025-02-15	5	42.00	2024-09-08 16:53:00	2024-11-05 14:45:00
238	27	BATCH9632	2025-02-15	0	77.00	2024-09-16 10:43:00	2024-11-01 13:01:00
255	158	BATCH9859	2025-02-15	0	31.00	2024-09-23 09:50:00	2024-10-28 14:07:00
209	28	BATCH7434	2025-06-15	11	22.00	2024-09-02 13:13:00	2024-11-20 15:52:00
246	84	BATCH1652	2025-06-15	42	41.00	2024-09-18 08:55:00	2024-11-19 11:23:00
264	69	BATCH9601	2025-05-15	8	86.00	2024-09-10 10:18:00	2024-11-21 15:34:00
207	132	BATCH7920	2025-04-15	0	82.00	2024-09-02 13:13:00	2024-10-05 13:56:00
243	109	BATCH8416	2025-02-15	52	49.00	2024-09-02 15:46:00	2024-10-11 14:38:00
200	128	BATCH2833	2025-05-15	0	74.00	2024-09-20 16:22:00	2024-11-14 12:50:00
205	69	BATCH1216	2025-06-15	6	100.00	2024-09-28 10:54:00	2024-11-10 14:43:00
177	119	BATCH5485	2025-02-15	17	93.00	2024-09-08 16:53:00	2024-10-29 11:10:00
199	78	BATCH1541	2025-01-15	64	90.00	2024-09-20 16:22:00	2024-11-07 08:03:00
201	129	BATCH9132	2025-05-15	51	76.00	2024-09-28 10:54:00	2024-11-21 15:34:00
182	104	BATCH9803	2025-02-15	24	24.00	2024-09-17 10:24:00	2024-11-02 08:48:00
241	137	BATCH2647	2025-02-15	0	54.00	2024-09-02 15:46:00	2024-10-24 11:44:00
253	157	BATCH1534	2025-05-15	0	20.00	2024-09-23 09:50:00	2024-10-29 11:10:00
187	122	BATCH5628	2025-04-15	0	99.00	2024-09-21 16:16:00	2024-11-03 15:48:00
194	47	BATCH9581	2025-04-15	2	31.00	2024-09-09 09:15:00	2024-11-24 10:02:00
252	156	BATCH3219	2025-04-15	0	38.00	2024-09-23 09:50:00	2024-11-16 09:23:00
248	31	BATCH3770	2025-06-15	0	43.00	2024-09-18 08:55:00	2024-11-08 13:24:00
233	146	BATCH4017	2025-03-15	0	66.00	2024-09-22 15:53:00	2024-11-27 13:03:00
184	105	BATCH6015	2025-06-15	0	69.00	2024-09-17 10:24:00	2024-11-06 12:47:00
192	126	BATCH8976	2025-04-15	0	73.00	2024-09-09 09:15:00	2024-11-30 16:51:00
198	61	BATCH3181	2025-03-15	0	91.00	2024-09-20 16:22:00	2024-11-07 12:42:00
230	143	BATCH7291	2025-04-15	31	87.00	2024-09-02 13:22:00	2024-11-23 16:30:00
217	22	BATCH3877	2025-05-15	40	83.00	2024-09-15 09:11:00	2024-11-11 10:58:00
196	60	BATCH7946	2025-01-15	13	46.00	2024-09-20 16:22:00	2024-11-07 12:42:00
234	147	BATCH1500	2025-01-15	0	95.00	2024-09-22 15:53:00	2024-11-07 12:05:00
216	36	BATCH9337	2025-01-15	30	39.00	2024-09-15 09:11:00	2024-11-18 16:54:00
219	41	BATCH6635	2025-04-15	48	34.00	2024-09-15 09:11:00	2024-11-18 16:54:00
266	84	BATCH5003	2025-02-15	100	37.00	2024-09-01 15:00:00	2024-09-01 15:00:00
267	29	BATCH8557	2025-02-15	50	97.00	2024-09-01 15:00:00	2024-09-01 15:00:00
269	62	BATCH4299	2025-05-15	50	20.00	2024-09-01 15:00:00	2024-09-01 15:00:00
271	108	BATCH6244	2025-03-15	82	21.00	2024-09-13 16:49:00	2024-09-13 16:49:00
291	64	BATCH3116	2025-01-15	55	93.00	2024-09-19 10:59:00	2024-09-19 10:59:00
295	67	BATCH6583	2025-01-15	51	55.00	2024-09-19 10:59:00	2024-09-19 10:59:00
297	77	BATCH5300	2025-06-15	52	99.00	2024-09-14 09:20:00	2024-09-14 09:20:00
298	102	BATCH3208	2025-03-15	66	59.00	2024-09-14 09:20:00	2024-09-14 09:20:00
299	32	BATCH9690	2025-02-15	73	100.00	2024-09-14 09:20:00	2024-09-14 09:20:00
300	52	BATCH6291	2025-04-15	76	72.00	2024-09-14 09:20:00	2024-09-14 09:20:00
310	10	BATCH1546	2025-02-15	71	46.00	2024-09-10 13:47:00	2024-09-10 13:47:00
316	166	BATCH2344	2025-02-15	71	75.00	2024-09-04 16:08:00	2024-09-04 16:08:00
328	30	BATCH2939	2025-06-15	62	65.00	2024-09-15 10:05:00	2024-09-15 10:05:00
333	35	BATCH7669	2025-06-15	53	57.00	2024-09-04 13:31:00	2024-09-04 13:31:00
334	83	BATCH1847	2025-01-15	55	33.00	2024-09-04 13:31:00	2024-09-04 13:31:00
335	5	BATCH1749	2025-05-15	81	99.00	2024-09-04 13:31:00	2024-09-04 13:31:00
330	188	BATCH1108	2025-02-15	0	36.00	2024-09-15 10:05:00	2024-10-05 11:03:00
318	185	BATCH8548	2025-06-15	30	79.00	2024-09-04 16:08:00	2024-11-10 14:43:00
344	174	BATCH7959	2025-06-15	76	53.00	2024-09-02 13:08:00	2024-09-02 13:08:00
315	94	BATCH6344	2025-05-15	0	48.00	2024-09-24 16:04:00	2024-11-17 11:09:00
351	60	BATCH4907	2025-06-15	55	38.00	2024-09-01 09:17:00	2024-09-01 09:17:00
289	174	BATCH1784	2025-02-15	10	83.00	2024-09-17 14:47:00	2024-09-08 13:33:00
312	73	BATCH3162	2025-02-15	83	45.00	2024-09-24 16:04:00	2024-11-17 11:09:00
321	8	BATCH4966	2025-05-15	0	88.00	2024-09-27 10:12:00	2024-09-18 12:11:00
352	195	BATCH3083	2025-02-15	0	53.00	2024-09-01 09:17:00	2024-10-05 09:54:00
275	165	BATCH4397	2025-04-15	55	22.00	2024-09-13 16:49:00	2024-11-14 09:20:00
304	174	BATCH8813	2025-06-15	37	100.00	2024-09-03 10:21:00	2024-11-09 16:42:00
331	189	BATCH2622	2025-03-15	0	100.00	2024-09-04 13:31:00	2024-10-05 10:40:00
279	167	BATCH4175	2025-03-15	0	78.00	2024-09-16 11:47:00	2024-11-24 14:07:00
307	181	BATCH8975	2025-02-15	0	61.00	2024-09-10 13:47:00	2024-09-26 16:25:00
293	176	BATCH6461	2025-02-15	6	64.00	2024-09-19 10:59:00	2024-10-10 10:06:00
326	100	BATCH4930	2025-05-15	0	65.00	2024-09-15 10:05:00	2024-11-02 10:47:00
270	162	BATCH3913	2025-04-15	0	50.00	2024-09-01 15:00:00	2024-09-07 14:50:00
311	183	BATCH9311	2025-01-15	0	46.00	2024-09-24 16:04:00	2024-09-21 11:35:00
283	170	BATCH2839	2025-01-15	0	92.00	2024-09-20 16:45:00	2024-09-08 13:33:00
327	115	BATCH4226	2025-06-15	15	61.00	2024-09-15 10:05:00	2024-11-19 11:23:00
278	160	BATCH4274	2025-01-15	21	92.00	2024-09-16 11:47:00	2024-10-22 08:53:00
350	89	BATCH8799	2025-04-15	0	48.00	2024-09-08 12:03:00	2024-11-06 11:51:00
348	194	BATCH4807	2025-03-15	0	62.00	2024-09-08 12:03:00	2024-10-19 16:24:00
276	166	BATCH2553	2025-03-15	63	45.00	2024-09-16 11:47:00	2024-10-17 09:05:00
296	154	BATCH5749	2025-03-15	37	32.00	2024-09-14 09:20:00	2024-11-06 08:20:00
274	164	BATCH4184	2025-01-15	0	95.00	2024-09-13 16:49:00	2024-09-13 15:29:00
288	173	BATCH9901	2025-02-15	0	45.00	2024-09-17 14:47:00	2024-09-18 14:01:00
282	169	BATCH8167	2025-06-15	0	67.00	2024-09-20 16:45:00	2024-09-06 14:42:00
277	159	BATCH5179	2025-05-15	0	100.00	2024-09-16 11:47:00	2024-10-17 13:17:00
287	168	BATCH4931	2025-06-15	0	78.00	2024-09-17 14:47:00	2024-11-09 16:42:00
285	171	BATCH7667	2025-02-15	46	21.00	2024-09-20 16:45:00	2024-09-06 15:58:00
313	19	BATCH9480	2025-01-15	40	77.00	2024-09-24 16:04:00	2024-11-25 11:27:00
343	167	BATCH7084	2025-01-15	0	31.00	2024-09-02 13:08:00	2024-11-24 16:53:00
320	186	BATCH8022	2025-04-15	0	55.00	2024-09-04 16:08:00	2024-09-22 12:52:00
345	192	BATCH3544	2025-04-15	0	61.00	2024-09-02 13:08:00	2024-11-10 14:43:00
336	115	BATCH2009	2025-01-15	0	28.00	2024-09-18 15:03:00	2024-11-02 08:17:00
309	176	BATCH2068	2025-01-15	63	93.00	2024-09-10 13:47:00	2024-09-27 14:26:00
290	175	BATCH7712	2025-06-15	0	93.00	2024-09-17 14:47:00	2024-09-04 08:18:00
325	187	BATCH7775	2025-01-15	0	74.00	2024-09-27 10:12:00	2024-09-08 15:30:00
265	161	BATCH3861	2025-06-15	0	41.00	2024-09-10 10:18:00	2024-10-14 12:56:00
305	179	BATCH6814	2025-03-15	0	77.00	2024-09-03 10:21:00	2024-09-02 08:00:00
341	172	BATCH7199	2025-06-15	0	66.00	2024-09-02 13:08:00	2024-09-06 08:40:00
338	190	BATCH5894	2025-01-15	0	88.00	2024-09-18 15:03:00	2024-10-13 16:02:00
339	63	BATCH8104	2025-02-15	0	25.00	2024-09-18 15:03:00	2024-11-07 12:42:00
286	172	BATCH1624	2025-06-15	11	59.00	2024-09-17 14:47:00	2024-11-09 16:42:00
268	154	BATCH6138	2025-04-15	58	64.00	2024-09-01 15:00:00	2024-11-15 16:48:00
154	94	BATCH5317	2025-04-15	68	84.00	2024-09-21 11:06:00	2024-10-26 12:31:00
273	163	BATCH9819	2025-01-15	0	25.00	2024-09-13 16:49:00	2024-10-03 14:28:00
301	178	BATCH9216	2025-05-15	0	59.00	2024-09-03 10:21:00	2024-10-23 11:20:00
319	161	BATCH8458	2025-01-15	0	42.00	2024-09-04 16:08:00	2024-10-17 09:05:00
303	171	BATCH7230	2025-01-15	0	65.00	2024-09-03 10:21:00	2024-11-24 14:07:00
337	154	BATCH7182	2025-02-15	32	82.00	2024-09-18 15:03:00	2024-11-28 11:59:00
280	71	BATCH6948	2025-03-15	24	79.00	2024-09-16 11:47:00	2024-10-14 12:56:00
302	167	BATCH2038	2025-05-15	0	44.00	2024-09-03 10:21:00	2024-10-07 11:08:00
323	176	BATCH3077	2025-03-15	20	87.00	2024-09-27 10:12:00	2024-11-12 14:02:00
346	85	BATCH3823	2025-01-15	13	23.00	2024-09-08 12:03:00	2024-11-23 13:12:00
308	182	BATCH7478	2025-01-15	0	96.00	2024-09-10 13:47:00	2024-11-12 14:02:00
284	70	BATCH5323	2025-02-15	17	93.00	2024-09-20 16:45:00	2024-11-06 16:22:00
322	182	BATCH4563	2025-02-15	0	20.00	2024-09-27 10:12:00	2024-11-24 12:03:00
349	86	BATCH8089	2025-04-15	0	67.00	2024-09-08 12:03:00	2024-11-28 13:52:00
332	40	BATCH7771	2025-06-15	22	23.00	2024-09-04 13:31:00	2024-11-16 14:42:00
306	180	BATCH9494	2025-02-15	1	28.00	2024-09-10 13:47:00	2024-11-16 09:26:00
294	177	BATCH7956	2025-01-15	35	20.00	2024-09-19 10:59:00	2024-11-20 15:25:00
317	178	BATCH2005	2025-05-15	0	96.00	2024-09-04 16:08:00	2024-11-24 16:53:00
329	31	BATCH9759	2025-03-15	0	55.00	2024-09-15 10:05:00	2024-11-23 11:42:00
324	177	BATCH1615	2025-04-15	36	90.00	2024-09-27 10:12:00	2024-11-29 16:44:00
292	122	BATCH5501	2025-06-15	58	29.00	2024-09-19 10:59:00	2024-11-12 16:30:00
314	184	BATCH6954	2025-03-15	0	54.00	2024-09-24 16:04:00	2024-11-14 15:27:00
353	31	BATCH2945	2025-02-15	56	37.00	2024-09-01 09:17:00	2024-09-01 09:17:00
354	78	BATCH1052	2025-04-15	56	59.00	2024-09-01 09:17:00	2024-09-01 09:17:00
356	36	BATCH2019	2025-04-15	88	75.00	2024-09-18 11:17:00	2024-09-18 11:17:00
357	1	BATCH1865	2025-05-15	90	87.00	2024-09-18 11:17:00	2024-09-18 11:17:00
359	35	BATCH5081	2025-01-15	59	41.00	2024-09-18 11:17:00	2024-09-18 11:17:00
361	85	BATCH3228	2025-02-15	61	57.00	2024-09-23 11:00:00	2024-09-23 11:00:00
365	147	BATCH3756	2025-04-15	76	48.00	2024-09-23 11:00:00	2024-09-23 11:00:00
366	154	BATCH5750	2025-02-15	72	34.00	2024-09-14 10:58:00	2024-09-14 10:58:00
368	101	BATCH4513	2025-04-15	54	98.00	2024-09-14 10:58:00	2024-09-14 10:58:00
371	53	BATCH2557	2025-02-15	56	52.00	2024-09-25 10:22:00	2024-09-25 10:22:00
374	47	BATCH9044	2025-05-15	62	35.00	2024-09-25 10:22:00	2024-09-25 10:22:00
375	55	BATCH2047	2025-03-15	91	63.00	2024-09-25 10:22:00	2024-09-25 10:22:00
377	14	BATCH2313	2025-01-15	87	77.00	2024-09-29 16:10:00	2024-09-29 16:10:00
378	55	BATCH1900	2025-05-15	88	28.00	2024-09-29 16:10:00	2024-09-29 16:10:00
424	216	BATCH5171	2025-02-15	0	75.00	2024-09-13 16:26:00	2024-11-04 13:14:00
380	48	BATCH2403	2025-05-15	73	31.00	2024-09-29 16:10:00	2024-09-29 16:10:00
382	99	BATCH8848	2025-05-15	67	40.00	2024-09-29 14:55:00	2024-09-29 14:55:00
384	120	BATCH3091	2025-01-15	90	68.00	2024-09-29 14:55:00	2024-09-29 14:55:00
390	147	BATCH5581	2025-05-15	62	50.00	2024-09-08 13:16:00	2024-09-08 13:16:00
392	60	BATCH1023	2025-03-15	94	23.00	2024-09-03 08:45:00	2024-09-03 08:45:00
393	84	BATCH9571	2025-05-15	61	71.00	2024-09-03 08:45:00	2024-09-03 08:45:00
396	104	BATCH7564	2025-02-15	69	64.00	2024-09-24 13:48:00	2024-09-24 13:48:00
398	47	BATCH9444	2025-02-15	90	39.00	2024-09-24 13:48:00	2024-09-24 13:48:00
400	92	BATCH5973	2025-03-15	65	63.00	2024-09-24 13:48:00	2024-09-24 13:48:00
403	101	BATCH2059	2025-06-15	59	67.00	2024-09-01 09:04:00	2024-09-01 09:04:00
404	102	BATCH2315	2025-05-15	52	38.00	2024-09-01 09:04:00	2024-09-01 09:04:00
405	33	BATCH3951	2025-01-15	67	32.00	2024-09-01 09:04:00	2024-09-01 09:04:00
415	120	BATCH7016	2025-01-15	52	52.00	2024-09-21 16:52:00	2024-09-21 16:52:00
417	137	BATCH3424	2025-02-15	85	71.00	2024-09-04 16:17:00	2024-09-04 16:17:00
420	210	BATCH5633	2025-03-15	75	52.00	2024-09-04 16:17:00	2024-09-04 16:17:00
422	139	BATCH3440	2025-03-15	58	28.00	2024-09-13 16:26:00	2024-09-13 16:26:00
429	174	BATCH1643	2025-06-15	73	90.00	2024-09-25 10:34:00	2024-09-25 10:34:00
434	120	BATCH3969	2025-03-15	62	41.00	2024-09-03 12:26:00	2024-09-03 12:26:00
425	212	BATCH2491	2025-03-15	0	42.00	2024-09-13 16:26:00	2024-11-27 13:58:00
436	46	BATCH3202	2025-04-15	66	99.00	2024-09-06 15:03:00	2024-09-06 15:03:00
437	104	BATCH3468	2025-06-15	51	60.00	2024-09-06 15:03:00	2024-09-06 15:03:00
439	48	BATCH3330	2025-01-15	63	59.00	2024-09-06 15:03:00	2024-09-06 15:03:00
419	215	BATCH9643	2025-05-15	0	44.00	2024-09-04 16:17:00	2024-11-27 13:58:00
440	221	BATCH6517	2025-03-15	38	58.00	2024-09-06 15:03:00	2024-11-03 09:37:00
389	206	BATCH7512	2025-05-15	0	55.00	2024-09-08 13:16:00	2024-09-17 10:20:00
517	231	BATCH8871	2025-03-15	0	43.00	2024-10-04 11:23:00	2024-11-27 10:27:00
438	220	BATCH4748	2025-06-15	0	41.00	2024-09-06 15:03:00	2024-11-09 11:14:00
409	211	BATCH7473	2025-02-15	0	89.00	2024-09-26 13:16:00	2024-09-13 15:29:00
355	196	BATCH3704	2025-02-15	0	51.00	2024-09-01 09:17:00	2024-09-12 15:50:00
427	173	BATCH7797	2025-06-15	0	73.00	2024-09-25 10:34:00	2024-09-06 08:40:00
358	197	BATCH4739	2025-05-15	0	37.00	2024-09-18 11:17:00	2024-10-28 15:53:00
407	209	BATCH2319	2025-06-15	0	54.00	2024-09-26 13:16:00	2024-10-24 11:44:00
362	198	BATCH9701	2025-06-15	75	58.00	2024-09-23 11:00:00	2024-09-23 16:53:00
387	200	BATCH6457	2025-05-15	62	89.00	2024-09-08 13:16:00	2024-11-27 13:03:00
401	207	BATCH1168	2025-03-15	0	65.00	2024-09-01 09:04:00	2024-09-27 16:35:00
394	195	BATCH3567	2025-05-15	0	96.00	2024-09-03 08:45:00	2024-11-14 10:48:00
388	205	BATCH9430	2025-06-15	0	73.00	2024-09-08 13:16:00	2024-09-04 16:53:00
363	199	BATCH8007	2025-04-15	0	32.00	2024-09-23 11:00:00	2024-11-10 16:27:00
414	214	BATCH2364	2025-03-15	0	75.00	2024-09-21 16:52:00	2024-09-17 11:36:00
383	204	BATCH2786	2025-05-15	57	34.00	2024-09-29 14:55:00	2024-11-17 15:49:00
430	161	BATCH6684	2025-05-15	19	61.00	2024-09-25 10:34:00	2024-11-21 15:34:00
431	218	BATCH5748	2025-06-15	0	55.00	2024-09-03 12:26:00	2024-11-13 09:07:00
428	131	BATCH1515	2025-01-15	0	75.00	2024-09-25 10:34:00	2024-10-26 13:40:00
410	212	BATCH3150	2025-03-15	0	99.00	2024-09-26 13:16:00	2024-11-14 09:20:00
385	158	BATCH5261	2025-04-15	80	48.00	2024-09-29 14:55:00	2024-11-15 10:22:00
369	51	BATCH9320	2025-03-15	0	67.00	2024-09-14 10:58:00	2024-11-02 10:47:00
386	198	BATCH8915	2025-05-15	51	73.00	2024-09-08 13:16:00	2024-10-17 13:30:00
391	100	BATCH8748	2025-01-15	59	32.00	2024-09-03 08:45:00	2024-11-26 16:23:00
418	139	BATCH9955	2025-04-15	45	20.00	2024-09-04 16:17:00	2024-10-21 14:29:00
426	217	BATCH9232	2025-02-15	32	59.00	2024-09-25 10:34:00	2024-10-07 11:08:00
408	210	BATCH5162	2025-01-15	4	69.00	2024-09-26 13:16:00	2024-10-23 11:44:00
406	208	BATCH4416	2025-02-15	19	90.00	2024-09-26 13:16:00	2024-10-13 09:51:00
360	135	BATCH1634	2025-03-15	50	30.00	2024-09-18 11:17:00	2024-10-07 12:08:00
395	188	BATCH7623	2025-05-15	0	39.00	2024-09-03 08:45:00	2024-11-06 08:20:00
399	15	BATCH4411	2025-01-15	0	54.00	2024-09-24 13:48:00	2024-11-14 16:33:00
411	155	BATCH4281	2025-03-15	0	96.00	2024-09-21 16:52:00	2024-11-29 13:16:00
402	188	BATCH3650	2025-05-15	90	53.00	2024-09-01 09:04:00	2024-11-12 12:07:00
376	126	BATCH8347	2025-03-15	84	56.00	2024-09-29 16:10:00	2024-11-05 15:51:00
433	157	BATCH1352	2025-06-15	22	40.00	2024-09-03 12:26:00	2024-11-23 16:30:00
370	63	BATCH3439	2025-01-15	40	40.00	2024-09-14 10:58:00	2024-11-07 08:03:00
413	204	BATCH4429	2025-01-15	28	46.00	2024-09-21 16:52:00	2024-11-27 11:31:00
367	61	BATCH5216	2025-04-15	0	85.00	2024-09-14 10:58:00	2024-11-23 11:42:00
416	136	BATCH8035	2025-02-15	15	47.00	2024-09-04 16:17:00	2024-11-21 13:07:00
373	202	BATCH6109	2025-05-15	0	38.00	2024-09-25 10:22:00	2024-11-30 16:51:00
423	164	BATCH2545	2025-01-15	0	41.00	2024-09-13 16:26:00	2024-11-14 09:20:00
381	157	BATCH1824	2025-04-15	16	59.00	2024-09-29 14:55:00	2024-11-15 10:22:00
372	201	BATCH4227	2025-01-15	0	47.00	2024-09-25 10:22:00	2024-11-24 10:02:00
364	200	BATCH4825	2025-04-15	0	24.00	2024-09-23 11:00:00	2024-11-23 11:28:00
421	136	BATCH6149	2025-05-15	25	34.00	2024-09-13 16:26:00	2024-11-18 13:27:00
432	98	BATCH8860	2025-05-15	40	48.00	2024-09-03 12:26:00	2024-11-21 10:17:00
441	154	BATCH2362	2025-05-15	76	39.00	2024-09-12 16:56:00	2024-09-12 16:56:00
442	49	BATCH1804	2025-05-15	70	79.00	2024-09-12 16:56:00	2024-09-12 16:56:00
444	51	BATCH3880	2025-04-15	66	24.00	2024-09-12 16:56:00	2024-09-12 16:56:00
445	63	BATCH6394	2025-03-15	85	26.00	2024-09-12 16:56:00	2024-09-12 16:56:00
447	110	BATCH4121	2025-01-15	88	79.00	2024-09-09 10:54:00	2024-09-09 10:54:00
499	206	BATCH8224	2025-02-15	33	43.00	2024-10-02 11:17:00	2024-11-06 11:51:00
451	6	BATCH6186	2025-05-15	64	96.00	2024-09-29 11:38:00	2024-09-29 11:38:00
452	176	BATCH4950	2025-04-15	68	32.00	2024-09-29 11:38:00	2024-09-29 11:38:00
456	166	BATCH2296	2025-02-15	54	30.00	2024-09-12 11:21:00	2024-09-12 11:21:00
458	68	BATCH8434	2025-01-15	92	100.00	2024-09-12 11:21:00	2024-09-12 11:21:00
459	178	BATCH6231	2025-04-15	90	83.00	2024-09-12 11:21:00	2024-09-12 11:21:00
460	71	BATCH9712	2025-03-15	77	99.00	2024-09-12 11:21:00	2024-09-12 11:21:00
461	168	BATCH7791	2025-03-15	90	77.00	2024-09-23 09:53:00	2024-09-23 09:53:00
462	130	BATCH1658	2025-06-15	96	30.00	2024-09-23 09:53:00	2024-09-23 09:53:00
463	160	BATCH9961	2025-04-15	91	61.00	2024-09-23 09:53:00	2024-09-23 09:53:00
465	70	BATCH2814	2025-05-15	93	23.00	2024-09-23 09:53:00	2024-09-23 09:53:00
468	176	BATCH9002	2025-05-15	77	67.00	2024-09-08 11:42:00	2024-09-08 11:42:00
470	9	BATCH6257	2025-04-15	98	35.00	2024-09-08 11:42:00	2024-09-08 11:42:00
471	121	BATCH6069	2025-05-15	66	83.00	2024-10-02 10:04:00	2024-10-02 10:04:00
472	126	BATCH8723	2025-05-15	72	99.00	2024-10-02 10:04:00	2024-10-02 10:04:00
473	53	BATCH7069	2025-02-15	81	46.00	2024-10-02 10:04:00	2024-10-02 10:04:00
474	46	BATCH5878	2025-03-15	50	74.00	2024-10-02 10:04:00	2024-10-02 10:04:00
475	92	BATCH4565	2025-05-15	76	20.00	2024-10-02 10:04:00	2024-10-02 10:04:00
476	29	BATCH1418	2025-06-15	58	57.00	2024-10-06 12:54:00	2024-10-06 12:54:00
477	188	BATCH6990	2025-01-15	94	26.00	2024-10-06 12:54:00	2024-10-06 12:54:00
478	78	BATCH8666	2025-06-15	65	46.00	2024-10-06 12:54:00	2024-10-06 12:54:00
479	101	BATCH3301	2025-02-15	70	46.00	2024-10-06 12:54:00	2024-10-06 12:54:00
481	115	BATCH6626	2025-04-15	55	88.00	2024-10-29 13:32:00	2024-10-29 13:32:00
482	31	BATCH8556	2025-03-15	59	35.00	2024-10-29 13:32:00	2024-10-29 13:32:00
483	49	BATCH5534	2025-02-15	53	49.00	2024-10-29 13:32:00	2024-10-29 13:32:00
484	190	BATCH6040	2025-02-15	57	70.00	2024-10-29 13:32:00	2024-10-29 13:32:00
485	79	BATCH6644	2025-05-15	100	90.00	2024-10-29 13:32:00	2024-10-29 13:32:00
488	73	BATCH2606	2025-03-15	79	69.00	2024-10-24 11:51:00	2024-10-24 11:51:00
490	26	BATCH5288	2025-02-15	71	46.00	2024-10-24 11:51:00	2024-10-24 11:51:00
491	100	BATCH9970	2025-05-15	82	44.00	2024-10-24 11:07:00	2024-10-24 11:07:00
492	154	BATCH2187	2025-06-15	83	70.00	2024-10-24 11:07:00	2024-10-24 11:07:00
494	102	BATCH9026	2025-01-15	96	58.00	2024-10-24 11:07:00	2024-10-24 11:07:00
497	144	BATCH7537	2025-02-15	71	54.00	2024-10-02 11:17:00	2024-10-02 11:17:00
502	201	BATCH9088	2025-04-15	99	52.00	2024-10-11 12:51:00	2024-10-11 12:51:00
504	55	BATCH6868	2025-01-15	69	85.00	2024-10-11 12:51:00	2024-10-11 12:51:00
506	57	BATCH7240	2025-05-15	57	35.00	2024-10-13 08:01:00	2024-10-13 08:01:00
507	180	BATCH3934	2025-02-15	50	46.00	2024-10-13 08:01:00	2024-10-13 08:01:00
509	176	BATCH8822	2025-04-15	51	27.00	2024-10-13 08:01:00	2024-10-13 08:01:00
510	67	BATCH9069	2025-01-15	62	57.00	2024-10-13 08:01:00	2024-10-13 08:01:00
511	144	BATCH5253	2025-04-15	86	31.00	2024-10-29 12:12:00	2024-10-29 12:12:00
519	184	BATCH7635	2025-01-15	95	94.00	2024-10-04 11:23:00	2024-10-04 11:23:00
520	107	BATCH8815	2025-03-15	66	24.00	2024-10-04 11:23:00	2024-10-04 11:23:00
522	65	BATCH5218	2025-01-15	79	78.00	2024-10-17 09:42:00	2024-10-17 09:42:00
524	45	BATCH1306	2025-01-15	83	58.00	2024-10-17 09:42:00	2024-10-17 09:42:00
525	125	BATCH2569	2025-05-15	91	41.00	2024-10-17 09:42:00	2024-10-17 09:42:00
526	100	BATCH3018	2025-06-15	58	75.00	2024-10-11 10:17:00	2024-10-11 10:17:00
528	188	BATCH4401	2025-06-15	97	55.00	2024-10-11 10:17:00	2024-10-11 10:17:00
505	127	BATCH4083	2025-01-15	5	71.00	2024-10-11 12:51:00	2024-11-24 10:02:00
397	202	BATCH1706	2025-03-15	0	85.00	2024-09-24 13:48:00	2024-10-19 12:14:00
501	228	BATCH9905	2025-03-15	0	79.00	2024-10-11 12:51:00	2024-10-21 16:58:00
469	125	BATCH9814	2025-06-15	43	63.00	2024-09-08 11:42:00	2024-11-12 16:30:00
498	226	BATCH1728	2025-04-15	59	64.00	2024-10-02 11:17:00	2024-11-27 13:03:00
446	138	BATCH1457	2025-04-15	0	21.00	2024-09-09 10:54:00	2024-11-27 13:58:00
493	50	BATCH5868	2025-05-15	0	63.00	2024-10-24 11:07:00	2024-11-04 11:02:00
455	223	BATCH4532	2025-04-15	0	77.00	2024-09-29 11:38:00	2024-09-19 14:57:00
503	202	BATCH1214	2025-05-15	30	78.00	2024-10-11 12:51:00	2024-11-21 08:47:00
523	124	BATCH4812	2025-02-15	63	94.00	2024-10-17 09:42:00	2024-11-30 13:20:00
496	225	BATCH2206	2025-01-15	0	44.00	2024-10-02 11:17:00	2024-09-26 10:33:00
518	18	BATCH6443	2025-01-15	0	38.00	2024-10-04 11:23:00	2024-11-04 16:09:00
448	211	BATCH9083	2025-01-15	0	94.00	2024-09-09 10:54:00	2024-10-13 09:51:00
457	191	BATCH5002	2025-04-15	0	32.00	2024-09-12 11:21:00	2024-10-07 11:08:00
495	196	BATCH1718	2025-02-15	0	100.00	2024-10-24 11:07:00	2024-10-28 12:51:00
450	216	BATCH5444	2025-03-15	34	55.00	2024-09-09 10:54:00	2024-11-26 14:55:00
443	50	BATCH4129	2025-01-15	0	97.00	2024-09-12 16:56:00	2024-10-22 15:19:00
466	123	BATCH8784	2025-03-15	0	48.00	2024-09-08 11:42:00	2024-11-29 16:44:00
514	230	BATCH8220	2025-02-15	0	94.00	2024-10-29 12:12:00	2024-10-30 09:04:00
453	44	BATCH6805	2025-03-15	0	43.00	2024-09-29 11:38:00	2024-11-20 09:43:00
521	232	BATCH1764	2025-04-15	0	56.00	2024-10-17 09:42:00	2024-11-30 13:20:00
454	124	BATCH2272	2025-05-15	23	22.00	2024-09-29 11:38:00	2024-10-10 10:06:00
508	181	BATCH3730	2025-02-15	66	46.00	2024-10-13 08:01:00	2024-11-03 15:48:00
480	79	BATCH9128	2025-04-15	61	72.00	2024-10-06 12:54:00	2024-11-08 13:24:00
489	224	BATCH7858	2025-01-15	0	29.00	2024-10-24 11:51:00	2024-11-25 11:27:00
500	227	BATCH9127	2025-01-15	0	27.00	2024-10-02 11:17:00	2024-11-23 11:28:00
516	106	BATCH8114	2025-01-15	42	85.00	2024-10-04 11:23:00	2024-11-14 15:27:00
487	132	BATCH1828	2025-06-15	25	94.00	2024-10-24 11:51:00	2024-11-20 15:52:00
513	229	BATCH2674	2025-01-15	14	92.00	2024-10-29 12:12:00	2024-11-01 11:53:00
515	89	BATCH9939	2025-06-15	89	90.00	2024-10-29 12:12:00	2024-11-07 12:05:00
464	167	BATCH6851	2025-03-15	64	34.00	2024-09-23 09:53:00	2024-11-06 16:22:00
527	195	BATCH6885	2025-03-15	48	48.00	2024-10-11 10:17:00	2024-11-19 11:23:00
467	181	BATCH1048	2025-02-15	37	26.00	2024-09-08 11:42:00	2024-11-12 16:30:00
512	86	BATCH9422	2025-06-15	11	44.00	2024-10-29 12:12:00	2024-11-12 14:18:00
529	63	BATCH8939	2025-06-15	78	54.00	2024-10-11 10:17:00	2024-10-11 10:17:00
530	52	BATCH8651	2025-06-15	58	37.00	2024-10-11 10:17:00	2024-10-11 10:17:00
533	21	BATCH7682	2025-01-15	63	72.00	2024-10-16 12:20:00	2024-10-16 12:20:00
534	83	BATCH6966	2025-06-15	82	86.00	2024-10-16 12:20:00	2024-10-16 12:20:00
535	5	BATCH7441	2025-06-15	90	62.00	2024-10-16 12:20:00	2024-10-16 12:20:00
536	172	BATCH6468	2025-04-15	86	28.00	2024-10-17 14:43:00	2024-10-17 14:43:00
537	167	BATCH8398	2025-02-15	75	57.00	2024-10-17 14:43:00	2024-10-17 14:43:00
538	171	BATCH8724	2025-03-15	63	85.00	2024-10-17 14:43:00	2024-10-17 14:43:00
539	161	BATCH3231	2025-02-15	74	81.00	2024-10-17 14:43:00	2024-10-17 14:43:00
542	19	BATCH2252	2025-05-15	70	45.00	2024-10-20 13:18:00	2024-10-20 13:18:00
543	26	BATCH7534	2025-02-15	94	81.00	2024-10-20 13:18:00	2024-10-20 13:18:00
544	184	BATCH4854	2025-01-15	72	87.00	2024-10-20 13:18:00	2024-10-20 13:18:00
546	208	BATCH8484	2025-01-15	53	91.00	2024-10-30 14:26:00	2024-10-30 14:26:00
603	242	BATCH2488	2025-03-15	47	92.00	2024-10-25 12:41:00	2024-10-13 13:29:00
556	84	BATCH9868	2025-05-15	88	43.00	2024-10-09 15:37:00	2024-10-09 15:37:00
557	30	BATCH7583	2025-04-15	61	32.00	2024-10-09 15:37:00	2024-10-09 15:37:00
558	188	BATCH1365	2025-05-15	55	90.00	2024-10-09 15:37:00	2024-10-09 15:37:00
559	79	BATCH3871	2025-03-15	50	47.00	2024-10-09 15:37:00	2024-10-09 15:37:00
561	12	BATCH4086	2025-02-15	80	62.00	2024-10-21 16:10:00	2024-10-21 16:10:00
563	54	BATCH4127	2025-03-15	55	38.00	2024-10-21 16:10:00	2024-10-21 16:10:00
565	56	BATCH9490	2025-02-15	93	77.00	2024-10-21 16:10:00	2024-10-21 16:10:00
566	154	BATCH8979	2025-02-15	67	73.00	2024-10-07 12:01:00	2024-10-07 12:01:00
567	102	BATCH3521	2025-01-15	78	88.00	2024-10-07 12:01:00	2024-10-07 12:01:00
568	62	BATCH4169	2025-01-15	50	40.00	2024-10-07 12:01:00	2024-10-07 12:01:00
569	63	BATCH8498	2025-05-15	78	100.00	2024-10-07 12:01:00	2024-10-07 12:01:00
571	21	BATCH3786	2025-06-15	61	48.00	2024-10-08 13:53:00	2024-10-08 13:53:00
572	83	BATCH8083	2025-01-15	79	78.00	2024-10-08 13:53:00	2024-10-08 13:53:00
574	5	BATCH5671	2025-06-15	54	86.00	2024-10-08 13:53:00	2024-10-08 13:53:00
577	132	BATCH7129	2025-03-15	90	27.00	2024-10-20 16:30:00	2024-10-20 16:30:00
578	17	BATCH4511	2025-03-15	83	97.00	2024-10-20 16:30:00	2024-10-20 16:30:00
579	27	BATCH6864	2025-05-15	98	79.00	2024-10-20 16:30:00	2024-10-20 16:30:00
583	19	BATCH9832	2025-01-15	85	36.00	2024-10-20 16:16:00	2024-10-20 16:16:00
584	27	BATCH5865	2025-02-15	96	67.00	2024-10-20 16:16:00	2024-10-20 16:16:00
585	133	BATCH7443	2025-04-15	65	28.00	2024-10-20 16:16:00	2024-10-20 16:16:00
587	113	BATCH6294	2025-03-15	69	32.00	2024-10-23 11:55:00	2024-10-23 11:55:00
588	53	BATCH2372	2025-04-15	68	78.00	2024-10-23 11:55:00	2024-10-23 11:55:00
589	201	BATCH6444	2025-03-15	64	75.00	2024-10-23 11:55:00	2024-10-23 11:55:00
590	15	BATCH4439	2025-02-15	55	67.00	2024-10-23 11:55:00	2024-10-23 11:55:00
592	37	BATCH3512	2025-02-15	52	57.00	2024-10-26 13:21:00	2024-10-26 13:21:00
593	3	BATCH6318	2025-04-15	81	29.00	2024-10-26 13:21:00	2024-10-26 13:21:00
594	4	BATCH8710	2025-05-15	86	34.00	2024-10-26 13:21:00	2024-10-26 13:21:00
595	41	BATCH6792	2025-03-15	52	74.00	2024-10-26 13:21:00	2024-10-26 13:21:00
596	100	BATCH9489	2025-02-15	66	95.00	2024-10-22 08:32:00	2024-10-22 08:32:00
597	60	BATCH6054	2025-01-15	68	87.00	2024-10-22 08:32:00	2024-10-22 08:32:00
598	84	BATCH1082	2025-01-15	75	68.00	2024-10-22 08:32:00	2024-10-22 08:32:00
599	49	BATCH7456	2025-03-15	60	35.00	2024-10-22 08:32:00	2024-10-22 08:32:00
600	32	BATCH1099	2025-03-15	52	48.00	2024-10-22 08:32:00	2024-10-22 08:32:00
601	160	BATCH4670	2025-04-15	63	76.00	2024-10-25 12:41:00	2024-10-25 12:41:00
606	43	BATCH1795	2025-01-15	53	95.00	2024-10-17 09:45:00	2024-10-17 09:45:00
607	123	BATCH7908	2025-02-15	100	93.00	2024-10-17 09:45:00	2024-10-17 09:45:00
608	65	BATCH7673	2025-01-15	62	47.00	2024-10-17 09:45:00	2024-10-17 09:45:00
611	132	BATCH6627	2025-04-15	65	32.00	2024-10-26 14:26:00	2024-10-26 14:26:00
612	74	BATCH2210	2025-03-15	53	92.00	2024-10-26 14:26:00	2024-10-26 14:26:00
613	26	BATCH3939	2025-02-15	87	31.00	2024-10-26 14:26:00	2024-10-26 14:26:00
614	75	BATCH1661	2025-01-15	98	59.00	2024-10-26 14:26:00	2024-10-26 14:26:00
615	184	BATCH1389	2025-02-15	93	92.00	2024-10-26 14:26:00	2024-10-26 14:26:00
581	25	BATCH9654	2025-04-15	0	28.00	2024-10-20 16:16:00	2024-11-12 09:19:00
550	237	BATCH2077	2025-04-15	0	85.00	2024-10-30 14:26:00	2024-10-03 13:51:00
616	233	BATCH7945	2025-03-15	59	81.00	2024-10-08 13:14:00	2024-10-10 15:52:00
586	241	BATCH5831	2025-01-15	0	84.00	2024-10-23 11:55:00	2024-09-17 08:06:00
531	233	BATCH5874	2025-03-15	60	76.00	2024-10-16 12:20:00	2024-09-27 16:57:00
573	23	BATCH6874	2025-03-15	90	27.00	2024-10-08 13:53:00	2024-11-21 16:01:00
570	162	BATCH4830	2025-03-15	0	29.00	2024-10-07 12:01:00	2024-11-26 16:23:00
576	93	BATCH2010	2025-05-15	21	98.00	2024-10-20 16:30:00	2024-11-13 11:12:00
582	240	BATCH6195	2025-03-15	0	63.00	2024-10-20 16:16:00	2024-09-04 15:33:00
541	224	BATCH5357	2025-05-15	49	73.00	2024-10-20 13:18:00	2024-11-14 15:27:00
604	186	BATCH3158	2025-03-15	13	21.00	2024-10-25 12:41:00	2024-11-24 14:07:00
532	34	BATCH4815	2025-06-15	0	89.00	2024-10-16 12:20:00	2024-09-24 09:25:00
575	239	BATCH8909	2025-05-15	0	99.00	2024-10-08 13:53:00	2024-10-06 16:01:00
591	82	BATCH8260	2025-03-15	0	79.00	2024-10-26 13:21:00	2024-10-06 16:01:00
540	186	BATCH1717	2025-06-15	0	81.00	2024-10-17 14:43:00	2024-10-14 12:56:00
554	148	BATCH1583	2025-02-15	0	87.00	2024-10-28 08:20:00	2024-11-11 15:55:00
602	131	BATCH7672	2025-05-15	0	76.00	2024-10-25 12:41:00	2024-11-24 14:07:00
580	150	BATCH5508	2025-03-15	0	22.00	2024-10-20 16:30:00	2024-10-24 12:44:00
547	234	BATCH3917	2025-01-15	0	48.00	2024-10-30 14:26:00	2024-10-13 09:51:00
552	225	BATCH5567	2025-01-15	0	99.00	2024-10-28 08:20:00	2024-11-08 12:21:00
560	196	BATCH7694	2025-02-15	48	35.00	2024-10-09 15:37:00	2024-10-12 08:24:00
545	133	BATCH4183	2025-05-15	11	62.00	2024-10-20 13:18:00	2024-11-12 09:19:00
555	238	BATCH2279	2025-02-15	3	90.00	2024-10-28 08:20:00	2024-11-12 08:53:00
610	223	BATCH8993	2025-06-15	0	96.00	2024-10-17 09:45:00	2024-11-02 11:50:00
215	134	BATCH9667	2025-06-15	0	61.00	2024-09-14 10:16:00	2024-11-02 09:12:00
549	236	BATCH5449	2025-06-15	0	84.00	2024-10-30 14:26:00	2024-11-04 13:14:00
553	146	BATCH8907	2025-04-15	0	65.00	2024-10-28 08:20:00	2024-11-08 12:21:00
562	103	BATCH2605	2025-02-15	0	72.00	2024-10-21 16:10:00	2024-11-02 14:33:00
609	66	BATCH3718	2025-01-15	0	87.00	2024-10-17 09:45:00	2024-11-02 11:50:00
564	105	BATCH3688	2025-03-15	55	95.00	2024-10-21 16:10:00	2024-11-02 08:48:00
619	23	BATCH3705	2025-03-15	84	88.00	2024-10-08 13:14:00	2024-10-08 13:14:00
623	98	BATCH4154	2025-01-15	62	37.00	2024-10-16 14:54:00	2024-10-16 14:54:00
625	158	BATCH4112	2025-03-15	66	60.00	2024-10-16 14:54:00	2024-10-16 14:54:00
629	99	BATCH1507	2025-03-15	72	56.00	2024-10-08 16:38:00	2024-10-08 16:38:00
632	142	BATCH1846	2025-06-15	83	62.00	2024-10-05 08:29:00	2024-10-05 08:29:00
633	157	BATCH3495	2025-03-15	94	44.00	2024-10-05 08:29:00	2024-10-05 08:29:00
637	19	BATCH6793	2025-05-15	96	89.00	2024-10-09 14:05:00	2024-10-09 14:05:00
638	26	BATCH6624	2025-04-15	96	91.00	2024-10-09 14:05:00	2024-10-09 14:05:00
639	184	BATCH2205	2025-01-15	61	69.00	2024-10-09 14:05:00	2024-10-09 14:05:00
640	76	BATCH6435	2025-03-15	88	69.00	2024-10-09 14:05:00	2024-10-09 14:05:00
641	100	BATCH8948	2025-01-15	93	44.00	2024-10-21 08:25:00	2024-10-21 08:25:00
642	115	BATCH6934	2025-06-15	76	67.00	2024-10-21 08:25:00	2024-10-21 08:25:00
643	49	BATCH7579	2025-01-15	84	23.00	2024-10-21 08:25:00	2024-10-21 08:25:00
644	33	BATCH7957	2025-04-15	88	89.00	2024-10-21 08:25:00	2024-10-21 08:25:00
645	52	BATCH1989	2025-03-15	61	93.00	2024-10-21 08:25:00	2024-10-21 08:25:00
646	97	BATCH3790	2025-02-15	70	62.00	2024-10-18 16:54:00	2024-10-18 16:54:00
648	143	BATCH7683	2025-04-15	64	86.00	2024-10-18 16:54:00	2024-10-18 16:54:00
652	35	BATCH1069	2025-03-15	72	49.00	2024-10-14 16:47:00	2024-10-14 16:47:00
653	24	BATCH6466	2025-03-15	97	24.00	2024-10-14 16:47:00	2024-10-14 16:47:00
655	134	BATCH5411	2025-05-15	96	25.00	2024-10-14 16:47:00	2024-10-14 16:47:00
656	129	BATCH9035	2025-02-15	100	33.00	2024-10-24 16:06:00	2024-10-24 16:06:00
657	130	BATCH7352	2025-05-15	57	41.00	2024-10-24 16:06:00	2024-10-24 16:06:00
659	185	BATCH2486	2025-04-15	100	58.00	2024-10-24 16:06:00	2024-10-24 16:06:00
660	167	BATCH2190	2025-05-15	69	55.00	2024-10-24 16:06:00	2024-10-24 16:06:00
662	199	BATCH2698	2025-03-15	84	98.00	2024-10-19 14:24:00	2024-10-19 14:24:00
663	200	BATCH1120	2025-03-15	94	47.00	2024-10-19 14:24:00	2024-10-19 14:24:00
664	144	BATCH1955	2025-04-15	86	72.00	2024-10-19 14:24:00	2024-10-19 14:24:00
665	89	BATCH6036	2025-05-15	73	73.00	2024-10-19 14:24:00	2024-10-19 14:24:00
667	19	BATCH6272	2025-04-15	64	72.00	2024-10-26 16:15:00	2024-10-26 16:15:00
669	133	BATCH5658	2025-01-15	57	83.00	2024-10-26 16:15:00	2024-10-26 16:15:00
670	20	BATCH4049	2025-06-15	60	66.00	2024-10-26 16:15:00	2024-10-26 16:15:00
672	35	BATCH2437	2025-03-15	99	83.00	2024-10-22 14:36:00	2024-10-22 14:36:00
675	5	BATCH8003	2025-05-15	61	43.00	2024-10-22 14:36:00	2024-10-22 14:36:00
676	43	BATCH7907	2025-01-15	78	100.00	2024-10-13 12:45:00	2024-10-13 12:45:00
677	122	BATCH6241	2025-03-15	58	73.00	2024-10-13 12:45:00	2024-10-13 12:45:00
696	253	BATCH4354	2025-01-15	0	73.00	2024-10-28 13:05:00	2024-10-23 13:53:00
681	43	BATCH9177	2025-04-15	71	26.00	2024-10-24 16:18:00	2024-10-24 16:18:00
683	7	BATCH7674	2025-05-15	68	29.00	2024-10-24 16:18:00	2024-10-24 16:18:00
684	123	BATCH4961	2025-04-15	79	46.00	2024-10-24 16:18:00	2024-10-24 16:18:00
685	124	BATCH7505	2025-03-15	86	93.00	2024-10-24 16:18:00	2024-10-24 16:18:00
686	155	BATCH2161	2025-05-15	91	67.00	2024-10-26 16:21:00	2024-10-26 16:21:00
688	119	BATCH9178	2025-05-15	80	37.00	2024-10-26 16:21:00	2024-10-26 16:21:00
689	97	BATCH3154	2025-02-15	53	28.00	2024-10-26 16:21:00	2024-10-26 16:21:00
691	43	BATCH6188	2025-02-15	88	42.00	2024-10-08 11:31:00	2024-10-08 11:31:00
692	181	BATCH4302	2025-04-15	56	89.00	2024-10-08 11:31:00	2024-10-08 11:31:00
695	176	BATCH7779	2025-05-15	67	58.00	2024-10-08 11:31:00	2024-10-08 11:31:00
697	68	BATCH6213	2025-06-15	87	84.00	2024-10-28 13:05:00	2024-10-28 13:05:00
698	174	BATCH6636	2025-05-15	89	43.00	2024-10-28 13:05:00	2024-10-28 13:05:00
700	179	BATCH3082	2025-01-15	78	28.00	2024-10-28 13:05:00	2024-10-28 13:05:00
701	43	BATCH8727	2025-05-15	97	63.00	2024-10-23 15:39:00	2024-10-23 15:39:00
702	122	BATCH8583	2025-04-15	76	27.00	2024-10-23 15:39:00	2024-10-23 15:39:00
703	65	BATCH1469	2025-03-15	96	64.00	2024-10-23 15:39:00	2024-10-23 15:39:00
704	44	BATCH8471	2025-02-15	78	82.00	2024-10-23 15:39:00	2024-10-23 15:39:00
694	252	BATCH7637	2025-06-15	52	53.00	2024-10-08 11:31:00	2024-09-05 14:07:00
658	169	BATCH1509	2025-02-15	0	39.00	2024-10-24 16:06:00	2024-10-23 11:20:00
620	134	BATCH6446	2025-01-15	47	69.00	2024-10-08 13:14:00	2024-11-26 16:13:00
682	232	BATCH5066	2025-06-15	11	21.00	2024-10-24 16:18:00	2024-11-12 14:02:00
650	248	BATCH6483	2025-06-15	0	81.00	2024-10-18 16:54:00	2024-11-27 11:31:00
626	243	BATCH1301	2025-06-15	0	31.00	2024-10-08 16:38:00	2024-11-04 09:00:00
634	246	BATCH8055	2025-06-15	0	38.00	2024-10-05 08:29:00	2024-11-17 15:49:00
618	197	BATCH2452	2025-03-15	24	36.00	2024-10-08 13:14:00	2024-11-21 16:01:00
668	251	BATCH2646	2025-03-15	6	64.00	2024-10-26 16:15:00	2024-11-04 16:09:00
622	213	BATCH3960	2025-06-15	6	63.00	2024-10-16 14:54:00	2024-11-17 15:49:00
636	183	BATCH2265	2025-04-15	0	82.00	2024-10-09 14:05:00	2024-09-17 16:57:00
679	58	BATCH9165	2025-03-15	0	67.00	2024-10-13 12:45:00	2024-11-24 12:03:00
630	214	BATCH1013	2025-06-15	71	22.00	2024-10-08 16:38:00	2024-10-31 09:38:00
628	245	BATCH4282	2025-03-15	0	57.00	2024-10-08 16:38:00	2024-10-24 14:21:00
671	81	BATCH5496	2025-02-15	20	28.00	2024-10-22 14:36:00	2024-11-26 16:13:00
624	214	BATCH4590	2025-05-15	9	43.00	2024-10-16 14:54:00	2024-11-13 09:07:00
649	247	BATCH5998	2025-01-15	0	53.00	2024-10-18 16:54:00	2024-11-15 14:23:00
651	249	BATCH6836	2025-01-15	13	24.00	2024-10-14 16:47:00	2024-10-10 15:52:00
627	244	BATCH6482	2025-04-15	0	61.00	2024-10-08 16:38:00	2024-10-31 09:38:00
693	58	BATCH6760	2025-06-15	38	33.00	2024-10-08 11:31:00	2024-11-16 09:26:00
647	244	BATCH2091	2025-02-15	3	42.00	2024-10-18 16:54:00	2024-11-17 15:49:00
690	248	BATCH7787	2025-05-15	45	99.00	2024-10-26 16:21:00	2024-11-29 13:16:00
661	225	BATCH1636	2025-06-15	24	40.00	2024-10-19 14:24:00	2024-11-01 11:53:00
699	192	BATCH2295	2025-03-15	33	65.00	2024-10-28 13:05:00	2024-11-21 15:34:00
621	95	BATCH7166	2025-04-15	28	85.00	2024-10-16 14:54:00	2024-11-23 16:30:00
635	247	BATCH2885	2025-02-15	0	52.00	2024-10-05 08:29:00	2024-11-27 11:52:00
654	239	BATCH9844	2025-01-15	0	58.00	2024-10-14 16:47:00	2024-11-18 16:54:00
631	155	BATCH5482	2025-02-15	45	63.00	2024-10-05 08:29:00	2024-11-23 16:30:00
678	182	BATCH1496	2025-04-15	42	90.00	2024-10-13 12:45:00	2024-11-05 10:10:00
617	189	BATCH9892	2025-03-15	63	49.00	2024-10-08 13:14:00	2024-11-16 14:42:00
673	38	BATCH9229	2025-06-15	48	85.00	2024-10-22 14:36:00	2024-11-16 14:42:00
674	42	BATCH7557	2025-02-15	57	35.00	2024-10-22 14:36:00	2024-11-16 14:42:00
687	141	BATCH3014	2025-05-15	55	23.00	2024-10-26 16:21:00	2024-11-21 10:17:00
705	9	BATCH8805	2025-03-15	88	65.00	2024-10-23 15:39:00	2024-10-23 15:39:00
711	73	BATCH4143	2025-04-15	65	42.00	2024-10-13 10:10:00	2024-10-13 10:10:00
714	251	BATCH6904	2025-04-15	72	44.00	2024-10-13 10:10:00	2024-10-13 10:10:00
717	132	BATCH4631	2025-05-15	88	73.00	2024-10-16 12:27:00	2024-10-16 12:27:00
718	224	BATCH4829	2025-06-15	80	30.00	2024-10-16 12:27:00	2024-10-16 12:27:00
721	115	BATCH8085	2025-05-15	77	50.00	2024-10-13 15:00:00	2024-10-13 15:00:00
722	154	BATCH5715	2025-06-15	86	77.00	2024-10-13 15:00:00	2024-10-13 15:00:00
723	31	BATCH1832	2025-04-15	57	68.00	2024-10-13 15:00:00	2024-10-13 15:00:00
724	51	BATCH3727	2025-02-15	71	38.00	2024-10-13 15:00:00	2024-10-13 15:00:00
727	109	BATCH2632	2025-06-15	55	86.00	2024-10-11 14:00:00	2024-10-11 14:00:00
730	165	BATCH1133	2025-01-15	69	59.00	2024-10-11 14:00:00	2024-10-11 14:00:00
733	234	BATCH1399	2025-05-15	83	96.00	2024-10-17 09:39:00	2024-10-17 09:39:00
735	165	BATCH9182	2025-01-15	88	81.00	2024-10-17 09:39:00	2024-10-17 09:39:00
736	209	BATCH7524	2025-06-15	86	66.00	2024-10-11 13:34:00	2024-10-11 13:34:00
737	210	BATCH9419	2025-04-15	61	23.00	2024-10-11 13:34:00	2024-10-11 13:34:00
738	164	BATCH2766	2025-02-15	53	98.00	2024-10-11 13:34:00	2024-10-11 13:34:00
739	216	BATCH8968	2025-03-15	55	97.00	2024-10-11 13:34:00	2024-10-11 13:34:00
740	112	BATCH2960	2025-01-15	57	86.00	2024-10-11 13:34:00	2024-10-11 13:34:00
741	11	BATCH4204	2025-03-15	67	23.00	2024-10-05 09:57:00	2024-10-05 09:57:00
742	47	BATCH5094	2025-01-15	79	49.00	2024-10-05 09:57:00	2024-10-05 09:57:00
743	105	BATCH1263	2025-01-15	86	32.00	2024-10-05 09:57:00	2024-10-05 09:57:00
744	114	BATCH6603	2025-06-15	84	79.00	2024-10-05 09:57:00	2024-10-05 09:57:00
745	221	BATCH1481	2025-03-15	62	46.00	2024-10-05 09:57:00	2024-10-05 09:57:00
747	198	BATCH7643	2025-02-15	61	69.00	2024-10-05 15:47:00	2024-10-05 15:47:00
748	200	BATCH3817	2025-04-15	71	44.00	2024-10-05 15:47:00	2024-10-05 15:47:00
749	86	BATCH9043	2025-03-15	94	24.00	2024-10-05 15:47:00	2024-10-05 15:47:00
750	145	BATCH5480	2025-06-15	95	65.00	2024-10-05 15:47:00	2024-10-05 15:47:00
753	224	BATCH9496	2025-04-15	99	59.00	2024-10-23 08:26:00	2024-10-23 08:26:00
754	75	BATCH9644	2025-05-15	90	24.00	2024-10-23 08:26:00	2024-10-23 08:26:00
755	184	BATCH7521	2025-04-15	94	90.00	2024-10-23 08:26:00	2024-10-23 08:26:00
756	101	BATCH3520	2025-06-15	100	78.00	2024-10-22 09:56:00	2024-10-22 09:56:00
757	102	BATCH2400	2025-04-15	96	37.00	2024-10-22 09:56:00	2024-10-22 09:56:00
759	63	BATCH4367	2025-01-15	87	94.00	2024-10-22 09:56:00	2024-10-22 09:56:00
760	196	BATCH3410	2025-06-15	95	72.00	2024-10-22 09:56:00	2024-10-22 09:56:00
761	113	BATCH1079	2025-02-15	82	20.00	2024-10-22 10:05:00	2024-10-22 10:05:00
763	114	BATCH7125	2025-05-15	70	72.00	2024-10-22 10:05:00	2024-10-22 10:05:00
765	127	BATCH3010	2025-06-15	71	77.00	2024-10-22 10:05:00	2024-10-22 10:05:00
768	86	BATCH3172	2025-05-15	53	90.00	2024-10-25 09:23:00	2024-10-25 09:23:00
769	89	BATCH8914	2025-06-15	62	66.00	2024-10-25 09:23:00	2024-10-25 09:23:00
709	163	BATCH9098	2025-05-15	18	66.00	2024-10-24 12:23:00	2024-10-24 14:19:00
771	64	BATCH9237	2025-01-15	66	89.00	2024-10-23 09:37:00	2024-10-23 09:37:00
772	232	BATCH5128	2025-03-15	70	48.00	2024-10-23 09:37:00	2024-10-23 09:37:00
774	9	BATCH4320	2025-04-15	52	98.00	2024-10-23 09:37:00	2024-10-23 09:37:00
776	208	BATCH8552	2025-03-15	54	68.00	2024-10-26 09:45:00	2024-10-26 09:45:00
777	139	BATCH5296	2025-02-15	50	89.00	2024-10-26 09:45:00	2024-10-26 09:45:00
778	108	BATCH2013	2025-05-15	60	38.00	2024-10-26 09:45:00	2024-10-26 09:45:00
780	212	BATCH1074	2025-01-15	81	20.00	2024-10-26 09:45:00	2024-10-26 09:45:00
782	139	BATCH5957	2025-05-15	79	73.00	2024-10-22 08:21:00	2024-10-22 08:21:00
783	152	BATCH3600	2025-04-15	93	46.00	2024-10-22 08:21:00	2024-10-22 08:21:00
784	209	BATCH6710	2025-01-15	59	52.00	2024-10-22 08:21:00	2024-10-22 08:21:00
785	163	BATCH4036	2025-02-15	72	61.00	2024-10-22 08:21:00	2024-10-22 08:21:00
786	198	BATCH3938	2025-02-15	94	38.00	2024-10-26 09:02:00	2024-10-26 09:02:00
787	229	BATCH3244	2025-04-15	92	59.00	2024-10-26 09:02:00	2024-10-26 09:02:00
791	81	BATCH7876	2025-05-15	87	46.00	2024-10-13 14:20:00	2024-10-13 14:20:00
792	116	BATCH1035	2025-01-15	0	40.00	2024-10-13 14:20:00	2024-11-18 16:54:00
781	258	BATCH1763	2025-01-15	0	83.00	2024-10-22 08:21:00	2024-10-03 14:28:00
710	222	BATCH6183	2025-02-15	0	82.00	2024-10-24 12:23:00	2024-09-02 11:32:00
767	256	BATCH8923	2025-02-15	2	34.00	2024-10-25 09:23:00	2024-11-08 12:21:00
758	128	BATCH9879	2025-02-15	52	37.00	2024-10-22 09:56:00	2024-11-28 11:59:00
790	257	BATCH7247	2025-01-15	0	31.00	2024-10-26 09:02:00	2024-09-04 16:53:00
712	240	BATCH9545	2025-02-15	0	88.00	2024-10-13 10:10:00	2024-10-28 13:22:00
707	151	BATCH3327	2025-05-15	86	69.00	2024-10-24 12:23:00	2024-09-02 11:32:00
715	255	BATCH2964	2025-05-15	0	99.00	2024-10-13 10:10:00	2024-09-05 11:06:00
706	254	BATCH2270	2025-04-15	23	72.00	2024-10-24 12:23:00	2024-11-18 13:27:00
775	223	BATCH7693	2025-06-15	25	33.00	2024-10-23 09:37:00	2024-11-05 10:10:00
486	16	BATCH2288	2025-02-15	45	20.00	2024-10-24 11:51:00	2024-10-13 09:40:00
725	162	BATCH7905	2025-05-15	60	92.00	2024-10-13 15:00:00	2024-11-14 10:48:00
720	150	BATCH8861	2025-03-15	39	78.00	2024-10-16 12:27:00	2024-10-24 15:22:00
766	194	BATCH6765	2025-01-15	40	51.00	2024-10-25 09:23:00	2024-11-12 14:18:00
726	138	BATCH5315	2025-04-15	52	57.00	2024-10-11 14:00:00	2024-11-18 13:27:00
713	149	BATCH8901	2025-02-15	14	29.00	2024-10-13 10:10:00	2024-11-15 12:49:00
752	16	BATCH6191	2025-02-15	6	92.00	2024-10-23 08:26:00	2024-11-25 11:27:00
731	254	BATCH2217	2025-05-15	0	31.00	2024-10-17 09:39:00	2024-11-17 09:36:00
762	228	BATCH7197	2025-03-15	21	82.00	2024-10-22 10:05:00	2024-11-09 11:14:00
751	183	BATCH5037	2025-05-15	0	88.00	2024-10-23 08:26:00	2024-11-13 11:12:00
716	183	BATCH5754	2025-05-15	0	22.00	2024-10-16 12:27:00	2024-11-04 16:09:00
788	87	BATCH7734	2025-04-15	24	44.00	2024-10-26 09:02:00	2024-11-12 14:18:00
789	148	BATCH9500	2025-02-15	76	34.00	2024-10-26 09:02:00	2024-11-23 11:28:00
773	66	BATCH1785	2025-05-15	5	96.00	2024-10-23 09:37:00	2024-11-12 16:30:00
728	152	BATCH5572	2025-01-15	23	33.00	2024-10-11 14:00:00	2024-11-26 14:55:00
732	215	BATCH6056	2025-03-15	53	86.00	2024-10-17 09:39:00	2024-11-26 14:55:00
708	234	BATCH5732	2025-03-15	24	100.00	2024-10-24 12:23:00	2024-11-26 14:55:00
729	234	BATCH7032	2025-06-15	87	71.00	2024-10-11 14:00:00	2024-11-09 10:01:00
764	220	BATCH3785	2025-03-15	21	96.00	2024-10-22 10:05:00	2024-11-14 16:33:00
734	209	BATCH1679	2025-01-15	45	75.00	2024-10-17 09:39:00	2024-11-18 13:27:00
719	240	BATCH7232	2025-03-15	0	81.00	2024-10-16 12:27:00	2024-11-17 11:09:00
793	42	BATCH1697	2025-05-15	90	87.00	2024-10-13 14:20:00	2024-10-13 14:20:00
794	5	BATCH3928	2025-05-15	90	22.00	2024-10-13 14:20:00	2024-10-13 14:20:00
795	134	BATCH1962	2025-06-15	63	83.00	2024-10-13 14:20:00	2024-10-13 14:20:00
796	85	BATCH6712	2025-03-15	82	81.00	2024-10-01 08:35:00	2024-10-01 08:35:00
798	194	BATCH2230	2025-01-15	75	20.00	2024-10-01 08:35:00	2024-10-01 08:35:00
799	206	BATCH5091	2025-06-15	78	86.00	2024-10-01 08:35:00	2024-10-01 08:35:00
800	146	BATCH7113	2025-01-15	64	25.00	2024-10-01 08:35:00	2024-10-01 08:35:00
801	113	BATCH9491	2025-01-15	58	49.00	2024-10-10 11:32:00	2024-10-10 11:32:00
802	54	BATCH8078	2025-03-15	74	35.00	2024-10-10 11:32:00	2024-10-10 11:32:00
803	47	BATCH7901	2025-02-15	57	25.00	2024-10-10 11:32:00	2024-10-10 11:32:00
804	92	BATCH1257	2025-03-15	84	48.00	2024-10-10 11:32:00	2024-10-10 11:32:00
827	191	BATCH1946	2025-04-15	54	24.00	2024-10-27 12:59:00	2024-11-06 16:22:00
806	149	BATCH8602	2025-05-15	61	31.00	2024-10-13 13:46:00	2024-10-13 13:46:00
807	26	BATCH2370	2025-01-15	76	64.00	2024-10-13 13:46:00	2024-10-13 13:46:00
808	27	BATCH2978	2025-02-15	81	60.00	2024-10-13 13:46:00	2024-10-13 13:46:00
809	94	BATCH5554	2025-06-15	60	30.00	2024-10-13 13:46:00	2024-10-13 13:46:00
810	20	BATCH2608	2025-03-15	82	24.00	2024-10-13 13:46:00	2024-10-13 13:46:00
811	6	BATCH1239	2025-02-15	70	93.00	2024-10-20 15:52:00	2024-10-20 15:52:00
812	64	BATCH1833	2025-01-15	72	84.00	2024-10-20 15:52:00	2024-10-20 15:52:00
813	176	BATCH6143	2025-04-15	91	32.00	2024-10-20 15:52:00	2024-10-20 15:52:00
815	223	BATCH1075	2025-04-15	65	48.00	2024-10-20 15:52:00	2024-10-20 15:52:00
816	136	BATCH4075	2025-04-15	59	44.00	2024-10-04 13:17:00	2024-10-04 13:17:00
817	208	BATCH9739	2025-06-15	60	74.00	2024-10-04 13:17:00	2024-10-04 13:17:00
818	152	BATCH4188	2025-06-15	86	25.00	2024-10-04 13:17:00	2024-10-04 13:17:00
821	81	BATCH9274	2025-01-15	71	71.00	2024-10-25 14:41:00	2024-10-25 14:41:00
824	197	BATCH3211	2025-03-15	95	95.00	2024-10-25 14:41:00	2024-10-25 14:41:00
825	21	BATCH3858	2025-01-15	62	47.00	2024-10-25 14:41:00	2024-10-25 14:41:00
826	166	BATCH4194	2025-02-15	96	26.00	2024-10-27 12:59:00	2024-10-27 12:59:00
828	178	BATCH3714	2025-01-15	71	83.00	2024-10-27 12:59:00	2024-10-27 12:59:00
829	69	BATCH1054	2025-03-15	51	31.00	2024-10-27 12:59:00	2024-10-27 12:59:00
830	192	BATCH4357	2025-01-15	89	85.00	2024-10-27 12:59:00	2024-10-27 12:59:00
831	199	BATCH7366	2025-01-15	52	56.00	2024-10-23 11:21:00	2024-10-23 11:21:00
832	200	BATCH5828	2025-05-15	92	100.00	2024-10-23 11:21:00	2024-10-23 11:21:00
833	145	BATCH8937	2025-01-15	55	97.00	2024-10-23 11:21:00	2024-10-23 11:21:00
835	89	BATCH1938	2025-04-15	99	33.00	2024-10-23 11:21:00	2024-10-23 11:21:00
836	6	BATCH8636	2025-02-15	68	23.00	2024-10-28 08:53:00	2024-10-28 08:53:00
838	67	BATCH1004	2025-04-15	59	48.00	2024-10-28 08:53:00	2024-10-28 08:53:00
839	9	BATCH3074	2025-03-15	71	42.00	2024-10-28 08:53:00	2024-10-28 08:53:00
840	223	BATCH3404	2025-06-15	87	99.00	2024-10-28 08:53:00	2024-10-28 08:53:00
841	122	BATCH8674	2025-06-15	95	39.00	2024-10-29 13:57:00	2024-10-29 13:57:00
842	180	BATCH3739	2025-01-15	67	98.00	2024-10-29 13:57:00	2024-10-29 13:57:00
843	176	BATCH3994	2025-05-15	99	82.00	2024-10-29 13:57:00	2024-10-29 13:57:00
844	124	BATCH4630	2025-06-15	69	34.00	2024-10-29 13:57:00	2024-10-29 13:57:00
845	10	BATCH9383	2025-01-15	77	72.00	2024-10-29 13:57:00	2024-10-29 13:57:00
846	233	BATCH5609	2025-06-15	84	27.00	2024-10-10 10:51:00	2024-10-10 10:51:00
848	1	BATCH6368	2025-04-15	59	41.00	2024-10-10 10:51:00	2024-10-10 10:51:00
849	189	BATCH3507	2025-04-15	83	22.00	2024-10-10 10:51:00	2024-10-10 10:51:00
850	40	BATCH4653	2025-02-15	89	56.00	2024-10-10 10:51:00	2024-10-10 10:51:00
851	64	BATCH1819	2025-06-15	95	75.00	2024-10-05 15:02:00	2024-10-05 15:02:00
852	66	BATCH9943	2025-03-15	89	85.00	2024-10-05 15:02:00	2024-10-05 15:02:00
853	44	BATCH1434	2025-01-15	98	29.00	2024-10-05 15:02:00	2024-10-05 15:02:00
854	125	BATCH5810	2025-04-15	54	97.00	2024-10-05 15:02:00	2024-10-05 15:02:00
856	208	BATCH9102	2025-03-15	83	72.00	2024-10-11 15:39:00	2024-10-11 15:39:00
857	151	BATCH9010	2025-04-15	64	82.00	2024-10-11 15:39:00	2024-10-11 15:39:00
858	110	BATCH5026	2025-04-15	99	52.00	2024-10-11 15:39:00	2024-10-11 15:39:00
859	234	BATCH8313	2025-06-15	98	85.00	2024-10-11 15:39:00	2024-10-11 15:39:00
861	136	BATCH1818	2025-01-15	54	82.00	2024-10-05 11:53:00	2024-10-05 11:53:00
862	108	BATCH2021	2025-02-15	71	92.00	2024-10-05 11:53:00	2024-10-05 11:53:00
863	211	BATCH9321	2025-04-15	97	50.00	2024-10-05 11:53:00	2024-10-05 11:53:00
866	136	BATCH3496	2025-04-15	73	49.00	2024-10-11 16:15:00	2024-10-11 16:15:00
867	108	BATCH7952	2025-05-15	83	45.00	2024-10-11 16:15:00	2024-10-11 16:15:00
868	152	BATCH3370	2025-06-15	53	22.00	2024-10-11 16:15:00	2024-10-11 16:15:00
869	234	BATCH4400	2025-01-15	83	54.00	2024-10-11 16:15:00	2024-10-11 16:15:00
871	154	BATCH1540	2025-02-15	80	36.00	2024-10-01 08:27:00	2024-10-01 08:27:00
872	195	BATCH4019	2025-01-15	73	66.00	2024-10-01 08:27:00	2024-10-01 08:27:00
873	49	BATCH1705	2025-02-15	64	60.00	2024-10-01 08:27:00	2024-10-01 08:27:00
874	63	BATCH9462	2025-01-15	92	46.00	2024-10-01 08:27:00	2024-10-01 08:27:00
875	52	BATCH4754	2025-01-15	60	57.00	2024-10-01 08:27:00	2024-10-01 08:27:00
876	29	BATCH1813	2025-05-15	82	32.00	2024-10-30 12:18:00	2024-10-30 12:18:00
877	154	BATCH7887	2025-01-15	51	73.00	2024-10-30 12:18:00	2024-10-30 12:18:00
878	77	BATCH6692	2025-03-15	74	96.00	2024-10-30 12:18:00	2024-10-30 12:18:00
879	78	BATCH5623	2025-04-15	64	73.00	2024-10-30 12:18:00	2024-10-30 12:18:00
855	90	BATCH1387	2025-05-15	77	96.00	2024-10-05 15:02:00	2024-11-05 10:10:00
837	8	BATCH8800	2025-01-15	91	46.00	2024-10-28 08:53:00	2024-11-30 13:20:00
666	250	BATCH5001	2025-02-15	0	54.00	2024-10-26 16:15:00	2024-10-09 08:34:00
880	80	BATCH9949	2025-03-15	0	38.00	2024-10-30 12:18:00	2024-11-07 12:42:00
822	2	BATCH9407	2025-02-15	63	91.00	2024-10-25 14:41:00	2024-11-11 10:58:00
847	34	BATCH6090	2025-05-15	49	95.00	2024-10-10 10:51:00	2024-10-12 12:17:00
864	222	BATCH8954	2025-03-15	28	73.00	2024-10-05 11:53:00	2024-10-21 14:29:00
870	222	BATCH7399	2025-06-15	65	31.00	2024-10-11 16:15:00	2024-10-23 11:44:00
819	259	BATCH8125	2025-04-15	48	99.00	2024-10-04 13:17:00	2024-10-11 14:38:00
823	82	BATCH1076	2025-03-15	0	62.00	2024-10-25 14:41:00	2024-11-26 16:13:00
820	236	BATCH7913	2025-04-15	61	70.00	2024-10-04 13:17:00	2024-11-17 09:36:00
814	187	BATCH5392	2025-02-15	69	95.00	2024-10-20 15:52:00	2024-11-29 16:44:00
860	222	BATCH1586	2025-01-15	0	48.00	2024-10-11 15:39:00	2024-11-14 09:20:00
865	236	BATCH2485	2025-06-15	18	24.00	2024-10-05 11:53:00	2024-11-18 13:27:00
797	193	BATCH3251	2025-03-15	49	59.00	2024-10-01 08:35:00	2024-11-01 11:53:00
881	197	BATCH7002	2025-06-15	87	77.00	2024-10-05 09:18:00	2024-10-05 09:18:00
882	22	BATCH6418	2025-05-15	68	53.00	2024-10-05 09:18:00	2024-10-05 09:18:00
883	116	BATCH8980	2025-04-15	100	80.00	2024-10-05 09:18:00	2024-10-05 09:18:00
885	42	BATCH3089	2025-05-15	100	45.00	2024-10-05 09:18:00	2024-10-05 09:18:00
886	6	BATCH6638	2025-05-15	81	73.00	2024-10-13 10:26:00	2024-10-13 10:26:00
887	122	BATCH9537	2025-06-15	86	76.00	2024-10-13 10:26:00	2024-10-13 10:26:00
888	57	BATCH2880	2025-02-15	82	92.00	2024-10-13 10:26:00	2024-10-13 10:26:00
890	67	BATCH8186	2025-02-15	72	34.00	2024-10-13 10:26:00	2024-10-13 10:26:00
892	234	BATCH9004	2025-02-15	59	96.00	2024-10-03 10:32:00	2024-10-03 10:32:00
893	259	BATCH1834	2025-02-15	75	60.00	2024-10-03 10:32:00	2024-10-03 10:32:00
894	236	BATCH2404	2025-01-15	71	26.00	2024-10-03 10:32:00	2024-10-03 10:32:00
895	165	BATCH7612	2025-03-15	84	78.00	2024-10-03 10:32:00	2024-10-03 10:32:00
896	132	BATCH8681	2025-06-15	85	100.00	2024-10-18 11:33:00	2024-10-18 11:33:00
899	20	BATCH5414	2025-01-15	56	25.00	2024-10-18 11:33:00	2024-10-18 11:33:00
900	76	BATCH4334	2025-06-15	98	83.00	2024-10-18 11:33:00	2024-10-18 11:33:00
901	81	BATCH3986	2025-03-15	97	70.00	2024-10-26 08:11:00	2024-10-26 08:11:00
902	1	BATCH1998	2025-03-15	97	72.00	2024-10-26 08:11:00	2024-10-26 08:11:00
903	3	BATCH6328	2025-06-15	77	22.00	2024-10-26 08:11:00	2024-10-26 08:11:00
904	24	BATCH4246	2025-03-15	54	88.00	2024-10-26 08:11:00	2024-10-26 08:11:00
906	30	BATCH3802	2025-06-15	51	84.00	2024-10-08 10:07:00	2024-10-08 10:07:00
907	31	BATCH3060	2025-05-15	90	82.00	2024-10-08 10:07:00	2024-10-08 10:07:00
908	102	BATCH5450	2025-06-15	96	100.00	2024-10-08 10:07:00	2024-10-08 10:07:00
909	190	BATCH5583	2025-02-15	73	31.00	2024-10-08 10:07:00	2024-10-08 10:07:00
910	63	BATCH6623	2025-01-15	81	37.00	2024-10-08 10:07:00	2024-10-08 10:07:00
911	100	BATCH6477	2025-03-15	83	90.00	2024-10-01 13:36:00	2024-10-01 13:36:00
912	84	BATCH4362	2025-01-15	67	93.00	2024-10-01 13:36:00	2024-10-01 13:36:00
914	128	BATCH1752	2025-01-15	53	27.00	2024-10-01 13:36:00	2024-10-01 13:36:00
915	196	BATCH4309	2025-05-15	99	65.00	2024-10-01 13:36:00	2024-10-01 13:36:00
916	130	BATCH7308	2025-05-15	78	66.00	2024-10-10 11:31:00	2024-10-10 11:31:00
917	68	BATCH8913	2025-03-15	69	27.00	2024-10-10 11:31:00	2024-10-10 11:31:00
918	167	BATCH6178	2025-03-15	88	55.00	2024-10-10 11:31:00	2024-10-10 11:31:00
920	192	BATCH5439	2025-02-15	84	28.00	2024-10-10 11:31:00	2024-10-10 11:31:00
921	126	BATCH6032	2025-06-15	62	43.00	2024-10-17 16:11:00	2024-10-17 16:11:00
922	12	BATCH1974	2025-05-15	67	38.00	2024-10-17 16:11:00	2024-10-17 16:11:00
923	46	BATCH2913	2025-06-15	56	72.00	2024-10-17 16:11:00	2024-10-17 16:11:00
924	55	BATCH1567	2025-06-15	84	80.00	2024-10-17 16:11:00	2024-10-17 16:11:00
925	92	BATCH9247	2025-03-15	86	72.00	2024-10-17 16:11:00	2024-10-17 16:11:00
926	6	BATCH3046	2025-03-15	67	42.00	2024-10-26 09:42:00	2024-10-26 09:42:00
927	180	BATCH1478	2025-03-15	71	54.00	2024-10-26 09:42:00	2024-10-26 09:42:00
928	177	BATCH3281	2025-04-15	66	79.00	2024-10-26 09:42:00	2024-10-26 09:42:00
929	187	BATCH7444	2025-04-15	75	86.00	2024-10-26 09:42:00	2024-10-26 09:42:00
930	90	BATCH6070	2025-03-15	56	79.00	2024-10-26 09:42:00	2024-10-26 09:42:00
931	113	BATCH3686	2025-03-15	68	96.00	2024-10-05 15:45:00	2024-10-05 15:45:00
932	13	BATCH4265	2025-05-15	63	79.00	2024-10-05 15:45:00	2024-10-05 15:45:00
933	55	BATCH8255	2025-05-15	57	65.00	2024-10-05 15:45:00	2024-10-05 15:45:00
935	221	BATCH4353	2025-05-15	85	79.00	2024-10-05 15:45:00	2024-10-05 15:45:00
936	122	BATCH5680	2025-01-15	59	79.00	2024-10-30 08:45:00	2024-10-30 08:45:00
937	180	BATCH2588	2025-03-15	97	97.00	2024-10-30 08:45:00	2024-10-30 08:45:00
938	123	BATCH3556	2025-04-15	82	30.00	2024-10-30 08:45:00	2024-10-30 08:45:00
939	58	BATCH8672	2025-04-15	90	78.00	2024-10-30 08:45:00	2024-10-30 08:45:00
940	125	BATCH4841	2025-03-15	50	58.00	2024-10-30 08:45:00	2024-10-30 08:45:00
941	139	BATCH8541	2025-02-15	81	55.00	2024-11-24 08:59:00	2024-11-24 08:59:00
942	152	BATCH7214	2025-04-15	81	65.00	2024-11-24 08:59:00	2024-11-24 08:59:00
943	111	BATCH6560	2025-06-15	74	36.00	2024-11-24 08:59:00	2024-11-24 08:59:00
891	258	BATCH7575	2025-06-15	33	81.00	2024-10-03 10:32:00	2024-10-03 13:51:00
945	237	BATCH8903	2025-05-15	57	45.00	2024-11-24 08:59:00	2024-11-24 08:59:00
946	189	BATCH7692	2025-01-15	50	41.00	2024-11-01 16:48:00	2024-11-01 16:48:00
947	35	BATCH6508	2025-02-15	83	56.00	2024-11-01 16:48:00	2024-11-01 16:48:00
948	3	BATCH3701	2025-04-15	82	44.00	2024-11-01 16:48:00	2024-11-01 16:48:00
949	41	BATCH3919	2025-02-15	53	47.00	2024-11-01 16:48:00	2024-11-01 16:48:00
950	42	BATCH7109	2025-04-15	99	75.00	2024-11-01 16:48:00	2024-11-01 16:48:00
951	243	BATCH5217	2025-05-15	67	71.00	2024-11-02 11:00:00	2024-11-02 11:00:00
952	141	BATCH4789	2025-06-15	91	51.00	2024-11-02 11:00:00	2024-11-02 11:00:00
953	157	BATCH7794	2025-02-15	96	20.00	2024-11-02 11:00:00	2024-11-02 11:00:00
954	143	BATCH6709	2025-04-15	77	97.00	2024-11-02 11:00:00	2024-11-02 11:00:00
955	214	BATCH9222	2025-03-15	77	50.00	2024-11-02 11:00:00	2024-11-02 11:00:00
956	34	BATCH5994	2025-06-15	84	95.00	2024-11-27 15:45:00	2024-11-27 15:45:00
958	37	BATCH2926	2025-05-15	94	59.00	2024-11-27 15:45:00	2024-11-27 15:45:00
959	83	BATCH3936	2025-06-15	100	28.00	2024-11-27 15:45:00	2024-11-27 15:45:00
960	4	BATCH7911	2025-03-15	70	51.00	2024-11-27 15:45:00	2024-11-27 15:45:00
961	8	BATCH6217	2025-04-15	83	47.00	2024-11-18 11:03:00	2024-11-18 11:03:00
963	252	BATCH7750	2025-03-15	79	81.00	2024-11-18 11:03:00	2024-11-18 11:03:00
964	176	BATCH5734	2025-04-15	99	84.00	2024-11-18 11:03:00	2024-11-18 11:03:00
965	9	BATCH6502	2025-01-15	94	45.00	2024-11-18 11:03:00	2024-11-18 11:03:00
966	7	BATCH4242	2025-03-15	66	92.00	2024-11-20 16:10:00	2024-11-20 16:10:00
967	122	BATCH1594	2025-03-15	97	71.00	2024-11-20 16:10:00	2024-11-20 16:10:00
968	180	BATCH1454	2025-04-15	78	95.00	2024-11-20 16:10:00	2024-11-20 16:10:00
897	261	BATCH3141	2025-04-15	0	35.00	2024-10-18 11:33:00	2024-09-29 11:56:00
913	207	BATCH3571	2025-01-15	0	45.00	2024-10-01 13:36:00	2024-09-07 14:50:00
281	168	BATCH6179	2025-01-15	69	46.00	2024-09-20 16:45:00	2024-10-03 14:22:00
884	117	BATCH7179	2025-03-15	92	91.00	2024-10-05 09:18:00	2024-10-07 11:24:00
905	117	BATCH9146	2025-01-15	54	32.00	2024-10-26 08:11:00	2024-11-21 16:01:00
889	260	BATCH6733	2025-03-15	73	23.00	2024-10-13 10:26:00	2024-11-16 09:26:00
962	260	BATCH3008	2025-02-15	63	23.00	2024-11-18 11:03:00	2024-11-02 11:50:00
898	25	BATCH8382	2025-03-15	10	73.00	2024-10-18 11:33:00	2024-11-15 12:49:00
957	82	BATCH1592	2025-01-15	82	59.00	2024-11-27 15:45:00	2024-11-18 16:54:00
934	262	BATCH2293	2025-01-15	35	82.00	2024-10-05 15:45:00	2024-11-02 08:48:00
969	123	BATCH7430	2025-02-15	91	79.00	2024-11-20 16:10:00	2024-11-20 16:10:00
970	252	BATCH4544	2025-06-15	77	63.00	2024-11-20 16:10:00	2024-11-20 16:10:00
971	151	BATCH6190	2025-01-15	77	28.00	2024-11-29 14:23:00	2024-11-29 14:23:00
973	259	BATCH5819	2025-03-15	82	95.00	2024-11-29 14:23:00	2024-11-29 14:23:00
974	210	BATCH1870	2025-03-15	70	51.00	2024-11-29 14:23:00	2024-11-29 14:23:00
975	216	BATCH8650	2025-05-15	99	31.00	2024-11-29 14:23:00	2024-11-29 14:23:00
976	199	BATCH1662	2025-06-15	72	89.00	2024-11-27 12:57:00	2024-11-27 12:57:00
977	206	BATCH4348	2025-01-15	80	96.00	2024-11-27 12:57:00	2024-11-27 12:57:00
979	146	BATCH4900	2025-06-15	72	59.00	2024-11-27 12:57:00	2024-11-27 12:57:00
980	87	BATCH2857	2025-02-15	56	35.00	2024-11-27 12:57:00	2024-11-27 12:57:00
981	77	BATCH3325	2025-05-15	52	36.00	2024-11-30 15:47:00	2024-11-30 15:47:00
982	62	BATCH9431	2025-06-15	64	49.00	2024-11-30 15:47:00	2024-11-30 15:47:00
983	63	BATCH8950	2025-02-15	71	48.00	2024-11-30 15:47:00	2024-11-30 15:47:00
984	196	BATCH5351	2025-01-15	76	39.00	2024-11-30 15:47:00	2024-11-30 15:47:00
985	162	BATCH7897	2025-04-15	88	31.00	2024-11-30 15:47:00	2024-11-30 15:47:00
986	183	BATCH6651	2025-06-15	93	64.00	2024-11-12 10:34:00	2024-11-12 10:34:00
987	106	BATCH6170	2025-05-15	98	71.00	2024-11-12 10:34:00	2024-11-12 10:34:00
988	25	BATCH1340	2025-01-15	58	30.00	2024-11-12 10:34:00	2024-11-12 10:34:00
989	75	BATCH4824	2025-03-15	84	89.00	2024-11-12 10:34:00	2024-11-12 10:34:00
990	76	BATCH7413	2025-03-15	54	62.00	2024-11-12 10:34:00	2024-11-12 10:34:00
991	12	BATCH1581	2025-05-15	88	28.00	2024-11-15 09:13:00	2024-11-15 09:13:00
992	202	BATCH1852	2025-02-15	87	65.00	2024-11-15 09:13:00	2024-11-15 09:13:00
993	15	BATCH7195	2025-05-15	79	44.00	2024-11-15 09:13:00	2024-11-15 09:13:00
994	56	BATCH2723	2025-01-15	76	74.00	2024-11-15 09:13:00	2024-11-15 09:13:00
995	221	BATCH3759	2025-05-15	96	41.00	2024-11-15 09:13:00	2024-11-15 09:13:00
996	100	BATCH4136	2025-05-15	87	63.00	2024-11-22 14:45:00	2024-11-22 14:45:00
997	102	BATCH2203	2025-02-15	77	60.00	2024-11-22 14:45:00	2024-11-22 14:45:00
998	190	BATCH2314	2025-01-15	59	51.00	2024-11-22 14:45:00	2024-11-22 14:45:00
999	79	BATCH1022	2025-03-15	90	97.00	2024-11-22 14:45:00	2024-11-22 14:45:00
1000	162	BATCH5592	2025-05-15	95	95.00	2024-11-22 14:45:00	2024-11-22 14:45:00
1001	154	BATCH4542	2025-02-15	72	69.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1002	31	BATCH1287	2025-01-15	52	32.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1003	101	BATCH3267	2025-02-15	84	47.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1004	49	BATCH2767	2025-02-15	83	24.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1005	190	BATCH8480	2025-06-15	89	43.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1006	91	BATCH1692	2025-03-15	52	87.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1007	228	BATCH3806	2025-02-15	83	38.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1008	46	BATCH7167	2025-06-15	75	48.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1009	13	BATCH4557	2025-04-15	51	46.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1010	92	BATCH7489	2025-06-15	54	44.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1011	154	BATCH7491	2025-03-15	56	21.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1012	195	BATCH6451	2025-04-15	93	74.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1013	190	BATCH3122	2025-02-15	66	80.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1014	33	BATCH6630	2025-05-15	54	23.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1015	63	BATCH1001	2025-02-15	56	83.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1017	142	BATCH7275	2025-04-15	79	97.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1018	143	BATCH1807	2025-04-15	53	53.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1020	247	BATCH5599	2025-04-15	87	37.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1021	93	BATCH8576	2025-01-15	71	28.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1022	132	BATCH2741	2025-06-15	67	96.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1023	149	BATCH3822	2025-02-15	87	61.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1024	27	BATCH6472	2025-04-15	68	51.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1026	198	BATCH8368	2025-03-15	77	27.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1027	146	BATCH5992	2025-03-15	68	69.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1028	229	BATCH2595	2025-04-15	98	54.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1029	88	BATCH4048	2025-01-15	68	74.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1030	148	BATCH3949	2025-03-15	73	34.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1031	151	BATCH3985	2025-03-15	57	30.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1032	153	BATCH5287	2025-01-15	94	56.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1033	215	BATCH6924	2025-06-15	56	73.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1034	111	BATCH6388	2025-02-15	54	23.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1035	163	BATCH5835	2025-01-15	73	76.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1036	226	BATCH8470	2025-06-15	82	22.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1037	86	BATCH7201	2025-02-15	69	84.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1039	146	BATCH4230	2025-04-15	83	89.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1041	258	BATCH3674	2025-03-15	63	84.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1042	139	BATCH8897	2025-04-15	89	68.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1043	152	BATCH3286	2025-01-15	66	91.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1044	164	BATCH7264	2025-04-15	65	67.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1045	112	BATCH1190	2025-03-15	53	23.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1046	2	BATCH7726	2025-01-15	52	26.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1047	21	BATCH4538	2025-02-15	72	24.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1048	22	BATCH5926	2025-06-15	53	25.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1049	83	BATCH3807	2025-03-15	91	68.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1050	3	BATCH5443	2025-05-15	83	50.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1051	106	BATCH1157	2025-05-15	64	38.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1053	19	BATCH3295	2025-01-15	85	46.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1054	26	BATCH4147	2025-05-15	99	100.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1055	107	BATCH4554	2025-01-15	57	96.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1056	155	BATCH7208	2025-03-15	50	37.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1038	205	BATCH7332	2025-03-15	0	64.00	2024-11-06 08:31:00	2024-11-28 13:52:00
1025	255	BATCH1623	2025-03-15	0	58.00	2024-11-14 11:55:00	2024-10-09 08:34:00
972	153	BATCH8758	2025-05-15	58	31.00	2024-11-29 14:23:00	2024-11-09 10:01:00
978	263	BATCH9565	2025-01-15	21	86.00	2024-11-27 12:57:00	2024-11-28 13:52:00
1040	257	BATCH3258	2025-04-15	0	91.00	2024-11-06 08:31:00	2024-11-12 08:53:00
1052	18	BATCH3779	2025-06-15	53	65.00	2024-11-04 08:59:00	2024-11-17 11:09:00
1016	218	BATCH4314	2025-03-15	46	53.00	2024-11-12 10:25:00	2024-11-21 10:17:00
1057	156	BATCH8967	2025-04-15	67	42.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1058	142	BATCH3084	2025-01-15	92	42.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1059	158	BATCH1228	2025-04-15	83	48.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1060	248	BATCH1616	2025-01-15	62	45.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1061	11	BATCH5688	2025-05-15	68	72.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1100	257	BATCH3572	2025-06-15	10	33.00	2024-11-07 09:23:00	2024-11-12 14:18:00
1063	201	BATCH7351	2025-02-15	73	31.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1064	14	BATCH1222	2025-02-15	58	20.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1065	48	BATCH5408	2025-04-15	69	28.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1067	167	BATCH7187	2025-05-15	56	96.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1068	171	BATCH6496	2025-05-15	52	93.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1069	192	BATCH3695	2025-03-15	78	23.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1070	71	BATCH4291	2025-04-15	67	34.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1071	119	BATCH5059	2025-02-15	50	93.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1072	97	BATCH3747	2025-03-15	59	62.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1073	204	BATCH6245	2025-06-15	83	92.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1074	143	BATCH6011	2025-04-15	78	94.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1075	248	BATCH7532	2025-01-15	87	90.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1076	130	BATCH7560	2025-01-15	64	74.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1078	131	BATCH6776	2025-06-15	66	41.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1079	185	BATCH3255	2025-03-15	70	77.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1080	171	BATCH4441	2025-05-15	87	89.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1081	6	BATCH3830	2025-03-15	50	27.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1082	182	BATCH6597	2025-02-15	98	77.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1083	176	BATCH5394	2025-02-15	61	72.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1084	44	BATCH8282	2025-01-15	69	81.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1085	10	BATCH8040	2025-05-15	53	36.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1087	160	BATCH8581	2025-01-15	97	20.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1088	131	BATCH6685	2025-02-15	51	87.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1089	179	BATCH2417	2025-01-15	55	42.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1090	186	BATCH6781	2025-02-15	60	43.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1091	132	BATCH8711	2025-06-15	92	60.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1093	74	BATCH1475	2025-03-15	94	32.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1094	240	BATCH9968	2025-01-15	63	53.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1095	76	BATCH4611	2025-06-15	80	62.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1096	227	BATCH2754	2025-05-15	75	20.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1097	148	BATCH9751	2025-04-15	52	37.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1099	238	BATCH6804	2025-03-15	92	94.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1101	18	BATCH5309	2025-06-15	99	88.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1102	240	BATCH9855	2025-01-15	99	88.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1103	27	BATCH1177	2025-05-15	61	72.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1104	107	BATCH6256	2025-04-15	88	45.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1106	113	BATCH4390	2025-03-15	87	34.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1107	53	BATCH3383	2025-04-15	63	35.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1108	54	BATCH9115	2025-05-15	94	92.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1109	262	BATCH1196	2025-03-15	79	55.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1110	127	BATCH3377	2025-05-15	63	80.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1111	198	BATCH4607	2025-01-15	82	50.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1112	226	BATCH8502	2025-05-15	63	52.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1113	145	BATCH8549	2025-06-15	77	59.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1114	147	BATCH6662	2025-03-15	65	36.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1115	89	BATCH2383	2025-03-15	59	42.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1116	151	BATCH1060	2025-04-15	100	83.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1117	153	BATCH1866	2025-05-15	54	76.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1118	210	BATCH3148	2025-06-15	97	63.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1119	211	BATCH1479	2025-03-15	79	26.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1120	222	BATCH1431	2025-04-15	97	97.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1121	260	BATCH1304	2025-04-15	94	67.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1122	177	BATCH1841	2025-04-15	71	87.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1123	67	BATCH3683	2025-01-15	84	48.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1124	124	BATCH3128	2025-05-15	75	40.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1125	125	BATCH7616	2025-05-15	78	60.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1126	138	BATCH9065	2025-01-15	85	87.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1127	108	BATCH1921	2025-02-15	97	64.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1128	152	BATCH1562	2025-06-15	93	60.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1129	210	BATCH1415	2025-05-15	97	60.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1130	236	BATCH4330	2025-06-15	71	29.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1131	126	BATCH2086	2025-04-15	54	77.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1132	12	BATCH4995	2025-06-15	59	50.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1133	104	BATCH5961	2025-04-15	98	94.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1134	55	BATCH4775	2025-05-15	51	68.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1135	105	BATCH6000	2025-06-15	59	50.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1136	43	BATCH8044	2025-02-15	72	62.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1137	64	BATCH5366	2025-03-15	95	81.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1138	176	BATCH1672	2025-01-15	68	90.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1139	187	BATCH6185	2025-05-15	52	58.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1140	124	BATCH1435	2025-03-15	55	37.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1142	92	BATCH3716	2025-05-15	74	70.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1143	56	BATCH6449	2025-06-15	79	32.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1144	262	BATCH5863	2025-02-15	87	29.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1092	261	BATCH8108	2025-03-15	0	46.00	2024-11-24 08:51:00	2024-10-11 10:34:00
779	111	BATCH3278	2025-05-15	53	32.00	2024-10-26 09:45:00	2024-10-23 14:30:00
1098	230	BATCH9259	2025-03-15	4	74.00	2024-11-07 09:23:00	2024-11-10 16:27:00
1077	170	BATCH8974	2025-01-15	0	99.00	2024-11-19 16:27:00	2024-09-10 16:34:00
1066	253	BATCH5550	2025-06-15	0	82.00	2024-11-29 13:44:00	2024-11-24 16:53:00
1086	159	BATCH5728	2025-03-15	44	32.00	2024-11-08 10:31:00	2024-11-09 16:42:00
1105	255	BATCH6951	2025-01-15	22	97.00	2024-11-24 12:26:00	2024-11-01 13:01:00
1145	48	BATCH7772	2025-05-15	52	44.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1147	18	BATCH5991	2025-06-15	67	55.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1148	74	BATCH9415	2025-02-15	71	45.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1149	150	BATCH3296	2025-02-15	96	85.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1150	20	BATCH3292	2025-02-15	74	45.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1151	254	BATCH9677	2025-01-15	92	88.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1152	151	BATCH5495	2025-06-15	68	93.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1153	234	BATCH9568	2025-05-15	73	39.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1155	210	BATCH2653	2025-04-15	92	26.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1156	193	BATCH8328	2025-04-15	71	92.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1158	225	BATCH1367	2025-05-15	64	31.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1161	258	BATCH2360	2025-06-15	62	80.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1162	108	BATCH8577	2025-05-15	56	50.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1163	215	BATCH5943	2025-02-15	83	23.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1164	216	BATCH5301	2025-06-15	65	67.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1165	237	BATCH6390	2025-01-15	91	92.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1166	81	BATCH2756	2025-01-15	75	100.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1167	34	BATCH8706	2025-05-15	99	79.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1168	2	BATCH4686	2025-05-15	65	68.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1169	22	BATCH4813	2025-05-15	72	58.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1170	37	BATCH7530	2025-01-15	54	74.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1171	183	BATCH3673	2025-03-15	62	33.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1172	17	BATCH2785	2025-02-15	88	78.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1173	25	BATCH5319	2025-01-15	55	63.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1174	149	BATCH4524	2025-04-15	86	35.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1175	150	BATCH1398	2025-03-15	52	26.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1146	250	BATCH6287	2025-01-15	56	100.00	2024-11-16 11:40:00	2024-11-15 12:49:00
1177	206	BATCH1886	2025-04-15	77	91.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1179	227	BATCH3341	2025-06-15	53	33.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1180	257	BATCH6282	2025-06-15	59	53.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1181	243	BATCH5427	2025-02-15	61	89.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1182	96	BATCH7704	2025-06-15	89	76.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1183	142	BATCH7549	2025-04-15	82	43.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1184	99	BATCH4063	2025-04-15	77	60.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1185	248	BATCH5760	2025-06-15	74	95.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1186	106	BATCH9296	2025-04-15	99	39.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1187	250	BATCH5986	2025-05-15	66	45.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1188	19	BATCH9450	2025-01-15	89	36.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1189	27	BATCH6783	2025-03-15	68	56.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1190	107	BATCH3984	2025-06-15	91	79.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1191	233	BATCH1779	2025-06-15	70	35.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1192	40	BATCH8403	2025-04-15	62	39.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1193	37	BATCH8953	2025-02-15	86	43.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1194	38	BATCH3920	2025-03-15	71	60.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1195	5	BATCH5073	2025-01-15	83	95.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1196	172	BATCH6834	2025-05-15	77	86.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1197	168	BATCH8680	2025-03-15	50	95.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1198	68	BATCH7076	2025-06-15	62	50.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1199	160	BATCH7631	2025-04-15	89	45.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1200	167	BATCH7243	2025-06-15	94	32.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1201	64	BATCH1198	2025-06-15	53	29.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1202	176	BATCH3988	2025-01-15	81	53.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1203	177	BATCH5702	2025-02-15	72	62.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1204	9	BATCH3856	2025-04-15	82	77.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1205	223	BATCH8525	2025-05-15	66	62.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1206	254	BATCH7031	2025-06-15	77	33.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1207	152	BATCH6417	2025-05-15	59	70.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1208	111	BATCH4287	2025-01-15	50	31.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1209	209	BATCH3843	2025-02-15	64	86.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1211	141	BATCH6592	2025-01-15	57	63.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1212	96	BATCH2965	2025-03-15	54	61.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1213	218	BATCH4643	2025-06-15	52	80.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1214	120	BATCH8247	2025-03-15	94	36.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1215	158	BATCH5048	2025-02-15	67	53.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1216	11	BATCH7507	2025-02-15	93	88.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1217	91	BATCH4863	2025-03-15	96	89.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1218	113	BATCH5604	2025-02-15	99	100.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1219	105	BATCH4821	2025-06-15	69	51.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1220	127	BATCH8760	2025-01-15	80	66.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1222	225	BATCH3027	2025-06-15	50	72.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1223	200	BATCH6912	2025-03-15	85	96.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1225	205	BATCH7874	2025-06-15	56	86.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1226	11	BATCH3631	2025-02-15	53	46.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1227	121	BATCH5451	2025-01-15	61	83.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1229	54	BATCH8793	2025-02-15	54	83.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1230	127	BATCH5244	2025-01-15	78	83.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1231	11	BATCH2100	2025-02-15	63	76.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1232	228	BATCH7474	2025-04-15	87	25.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1159	205	BATCH6890	2025-01-15	12	81.00	2024-11-25 10:18:00	2024-11-12 14:18:00
1210	235	BATCH4140	2025-01-15	0	56.00	2024-11-26 15:48:00	2024-10-23 11:44:00
1224	267	BATCH9140	2025-02-15	27	73.00	2024-11-11 08:25:00	2024-10-19 13:51:00
1221	265	BATCH3359	2025-03-15	43	47.00	2024-11-11 08:25:00	2024-09-23 16:53:00
1141	241	BATCH5203	2025-01-15	0	78.00	2024-11-01 08:59:00	2024-10-20 10:46:00
1154	235	BATCH1163	2025-01-15	72	49.00	2024-11-06 14:45:00	2024-10-21 14:29:00
1157	265	BATCH5271	2025-03-15	7	87.00	2024-11-25 10:18:00	2024-11-27 13:03:00
1178	266	BATCH9378	2025-03-15	0	21.00	2024-11-11 12:27:00	2024-11-23 11:28:00
1160	266	BATCH3152	2025-03-15	47	77.00	2024-11-25 10:18:00	2024-11-01 11:53:00
1233	46	BATCH4802	2025-01-15	55	73.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1234	54	BATCH3489	2025-02-15	61	59.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1236	34	BATCH4796	2025-03-15	98	54.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1237	35	BATCH1580	2025-04-15	98	95.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1238	4	BATCH9699	2025-05-15	85	28.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1239	117	BATCH3602	2025-04-15	95	34.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1240	239	BATCH9807	2025-03-15	88	57.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1241	129	BATCH9349	2025-06-15	89	39.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1242	68	BATCH1376	2025-04-15	98	81.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1244	131	BATCH3129	2025-01-15	97	99.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1245	242	BATCH3662	2025-04-15	91	63.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1246	95	BATCH9277	2025-04-15	90	95.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1247	213	BATCH5289	2025-05-15	88	87.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1248	142	BATCH6373	2025-04-15	69	33.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1249	244	BATCH2255	2025-02-15	67	48.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1250	247	BATCH6493	2025-01-15	84	85.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1251	17	BATCH6428	2025-06-15	89	79.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1252	75	BATCH1170	2025-02-15	62	25.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1253	184	BATCH5893	2025-03-15	58	40.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1254	20	BATCH5523	2025-02-15	69	33.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1255	255	BATCH9509	2025-06-15	53	28.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1256	208	BATCH2841	2025-05-15	66	27.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1257	139	BATCH1952	2025-06-15	60	48.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1258	210	BATCH1132	2025-06-15	79	37.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1259	222	BATCH9364	2025-04-15	62	96.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1260	236	BATCH6145	2025-01-15	69	31.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1261	249	BATCH6337	2025-01-15	91	81.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1262	3	BATCH9700	2025-06-15	65	68.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1263	117	BATCH5697	2025-05-15	57	80.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1265	134	BATCH1954	2025-03-15	69	74.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1266	153	BATCH2361	2025-03-15	80	37.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1267	215	BATCH5683	2025-06-15	56	23.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1268	234	BATCH4664	2025-05-15	78	80.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1269	164	BATCH1595	2025-05-15	72	98.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1270	165	BATCH1275	2025-02-15	72	32.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1271	155	BATCH3371	2025-01-15	72	24.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1273	97	BATCH8643	2025-01-15	94	51.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1274	244	BATCH3450	2025-03-15	53	100.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1276	233	BATCH3664	2025-05-15	62	59.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1277	197	BATCH1252	2025-03-15	74	56.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1278	37	BATCH6738	2025-06-15	54	79.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1279	5	BATCH1958	2025-04-15	72	81.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1280	134	BATCH6975	2025-05-15	83	91.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1281	138	BATCH3833	2025-04-15	50	66.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1282	215	BATCH9315	2025-02-15	54	22.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1283	111	BATCH8081	2025-06-15	77	84.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1284	236	BATCH6073	2025-04-15	59	41.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1285	165	BATCH8619	2025-02-15	67	33.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1286	208	BATCH1285	2025-06-15	57	55.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1287	151	BATCH2853	2025-03-15	57	53.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1288	259	BATCH3234	2025-03-15	52	95.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1289	222	BATCH8944	2025-02-15	78	24.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1290	112	BATCH9560	2025-02-15	65	35.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1291	95	BATCH7851	2025-03-15	82	65.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1292	141	BATCH8840	2025-05-15	62	64.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1293	98	BATCH5716	2025-03-15	73	21.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1294	244	BATCH2638	2025-06-15	86	98.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1295	99	BATCH4098	2025-05-15	61	74.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1296	172	BATCH3362	2025-05-15	84	88.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1297	185	BATCH8955	2025-01-15	77	76.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1299	179	BATCH9186	2025-03-15	94	86.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1301	101	BATCH6878	2025-06-15	58	57.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1302	49	BATCH2594	2025-04-15	90	24.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1303	102	BATCH1187	2025-06-15	95	36.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1304	196	BATCH3317	2025-05-15	61	65.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1305	52	BATCH5262	2025-04-15	74	48.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1306	200	BATCH1323	2025-04-15	94	79.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1307	226	BATCH8621	2025-03-15	81	78.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1308	227	BATCH8945	2025-05-15	100	60.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1309	87	BATCH1759	2025-04-15	100	80.00	2024-11-25 10:26:00	2024-11-25 10:26:00
605	72	BATCH4759	2025-02-15	40	49.00	2024-10-25 12:41:00	2024-10-17 09:05:00
1311	198	BATCH2149	2025-01-15	84	39.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1312	226	BATCH6297	2025-03-15	86	58.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1313	86	BATCH8856	2025-04-15	53	62.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1314	148	BATCH5183	2025-05-15	93	23.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1315	238	BATCH1088	2025-06-15	94	81.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1316	265	BATCH8359	2025-01-15	68	57.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1317	225	BATCH3480	2025-03-15	65	21.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1318	198	BATCH9488	2025-05-15	96	42.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1319	199	BATCH6285	2025-03-15	55	76.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1320	145	BATCH6774	2025-03-15	85	48.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1235	203	BATCH5616	2025-06-15	79	39.00	2024-11-25 14:36:00	2024-11-06 12:47:00
1298	175	BATCH2970	2025-06-15	21	68.00	2024-11-12 15:46:00	2024-11-10 14:43:00
1300	72	BATCH4889	2025-06-15	57	96.00	2024-11-12 15:46:00	2024-10-22 08:53:00
1243	169	BATCH3816	2025-02-15	0	65.00	2024-11-28 12:49:00	2024-10-19 10:00:00
1264	39	BATCH6495	2025-03-15	0	38.00	2024-11-27 12:45:00	2024-10-07 12:08:00
1272	140	BATCH7838	2025-03-15	38	84.00	2024-11-02 08:58:00	2024-11-21 10:17:00
1321	138	BATCH8591	2025-02-15	72	52.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1322	215	BATCH2581	2025-05-15	77	37.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1323	259	BATCH7609	2025-04-15	88	89.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1324	210	BATCH5535	2025-06-15	86	32.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1325	211	BATCH8751	2025-05-15	63	71.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1326	64	BATCH4468	2025-05-15	88	88.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1327	8	BATCH8162	2025-03-15	60	78.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1328	58	BATCH7438	2025-04-15	91	70.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1329	65	BATCH1787	2025-03-15	95	95.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1330	176	BATCH6416	2025-05-15	91	95.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1331	91	BATCH8158	2025-01-15	51	38.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1332	55	BATCH3055	2025-03-15	67	73.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1333	92	BATCH2248	2025-02-15	87	27.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1334	114	BATCH9131	2025-05-15	64	88.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1335	221	BATCH1983	2025-03-15	75	20.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1336	64	BATCH1427	2025-01-15	93	53.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1337	7	BATCH9359	2025-06-15	97	43.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1338	260	BATCH1344	2025-05-15	66	37.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1339	176	BATCH5597	2025-04-15	67	64.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1340	177	BATCH6492	2025-03-15	100	48.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1341	23	BATCH2074	2025-06-15	100	24.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1342	38	BATCH8761	2025-03-15	88	58.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1343	5	BATCH6341	2025-03-15	52	100.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1345	134	BATCH9374	2025-05-15	65	68.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1346	57	BATCH1453	2025-02-15	85	52.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1347	260	BATCH3661	2025-05-15	85	21.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1348	66	BATCH5314	2025-04-15	77	87.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1349	176	BATCH5722	2025-04-15	57	74.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1350	223	BATCH7864	2025-01-15	94	97.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1351	194	BATCH6350	2025-05-15	91	75.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1352	198	BATCH2153	2025-04-15	97	23.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1353	199	BATCH3335	2025-04-15	53	76.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1354	86	BATCH8020	2025-01-15	75	43.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1355	267	BATCH7807	2025-01-15	65	77.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1357	250	BATCH3799	2025-05-15	75	79.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1358	19	BATCH6535	2025-04-15	87	81.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1359	149	BATCH9808	2025-06-15	92	25.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1360	76	BATCH6277	2025-05-15	87	72.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1361	249	BATCH6965	2025-06-15	91	94.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1362	135	BATCH6392	2025-06-15	81	23.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1363	37	BATCH9261	2025-05-15	68	24.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1364	38	BATCH6251	2025-04-15	67	96.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1365	5	BATCH4499	2025-03-15	62	47.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1366	137	BATCH5007	2025-01-15	90	33.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1367	110	BATCH5611	2025-06-15	60	39.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1368	153	BATCH9802	2025-04-15	93	98.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1369	216	BATCH5580	2025-05-15	76	92.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1370	112	BATCH6123	2025-01-15	75	43.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1371	141	BATCH2851	2025-03-15	76	54.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1372	98	BATCH8794	2025-03-15	66	58.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1373	214	BATCH7411	2025-02-15	57	37.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1374	246	BATCH5477	2025-01-15	69	37.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1376	82	BATCH1825	2025-06-15	89	26.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1377	21	BATCH7882	2025-06-15	72	87.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1378	40	BATCH8455	2025-03-15	91	76.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1379	37	BATCH1987	2025-05-15	58	100.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1380	5	BATCH9749	2025-04-15	92	40.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1381	126	BATCH7064	2025-01-15	99	43.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1383	12	BATCH2718	2025-01-15	94	56.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1384	104	BATCH4865	2025-04-15	53	28.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1385	220	BATCH1153	2025-03-15	98	54.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1386	217	BATCH4235	2025-02-15	53	46.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1387	178	BATCH7193	2025-05-15	61	91.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1389	192	BATCH9025	2025-04-15	94	27.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1390	161	BATCH2271	2025-03-15	87	21.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1391	81	BATCH2616	2025-05-15	72	26.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1392	36	BATCH4103	2025-01-15	68	44.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1393	189	BATCH2621	2025-06-15	58	25.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1394	2	BATCH9958	2025-01-15	65	90.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1395	40	BATCH9076	2025-01-15	53	26.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1396	82	BATCH7940	2025-01-15	95	55.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1397	22	BATCH1521	2025-02-15	70	23.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1398	83	BATCH3339	2025-05-15	79	78.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1399	23	BATCH5639	2025-06-15	74	93.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1400	134	BATCH8197	2025-02-15	72	73.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1401	191	BATCH1093	2025-01-15	61	71.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1402	130	BATCH8346	2025-03-15	55	60.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1403	253	BATCH8812	2025-03-15	84	54.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1405	186	BATCH2258	2025-05-15	63	48.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1406	138	BATCH4285	2025-01-15	58	91.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1407	108	BATCH4964	2025-05-15	84	91.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1408	109	BATCH2185	2025-03-15	77	51.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1356	261	BATCH8053	2025-06-15	0	78.00	2024-11-01 15:10:00	2024-11-01 13:01:00
1404	173	BATCH4747	2025-05-15	13	68.00	2024-11-04 12:24:00	2024-11-21 15:34:00
1382	241	BATCH7888	2025-03-15	4	69.00	2024-11-26 13:44:00	2024-11-05 15:51:00
1388	170	BATCH2056	2025-02-15	53	37.00	2024-11-19 14:08:00	2024-11-09 16:42:00
1344	39	BATCH5463	2025-03-15	44	71.00	2024-11-30 15:19:00	2024-11-11 10:58:00
1409	111	BATCH5692	2025-02-15	82	21.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1410	222	BATCH8378	2025-03-15	75	99.00	2024-11-22 09:19:00	2024-11-22 09:19:00
342	191	BATCH3682	2025-02-15	81	96.00	2024-09-02 13:08:00	2024-09-15 12:13:00
263	160	BATCH6438	2025-02-15	49	61.00	2024-09-10 10:18:00	2024-09-15 12:13:00
111	85	BATCH8767	2025-05-15	66	23.00	2024-09-25 15:52:00	2024-09-18 13:15:00
1176	267	BATCH3298	2025-04-15	68	58.00	2024-11-11 12:27:00	2024-09-18 13:15:00
770	257	BATCH5663	2025-02-15	49	64.00	2024-10-25 09:23:00	2024-09-18 13:15:00
36	34	BATCH6402	2025-06-15	25	67.00	2024-09-18 12:22:00	2024-09-30 15:47:00
548	235	BATCH3829	2025-03-15	68	85.00	2024-10-30 14:26:00	2024-09-16 08:25:00
680	252	BATCH1934	2025-06-15	30	72.00	2024-10-13 12:45:00	2024-09-15 12:58:00
379	203	BATCH5579	2025-03-15	53	84.00	2024-09-29 16:10:00	2024-09-05 13:14:00
944	235	BATCH1197	2025-05-15	40	82.00	2024-11-24 08:59:00	2024-09-29 15:44:00
805	203	BATCH3591	2025-03-15	38	81.00	2024-10-10 11:32:00	2024-09-17 08:06:00
1062	241	BATCH5532	2025-02-15	95	73.00	2024-11-14 09:46:00	2024-09-27 16:21:00
66	53	BATCH8214	2025-05-15	61	46.00	2024-09-13 13:37:00	2024-09-27 16:21:00
101	81	BATCH7410	2025-02-15	47	87.00	2024-09-16 10:33:00	2024-09-27 16:57:00
449	222	BATCH7594	2025-05-15	35	87.00	2024-09-09 10:54:00	2024-09-25 08:26:00
189	124	BATCH5571	2025-01-15	31	86.00	2024-09-21 16:16:00	2024-09-26 16:25:00
340	162	BATCH8029	2025-03-15	75	27.00	2024-09-18 15:03:00	2024-09-14 12:57:00
33	31	BATCH3333	2025-03-15	59	22.00	2024-09-14 14:41:00	2024-09-27 16:35:00
551	193	BATCH2787	2025-04-15	49	90.00	2024-10-28 08:20:00	2024-10-11 09:46:00
435	219	BATCH5424	2025-06-15	0	32.00	2024-09-03 12:26:00	2024-09-29 12:36:00
68	55	BATCH4185	2025-05-15	5	52.00	2024-09-13 13:37:00	2024-09-19 13:43:00
347	193	BATCH4167	2025-02-15	66	88.00	2024-09-08 12:03:00	2024-09-26 10:33:00
1310	268	BATCH2954	2025-05-15	0	72.00	2024-11-25 10:26:00	2024-09-23 16:53:00
834	205	BATCH5556	2025-04-15	79	81.00	2024-10-23 11:21:00	2024-10-30 09:04:00
133	97	BATCH3322	2025-05-15	0	74.00	2024-09-27 08:58:00	2024-10-20 12:29:00
1228	241	BATCH6322	2025-04-15	66	69.00	2024-11-15 08:59:00	2024-10-07 09:27:00
919	175	BATCH2856	2025-01-15	31	84.00	2024-10-10 11:31:00	2024-10-23 11:20:00
746	193	BATCH6963	2025-03-15	0	56.00	2024-10-05 15:47:00	2024-11-27 08:14:00
412	213	BATCH5638	2025-05-15	21	44.00	2024-09-21 16:52:00	2024-11-27 11:31:00
260	42	BATCH7581	2025-06-15	42	66.00	2024-09-11 13:27:00	2024-11-11 10:58:00
108	50	BATCH6029	2025-02-15	2	99.00	2024-09-21 15:49:00	2024-11-28 11:59:00
272	153	BATCH5870	2025-02-15	72	94.00	2024-09-13 16:49:00	2024-11-27 13:58:00
1019	264	BATCH5431	2025-03-15	10	66.00	2024-11-12 10:25:00	2024-11-27 11:52:00
1275	245	BATCH5207	2025-02-15	9	61.00	2024-11-02 08:58:00	2024-11-17 15:49:00
\.


--
-- Data for Name: cache; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache (key, value, expiration) FROM stdin;
a17961fa74e9275d529f489537f179c05d50c2f3:timer	i:1734308968;	1734308968
a17961fa74e9275d529f489537f179c05d50c2f3	i:1;	1734308968
\.


--
-- Data for Name: cache_locks; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cache_locks (key, owner, expiration) FROM stdin;
\.


--
-- Data for Name: cash_movements; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.cash_movements (id, account_id, type_movement, amount, created_at, updated_at) FROM stdin;
1	1	egreso	42594.50	2024-12-15 19:26:21	2024-12-15 19:26:21
2	2	ingreso	12169.86	2024-12-15 19:26:21	2024-12-15 19:26:21
3	1	egreso	52979.50	2024-12-15 19:26:21	2024-12-15 19:26:21
4	6	ingreso	15137.00	2024-12-15 19:26:21	2024-12-15 19:26:21
5	3	egreso	72627.10	2024-12-15 19:26:21	2024-12-15 19:26:21
6	6	ingreso	20750.60	2024-12-15 19:26:21	2024-12-15 19:26:21
7	4	egreso	90258.80	2024-12-15 19:26:21	2024-12-15 19:26:21
8	2	ingreso	90258.80	2024-12-15 19:26:21	2024-12-15 19:26:21
9	4	egreso	41073.70	2024-12-15 19:26:21	2024-12-15 19:26:21
10	5	ingreso	143757.95	2024-12-15 19:26:21	2024-12-15 19:26:21
11	4	egreso	54583.40	2024-12-15 19:26:21	2024-12-15 19:26:21
12	2	ingreso	54583.40	2024-12-15 19:26:21	2024-12-15 19:26:21
13	3	egreso	39046.80	2024-12-15 19:26:21	2024-12-15 19:26:21
14	4	ingreso	11156.23	2024-12-15 19:26:21	2024-12-15 19:26:21
15	6	egreso	64023.50	2024-12-15 19:26:21	2024-12-15 19:26:21
16	3	ingreso	224082.25	2024-12-15 19:26:21	2024-12-15 19:26:21
17	5	egreso	11197.30	2024-12-15 19:26:21	2024-12-15 19:26:21
18	6	ingreso	3199.23	2024-12-15 19:26:21	2024-12-15 19:26:21
19	2	egreso	87322.60	2024-12-15 19:26:21	2024-12-15 19:26:21
20	5	ingreso	305629.10	2024-12-15 19:26:21	2024-12-15 19:26:21
21	6	egreso	39301.40	2024-12-15 19:26:21	2024-12-15 19:26:21
22	1	ingreso	137554.90	2024-12-15 19:26:21	2024-12-15 19:26:21
23	1	egreso	93767.10	2024-12-15 19:26:21	2024-12-15 19:26:21
24	5	ingreso	93767.10	2024-12-15 19:26:21	2024-12-15 19:26:21
25	4	egreso	94468.70	2024-12-15 19:26:21	2024-12-15 19:26:21
26	6	ingreso	94468.70	2024-12-15 19:26:21	2024-12-15 19:26:21
27	5	egreso	57731.80	2024-12-15 19:26:21	2024-12-15 19:26:21
28	3	ingreso	57731.80	2024-12-15 19:26:21	2024-12-15 19:26:21
29	1	egreso	87996.80	2024-12-15 19:26:21	2024-12-15 19:26:21
30	4	ingreso	25141.94	2024-12-15 19:26:21	2024-12-15 19:26:21
31	6	egreso	49601.50	2024-12-15 19:26:21	2024-12-15 19:26:21
32	3	ingreso	173605.25	2024-12-15 19:26:21	2024-12-15 19:26:21
33	5	egreso	27715.20	2024-12-15 19:26:21	2024-12-15 19:26:21
34	4	ingreso	7918.63	2024-12-15 19:26:21	2024-12-15 19:26:21
35	5	egreso	93817.90	2024-12-15 19:26:21	2024-12-15 19:26:21
36	4	ingreso	26805.11	2024-12-15 19:26:21	2024-12-15 19:26:21
37	2	egreso	58639.60	2024-12-15 19:26:22	2024-12-15 19:26:22
38	4	ingreso	58639.60	2024-12-15 19:26:22	2024-12-15 19:26:22
39	5	egreso	70372.00	2024-12-15 19:26:22	2024-12-15 19:26:22
40	3	ingreso	70372.00	2024-12-15 19:26:22	2024-12-15 19:26:22
41	5	egreso	73155.50	2024-12-15 19:26:22	2024-12-15 19:26:22
42	1	ingreso	73155.50	2024-12-15 19:26:22	2024-12-15 19:26:22
43	2	egreso	25895.60	2024-12-15 19:26:22	2024-12-15 19:26:22
44	5	ingreso	90634.60	2024-12-15 19:26:22	2024-12-15 19:26:22
45	4	egreso	98663.00	2024-12-15 19:26:22	2024-12-15 19:26:22
46	2	ingreso	98663.00	2024-12-15 19:26:22	2024-12-15 19:26:22
47	4	egreso	16447.80	2024-12-15 19:26:22	2024-12-15 19:26:22
48	5	ingreso	57567.30	2024-12-15 19:26:22	2024-12-15 19:26:22
49	1	egreso	93873.70	2024-12-15 19:26:22	2024-12-15 19:26:22
50	5	ingreso	93873.70	2024-12-15 19:26:22	2024-12-15 19:26:22
51	5	egreso	37412.70	2024-12-15 19:26:22	2024-12-15 19:26:22
52	1	ingreso	37412.70	2024-12-15 19:26:22	2024-12-15 19:26:22
53	5	egreso	29846.30	2024-12-15 19:26:22	2024-12-15 19:26:22
54	2	ingreso	8527.51	2024-12-15 19:26:22	2024-12-15 19:26:22
55	1	egreso	94294.30	2024-12-15 19:26:22	2024-12-15 19:26:22
56	2	ingreso	26941.23	2024-12-15 19:26:22	2024-12-15 19:26:22
57	1	egreso	33872.90	2024-12-15 19:26:22	2024-12-15 19:26:22
58	2	ingreso	9677.97	2024-12-15 19:26:22	2024-12-15 19:26:22
59	3	egreso	51227.90	2024-12-15 19:26:22	2024-12-15 19:26:22
60	1	ingreso	51227.90	2024-12-15 19:26:22	2024-12-15 19:26:22
\.


--
-- Data for Name: concepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.concepts (id, name, group_of_concept_id, is_expense, created_at, updated_at) FROM stdin;
1	Vi├íticos	4	t	\N	\N
2	Alquiler de local	4	t	\N	\N
3	Compra de mobiliario	1	t	\N	\N
4	Compra de computadoras	1	t	\N	\N
5	Compra de certificado SSL	1	t	\N	\N
6	Cobranza de alquiler	2	f	\N	\N
7	Compra de software	1	t	\N	\N
8	Pago de servicios b├ísicos	4	t	\N	\N
9	Mantenimiento de equipos	1	t	\N	\N
10	Reparaci├│n de mobiliario	1	t	\N	\N
11	Pago de impuestos	4	t	\N	\N
12	Consultor├¡a externa	4	t	\N	\N
13	Pago de honorarios profesionales	4	t	\N	\N
14	Pago de pr├®stamos bancarios	4	t	\N	\N
15	Cobranza de pr├®stamos a empleados	2	f	\N	\N
16	Comisiones de venta	2	f	\N	\N
17	Venta de activos fijos	2	f	\N	\N
18	Depreciaci├│n de activos	1	t	\N	\N
19	Pago de seguros	4	t	\N	\N
20	Adquisici├│n de licencias de software	1	t	\N	\N
21	Cobro de intereses por pr├®stamos	2	f	\N	\N
22	Pago de intereses por pr├®stamos	4	t	\N	\N
23	Capacitaci├│n del personal	4	t	\N	\N
24	Compra de material de oficina	1	t	\N	\N
25	Gastos de transporte	4	t	\N	\N
26	Gastos de representaci├│n	4	t	\N	\N
27	Bonificaciones a empleados	4	t	\N	\N
28	Devoluciones de clientes	2	f	\N	\N
29	Cobro de indemnizaciones	2	f	\N	\N
30	Pago de licencias de software	1	t	\N	\N
31	Adquisici├│n de veh├¡culos	1	t	\N	\N
32	Cobro por servicios prestados	2	f	\N	\N
33	Descuento de facturas por cobranza anticipada	2	f	\N	\N
34	Pago de utilidades a empleados	4	t	\N	\N
35	Multas y sanciones	4	t	\N	\N
36	Recuperaci├│n de deudas incobrables	2	f	\N	\N
37	Donaciones recibidas	2	f	\N	\N
38	Ajustes por diferencia de inventario	1	t	\N	\N
39	Pago de comisiones bancarias	4	t	\N	\N
40	Ingresos por regal├¡as	2	f	\N	\N
41	Subvenciones gubernamentales	2	f	\N	\N
42	Transferencias internas	2	f	\N	\N
\.


--
-- Data for Name: customer_amortization_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_amortization_details (id, customer_amortization_id, payment_receipt_id, due_date, balance, amortization, final_balance, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: customer_amortizations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_amortizations (id, credit_customer_id, payment_receipt_id, bank_account_id, currency_type, bank, customer, amount, observation, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: customer_credits; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customer_credits (id, customer_id, seller_id, credit_limit, credit_used, credit_remaining, is_active, payment_receipt_id, currency_type, exchange_rate, die_date, observation, created_at, updated_at) FROM stdin;
1	1	9	50000.00	0.00	50000.00	t	31	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
2	2	12	40000.00	0.00	40000.00	t	32	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
3	3	13	70000.00	0.00	70000.00	t	33	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
4	4	13	90000.00	0.00	90000.00	t	34	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
5	5	12	60000.00	0.00	60000.00	t	35	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
6	6	1	50000.00	0.00	50000.00	t	36	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
7	7	10	40000.00	0.00	40000.00	t	37	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
8	8	11	30000.00	0.00	30000.00	t	38	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
9	9	12	75000.00	0.00	75000.00	t	39	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
10	10	9	80000.00	0.00	80000.00	t	40	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
11	11	12	15000.00	0.00	15000.00	t	41	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
12	12	12	20000.00	0.00	20000.00	t	42	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
13	13	1	25000.00	0.00	25000.00	t	43	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
14	14	4	30000.00	0.00	30000.00	t	44	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
15	15	6	12000.00	0.00	12000.00	t	45	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
16	16	5	18000.00	0.00	18000.00	t	46	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
17	17	1	28000.00	0.00	28000.00	t	47	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
18	18	8	21000.00	0.00	21000.00	t	48	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
19	19	6	17000.00	0.00	17000.00	t	49	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
20	20	10	15000.00	0.00	15000.00	t	50	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
21	21	11	25000.00	0.00	25000.00	t	51	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
22	22	11	18000.00	0.00	18000.00	t	52	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
23	23	11	30000.00	0.00	30000.00	t	53	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
24	24	1	40000.00	0.00	40000.00	t	54	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:22
25	25	13	20000.00	0.00	20000.00	t	55	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:22	2024-12-15 19:26:23
26	26	11	15000.00	0.00	15000.00	t	56	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
27	27	8	50000.00	0.00	50000.00	t	57	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
28	28	8	28000.00	0.00	28000.00	t	58	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
29	29	3	22000.00	0.00	22000.00	t	59	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
30	30	1	27000.00	0.00	27000.00	t	60	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
31	31	10	50000.00	0.00	50000.00	t	61	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
32	32	10	40000.00	0.00	40000.00	t	62	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
33	33	2	45000.00	0.00	45000.00	t	63	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
34	34	6	60000.00	0.00	60000.00	t	64	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
35	35	11	70000.00	0.00	70000.00	t	65	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
36	36	6	30000.00	0.00	30000.00	t	66	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
37	37	1	55000.00	0.00	55000.00	t	67	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
38	38	3	80000.00	0.00	80000.00	t	68	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
39	39	12	65000.00	0.00	65000.00	t	69	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
40	40	8	75000.00	0.00	75000.00	t	70	PEN	3.50	2025-12-15	Cr├®dito asignado seg├║n l├¡mite del cliente.	2024-12-15 19:26:23	2024-12-15 19:26:23
\.


--
-- Data for Name: customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.customers (id, company_name, type_id, type_document, document_number, address, zone_id, ubigeo_id, phone_number, email, manager_id, status, credit_limit, cultivation, hectareas, created_at, updated_at) FROM stdin;
1	Corporaci├│n Andina S.A.	1	RUC	20100111111	Av. Los Andes 456	1	2625	987654321	contacto@andina.com	1	Activo	50000.00	\N	\N	\N	\N
2	Distribuidora Pac├¡fico	1	RUC	20100122222	Jr. Amazonas 321	2	3971	912345678	ventas@pacifico.com	2	Activo	40000.00	\N	\N	\N	\N
3	Inversiones del Norte SAC	1	RUC	20100133333	Av. Javier Prado 789	3	4008	923456789	info@nortesac.com	3	Activo	70000.00	\N	\N	\N	\N
4	Comercializadora Horizonte	1	RUC	20100144444	Av. El Sol 123	4	3926	945678901	ventas@horizonte.com	4	Activo	90000.00	\N	\N	\N	\N
5	Multiservicios Elite SAC	1	RUC	20100155555	Jr. Arequipa 456	5	3789	934567890	contacto@elite.com	5	Activo	60000.00	\N	\N	\N	\N
6	Consorcio de Negocios	1	RUC	20100166666	Av. Las Palmeras 321	1	2625	976543210	info@consorcionegocios.com	6	Activo	50000.00	\N	\N	\N	\N
7	Global Market SAC	1	RUC	20100177777	Jr. Cusco 147	2	3971	987654312	ventas@globalmarket.com	2	Activo	40000.00	\N	\N	\N	\N
8	Corporaci├│n Sol de Oro	1	RUC	20100188888	Av. Sol de Oro 78	3	4008	901234567	contacto@soldeoro.com	3	Activo	30000.00	\N	\N	\N	\N
9	Distribuciones Unidas SAC	1	RUC	20100199999	Jr. Progreso 213	4	3926	923456987	info@unidassac.com	4	Activo	75000.00	\N	\N	\N	\N
10	Comercial Santa Rosa	1	RUC	20100200000	Av. Santa Rosa 560	5	3789	965432178	ventas@santarosa.com	5	Activo	80000.00	\N	\N	\N	\N
11	Tienda La Esperanza	2	RUC	20100333333	Av. San Mart├¡n 678	1	2625	934567890	info@laesperanza.com	6	Activo	15000.00	\N	\N	\N	\N
12	Comercial El Sol	2	RUC	20100444444	Jr. Manco C├ípac 890	2	3971	923456789	ventas@elsol.com	2	Activo	20000.00	\N	\N	\N	\N
13	Comercial Santa Cruz	2	RUC	20100455555	Jr. Santa Cruz 200	3	4008	945678123	ventas@santacruz.com	3	Activo	25000.00	\N	\N	\N	\N
14	Supermercado El Comercio	2	RUC	20100466666	Av. Los H├®roes 985	1	2625	912345678	info@elcomercio.com	13	Activo	30000.00	\N	\N	\N	\N
15	MiniMarket Central	2	RUC	20100477777	Jr. Ayacucho 567	2	3971	956789012	ventas@minicentral.com	2	Activo	12000.00	\N	\N	\N	\N
16	Bazar Universal	2	RUC	20100488888	Av. Las Palmeras 452	3	4008	987654321	info@bazaruniversal.com	3	Activo	18000.00	\N	\N	\N	\N
17	Tienda MegaOfertas	2	RUC	20100499999	Jr. Lima 123	4	3926	912345876	ventas@megaofertas.com	13	Activo	28000.00	\N	\N	\N	\N
18	Tienda La Moderna	2	RUC	20100500000	Av. Grau 250	5	3789	934567123	ventas@lamoderna.com	5	Activo	21000.00	\N	\N	\N	\N
19	Almac├®n San Jos├®	2	RUC	20100511111	Jr. Cuzco 891	2	3971	923456789	ventas@sanjose.com	2	Activo	17000.00	\N	\N	\N	\N
20	Ferreter├¡a Los Andes	2	RUC	20100522222	Av. Los Andes 999	3	4008	976543210	info@ferreteriaandina.com	3	Activo	15000.00	\N	\N	\N	\N
21	AgroExport Chav├¡n	3	RUC	20200333333	Fundo Los ├ülamos, Sector Chav├¡n	2	3971	914567890	info@agrochavin.com	1	Activo	25000.00	Palta	150	\N	\N
22	Agr├¡cola La Ribera	3	RUC	20200444444	Fundo La Ribera, Valle de Chao	3	4008	924567890	ventas@laribera.com	7	Activo	18000.00	Ar├índano	90	\N	\N
23	Productores Andinos SAC	3	RUC	20200455555	Av. Las Lomas, Sector Andahuasi	4	3926	934567890	contacto@productoresandinos.com	3	Activo	30000.00	Papa	120	\N	\N
24	Agr├¡cola Los Olivos	3	RUC	20200466666	Fundo Los Olivos, Sector Moche	1	2625	944567890	info@agricolalosolivos.com	1	Activo	40000.00	Olivo	200	\N	\N
25	Fundo El Para├¡so	3	RUC	20200477777	Fundo El Para├¡so, Valle de Vir├║	5	3789	954567890	contacto@fundoelparaiso.com	12	Activo	20000.00	Uva	50	\N	\N
26	Consorcio Agrario del Norte	3	RUC	20200488888	Av. Los Maizales 123, Distrito de Chep├®n	2	3971	964567890	ventas@consorcioagronorte.com	2	Activo	15000.00	Ma├¡z	60	\N	\N
27	Exportaciones del Sur SAC	3	RUC	20200499999	Fundo Los Cerros, Ca├▒ete	3	4008	974567890	ventas@exportsursac.com	3	Activo	50000.00	Esp├írrago	200	\N	\N
28	Agro Santa Elena	3	RUC	20200500000	Fundo Santa Elena, Huaral	4	3926	984567890	contacto@agrosantaelena.com	4	Activo	28000.00	C├¡tricos	100	\N	\N
29	Cooperativa Agraria Nuevo Horizonte	3	RUC	20200511111	Comunidad Nuevo Horizonte, Sector Huaylas	5	3789	994567890	ventas@coopnuevahorizonte.com	5	Activo	22000.00	Caf├®	80	\N	\N
30	Asociaci├│n de Productores de Cacao	3	RUC	20200522222	Fundo El Cacao, Sector Tarapoto	1	2625	904567890	contacto@produtcacaoperu.com	1	Activo	27000.00	Cacao	75	\N	\N
31	Distribuidora Santa Rosa	4	RUC	20456789012	Av. Los Laureles 456, Trujillo	1	2625	912345678	ventas@santarosadistribuidora.com	2	Activo	50000.00	\N	\N	\N	\N
32	Mayorista El Progreso	4	RUC	20457890123	Jr. El Comercio 123, Chiclayo	2	3971	922345678	contacto@mayoristaelprogreso.com	8	Activo	40000.00	\N	\N	\N	\N
33	Comercializadora Los Andes	4	RUC	20458901234	Av. Los Andes 234, Huaraz	3	4008	932345678	info@comercializadoraandes.com	1	Activo	45000.00	\N	\N	\N	\N
34	Mercados del Norte S.A.	4	RUC	20459012345	Av. Principal 789, Piura	4	3926	942345678	ventas@mercadosdelnorte.com	2	Activo	60000.00	\N	\N	\N	\N
35	Distribuidora Central EIRL	4	RUC	20460123456	Jr. Los Olivos 567, Cajamarca	5	3789	952345678	contacto@distribuidoracentral.com	4	Activo	70000.00	\N	\N	\N	\N
36	Centro Mayorista Hu├ínuco	4	RUC	20461234567	Av. La Uni├│n 876, Hu├ínuco	3	4008	962345678	info@centromayoristahuanuco.com	11	Activo	30000.00	\N	\N	\N	\N
37	Comercial El Triunfo	4	RUC	20462345678	Jr. Las Lomas 234, Pucallpa	1	2625	972345678	ventas@comercialeltriunfo.com	9	Activo	55000.00	\N	\N	\N	\N
38	Importadora San Jorge	4	RUC	20463456789	Av. San Jorge 345, Tarapoto	2	3971	982345678	info@importadorasanjorge.com	3	Activo	80000.00	\N	\N	\N	\N
39	Distribuidora Los Cedros	4	RUC	20464567890	Jr. Los Cedros 987, Arequipa	4	3926	992345678	contacto@distribuidoraloscedros.com	4	Activo	65000.00	\N	\N	\N	\N
40	Almacenes La Fortuna	4	RUC	20465678901	Av. La Fortuna 654, Cusco	5	3789	902345678	ventas@almaceneslafortuna.com	10	Activo	75000.00	\N	\N	\N	\N
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: group_of_concepts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.group_of_concepts (id, name, is_expense, created_at, updated_at) FROM stdin;
1	Activos fijos	t	\N	\N
2	Aumento de capital social	f	\N	\N
3	Detracciones	f	\N	\N
4	Gastos	t	\N	\N
5	Movimientos internos	f	\N	\N
6	Pago de letra	f	\N	\N
7	Portes bancarios	t	\N	\N
8	Retenciones	f	\N	\N
9	Servicios contables	f	\N	\N
\.


--
-- Data for Name: inventories; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.inventories (id, article_id, warehouse_id, stock, to_be_collected_from_supplier, to_be_delivered_to_customer, cost_price, sale_price, status, created_at, updated_at) FROM stdin;
34	4	7	355	0	0	47.00	64.00	Disponible	2024-09-18 12:22:00	2024-10-12 12:17:00
41	22	7	153	0	0	23.00	25.00	Disponible	2024-09-10 09:01:00	2024-11-18 16:54:00
63	25	1	668	0	0	20.00	89.00	Disponible	2024-09-09 15:25:00	2024-11-07 08:03:00
22	13	7	303	0	0	29.00	91.00	Disponible	2024-09-11 14:23:00	2024-11-11 10:58:00
66	17	2	171	0	0	37.00	49.00	Disponible	2024-09-22 10:11:00	2024-11-12 16:30:00
13	14	8	353	0	0	18.00	100.00	Disponible	2024-09-13 15:58:00	2024-11-06 12:56:00
30	8	1	324	0	0	37.00	23.00	Disponible	2024-09-14 14:41:00	2024-11-07 08:03:00
61	13	1	0	0	0	16.00	69.00	Disponible	2024-09-09 15:25:00	2024-11-23 11:42:00
29	4	1	200	0	0	27.00	94.00	Disponible	2024-09-14 14:41:00	2024-11-19 11:23:00
72	30	9	97	0	0	42.00	72.00	Disponible	2024-09-05 14:29:00	2024-10-22 08:53:00
37	17	7	498	0	0	36.00	20.00	Disponible	2024-09-30 09:55:00	2024-11-25 15:08:00
35	14	7	478	0	0	47.00	53.00	Disponible	2024-09-18 12:22:00	2024-11-25 15:08:00
11	1	8	516	0	0	18.00	57.00	Disponible	2024-09-13 15:58:00	2024-11-06 12:56:00
46	10	8	302	0	0	21.00	85.00	Disponible	2024-09-24 15:02:00	2024-11-06 12:56:00
3	19	7	411	0	0	45.00	63.00	Disponible	2024-09-06 10:52:00	2024-11-25 15:08:00
2	7	7	245	0	0	36.00	41.00	Disponible	2024-09-06 10:52:00	2024-11-11 10:58:00
24	24	7	246	0	0	49.00	85.00	Disponible	2024-09-11 14:23:00	2024-11-11 10:58:00
59	26	2	0	0	0	10.00	64.00	Disponible	2024-09-20 09:36:00	2024-11-20 09:43:00
33	24	1	275	0	0	48.00	89.00	Disponible	2024-09-14 14:41:00	2024-10-15 10:21:00
64	3	2	678	0	0	38.00	73.00	Disponible	2024-09-22 10:11:00	2024-10-21 11:42:00
48	29	8	301	0	0	47.00	36.00	Disponible	2024-09-24 15:02:00	2024-11-24 10:02:00
44	19	2	245	0	0	43.00	100.00	Disponible	2024-09-07 15:28:00	2024-11-20 09:43:00
17	8	5	267	0	0	12.00	31.00	Disponible	2024-09-27 08:36:00	2024-11-14 15:27:00
56	23	8	257	0	0	36.00	77.00	Disponible	2024-09-13 13:37:00	2024-11-02 08:48:00
65	15	2	378	0	0	12.00	44.00	Disponible	2024-09-22 10:11:00	2024-10-29 11:42:00
57	7	2	224	0	0	17.00	47.00	Disponible	2024-09-20 09:36:00	2024-11-12 16:30:00
60	2	1	230	0	0	16.00	87.00	Disponible	2024-09-09 15:25:00	2024-11-07 12:42:00
51	19	1	137	0	0	15.00	100.00	Disponible	2024-09-07 14:30:00	2024-11-02 10:47:00
32	20	1	125	0	0	33.00	62.00	Disponible	2024-09-14 14:41:00	2024-11-07 08:03:00
4	21	7	614	0	0	24.00	29.00	Disponible	2024-09-06 10:52:00	2024-10-07 11:24:00
31	9	1	373	0	0	32.00	68.00	Disponible	2024-09-14 14:41:00	2024-11-23 11:42:00
71	25	9	168	0	0	41.00	50.00	Disponible	2024-09-05 14:29:00	2024-10-14 12:56:00
40	12	7	317	0	0	35.00	34.00	Disponible	2024-09-10 09:01:00	2024-11-16 14:42:00
43	1	2	487	0	0	35.00	75.00	Disponible	2024-09-07 15:28:00	2024-09-15 12:58:00
52	29	1	329	0	0	18.00	47.00	Disponible	2024-09-07 14:30:00	2024-11-23 11:42:00
54	13	8	432	0	0	29.00	49.00	Disponible	2024-09-13 13:37:00	2024-11-27 12:04:00
27	19	5	472	0	0	17.00	53.00	Disponible	2024-09-09 14:41:00	2024-11-01 13:01:00
58	14	2	219	0	0	33.00	45.00	Disponible	2024-09-20 09:36:00	2024-11-16 09:26:00
10	29	2	212	0	0	32.00	63.00	Disponible	2024-09-14 11:48:00	2024-11-05 10:10:00
5	27	7	913	0	0	33.00	78.00	Disponible	2024-09-06 10:52:00	2024-10-24 10:04:00
18	12	5	219	0	0	48.00	65.00	Disponible	2024-09-27 08:36:00	2024-11-17 11:09:00
6	2	2	485	0	0	31.00	53.00	Disponible	2024-09-14 11:48:00	2024-11-24 12:03:00
68	10	9	408	0	0	35.00	89.00	Disponible	2024-09-05 14:29:00	2024-11-06 16:22:00
70	20	9	110	0	0	31.00	72.00	Disponible	2024-09-05 14:29:00	2024-11-06 16:22:00
21	11	7	527	0	0	22.00	68.00	Disponible	2024-09-11 14:23:00	2024-11-16 14:42:00
7	5	2	415	0	0	28.00	64.00	Disponible	2024-09-14 11:48:00	2024-09-26 16:25:00
42	26	7	388	0	0	23.00	43.00	Disponible	2024-09-10 09:01:00	2024-11-16 14:42:00
28	21	5	41	0	0	19.00	75.00	Disponible	2024-09-09 14:41:00	2024-11-01 13:01:00
36	2	7	186	0	0	40.00	100.00	Disponible	2024-09-30 09:55:00	2024-11-18 16:54:00
16	4	5	51	0	0	17.00	41.00	Disponible	2024-09-27 08:36:00	2024-11-25 11:27:00
19	16	5	616	0	0	28.00	39.00	Disponible	2024-09-27 08:36:00	2024-11-25 11:27:00
73	6	5	227	0	0	31.00	75.00	Disponible	2024-09-13 12:24:00	2024-11-17 11:09:00
67	22	2	328	0	0	17.00	54.00	Disponible	2024-09-22 10:11:00	2024-11-20 15:25:00
74	13	5	293	0	0	26.00	70.00	Disponible	2024-09-13 12:24:00	2024-11-14 15:27:00
75	22	5	426	0	0	15.00	21.00	Disponible	2024-09-13 12:24:00	2024-10-13 09:40:00
20	28	5	483	0	0	10.00	87.00	Disponible	2024-09-27 08:36:00	2024-11-27 10:27:00
47	17	8	290	0	0	47.00	73.00	Disponible	2024-09-24 15:02:00	2024-11-24 10:02:00
25	9	5	123	0	0	16.00	40.00	Disponible	2024-09-09 14:41:00	2024-11-15 12:49:00
39	28	7	44	0	0	30.00	56.00	Disponible	2024-09-30 09:55:00	2024-11-11 10:58:00
69	17	9	65	0	0	32.00	85.00	Disponible	2024-09-05 14:29:00	2024-11-21 15:34:00
12	7	8	540	0	0	40.00	53.00	Disponible	2024-09-13 15:58:00	2024-10-01 09:03:00
14	18	8	195	0	0	35.00	69.00	Disponible	2024-09-13 15:58:00	2024-11-02 14:33:00
9	27	2	534	0	0	17.00	44.00	Disponible	2024-09-14 11:48:00	2024-11-12 14:02:00
50	17	1	2	0	0	30.00	78.00	Disponible	2024-09-07 14:30:00	2024-11-28 11:59:00
45	24	2	134	0	0	16.00	58.00	Disponible	2024-09-07 15:28:00	2024-11-29 16:44:00
8	10	2	234	0	0	10.00	44.00	Disponible	2024-09-14 11:48:00	2024-11-30 13:20:00
53	9	8	454	0	0	42.00	71.00	Disponible	2024-09-13 13:37:00	2024-11-02 08:48:00
15	20	8	134	0	0	38.00	25.00	Disponible	2024-09-13 15:58:00	2024-11-14 16:33:00
55	19	8	512	0	0	49.00	48.00	Disponible	2024-09-13 13:37:00	2024-11-06 12:56:00
38	23	7	274	0	0	15.00	88.00	Disponible	2024-09-30 09:55:00	2024-11-16 14:42:00
23	20	7	348	0	0	24.00	84.00	Disponible	2024-09-11 14:23:00	2024-11-21 16:01:00
81	1	7	469	0	0	29.00	82.00	Disponible	2024-09-16 10:33:00	2024-11-26 16:13:00
119	7	6	186	0	0	25.00	27.00	Disponible	2024-09-08 16:53:00	2024-11-27 11:52:00
92	22	8	600	0	0	22.00	53.00	Disponible	2024-09-29 14:56:00	2024-11-06 12:56:00
125	25	2	316	0	0	39.00	20.00	Disponible	2024-09-21 16:16:00	2024-11-12 16:30:00
140	4	6	38	0	0	31.00	61.00	Disponible	2024-09-02 13:22:00	2024-11-21 10:17:00
84	3	1	433	0	0	20.00	76.00	Disponible	2024-09-21 15:49:00	2024-11-19 11:23:00
134	30	7	495	0	0	20.00	22.00	Disponible	2024-09-14 10:16:00	2024-11-26 16:13:00
104	12	8	295	0	0	44.00	97.00	Disponible	2024-09-02 13:42:00	2024-11-02 08:48:00
147	23	3	203	0	0	38.00	29.00	Disponible	2024-09-22 15:53:00	2024-11-07 12:05:00
133	27	5	133	0	0	33.00	25.00	Disponible	2024-09-02 13:13:00	2024-11-12 09:19:00
108	9	4	533	0	0	43.00	96.00	Disponible	2024-09-18 16:05:00	2024-11-27 13:58:00
143	20	6	303	0	0	13.00	28.00	Disponible	2024-09-02 13:22:00	2024-11-23 16:30:00
86	12	3	355	0	0	32.00	82.00	Disponible	2024-09-25 15:52:00	2024-11-12 14:18:00
100	1	1	528	0	0	45.00	55.00	Disponible	2024-09-25 13:22:00	2024-11-26 16:23:00
98	14	6	241	0	0	24.00	32.00	Disponible	2024-09-27 08:58:00	2024-11-21 10:17:00
78	14	1	249	0	0	30.00	38.00	Disponible	2024-09-04 09:40:00	2024-11-07 08:03:00
113	6	8	522	0	0	41.00	37.00	Disponible	2024-09-05 13:39:00	2024-11-14 16:33:00
145	14	3	312	0	0	15.00	75.00	Disponible	2024-09-22 15:53:00	2024-11-08 12:21:00
90	30	2	133	0	0	28.00	39.00	Disponible	2024-09-02 12:50:00	2024-11-05 10:10:00
79	26	1	301	0	0	28.00	34.00	Disponible	2024-09-04 09:40:00	2024-11-08 13:24:00
114	25	8	242	0	0	12.00	44.00	Disponible	2024-09-05 13:39:00	2024-10-03 15:09:00
117	25	7	298	0	0	20.00	98.00	Disponible	2024-09-10 08:19:00	2024-11-21 16:01:00
93	3	5	92	0	0	45.00	26.00	Disponible	2024-09-18 10:56:00	2024-11-13 11:12:00
121	3	8	153	0	0	20.00	80.00	Disponible	2024-09-17 10:24:00	2024-11-09 11:14:00
136	1	4	226	0	0	36.00	20.00	Disponible	2024-09-10 08:58:00	2024-11-18 13:27:00
124	23	2	402	0	0	15.00	87.00	Disponible	2024-09-21 16:16:00	2024-11-30 13:20:00
138	7	4	317	0	0	27.00	60.00	Disponible	2024-09-10 08:58:00	2024-11-18 13:27:00
80	30	1	0	0	0	48.00	70.00	Disponible	2024-09-04 09:40:00	2024-11-07 12:42:00
146	19	3	287	0	0	22.00	85.00	Disponible	2024-09-22 15:53:00	2024-11-08 12:21:00
115	5	1	223	0	0	32.00	27.00	Disponible	2024-09-11 10:33:00	2024-11-19 11:23:00
76	30	5	407	0	0	20.00	98.00	Disponible	2024-09-13 12:24:00	2024-11-12 09:19:00
142	13	6	432	0	0	10.00	73.00	Disponible	2024-09-02 13:22:00	2024-11-29 13:16:00
135	16	7	131	0	0	33.00	73.00	Disponible	2024-09-15 09:11:00	2024-10-07 12:08:00
95	2	6	200	0	0	12.00	80.00	Disponible	2024-09-27 08:58:00	2024-11-23 16:30:00
99	18	6	349	0	0	18.00	31.00	Disponible	2024-09-27 08:58:00	2024-11-27 11:52:00
120	23	6	321	0	0	47.00	32.00	Disponible	2024-09-08 16:53:00	2024-11-13 09:07:00
118	6	6	0	0	0	15.00	76.00	Disponible	2024-09-08 16:53:00	2024-10-24 14:21:00
96	9	6	143	0	0	27.00	24.00	Disponible	2024-09-27 08:58:00	2024-11-05 14:45:00
83	18	7	548	0	0	21.00	77.00	Disponible	2024-09-16 10:33:00	2024-09-07 13:58:00
106	2	5	303	0	0	49.00	28.00	Disponible	2024-09-21 11:06:00	2024-11-14 15:27:00
89	29	3	382	0	0	44.00	88.00	Disponible	2024-09-25 15:52:00	2024-11-07 12:05:00
1	5	7	351	0	0	48.00	23.00	Disponible	2024-09-06 10:52:00	2024-11-21 16:01:00
144	10	3	276	0	0	40.00	43.00	Disponible	2024-09-22 15:53:00	2024-11-23 13:12:00
101	15	1	425	0	0	29.00	58.00	Disponible	2024-09-25 13:22:00	2024-11-04 11:02:00
94	24	5	128	0	0	16.00	48.00	Disponible	2024-09-18 10:56:00	2024-11-17 11:09:00
110	11	4	328	0	0	36.00	56.00	Disponible	2024-09-18 16:05:00	2024-11-09 10:01:00
127	27	8	297	0	0	42.00	63.00	Disponible	2024-09-09 09:15:00	2024-11-24 10:02:00
85	1	3	222	0	0	21.00	54.00	Disponible	2024-09-25 15:52:00	2024-11-23 13:12:00
103	11	8	0	0	0	13.00	70.00	Disponible	2024-09-03 10:18:00	2024-11-02 14:33:00
49	16	1	628	0	0	50.00	93.00	Disponible	2024-09-07 14:30:00	2024-11-07 12:42:00
111	15	4	390	0	0	17.00	98.00	Disponible	2024-09-18 16:05:00	2024-10-23 14:30:00
130	8	9	405	0	0	13.00	72.00	Disponible	2024-09-28 10:54:00	2024-10-07 11:08:00
82	9	7	266	0	0	27.00	69.00	Disponible	2024-09-16 10:33:00	2024-11-18 16:54:00
91	2	8	269	0	0	47.00	74.00	Disponible	2024-09-29 14:56:00	2024-11-30 16:51:00
88	24	3	68	0	0	33.00	94.00	Disponible	2024-09-25 15:52:00	2024-11-23 13:12:00
62	21	1	237	0	0	28.00	92.00	Disponible	2024-09-09 15:25:00	2024-11-04 11:02:00
102	18	1	667	0	0	49.00	100.00	Disponible	2024-09-25 13:22:00	2024-11-12 12:07:00
116	15	7	100	0	0	42.00	36.00	Disponible	2024-09-10 08:19:00	2024-11-18 16:54:00
87	22	3	180	0	0	40.00	29.00	Disponible	2024-09-25 15:52:00	2024-11-12 14:18:00
112	29	4	253	0	0	15.00	58.00	Disponible	2024-09-18 16:05:00	2024-10-24 14:19:00
109	10	4	184	0	0	17.00	48.00	Disponible	2024-09-18 16:05:00	2024-10-11 14:38:00
105	21	8	269	0	0	36.00	33.00	Disponible	2024-09-02 13:42:00	2024-11-02 08:48:00
107	25	5	319	0	0	21.00	59.00	Disponible	2024-09-21 11:06:00	2024-11-17 11:09:00
131	16	9	214	0	0	24.00	100.00	Disponible	2024-09-28 10:54:00	2024-11-24 14:07:00
129	2	9	240	0	0	27.00	61.00	Disponible	2024-09-28 10:54:00	2024-11-21 15:34:00
123	9	2	352	0	0	25.00	88.00	Disponible	2024-09-21 16:16:00	2024-11-29 16:44:00
122	6	2	529	0	0	45.00	27.00	Disponible	2024-09-21 16:16:00	2024-11-12 16:30:00
97	11	6	281	0	0	45.00	52.00	Disponible	2024-09-27 08:58:00	2024-11-05 14:45:00
128	23	1	105	0	0	25.00	39.00	Disponible	2024-09-20 16:22:00	2024-11-28 11:59:00
139	8	4	462	0	0	26.00	43.00	Disponible	2024-09-10 08:58:00	2024-10-21 14:29:00
141	5	6	341	0	0	15.00	97.00	Disponible	2024-09-02 13:22:00	2024-11-21 10:17:00
176	18	2	1066	0	0	20.00	26.00	Disponible	2024-09-19 10:59:00	2024-11-12 14:02:00
179	26	9	227	0	0	26.00	64.00	Disponible	2024-09-03 10:21:00	2024-09-02 08:00:00
219	26	6	0	0	0	44.00	30.00	Disponible	2024-09-03 12:26:00	2024-09-29 12:36:00
194	4	3	206	0	0	20.00	38.00	Disponible	2024-09-08 12:03:00	2024-11-12 14:18:00
184	23	5	473	0	0	40.00	83.00	Disponible	2024-09-24 16:04:00	2024-11-14 15:27:00
189	6	7	254	0	0	25.00	79.00	Disponible	2024-09-04 13:31:00	2024-11-16 14:42:00
191	6	9	196	0	0	50.00	80.00	Disponible	2024-09-02 13:08:00	2024-11-06 16:22:00
155	3	6	258	0	0	17.00	37.00	Disponible	2024-09-23 09:50:00	2024-11-23 16:30:00
212	28	4	81	0	0	43.00	77.00	Disponible	2024-09-26 13:16:00	2024-11-27 13:58:00
211	22	4	239	0	0	49.00	75.00	Disponible	2024-09-26 13:16:00	2024-10-13 09:51:00
182	12	2	140	0	0	36.00	65.00	Disponible	2024-09-10 13:47:00	2024-11-05 10:10:00
207	11	1	0	0	0	27.00	27.00	Disponible	2024-09-01 09:04:00	2024-09-07 14:50:00
213	8	6	115	0	0	36.00	92.00	Disponible	2024-09-21 16:52:00	2024-11-17 15:49:00
149	17	5	340	0	0	31.00	21.00	Disponible	2024-09-16 10:43:00	2024-11-15 12:49:00
208	5	4	392	0	0	31.00	83.00	Disponible	2024-09-26 13:16:00	2024-10-13 09:51:00
158	27	6	296	0	0	42.00	78.00	Disponible	2024-09-23 09:50:00	2024-11-15 10:22:00
164	24	4	190	0	0	16.00	48.00	Disponible	2024-09-13 16:49:00	2024-11-14 09:20:00
172	4	9	258	0	0	45.00	60.00	Disponible	2024-09-17 14:47:00	2024-11-09 16:42:00
167	19	9	446	0	0	29.00	68.00	Disponible	2024-09-16 11:47:00	2024-11-06 16:22:00
203	28	8	170	0	0	13.00	66.00	Disponible	2024-09-29 16:10:00	2024-11-06 12:47:00
197	10	7	280	0	0	41.00	85.00	Disponible	2024-09-18 11:17:00	2024-11-21 16:01:00
214	22	6	214	0	0	22.00	91.00	Disponible	2024-09-21 16:52:00	2024-11-13 09:07:00
185	18	9	277	0	0	26.00	73.00	Disponible	2024-09-04 16:08:00	2024-11-10 14:43:00
148	25	3	294	0	0	30.00	30.00	Disponible	2024-09-22 15:53:00	2024-11-23 11:28:00
162	28	1	318	0	0	48.00	55.00	Disponible	2024-09-01 15:00:00	2024-11-14 10:48:00
165	30	4	435	0	0	48.00	96.00	Disponible	2024-09-13 16:49:00	2024-11-14 09:20:00
183	1	5	155	0	0	32.00	27.00	Disponible	2024-09-24 16:04:00	2024-11-04 16:09:00
209	18	4	254	0	0	41.00	64.00	Disponible	2024-09-26 13:16:00	2024-11-18 13:27:00
168	5	9	209	0	0	20.00	99.00	Disponible	2024-09-20 16:45:00	2024-11-09 16:42:00
151	6	4	509	0	0	10.00	90.00	Disponible	2024-09-02 15:46:00	2024-09-02 11:32:00
161	28	9	180	0	0	46.00	96.00	Disponible	2024-09-10 10:18:00	2024-11-21 15:34:00
153	13	4	451	0	0	26.00	83.00	Disponible	2024-09-02 15:46:00	2024-11-09 10:01:00
152	12	4	554	0	0	44.00	68.00	Disponible	2024-09-02 15:46:00	2024-11-26 14:55:00
77	10	1	320	0	0	29.00	62.00	Disponible	2024-09-04 09:40:00	2024-11-23 11:42:00
217	1	9	85	0	0	49.00	30.00	Disponible	2024-09-25 10:34:00	2024-10-07 11:08:00
174	22	9	285	0	0	26.00	32.00	Disponible	2024-09-17 14:47:00	2024-11-09 16:42:00
196	27	1	379	0	0	47.00	56.00	Disponible	2024-09-01 09:17:00	2024-10-12 08:24:00
157	16	6	228	0	0	16.00	30.00	Disponible	2024-09-23 09:50:00	2024-11-23 16:30:00
175	23	9	52	0	0	12.00	25.00	Disponible	2024-09-17 14:47:00	2024-11-10 14:43:00
200	9	3	498	0	0	47.00	76.00	Disponible	2024-09-23 11:00:00	2024-11-23 11:28:00
181	11	2	159	0	0	26.00	77.00	Disponible	2024-09-10 13:47:00	2024-11-12 16:30:00
210	21	4	661	0	0	38.00	78.00	Disponible	2024-09-26 13:16:00	2024-10-23 11:44:00
195	7	1	214	0	0	32.00	85.00	Disponible	2024-09-01 09:17:00	2024-11-19 11:23:00
156	10	6	67	0	0	36.00	49.00	Disponible	2024-09-23 09:50:00	2024-11-16 09:23:00
160	13	9	410	0	0	35.00	49.00	Disponible	2024-09-10 10:18:00	2024-10-22 08:53:00
190	22	1	344	0	0	26.00	73.00	Disponible	2024-09-18 15:03:00	2024-10-13 16:02:00
206	16	3	268	0	0	36.00	73.00	Disponible	2024-09-08 13:16:00	2024-11-06 11:51:00
150	26	5	187	0	0	16.00	100.00	Disponible	2024-09-16 10:43:00	2024-10-24 15:22:00
193	2	3	235	0	0	18.00	85.00	Disponible	2024-09-08 12:03:00	2024-11-01 11:53:00
166	3	9	284	0	0	19.00	99.00	Disponible	2024-09-16 11:47:00	2024-10-17 09:05:00
169	11	9	0	0	0	45.00	52.00	Disponible	2024-09-20 16:45:00	2024-10-19 10:00:00
198	7	3	717	0	0	31.00	94.00	Disponible	2024-09-23 11:00:00	2024-10-17 13:30:00
163	19	4	163	0	0	49.00	20.00	Disponible	2024-09-13 16:49:00	2024-10-24 14:19:00
216	25	4	329	0	0	19.00	84.00	Disponible	2024-09-13 16:26:00	2024-11-26 14:55:00
218	12	6	98	0	0	21.00	28.00	Disponible	2024-09-03 12:26:00	2024-11-21 10:17:00
204	19	6	168	0	0	36.00	75.00	Disponible	2024-09-29 14:55:00	2024-11-17 15:49:00
199	8	3	316	0	0	39.00	81.00	Disponible	2024-09-23 11:00:00	2024-11-10 16:27:00
205	15	3	147	0	0	28.00	95.00	Disponible	2024-09-08 13:16:00	2024-11-12 14:18:00
171	21	9	248	0	0	36.00	61.00	Disponible	2024-09-20 16:45:00	2024-11-24 14:07:00
180	8	2	364	0	0	48.00	26.00	Disponible	2024-09-10 13:47:00	2024-11-16 09:26:00
215	14	4	379	0	0	39.00	29.00	Disponible	2024-09-04 16:17:00	2024-11-26 14:55:00
173	14	9	13	0	0	16.00	30.00	Disponible	2024-09-17 14:47:00	2024-11-21 15:34:00
137	3	4	175	0	0	13.00	97.00	Disponible	2024-09-10 08:58:00	2024-11-14 09:20:00
178	12	9	222	0	0	30.00	45.00	Disponible	2024-09-03 10:21:00	2024-11-24 16:53:00
192	24	9	378	0	0	36.00	97.00	Disponible	2024-09-02 13:08:00	2024-11-21 15:34:00
177	20	2	380	0	0	22.00	33.00	Disponible	2024-09-19 10:59:00	2024-11-29 16:44:00
202	16	8	117	0	0	49.00	39.00	Disponible	2024-09-25 10:22:00	2024-11-21 08:47:00
159	7	9	44	0	0	44.00	38.00	Disponible	2024-09-10 10:18:00	2024-11-09 16:42:00
187	21	2	196	0	0	45.00	100.00	Disponible	2024-09-27 10:12:00	2024-11-29 16:44:00
186	29	9	136	0	0	37.00	32.00	Disponible	2024-09-04 16:08:00	2024-11-24 14:07:00
170	15	9	53	0	0	28.00	28.00	Disponible	2024-09-20 16:45:00	2024-11-09 16:42:00
258	4	4	158	0	0	16.00	33.00	Disponible	2024-10-22 08:21:00	2024-10-03 13:51:00
245	17	6	9	0	0	17.00	35.00	Disponible	2024-10-08 16:38:00	2024-11-17 15:49:00
251	20	5	78	0	0	35.00	99.00	Disponible	2024-10-26 16:15:00	2024-11-04 16:09:00
246	24	6	69	0	0	18.00	86.00	Disponible	2024-10-05 08:29:00	2024-11-17 15:49:00
269	25	6	30	0	0	49.00	81.00	Disponible	2024-11-15 11:05:00	2024-11-23 16:30:00
26	18	5	523	0	0	21.00	31.00	Disponible	2024-09-09 14:41:00	2024-10-26 10:45:00
223	28	2	337	0	0	34.00	98.00	Disponible	2024-09-29 11:38:00	2024-11-05 10:10:00
252	16	2	238	0	0	16.00	52.00	Disponible	2024-10-13 12:45:00	2024-09-05 14:07:00
220	26	8	119	0	0	44.00	91.00	Disponible	2024-09-06 15:03:00	2024-11-14 16:33:00
224	14	5	228	0	0	34.00	48.00	Disponible	2024-10-24 11:51:00	2024-11-14 15:27:00
268	28	3	0	0	0	27.00	96.00	Disponible	2024-11-25 10:26:00	2024-09-23 16:53:00
126	4	8	371	0	0	10.00	31.00	Disponible	2024-09-09 09:15:00	2024-11-05 15:51:00
241	5	8	165	0	0	36.00	54.00	Disponible	2024-10-23 11:55:00	2024-11-05 15:51:00
238	27	3	189	0	0	32.00	96.00	Disponible	2024-10-28 08:20:00	2024-11-12 08:53:00
237	27	4	148	0	0	45.00	96.00	Disponible	2024-10-30 14:26:00	2024-10-03 13:51:00
260	13	2	381	0	0	41.00	79.00	Disponible	2024-10-13 10:26:00	2024-11-02 11:50:00
261	7	5	0	0	0	29.00	61.00	Disponible	2024-10-18 11:33:00	2024-11-01 13:01:00
264	21	6	10	0	0	30.00	70.00	Disponible	2024-11-12 10:25:00	2024-11-27 11:52:00
255	29	5	75	0	0	29.00	59.00	Disponible	2024-10-13 10:10:00	2024-11-01 13:01:00
235	20	4	180	0	0	13.00	21.00	Disponible	2024-10-30 14:26:00	2024-10-23 11:44:00
132	5	5	512	0	0	26.00	50.00	Disponible	2024-09-02 13:13:00	2024-11-20 15:52:00
232	4	2	81	0	0	19.00	44.00	Disponible	2024-10-17 09:42:00	2024-11-12 14:02:00
227	21	3	228	0	0	49.00	82.00	Disponible	2024-10-02 11:17:00	2024-11-23 11:28:00
188	12	1	336	0	0	46.00	42.00	Disponible	2024-09-15 10:05:00	2024-11-06 08:20:00
243	1	6	128	0	0	46.00	92.00	Disponible	2024-10-08 16:38:00	2024-11-04 09:00:00
262	24	8	201	0	0	33.00	59.00	Disponible	2024-10-05 15:45:00	2024-11-02 08:48:00
256	5	3	2	0	0	33.00	54.00	Disponible	2024-10-25 09:23:00	2024-11-08 12:21:00
242	27	9	138	0	0	48.00	83.00	Disponible	2024-10-25 12:41:00	2024-10-13 13:29:00
247	28	6	171	0	0	34.00	75.00	Disponible	2024-10-05 08:29:00	2024-11-27 11:52:00
259	17	4	345	0	0	15.00	91.00	Disponible	2024-10-04 13:17:00	2024-10-11 14:38:00
253	9	9	84	0	0	10.00	85.00	Disponible	2024-10-28 13:05:00	2024-11-24 16:53:00
154	6	1	770	0	0	50.00	90.00	Disponible	2024-09-18 08:55:00	2024-11-28 11:59:00
231	10	5	0	0	0	26.00	93.00	Disponible	2024-10-04 11:23:00	2024-11-27 10:27:00
257	30	3	118	0	0	10.00	20.00	Disponible	2024-10-25 09:23:00	2024-11-12 14:18:00
222	23	4	440	0	0	49.00	46.00	Disponible	2024-09-09 10:54:00	2024-11-14 09:20:00
201	15	8	236	0	0	42.00	65.00	Disponible	2024-09-25 10:22:00	2024-11-24 10:02:00
225	6	3	203	0	0	36.00	62.00	Disponible	2024-10-02 11:17:00	2024-11-01 11:53:00
266	18	3	47	0	0	23.00	96.00	Disponible	2024-11-25 10:18:00	2024-11-01 11:53:00
229	20	3	204	0	0	20.00	24.00	Disponible	2024-10-29 12:12:00	2024-11-01 11:53:00
228	8	8	191	0	0	32.00	83.00	Disponible	2024-10-11 12:51:00	2024-11-09 11:14:00
254	2	4	192	0	0	31.00	65.00	Disponible	2024-10-24 12:23:00	2024-11-18 13:27:00
236	26	4	349	0	0	29.00	29.00	Disponible	2024-10-30 14:26:00	2024-11-18 13:27:00
230	26	3	4	0	0	21.00	93.00	Disponible	2024-10-29 12:12:00	2024-11-10 16:27:00
240	15	5	162	0	0	25.00	59.00	Disponible	2024-10-20 16:16:00	2024-11-17 11:09:00
234	16	4	585	0	0	33.00	72.00	Disponible	2024-10-30 14:26:00	2024-11-09 10:01:00
267	13	3	160	0	0	30.00	48.00	Disponible	2024-11-11 12:27:00	2024-10-19 13:51:00
248	29	6	268	0	0	41.00	71.00	Disponible	2024-10-18 16:54:00	2024-11-29 13:16:00
244	15	6	209	0	0	33.00	77.00	Disponible	2024-10-08 16:38:00	2024-11-17 15:49:00
265	3	3	118	0	0	40.00	87.00	Disponible	2024-11-25 10:18:00	2024-11-27 13:03:00
233	3	7	335	0	0	14.00	53.00	Disponible	2024-10-16 12:20:00	2024-10-10 15:52:00
221	30	8	356	0	0	45.00	98.00	Disponible	2024-09-06 15:03:00	2024-11-03 09:37:00
249	8	7	195	0	0	45.00	67.00	Disponible	2024-10-14 16:47:00	2024-10-10 15:52:00
226	11	3	371	0	0	35.00	58.00	Disponible	2024-10-02 11:17:00	2024-11-27 13:03:00
263	17	3	21	0	0	17.00	26.00	Disponible	2024-11-27 12:57:00	2024-11-28 13:52:00
250	11	5	197	0	0	36.00	36.00	Disponible	2024-10-26 16:15:00	2024-11-15 12:49:00
239	29	7	88	0	0	32.00	95.00	Disponible	2024-10-08 13:53:00	2024-11-18 16:54:00
\.


--
-- Data for Name: job_batches; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.job_batches (id, name, total_jobs, pending_jobs, failed_jobs, failed_job_ids, options, cancelled_at, created_at, finished_at) FROM stdin;
\.


--
-- Data for Name: jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.jobs (id, queue, payload, attempts, reserved_at, available_at, created_at) FROM stdin;
\.


--
-- Data for Name: lines; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.lines (id, name, category, created_at, updated_at) FROM stdin;
1	Abono foliar	Otros	\N	\N
2	Acaricida	Otros	\N	\N
3	Aceite agr├¡cola	Otros	\N	\N
4	Adherente	Otros	\N	\N
5	Bioestimulante	Otros	\N	\N
6	Fungicida	Otros	\N	\N
7	Herbicida	Otros	\N	\N
8	Hormona\tOtros	Otros	\N	\N
9	Insecticida	Otros	\N	\N
10	Nematicida	Otros	\N	\N
\.


--
-- Data for Name: loan_of_merchandise_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loan_of_merchandise_details (id, loan_of_merchandise_id, inventary_id, quantity, unit_price, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: loan_of_merchandises; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.loan_of_merchandises (id, customer_id, warehouse_id, seller_id, payment_receipt_id, type_document, payment_receipt_code, igv, payment_condition, status, observation, sale_value, total_igv, exonerated, total, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.migrations (id, migration, batch) FROM stdin;
1	0001_01_01_000000_create_users_table	1
2	0001_01_01_000001_create_cache_table	1
3	0001_01_01_000002_create_jobs_table	1
4	2024_12_10_085642_add_custom_fields_to_users_table	1
5	2024_12_10_085643_add_avatar_url_to_users_table	1
6	2024_12_10_192736_create_ubigeos_table	1
7	2024_12_10_192737_create_zones_table	1
8	2024_12_10_192744_create_lines_table	1
9	2024_12_10_192752_create_articles_table	1
10	2024_12_10_192801_create_warehouses_table	1
11	2024_12_10_192840_create_banks_table	1
12	2024_12_10_193014_create_bank_accounts_table	1
13	2024_12_10_193059_create_money_transfers_table	1
14	2024_12_10_193116_create_cash_movements_table	1
15	2024_12_10_193236_create_group_of_concepts_table	1
16	2024_12_10_193241_create_concepts_table	1
17	2024_12_10_193301_create_suppliers_table	1
18	2024_12_10_193320_create_sellers_table	1
19	2024_12_10_193335_create_type_of_customers_table	1
20	2024_12_10_193340_create_customers_table	1
21	2024_12_10_195748_create_inventories_table	1
22	2024_12_10_195850_create_payment_receipts_table	1
23	2024_12_10_195853_create_purchases_table	1
24	2024_12_10_195858_create_purchase_details_table	1
25	2024_12_10_200203_create_customer_credits_table	1
26	2024_12_10_200256_create_batches_table	1
27	2024_12_10_200257_create_sales_table	1
28	2024_12_10_200303_create_sale_details_table	1
29	2024_12_10_200304_create_customer_amortizations_table	1
30	2024_12_10_200305_create_customer_amortization_details_table	1
31	2024_12_10_200401_create_article_transfers_table	1
32	2024_12_10_200407_create_article_transfer_details_table	1
33	2024_12_10_200508_create_loan_of_merchandises_table	1
34	2024_12_10_200513_create_loan_of_merchandise_details_table	1
35	2024_12_10_200629_create_advanced_sales_table	1
36	2024_12_10_200634_create_advanced_sale_details_table	1
37	2024_12_13_105702_create_taking_times_table	1
\.


--
-- Data for Name: money_transfers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.money_transfers (id, code, amount, source_account_id, destination_account_id, exchange_rate, observation, created_at, updated_at) FROM stdin;
1	MT0001	42594.50	1	2	0.29	Transferencia de 42594.5 de la cuenta 1 a la 2.	2024-12-15 19:26:21	2024-12-15 19:26:21
2	MT0002	52979.50	1	6	0.29	Transferencia de 52979.5 de la cuenta 1 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
3	MT0003	72627.10	3	6	0.29	Transferencia de 72627.1 de la cuenta 3 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
4	MT0004	90258.80	4	2	1.00	Transferencia de 90258.8 de la cuenta 4 a la 2.	2024-12-15 19:26:21	2024-12-15 19:26:21
5	MT0005	41073.70	4	5	3.50	Transferencia de 41073.7 de la cuenta 4 a la 5.	2024-12-15 19:26:21	2024-12-15 19:26:21
6	MT0006	54583.40	4	2	1.00	Transferencia de 54583.4 de la cuenta 4 a la 2.	2024-12-15 19:26:21	2024-12-15 19:26:21
7	MT0007	39046.80	3	4	0.29	Transferencia de 39046.8 de la cuenta 3 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
8	MT0008	64023.50	6	3	3.50	Transferencia de 64023.5 de la cuenta 6 a la 3.	2024-12-15 19:26:21	2024-12-15 19:26:21
9	MT0009	11197.30	5	6	0.29	Transferencia de 11197.3 de la cuenta 5 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
10	MT0010	87322.60	2	5	3.50	Transferencia de 87322.6 de la cuenta 2 a la 5.	2024-12-15 19:26:21	2024-12-15 19:26:21
11	MT0011	39301.40	6	1	3.50	Transferencia de 39301.4 de la cuenta 6 a la 1.	2024-12-15 19:26:21	2024-12-15 19:26:21
12	MT0012	93767.10	1	5	1.00	Transferencia de 93767.1 de la cuenta 1 a la 5.	2024-12-15 19:26:21	2024-12-15 19:26:21
13	MT0013	94468.70	4	6	1.00	Transferencia de 94468.7 de la cuenta 4 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
14	MT0014	57731.80	5	3	1.00	Transferencia de 57731.8 de la cuenta 5 a la 3.	2024-12-15 19:26:21	2024-12-15 19:26:21
15	MT0015	87996.80	1	4	0.29	Transferencia de 87996.8 de la cuenta 1 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
16	MT0016	49601.50	6	3	3.50	Transferencia de 49601.5 de la cuenta 6 a la 3.	2024-12-15 19:26:21	2024-12-15 19:26:21
17	MT0017	27715.20	5	4	0.29	Transferencia de 27715.2 de la cuenta 5 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
18	MT0018	93817.90	5	4	0.29	Transferencia de 93817.9 de la cuenta 5 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
19	MT0019	58639.60	2	4	1.00	Transferencia de 58639.6 de la cuenta 2 a la 4.	2024-12-15 19:26:22	2024-12-15 19:26:22
20	MT0020	70372.00	5	3	1.00	Transferencia de 70372 de la cuenta 5 a la 3.	2024-12-15 19:26:22	2024-12-15 19:26:22
21	MT0021	73155.50	5	1	1.00	Transferencia de 73155.5 de la cuenta 5 a la 1.	2024-12-15 19:26:22	2024-12-15 19:26:22
22	MT0022	25895.60	2	5	3.50	Transferencia de 25895.6 de la cuenta 2 a la 5.	2024-12-15 19:26:22	2024-12-15 19:26:22
23	MT0023	98663.00	4	2	1.00	Transferencia de 98663 de la cuenta 4 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
24	MT0024	16447.80	4	5	3.50	Transferencia de 16447.8 de la cuenta 4 a la 5.	2024-12-15 19:26:22	2024-12-15 19:26:22
25	MT0025	93873.70	1	5	1.00	Transferencia de 93873.7 de la cuenta 1 a la 5.	2024-12-15 19:26:22	2024-12-15 19:26:22
26	MT0026	37412.70	5	1	1.00	Transferencia de 37412.7 de la cuenta 5 a la 1.	2024-12-15 19:26:22	2024-12-15 19:26:22
27	MT0027	29846.30	5	2	0.29	Transferencia de 29846.3 de la cuenta 5 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
28	MT0028	94294.30	1	2	0.29	Transferencia de 94294.3 de la cuenta 1 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
29	MT0029	33872.90	1	2	0.29	Transferencia de 33872.9 de la cuenta 1 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
30	MT0030	51227.90	3	1	1.00	Transferencia de 51227.9 de la cuenta 3 a la 1.	2024-12-15 19:26:22	2024-12-15 19:26:22
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: payment_receipts; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.payment_receipts (id, code, type_document, url_qr, advances, free_ops, taxed_ops, op_tax_free, op_exempt_ops, vat, discounts, total, status, observation, created_at, updated_at) FROM stdin;
1	PR0001	Transferencia	https://example.com/qr/1	0.00	0.00	42594.50	0.00	0.00	7667.01	0.00	50261.51	completed	Transferencia de 42594.5 de la cuenta 1 a la 2.	2024-12-15 19:26:21	2024-12-15 19:26:21
2	PR0002	Transferencia	https://example.com/qr/2	0.00	0.00	52979.50	0.00	0.00	9536.31	0.00	62515.81	completed	Transferencia de 52979.5 de la cuenta 1 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
3	PR0003	Transferencia	https://example.com/qr/3	0.00	0.00	72627.10	0.00	0.00	13072.88	0.00	85699.98	completed	Transferencia de 72627.1 de la cuenta 3 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
4	PR0004	Transferencia	https://example.com/qr/4	0.00	0.00	90258.80	0.00	0.00	16246.58	0.00	106505.38	completed	Transferencia de 90258.8 de la cuenta 4 a la 2.	2024-12-15 19:26:21	2024-12-15 19:26:21
5	PR0005	Transferencia	https://example.com/qr/5	0.00	0.00	41073.70	0.00	0.00	7393.27	0.00	48466.97	completed	Transferencia de 41073.7 de la cuenta 4 a la 5.	2024-12-15 19:26:21	2024-12-15 19:26:21
6	PR0006	Transferencia	https://example.com/qr/6	0.00	0.00	54583.40	0.00	0.00	9825.01	0.00	64408.41	completed	Transferencia de 54583.4 de la cuenta 4 a la 2.	2024-12-15 19:26:21	2024-12-15 19:26:21
7	PR0007	Transferencia	https://example.com/qr/7	0.00	0.00	39046.80	0.00	0.00	7028.42	0.00	46075.22	completed	Transferencia de 39046.8 de la cuenta 3 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
8	PR0008	Transferencia	https://example.com/qr/8	0.00	0.00	64023.50	0.00	0.00	11524.23	0.00	75547.73	completed	Transferencia de 64023.5 de la cuenta 6 a la 3.	2024-12-15 19:26:21	2024-12-15 19:26:21
9	PR0009	Transferencia	https://example.com/qr/9	0.00	0.00	11197.30	0.00	0.00	2015.51	0.00	13212.81	completed	Transferencia de 11197.3 de la cuenta 5 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
10	PR0010	Transferencia	https://example.com/qr/10	0.00	0.00	87322.60	0.00	0.00	15718.07	0.00	103040.67	completed	Transferencia de 87322.6 de la cuenta 2 a la 5.	2024-12-15 19:26:21	2024-12-15 19:26:21
11	PR0011	Transferencia	https://example.com/qr/11	0.00	0.00	39301.40	0.00	0.00	7074.25	0.00	46375.65	completed	Transferencia de 39301.4 de la cuenta 6 a la 1.	2024-12-15 19:26:21	2024-12-15 19:26:21
12	PR0012	Transferencia	https://example.com/qr/12	0.00	0.00	93767.10	0.00	0.00	16878.08	0.00	110645.18	completed	Transferencia de 93767.1 de la cuenta 1 a la 5.	2024-12-15 19:26:21	2024-12-15 19:26:21
13	PR0013	Transferencia	https://example.com/qr/13	0.00	0.00	94468.70	0.00	0.00	17004.37	0.00	111473.07	completed	Transferencia de 94468.7 de la cuenta 4 a la 6.	2024-12-15 19:26:21	2024-12-15 19:26:21
14	PR0014	Transferencia	https://example.com/qr/14	0.00	0.00	57731.80	0.00	0.00	10391.72	0.00	68123.52	completed	Transferencia de 57731.8 de la cuenta 5 a la 3.	2024-12-15 19:26:21	2024-12-15 19:26:21
15	PR0015	Transferencia	https://example.com/qr/15	0.00	0.00	87996.80	0.00	0.00	15839.42	0.00	103836.22	completed	Transferencia de 87996.8 de la cuenta 1 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
16	PR0016	Transferencia	https://example.com/qr/16	0.00	0.00	49601.50	0.00	0.00	8928.27	0.00	58529.77	completed	Transferencia de 49601.5 de la cuenta 6 a la 3.	2024-12-15 19:26:21	2024-12-15 19:26:21
17	PR0017	Transferencia	https://example.com/qr/17	0.00	0.00	27715.20	0.00	0.00	4988.74	0.00	32703.94	completed	Transferencia de 27715.2 de la cuenta 5 a la 4.	2024-12-15 19:26:21	2024-12-15 19:26:21
18	PR0018	Transferencia	https://example.com/qr/18	0.00	0.00	93817.90	0.00	0.00	16887.22	0.00	110705.12	completed	Transferencia de 93817.9 de la cuenta 5 a la 4.	2024-12-15 19:26:22	2024-12-15 19:26:22
19	PR0019	Transferencia	https://example.com/qr/19	0.00	0.00	58639.60	0.00	0.00	10555.13	0.00	69194.73	completed	Transferencia de 58639.6 de la cuenta 2 a la 4.	2024-12-15 19:26:22	2024-12-15 19:26:22
20	PR0020	Transferencia	https://example.com/qr/20	0.00	0.00	70372.00	0.00	0.00	12666.96	0.00	83038.96	completed	Transferencia de 70372 de la cuenta 5 a la 3.	2024-12-15 19:26:22	2024-12-15 19:26:22
21	PR0021	Transferencia	https://example.com/qr/21	0.00	0.00	73155.50	0.00	0.00	13167.99	0.00	86323.49	completed	Transferencia de 73155.5 de la cuenta 5 a la 1.	2024-12-15 19:26:22	2024-12-15 19:26:22
22	PR0022	Transferencia	https://example.com/qr/22	0.00	0.00	25895.60	0.00	0.00	4661.21	0.00	30556.81	completed	Transferencia de 25895.6 de la cuenta 2 a la 5.	2024-12-15 19:26:22	2024-12-15 19:26:22
23	PR0023	Transferencia	https://example.com/qr/23	0.00	0.00	98663.00	0.00	0.00	17759.34	0.00	116422.34	completed	Transferencia de 98663 de la cuenta 4 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
24	PR0024	Transferencia	https://example.com/qr/24	0.00	0.00	16447.80	0.00	0.00	2960.60	0.00	19408.40	completed	Transferencia de 16447.8 de la cuenta 4 a la 5.	2024-12-15 19:26:22	2024-12-15 19:26:22
25	PR0025	Transferencia	https://example.com/qr/25	0.00	0.00	93873.70	0.00	0.00	16897.27	0.00	110770.97	completed	Transferencia de 93873.7 de la cuenta 1 a la 5.	2024-12-15 19:26:22	2024-12-15 19:26:22
26	PR0026	Transferencia	https://example.com/qr/26	0.00	0.00	37412.70	0.00	0.00	6734.29	0.00	44146.99	completed	Transferencia de 37412.7 de la cuenta 5 a la 1.	2024-12-15 19:26:22	2024-12-15 19:26:22
27	PR0027	Transferencia	https://example.com/qr/27	0.00	0.00	29846.30	0.00	0.00	5372.33	0.00	35218.63	completed	Transferencia de 29846.3 de la cuenta 5 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
28	PR0028	Transferencia	https://example.com/qr/28	0.00	0.00	94294.30	0.00	0.00	16972.97	0.00	111267.27	completed	Transferencia de 94294.3 de la cuenta 1 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
29	PR0029	Transferencia	https://example.com/qr/29	0.00	0.00	33872.90	0.00	0.00	6097.12	0.00	39970.02	completed	Transferencia de 33872.9 de la cuenta 1 a la 2.	2024-12-15 19:26:22	2024-12-15 19:26:22
30	PR0030	Transferencia	https://example.com/qr/30	0.00	0.00	51227.90	0.00	0.00	9221.02	0.00	60448.92	completed	Transferencia de 51227.9 de la cuenta 3 a la 1.	2024-12-15 19:26:22	2024-12-15 19:26:22
31	PR9408	Cr├®dito	https://example.com/qr/4869	0.00	0.00	0.00	0.00	0.00	0.00	0.00	50000.00	completed	Comprobante de pago por cr├®dito de 50000.00 para el cliente Corporaci├│n Andina S.A..	2024-12-15 19:26:22	2024-12-15 19:26:22
32	PR4061	Cr├®dito	https://example.com/qr/6587	0.00	0.00	0.00	0.00	0.00	0.00	0.00	40000.00	completed	Comprobante de pago por cr├®dito de 40000.00 para el cliente Distribuidora Pac├¡fico.	2024-12-15 19:26:22	2024-12-15 19:26:22
33	PR7560	Cr├®dito	https://example.com/qr/8472	0.00	0.00	0.00	0.00	0.00	0.00	0.00	70000.00	completed	Comprobante de pago por cr├®dito de 70000.00 para el cliente Inversiones del Norte SAC.	2024-12-15 19:26:22	2024-12-15 19:26:22
34	PR9400	Cr├®dito	https://example.com/qr/8850	0.00	0.00	0.00	0.00	0.00	0.00	0.00	90000.00	completed	Comprobante de pago por cr├®dito de 90000.00 para el cliente Comercializadora Horizonte.	2024-12-15 19:26:22	2024-12-15 19:26:22
35	PR3151	Cr├®dito	https://example.com/qr/2772	0.00	0.00	0.00	0.00	0.00	0.00	0.00	60000.00	completed	Comprobante de pago por cr├®dito de 60000.00 para el cliente Multiservicios Elite SAC.	2024-12-15 19:26:22	2024-12-15 19:26:22
36	PR9690	Cr├®dito	https://example.com/qr/5831	0.00	0.00	0.00	0.00	0.00	0.00	0.00	50000.00	completed	Comprobante de pago por cr├®dito de 50000.00 para el cliente Consorcio de Negocios.	2024-12-15 19:26:22	2024-12-15 19:26:22
37	PR3198	Cr├®dito	https://example.com/qr/9673	0.00	0.00	0.00	0.00	0.00	0.00	0.00	40000.00	completed	Comprobante de pago por cr├®dito de 40000.00 para el cliente Global Market SAC.	2024-12-15 19:26:22	2024-12-15 19:26:22
38	PR8564	Cr├®dito	https://example.com/qr/6246	0.00	0.00	0.00	0.00	0.00	0.00	0.00	30000.00	completed	Comprobante de pago por cr├®dito de 30000.00 para el cliente Corporaci├│n Sol de Oro.	2024-12-15 19:26:22	2024-12-15 19:26:22
39	PR7235	Cr├®dito	https://example.com/qr/8854	0.00	0.00	0.00	0.00	0.00	0.00	0.00	75000.00	completed	Comprobante de pago por cr├®dito de 75000.00 para el cliente Distribuciones Unidas SAC.	2024-12-15 19:26:22	2024-12-15 19:26:22
40	PR6454	Cr├®dito	https://example.com/qr/8173	0.00	0.00	0.00	0.00	0.00	0.00	0.00	80000.00	completed	Comprobante de pago por cr├®dito de 80000.00 para el cliente Comercial Santa Rosa.	2024-12-15 19:26:22	2024-12-15 19:26:22
41	PR9026	Cr├®dito	https://example.com/qr/4056	0.00	0.00	0.00	0.00	0.00	0.00	0.00	15000.00	completed	Comprobante de pago por cr├®dito de 15000.00 para el cliente Tienda La Esperanza.	2024-12-15 19:26:22	2024-12-15 19:26:22
42	PR8810	Cr├®dito	https://example.com/qr/3393	0.00	0.00	0.00	0.00	0.00	0.00	0.00	20000.00	completed	Comprobante de pago por cr├®dito de 20000.00 para el cliente Comercial El Sol.	2024-12-15 19:26:22	2024-12-15 19:26:22
43	PR1284	Cr├®dito	https://example.com/qr/2906	0.00	0.00	0.00	0.00	0.00	0.00	0.00	25000.00	completed	Comprobante de pago por cr├®dito de 25000.00 para el cliente Comercial Santa Cruz.	2024-12-15 19:26:22	2024-12-15 19:26:22
44	PR2652	Cr├®dito	https://example.com/qr/2658	0.00	0.00	0.00	0.00	0.00	0.00	0.00	30000.00	completed	Comprobante de pago por cr├®dito de 30000.00 para el cliente Supermercado El Comercio.	2024-12-15 19:26:22	2024-12-15 19:26:22
45	PR3736	Cr├®dito	https://example.com/qr/8198	0.00	0.00	0.00	0.00	0.00	0.00	0.00	12000.00	completed	Comprobante de pago por cr├®dito de 12000.00 para el cliente MiniMarket Central.	2024-12-15 19:26:22	2024-12-15 19:26:22
46	PR3991	Cr├®dito	https://example.com/qr/9398	0.00	0.00	0.00	0.00	0.00	0.00	0.00	18000.00	completed	Comprobante de pago por cr├®dito de 18000.00 para el cliente Bazar Universal.	2024-12-15 19:26:22	2024-12-15 19:26:22
47	PR5609	Cr├®dito	https://example.com/qr/4766	0.00	0.00	0.00	0.00	0.00	0.00	0.00	28000.00	completed	Comprobante de pago por cr├®dito de 28000.00 para el cliente Tienda MegaOfertas.	2024-12-15 19:26:22	2024-12-15 19:26:22
48	PR9926	Cr├®dito	https://example.com/qr/3171	0.00	0.00	0.00	0.00	0.00	0.00	0.00	21000.00	completed	Comprobante de pago por cr├®dito de 21000.00 para el cliente Tienda La Moderna.	2024-12-15 19:26:22	2024-12-15 19:26:22
49	PR7869	Cr├®dito	https://example.com/qr/2319	0.00	0.00	0.00	0.00	0.00	0.00	0.00	17000.00	completed	Comprobante de pago por cr├®dito de 17000.00 para el cliente Almac├®n San Jos├®.	2024-12-15 19:26:22	2024-12-15 19:26:22
50	PR3781	Cr├®dito	https://example.com/qr/4753	0.00	0.00	0.00	0.00	0.00	0.00	0.00	15000.00	completed	Comprobante de pago por cr├®dito de 15000.00 para el cliente Ferreter├¡a Los Andes.	2024-12-15 19:26:22	2024-12-15 19:26:22
51	PR4459	Cr├®dito	https://example.com/qr/7081	0.00	0.00	0.00	0.00	0.00	0.00	0.00	25000.00	completed	Comprobante de pago por cr├®dito de 25000.00 para el cliente AgroExport Chav├¡n.	2024-12-15 19:26:22	2024-12-15 19:26:22
52	PR1093	Cr├®dito	https://example.com/qr/9571	0.00	0.00	0.00	0.00	0.00	0.00	0.00	18000.00	completed	Comprobante de pago por cr├®dito de 18000.00 para el cliente Agr├¡cola La Ribera.	2024-12-15 19:26:22	2024-12-15 19:26:22
53	PR9483	Cr├®dito	https://example.com/qr/6122	0.00	0.00	0.00	0.00	0.00	0.00	0.00	30000.00	completed	Comprobante de pago por cr├®dito de 30000.00 para el cliente Productores Andinos SAC.	2024-12-15 19:26:22	2024-12-15 19:26:22
54	PR6255	Cr├®dito	https://example.com/qr/1531	0.00	0.00	0.00	0.00	0.00	0.00	0.00	40000.00	completed	Comprobante de pago por cr├®dito de 40000.00 para el cliente Agr├¡cola Los Olivos.	2024-12-15 19:26:22	2024-12-15 19:26:22
55	PR8126	Cr├®dito	https://example.com/qr/3510	0.00	0.00	0.00	0.00	0.00	0.00	0.00	20000.00	completed	Comprobante de pago por cr├®dito de 20000.00 para el cliente Fundo El Para├¡so.	2024-12-15 19:26:23	2024-12-15 19:26:23
56	PR6314	Cr├®dito	https://example.com/qr/9738	0.00	0.00	0.00	0.00	0.00	0.00	0.00	15000.00	completed	Comprobante de pago por cr├®dito de 15000.00 para el cliente Consorcio Agrario del Norte.	2024-12-15 19:26:23	2024-12-15 19:26:23
57	PR9009	Cr├®dito	https://example.com/qr/3602	0.00	0.00	0.00	0.00	0.00	0.00	0.00	50000.00	completed	Comprobante de pago por cr├®dito de 50000.00 para el cliente Exportaciones del Sur SAC.	2024-12-15 19:26:23	2024-12-15 19:26:23
58	PR4846	Cr├®dito	https://example.com/qr/9213	0.00	0.00	0.00	0.00	0.00	0.00	0.00	28000.00	completed	Comprobante de pago por cr├®dito de 28000.00 para el cliente Agro Santa Elena.	2024-12-15 19:26:23	2024-12-15 19:26:23
59	PR8038	Cr├®dito	https://example.com/qr/8498	0.00	0.00	0.00	0.00	0.00	0.00	0.00	22000.00	completed	Comprobante de pago por cr├®dito de 22000.00 para el cliente Cooperativa Agraria Nuevo Horizonte.	2024-12-15 19:26:23	2024-12-15 19:26:23
60	PR3899	Cr├®dito	https://example.com/qr/1206	0.00	0.00	0.00	0.00	0.00	0.00	0.00	27000.00	completed	Comprobante de pago por cr├®dito de 27000.00 para el cliente Asociaci├│n de Productores de Cacao.	2024-12-15 19:26:23	2024-12-15 19:26:23
61	PR1405	Cr├®dito	https://example.com/qr/7288	0.00	0.00	0.00	0.00	0.00	0.00	0.00	50000.00	completed	Comprobante de pago por cr├®dito de 50000.00 para el cliente Distribuidora Santa Rosa.	2024-12-15 19:26:23	2024-12-15 19:26:23
62	PR5443	Cr├®dito	https://example.com/qr/5985	0.00	0.00	0.00	0.00	0.00	0.00	0.00	40000.00	completed	Comprobante de pago por cr├®dito de 40000.00 para el cliente Mayorista El Progreso.	2024-12-15 19:26:23	2024-12-15 19:26:23
63	PR3757	Cr├®dito	https://example.com/qr/3781	0.00	0.00	0.00	0.00	0.00	0.00	0.00	45000.00	completed	Comprobante de pago por cr├®dito de 45000.00 para el cliente Comercializadora Los Andes.	2024-12-15 19:26:23	2024-12-15 19:26:23
64	PR5432	Cr├®dito	https://example.com/qr/4580	0.00	0.00	0.00	0.00	0.00	0.00	0.00	60000.00	completed	Comprobante de pago por cr├®dito de 60000.00 para el cliente Mercados del Norte S.A..	2024-12-15 19:26:23	2024-12-15 19:26:23
65	PR6635	Cr├®dito	https://example.com/qr/2524	0.00	0.00	0.00	0.00	0.00	0.00	0.00	70000.00	completed	Comprobante de pago por cr├®dito de 70000.00 para el cliente Distribuidora Central EIRL.	2024-12-15 19:26:23	2024-12-15 19:26:23
66	PR5411	Cr├®dito	https://example.com/qr/8689	0.00	0.00	0.00	0.00	0.00	0.00	0.00	30000.00	completed	Comprobante de pago por cr├®dito de 30000.00 para el cliente Centro Mayorista Hu├ínuco.	2024-12-15 19:26:23	2024-12-15 19:26:23
67	PR9003	Cr├®dito	https://example.com/qr/8726	0.00	0.00	0.00	0.00	0.00	0.00	0.00	55000.00	completed	Comprobante de pago por cr├®dito de 55000.00 para el cliente Comercial El Triunfo.	2024-12-15 19:26:23	2024-12-15 19:26:23
68	PR4694	Cr├®dito	https://example.com/qr/8596	0.00	0.00	0.00	0.00	0.00	0.00	0.00	80000.00	completed	Comprobante de pago por cr├®dito de 80000.00 para el cliente Importadora San Jorge.	2024-12-15 19:26:23	2024-12-15 19:26:23
69	PR3321	Cr├®dito	https://example.com/qr/5326	0.00	0.00	0.00	0.00	0.00	0.00	0.00	65000.00	completed	Comprobante de pago por cr├®dito de 65000.00 para el cliente Distribuidora Los Cedros.	2024-12-15 19:26:23	2024-12-15 19:26:23
70	PR4539	Cr├®dito	https://example.com/qr/8455	0.00	0.00	0.00	0.00	0.00	0.00	0.00	75000.00	completed	Comprobante de pago por cr├®dito de 75000.00 para el cliente Almacenes La Fortuna.	2024-12-15 19:26:23	2024-12-15 19:26:23
71	PR8519	Boleta	https://example.com/qr/6298	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-06 10:52:00	2024-09-06 10:52:00
72	PR4801	Boleta	https://example.com/qr/3025	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-14 11:48:00	2024-09-14 11:48:00
73	PR9766	Boleta	https://example.com/qr/6812	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-13 15:58:00	2024-09-13 15:58:00
74	PR4395	Factura	https://example.com/qr/4450	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-27 08:36:00	2024-09-27 08:36:00
75	PR9984	Boleta	https://example.com/qr/8648	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-11 14:23:00	2024-09-11 14:23:00
76	PR8894	Factura	https://example.com/qr/1596	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-09 14:41:00	2024-09-09 14:41:00
77	PR2046	Factura	https://example.com/qr/9690	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-14 14:41:00	2024-09-14 14:41:00
78	PR4665	Boleta	https://example.com/qr/3698	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-18 12:22:00	2024-09-18 12:22:00
79	PR2060	Factura	https://example.com/qr/9514	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-30 09:55:00	2024-09-30 09:55:00
80	PR1207	Factura	https://example.com/qr/8870	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-10 09:01:00	2024-09-10 09:01:00
81	PR5596	Boleta	https://example.com/qr/2455	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-07 15:28:00	2024-09-07 15:28:00
82	PR9043	Boleta	https://example.com/qr/6452	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-24 15:02:00	2024-09-24 15:02:00
83	PR6385	Factura	https://example.com/qr/5303	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-07 14:30:00	2024-09-07 14:30:00
84	PR4262	Factura	https://example.com/qr/6690	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-13 13:37:00	2024-09-13 13:37:00
85	PR8496	Factura	https://example.com/qr/4552	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-20 09:36:00	2024-09-20 09:36:00
86	PR4606	Boleta	https://example.com/qr/4058	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-09 15:25:00	2024-09-09 15:25:00
87	PR4215	Factura	https://example.com/qr/2523	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-22 10:11:00	2024-09-22 10:11:00
88	PR4835	Boleta	https://example.com/qr/9198	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-05 14:29:00	2024-09-05 14:29:00
89	PR1913	Factura	https://example.com/qr/1953	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-13 12:24:00	2024-09-13 12:24:00
90	PR6980	Boleta	https://example.com/qr/7067	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-04 09:40:00	2024-09-04 09:40:00
91	PR5011	Factura	https://example.com/qr/9865	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-16 10:33:00	2024-09-16 10:33:00
92	PR9963	Boleta	https://example.com/qr/7320	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-21 15:49:00	2024-09-21 15:49:00
93	PR3055	Factura	https://example.com/qr/8737	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-25 15:52:00	2024-09-25 15:52:00
94	PR8375	Factura	https://example.com/qr/8513	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-02 12:50:00	2024-09-02 12:50:00
95	PR9083	Boleta	https://example.com/qr/4519	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-29 14:56:00	2024-09-29 14:56:00
96	PR8134	Boleta	https://example.com/qr/3589	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-18 10:56:00	2024-09-18 10:56:00
97	PR1420	Factura	https://example.com/qr/3023	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-27 08:58:00	2024-09-27 08:58:00
98	PR8580	Factura	https://example.com/qr/5832	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-25 13:22:00	2024-09-25 13:22:00
99	PR8251	Boleta	https://example.com/qr/7186	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-03 10:18:00	2024-09-03 10:18:00
100	PR9144	Boleta	https://example.com/qr/2779	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-02 13:42:00	2024-09-02 13:42:00
101	PR5779	Factura	https://example.com/qr/1277	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-21 11:06:00	2024-09-21 11:06:00
102	PR3970	Factura	https://example.com/qr/3824	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-18 16:05:00	2024-09-18 16:05:00
103	PR7537	Factura	https://example.com/qr/4737	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-05 13:39:00	2024-09-05 13:39:00
104	PR7669	Boleta	https://example.com/qr/5853	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-11 10:33:00	2024-09-11 10:33:00
105	PR7393	Factura	https://example.com/qr/6918	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-10 08:19:00	2024-09-10 08:19:00
106	PR2674	Factura	https://example.com/qr/9349	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-08 16:53:00	2024-09-08 16:53:00
107	PR8271	Boleta	https://example.com/qr/2321	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-17 10:24:00	2024-09-17 10:24:00
108	PR3611	Boleta	https://example.com/qr/2462	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-21 16:16:00	2024-09-21 16:16:00
109	PR9605	Factura	https://example.com/qr/8931	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-09 09:15:00	2024-09-09 09:15:00
110	PR3433	Boleta	https://example.com/qr/7590	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-20 16:22:00	2024-09-20 16:22:00
111	PR2151	Factura	https://example.com/qr/5170	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-28 10:54:00	2024-09-28 10:54:00
112	PR5139	Boleta	https://example.com/qr/8413	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-02 13:13:00	2024-09-02 13:13:00
113	PR5649	Factura	https://example.com/qr/2075	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-14 10:16:00	2024-09-14 10:16:00
114	PR9450	Boleta	https://example.com/qr/9593	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-15 09:11:00	2024-09-15 09:11:00
115	PR6796	Boleta	https://example.com/qr/5817	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-10 08:58:00	2024-09-10 08:58:00
116	PR1654	Factura	https://example.com/qr/8880	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-02 13:22:00	2024-09-02 13:22:00
117	PR6402	Boleta	https://example.com/qr/2834	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-22 15:53:00	2024-09-22 15:53:00
118	PR5493	Boleta	https://example.com/qr/5189	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-16 10:43:00	2024-09-16 10:43:00
119	PR1834	Factura	https://example.com/qr/3466	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-02 15:46:00	2024-09-02 15:46:00
120	PR6154	Boleta	https://example.com/qr/6057	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-18 08:55:00	2024-09-18 08:55:00
121	PR1743	Boleta	https://example.com/qr/2105	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-23 09:50:00	2024-09-23 09:50:00
122	PR7635	Boleta	https://example.com/qr/9381	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-11 13:27:00	2024-09-11 13:27:00
123	PR8584	Boleta	https://example.com/qr/4269	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-10 10:18:00	2024-09-10 10:18:00
124	PR5280	Boleta	https://example.com/qr/8239	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-01 15:00:00	2024-09-01 15:00:00
125	PR9792	Factura	https://example.com/qr/7069	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-13 16:49:00	2024-09-13 16:49:00
126	PR5873	Factura	https://example.com/qr/4585	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-16 11:47:00	2024-09-16 11:47:00
127	PR4467	Boleta	https://example.com/qr/2692	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-20 16:45:00	2024-09-20 16:45:00
128	PR7467	Boleta	https://example.com/qr/8299	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-17 14:47:00	2024-09-17 14:47:00
129	PR8818	Factura	https://example.com/qr/9159	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-19 10:59:00	2024-09-19 10:59:00
130	PR1819	Factura	https://example.com/qr/6630	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-14 09:20:00	2024-09-14 09:20:00
131	PR3183	Factura	https://example.com/qr/3848	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-03 10:21:00	2024-09-03 10:21:00
132	PR9985	Factura	https://example.com/qr/4523	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-10 13:47:00	2024-09-10 13:47:00
133	PR9506	Boleta	https://example.com/qr/2051	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-24 16:04:00	2024-09-24 16:04:00
134	PR4431	Factura	https://example.com/qr/3825	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-04 16:08:00	2024-09-04 16:08:00
135	PR4295	Boleta	https://example.com/qr/1974	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-27 10:12:00	2024-09-27 10:12:00
136	PR1578	Factura	https://example.com/qr/7235	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-15 10:05:00	2024-09-15 10:05:00
137	PR7179	Boleta	https://example.com/qr/3432	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-04 13:31:00	2024-09-04 13:31:00
138	PR8733	Factura	https://example.com/qr/8475	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-18 15:03:00	2024-09-18 15:03:00
139	PR2593	Boleta	https://example.com/qr/7411	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-02 13:08:00	2024-09-02 13:08:00
140	PR4025	Factura	https://example.com/qr/1592	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-08 12:03:00	2024-09-08 12:03:00
141	PR5968	Boleta	https://example.com/qr/3263	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-01 09:17:00	2024-09-01 09:17:00
142	PR9029	Factura	https://example.com/qr/2797	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-18 11:17:00	2024-09-18 11:17:00
143	PR3340	Factura	https://example.com/qr/3557	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-23 11:00:00	2024-09-23 11:00:00
144	PR5603	Factura	https://example.com/qr/9332	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-14 10:58:00	2024-09-14 10:58:00
145	PR1673	Factura	https://example.com/qr/4242	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-25 10:22:00	2024-09-25 10:22:00
146	PR9008	Factura	https://example.com/qr/6259	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-29 16:10:00	2024-09-29 16:10:00
147	PR5591	Boleta	https://example.com/qr/6580	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-29 14:55:00	2024-09-29 14:55:00
148	PR9188	Boleta	https://example.com/qr/5943	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-08 13:16:00	2024-09-08 13:16:00
149	PR7875	Factura	https://example.com/qr/4654	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-03 08:45:00	2024-09-03 08:45:00
150	PR6177	Factura	https://example.com/qr/2996	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-24 13:48:00	2024-09-24 13:48:00
151	PR2796	Boleta	https://example.com/qr/6508	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-01 09:04:00	2024-09-01 09:04:00
152	PR6238	Factura	https://example.com/qr/5103	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-26 13:16:00	2024-09-26 13:16:00
153	PR1421	Factura	https://example.com/qr/5697	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-21 16:52:00	2024-09-21 16:52:00
154	PR1989	Boleta	https://example.com/qr/9064	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-04 16:17:00	2024-09-04 16:17:00
155	PR6844	Boleta	https://example.com/qr/7662	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-13 16:26:00	2024-09-13 16:26:00
156	PR1558	Factura	https://example.com/qr/4173	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-25 10:34:00	2024-09-25 10:34:00
157	PR1993	Boleta	https://example.com/qr/5181	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-03 12:26:00	2024-09-03 12:26:00
158	PR5482	Factura	https://example.com/qr/6321	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-06 15:03:00	2024-09-06 15:03:00
159	PR2844	Factura	https://example.com/qr/1968	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-12 16:56:00	2024-09-12 16:56:00
160	PR1558	Boleta	https://example.com/qr/2297	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-09 10:54:00	2024-09-09 10:54:00
161	PR4229	Boleta	https://example.com/qr/7630	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-29 11:38:00	2024-09-29 11:38:00
162	PR6999	Boleta	https://example.com/qr/6264	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-12 11:21:00	2024-09-12 11:21:00
163	PR4741	Factura	https://example.com/qr/8188	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-23 09:53:00	2024-09-23 09:53:00
164	PR3274	Boleta	https://example.com/qr/6630	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-09-08 11:42:00	2024-09-08 11:42:00
165	PR6217	Factura	https://example.com/qr/4641	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-02 10:04:00	2024-10-02 10:04:00
166	PR5531	Factura	https://example.com/qr/8866	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-06 12:54:00	2024-10-06 12:54:00
167	PR9902	Boleta	https://example.com/qr/5885	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-29 13:32:00	2024-10-29 13:32:00
168	PR9616	Boleta	https://example.com/qr/2062	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-24 11:51:00	2024-10-24 11:51:00
169	PR3035	Boleta	https://example.com/qr/9398	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-24 11:07:00	2024-10-24 11:07:00
170	PR2217	Boleta	https://example.com/qr/1564	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-02 11:17:00	2024-10-02 11:17:00
171	PR1861	Factura	https://example.com/qr/6404	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-11 12:51:00	2024-10-11 12:51:00
172	PR4799	Boleta	https://example.com/qr/8470	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 08:01:00	2024-10-13 08:01:00
173	PR3559	Boleta	https://example.com/qr/1914	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-29 12:12:00	2024-10-29 12:12:00
174	PR3751	Boleta	https://example.com/qr/7706	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-04 11:23:00	2024-10-04 11:23:00
175	PR8633	Boleta	https://example.com/qr/1107	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-17 09:42:00	2024-10-17 09:42:00
176	PR6039	Boleta	https://example.com/qr/3780	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-11 10:17:00	2024-10-11 10:17:00
177	PR6577	Factura	https://example.com/qr/9089	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-16 12:20:00	2024-10-16 12:20:00
178	PR7405	Boleta	https://example.com/qr/4014	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-17 14:43:00	2024-10-17 14:43:00
179	PR4857	Boleta	https://example.com/qr/5150	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-20 13:18:00	2024-10-20 13:18:00
180	PR1411	Factura	https://example.com/qr/1507	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-30 14:26:00	2024-10-30 14:26:00
181	PR4590	Boleta	https://example.com/qr/9373	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-28 08:20:00	2024-10-28 08:20:00
182	PR4073	Boleta	https://example.com/qr/6402	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-09 15:37:00	2024-10-09 15:37:00
183	PR2513	Boleta	https://example.com/qr/3405	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-21 16:10:00	2024-10-21 16:10:00
184	PR7446	Boleta	https://example.com/qr/8275	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-07 12:01:00	2024-10-07 12:01:00
185	PR9815	Boleta	https://example.com/qr/3047	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-08 13:53:00	2024-10-08 13:53:00
186	PR1770	Factura	https://example.com/qr/2851	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-20 16:30:00	2024-10-20 16:30:00
187	PR5094	Factura	https://example.com/qr/2131	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-20 16:16:00	2024-10-20 16:16:00
188	PR4855	Boleta	https://example.com/qr/7860	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-23 11:55:00	2024-10-23 11:55:00
189	PR4984	Boleta	https://example.com/qr/7326	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 13:21:00	2024-10-26 13:21:00
190	PR9047	Boleta	https://example.com/qr/1354	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-22 08:32:00	2024-10-22 08:32:00
191	PR2232	Factura	https://example.com/qr/8134	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-25 12:41:00	2024-10-25 12:41:00
192	PR4460	Factura	https://example.com/qr/3137	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-17 09:45:00	2024-10-17 09:45:00
193	PR4329	Boleta	https://example.com/qr/7336	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 14:26:00	2024-10-26 14:26:00
194	PR9676	Factura	https://example.com/qr/1848	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-08 13:14:00	2024-10-08 13:14:00
195	PR2821	Factura	https://example.com/qr/9900	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-16 14:54:00	2024-10-16 14:54:00
196	PR2237	Boleta	https://example.com/qr/5929	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-08 16:38:00	2024-10-08 16:38:00
197	PR8571	Boleta	https://example.com/qr/4377	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 08:29:00	2024-10-05 08:29:00
198	PR5687	Boleta	https://example.com/qr/6710	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-09 14:05:00	2024-10-09 14:05:00
199	PR2469	Factura	https://example.com/qr/8443	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-21 08:25:00	2024-10-21 08:25:00
200	PR6331	Factura	https://example.com/qr/3367	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-18 16:54:00	2024-10-18 16:54:00
201	PR8907	Boleta	https://example.com/qr/1834	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-14 16:47:00	2024-10-14 16:47:00
202	PR4056	Boleta	https://example.com/qr/2086	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-24 16:06:00	2024-10-24 16:06:00
203	PR1152	Factura	https://example.com/qr/3361	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-19 14:24:00	2024-10-19 14:24:00
204	PR1191	Boleta	https://example.com/qr/1104	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 16:15:00	2024-10-26 16:15:00
205	PR4115	Boleta	https://example.com/qr/1287	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-22 14:36:00	2024-10-22 14:36:00
206	PR8343	Boleta	https://example.com/qr/2116	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 12:45:00	2024-10-13 12:45:00
207	PR5042	Factura	https://example.com/qr/2979	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-24 16:18:00	2024-10-24 16:18:00
208	PR8137	Boleta	https://example.com/qr/8468	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 16:21:00	2024-10-26 16:21:00
209	PR3698	Boleta	https://example.com/qr/7896	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-08 11:31:00	2024-10-08 11:31:00
210	PR7098	Factura	https://example.com/qr/2182	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-28 13:05:00	2024-10-28 13:05:00
211	PR8291	Boleta	https://example.com/qr/3456	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-23 15:39:00	2024-10-23 15:39:00
212	PR5125	Boleta	https://example.com/qr/7279	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-24 12:23:00	2024-10-24 12:23:00
213	PR6261	Boleta	https://example.com/qr/8070	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 10:10:00	2024-10-13 10:10:00
214	PR7007	Factura	https://example.com/qr/1830	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-16 12:27:00	2024-10-16 12:27:00
215	PR5621	Factura	https://example.com/qr/3104	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 15:00:00	2024-10-13 15:00:00
216	PR4245	Boleta	https://example.com/qr/4248	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-11 14:00:00	2024-10-11 14:00:00
217	PR1391	Boleta	https://example.com/qr/3362	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-17 09:39:00	2024-10-17 09:39:00
218	PR7416	Factura	https://example.com/qr/6147	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-11 13:34:00	2024-10-11 13:34:00
219	PR3615	Boleta	https://example.com/qr/8353	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 09:57:00	2024-10-05 09:57:00
220	PR5825	Factura	https://example.com/qr/9865	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 15:47:00	2024-10-05 15:47:00
221	PR7108	Boleta	https://example.com/qr/9335	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-23 08:26:00	2024-10-23 08:26:00
222	PR4211	Boleta	https://example.com/qr/4694	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-22 09:56:00	2024-10-22 09:56:00
223	PR3026	Factura	https://example.com/qr/4446	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-22 10:05:00	2024-10-22 10:05:00
224	PR3732	Boleta	https://example.com/qr/1496	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-25 09:23:00	2024-10-25 09:23:00
225	PR9028	Factura	https://example.com/qr/2656	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-23 09:37:00	2024-10-23 09:37:00
226	PR5235	Boleta	https://example.com/qr/9241	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 09:45:00	2024-10-26 09:45:00
227	PR4042	Boleta	https://example.com/qr/2342	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-22 08:21:00	2024-10-22 08:21:00
228	PR7638	Boleta	https://example.com/qr/2495	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 09:02:00	2024-10-26 09:02:00
229	PR4917	Factura	https://example.com/qr/2826	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 14:20:00	2024-10-13 14:20:00
230	PR2691	Boleta	https://example.com/qr/6138	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-01 08:35:00	2024-10-01 08:35:00
231	PR8423	Boleta	https://example.com/qr/3654	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-10 11:32:00	2024-10-10 11:32:00
232	PR3877	Boleta	https://example.com/qr/8997	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 13:46:00	2024-10-13 13:46:00
233	PR5637	Factura	https://example.com/qr/2690	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-20 15:52:00	2024-10-20 15:52:00
234	PR2627	Boleta	https://example.com/qr/9952	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-04 13:17:00	2024-10-04 13:17:00
235	PR8742	Factura	https://example.com/qr/8023	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-25 14:41:00	2024-10-25 14:41:00
236	PR7835	Boleta	https://example.com/qr/4138	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-27 12:59:00	2024-10-27 12:59:00
237	PR7831	Factura	https://example.com/qr/5310	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-23 11:21:00	2024-10-23 11:21:00
238	PR5062	Factura	https://example.com/qr/5320	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-28 08:53:00	2024-10-28 08:53:00
239	PR5401	Boleta	https://example.com/qr/5952	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-29 13:57:00	2024-10-29 13:57:00
240	PR9433	Factura	https://example.com/qr/5676	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-10 10:51:00	2024-10-10 10:51:00
241	PR8598	Boleta	https://example.com/qr/9965	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 15:02:00	2024-10-05 15:02:00
242	PR9296	Boleta	https://example.com/qr/2705	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-11 15:39:00	2024-10-11 15:39:00
243	PR3287	Boleta	https://example.com/qr/1010	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 11:53:00	2024-10-05 11:53:00
244	PR7891	Boleta	https://example.com/qr/1532	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-11 16:15:00	2024-10-11 16:15:00
245	PR2013	Boleta	https://example.com/qr/4328	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-01 08:27:00	2024-10-01 08:27:00
246	PR8733	Boleta	https://example.com/qr/5521	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-30 12:18:00	2024-10-30 12:18:00
247	PR6345	Boleta	https://example.com/qr/3581	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 09:18:00	2024-10-05 09:18:00
248	PR1161	Factura	https://example.com/qr/8099	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-13 10:26:00	2024-10-13 10:26:00
249	PR9880	Boleta	https://example.com/qr/5652	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-03 10:32:00	2024-10-03 10:32:00
250	PR1167	Boleta	https://example.com/qr/9191	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-18 11:33:00	2024-10-18 11:33:00
251	PR4346	Boleta	https://example.com/qr/3901	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 08:11:00	2024-10-26 08:11:00
252	PR4692	Factura	https://example.com/qr/8224	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-08 10:07:00	2024-10-08 10:07:00
253	PR4720	Factura	https://example.com/qr/6134	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-01 13:36:00	2024-10-01 13:36:00
254	PR4017	Boleta	https://example.com/qr/4346	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-10 11:31:00	2024-10-10 11:31:00
255	PR4307	Boleta	https://example.com/qr/4769	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-17 16:11:00	2024-10-17 16:11:00
256	PR8831	Boleta	https://example.com/qr/6982	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-26 09:42:00	2024-10-26 09:42:00
257	PR1144	Factura	https://example.com/qr/2069	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-05 15:45:00	2024-10-05 15:45:00
258	PR3769	Factura	https://example.com/qr/7556	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-10-30 08:45:00	2024-10-30 08:45:00
259	PR5532	Boleta	https://example.com/qr/5981	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 08:59:00	2024-11-24 08:59:00
260	PR5989	Boleta	https://example.com/qr/4613	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-01 16:48:00	2024-11-01 16:48:00
261	PR3421	Factura	https://example.com/qr/1984	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-02 11:00:00	2024-11-02 11:00:00
262	PR3865	Boleta	https://example.com/qr/9146	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-27 15:45:00	2024-11-27 15:45:00
263	PR3216	Boleta	https://example.com/qr/5151	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-18 11:03:00	2024-11-18 11:03:00
264	PR8398	Factura	https://example.com/qr/3452	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-20 16:10:00	2024-11-20 16:10:00
265	PR9166	Boleta	https://example.com/qr/1069	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-29 14:23:00	2024-11-29 14:23:00
266	PR4868	Factura	https://example.com/qr/3903	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-27 12:57:00	2024-11-27 12:57:00
267	PR1883	Boleta	https://example.com/qr/6197	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-30 15:47:00	2024-11-30 15:47:00
268	PR2882	Boleta	https://example.com/qr/9815	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 10:34:00	2024-11-12 10:34:00
269	PR2023	Factura	https://example.com/qr/8527	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-15 09:13:00	2024-11-15 09:13:00
270	PR2456	Boleta	https://example.com/qr/1652	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-22 14:45:00	2024-11-22 14:45:00
271	PR1915	Boleta	https://example.com/qr/1850	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-05 13:57:00	2024-11-05 13:57:00
272	PR1733	Factura	https://example.com/qr/4551	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 11:04:00	2024-11-24 11:04:00
273	PR7344	Factura	https://example.com/qr/7232	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-26 15:59:00	2024-11-26 15:59:00
274	PR6176	Boleta	https://example.com/qr/7440	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 10:25:00	2024-11-12 10:25:00
275	PR9037	Boleta	https://example.com/qr/6404	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-14 11:55:00	2024-11-14 11:55:00
276	PR9518	Boleta	https://example.com/qr/1420	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 11:00:00	2024-11-19 11:00:00
277	PR9954	Boleta	https://example.com/qr/2042	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-11 10:25:00	2024-11-11 10:25:00
278	PR3809	Boleta	https://example.com/qr/2905	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-06 08:31:00	2024-11-06 08:31:00
279	PR3147	Boleta	https://example.com/qr/4890	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-26 10:05:00	2024-11-26 10:05:00
280	PR5049	Boleta	https://example.com/qr/8587	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-29 09:43:00	2024-11-29 09:43:00
281	PR1641	Factura	https://example.com/qr/4997	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-04 08:59:00	2024-11-04 08:59:00
282	PR6649	Factura	https://example.com/qr/6951	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 16:57:00	2024-11-24 16:57:00
283	PR8424	Boleta	https://example.com/qr/4463	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-14 09:46:00	2024-11-14 09:46:00
284	PR7557	Factura	https://example.com/qr/4087	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-29 13:44:00	2024-11-29 13:44:00
285	PR5087	Factura	https://example.com/qr/1339	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-25 16:45:00	2024-11-25 16:45:00
286	PR2966	Factura	https://example.com/qr/2164	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 16:27:00	2024-11-19 16:27:00
287	PR6915	Boleta	https://example.com/qr/4536	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-21 13:33:00	2024-11-21 13:33:00
288	PR2536	Factura	https://example.com/qr/8760	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-08 10:31:00	2024-11-08 10:31:00
289	PR2479	Factura	https://example.com/qr/6273	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 08:51:00	2024-11-24 08:51:00
290	PR9329	Factura	https://example.com/qr/5283	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-07 09:23:00	2024-11-07 09:23:00
291	PR3294	Boleta	https://example.com/qr/3053	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 12:26:00	2024-11-24 12:26:00
292	PR2767	Boleta	https://example.com/qr/3027	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-15 08:13:00	2024-11-15 08:13:00
293	PR9577	Factura	https://example.com/qr/7455	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 14:53:00	2024-11-12 14:53:00
294	PR2777	Factura	https://example.com/qr/8124	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-08 13:34:00	2024-11-08 13:34:00
295	PR5894	Boleta	https://example.com/qr/9794	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 08:56:00	2024-11-12 08:56:00
296	PR9946	Factura	https://example.com/qr/2562	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-06 14:15:00	2024-11-06 14:15:00
297	PR2998	Factura	https://example.com/qr/6067	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-25 09:58:00	2024-11-25 09:58:00
298	PR5842	Boleta	https://example.com/qr/9000	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-17 11:34:00	2024-11-17 11:34:00
299	PR8166	Factura	https://example.com/qr/8464	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-01 08:59:00	2024-11-01 08:59:00
300	PR1611	Factura	https://example.com/qr/8410	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-16 11:40:00	2024-11-16 11:40:00
301	PR2596	Factura	https://example.com/qr/8757	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-06 14:45:00	2024-11-06 14:45:00
302	PR7288	Boleta	https://example.com/qr/8411	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-25 10:18:00	2024-11-25 10:18:00
303	PR2074	Boleta	https://example.com/qr/1951	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 12:42:00	2024-11-24 12:42:00
304	PR3344	Factura	https://example.com/qr/4513	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-27 14:35:00	2024-11-27 14:35:00
305	PR3213	Factura	https://example.com/qr/8413	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-27 14:46:00	2024-11-27 14:46:00
306	PR6458	Factura	https://example.com/qr/2767	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-11 12:27:00	2024-11-11 12:27:00
307	PR4475	Boleta	https://example.com/qr/5080	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 16:20:00	2024-11-12 16:20:00
308	PR3147	Factura	https://example.com/qr/4462	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-17 11:26:00	2024-11-17 11:26:00
309	PR5861	Factura	https://example.com/qr/4748	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-07 16:45:00	2024-11-07 16:45:00
310	PR9393	Factura	https://example.com/qr/5009	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-17 10:43:00	2024-11-17 10:43:00
311	PR9909	Factura	https://example.com/qr/4974	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-18 11:55:00	2024-11-18 11:55:00
312	PR5768	Factura	https://example.com/qr/6946	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-26 15:48:00	2024-11-26 15:48:00
313	PR3418	Boleta	https://example.com/qr/7457	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-13 10:27:00	2024-11-13 10:27:00
314	PR2347	Factura	https://example.com/qr/2907	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 08:04:00	2024-11-19 08:04:00
315	PR6552	Boleta	https://example.com/qr/7033	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-11 08:25:00	2024-11-11 08:25:00
316	PR7072	Boleta	https://example.com/qr/8789	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-15 08:59:00	2024-11-15 08:59:00
317	PR7232	Factura	https://example.com/qr/3919	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-25 14:36:00	2024-11-25 14:36:00
318	PR9648	Factura	https://example.com/qr/9692	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-10 11:32:00	2024-11-10 11:32:00
319	PR3399	Boleta	https://example.com/qr/8947	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-28 12:49:00	2024-11-28 12:49:00
320	PR5453	Boleta	https://example.com/qr/6575	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-26 12:14:00	2024-11-26 12:14:00
321	PR8512	Boleta	https://example.com/qr/7121	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-23 16:16:00	2024-11-23 16:16:00
322	PR9234	Factura	https://example.com/qr/5418	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-16 15:37:00	2024-11-16 15:37:00
323	PR8890	Factura	https://example.com/qr/3331	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-27 12:45:00	2024-11-27 12:45:00
324	PR5557	Boleta	https://example.com/qr/2277	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-30 14:42:00	2024-11-30 14:42:00
325	PR5573	Factura	https://example.com/qr/5283	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-02 08:58:00	2024-11-02 08:58:00
326	PR7353	Factura	https://example.com/qr/4550	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 13:48:00	2024-11-19 13:48:00
327	PR3675	Factura	https://example.com/qr/2990	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 13:11:00	2024-11-19 13:11:00
328	PR4778	Factura	https://example.com/qr/6798	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-22 10:33:00	2024-11-22 10:33:00
329	PR4300	Factura	https://example.com/qr/9942	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-14 12:37:00	2024-11-14 12:37:00
330	PR3449	Factura	https://example.com/qr/3320	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 15:46:00	2024-11-12 15:46:00
331	PR2217	Boleta	https://example.com/qr/4404	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-09 13:59:00	2024-11-09 13:59:00
332	PR4517	Factura	https://example.com/qr/6810	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-25 10:26:00	2024-11-25 10:26:00
333	PR5542	Boleta	https://example.com/qr/8933	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-23 15:39:00	2024-11-23 15:39:00
334	PR2661	Factura	https://example.com/qr/2401	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-20 08:58:00	2024-11-20 08:58:00
335	PR1976	Factura	https://example.com/qr/8263	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-22 10:36:00	2024-11-22 10:36:00
336	PR1616	Boleta	https://example.com/qr/2692	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-14 08:02:00	2024-11-14 08:02:00
337	PR8290	Factura	https://example.com/qr/4658	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-12 15:08:00	2024-11-12 15:08:00
338	PR5295	Boleta	https://example.com/qr/5752	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 08:45:00	2024-11-24 08:45:00
339	PR3992	Boleta	https://example.com/qr/9657	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-30 15:19:00	2024-11-30 15:19:00
340	PR3334	Factura	https://example.com/qr/9614	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-21 11:10:00	2024-11-21 11:10:00
341	PR5834	Boleta	https://example.com/qr/7657	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-22 12:57:00	2024-11-22 12:57:00
342	PR6494	Boleta	https://example.com/qr/3408	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-01 15:10:00	2024-11-01 15:10:00
343	PR7177	Factura	https://example.com/qr/8582	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 10:30:00	2024-11-19 10:30:00
344	PR9053	Factura	https://example.com/qr/7175	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-20 12:29:00	2024-11-20 12:29:00
345	PR4085	Factura	https://example.com/qr/8165	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-15 11:05:00	2024-11-15 11:05:00
346	PR3039	Boleta	https://example.com/qr/9531	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-26 12:42:00	2024-11-26 12:42:00
347	PR6753	Factura	https://example.com/qr/6993	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-26 13:44:00	2024-11-26 13:44:00
348	PR7296	Factura	https://example.com/qr/2433	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-19 14:08:00	2024-11-19 14:08:00
349	PR1591	Factura	https://example.com/qr/1875	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-17 15:12:00	2024-11-17 15:12:00
350	PR5088	Boleta	https://example.com/qr/9220	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-24 12:04:00	2024-11-24 12:04:00
351	PR6551	Boleta	https://example.com/qr/1113	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-04 12:24:00	2024-11-04 12:24:00
352	PR2301	Factura	https://example.com/qr/5511	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por pedido.	2024-11-22 09:19:00	2024-11-22 09:19:00
353	PR9543	Factura	https://example.com/qr/7313	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-15 12:13:00	2024-09-15 12:13:00
354	PR7542	Boleta	https://example.com/qr/3357	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-18 13:15:00	2024-09-18 13:15:00
355	PR4583	Boleta	https://example.com/qr/2193	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-30 15:47:00	2024-09-30 15:47:00
356	PR4847	Factura	https://example.com/qr/7403	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-16 08:25:00	2024-09-16 08:25:00
357	PR4262	Boleta	https://example.com/qr/5870	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-15 12:58:00	2024-09-15 12:58:00
358	PR5564	Boleta	https://example.com/qr/2189	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-01 08:53:00	2024-09-01 08:53:00
359	PR6373	Factura	https://example.com/qr/9418	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-05 13:14:00	2024-09-05 13:14:00
360	PR5898	Boleta	https://example.com/qr/3595	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-23 14:42:00	2024-09-23 14:42:00
361	PR5789	Factura	https://example.com/qr/5661	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-02 14:29:00	2024-09-02 14:29:00
362	PR1744	Boleta	https://example.com/qr/2719	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-05 14:07:00	2024-09-05 14:07:00
363	PR1126	Factura	https://example.com/qr/6774	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-29 15:44:00	2024-09-29 15:44:00
364	PR3441	Boleta	https://example.com/qr/6797	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-07 13:58:00	2024-09-07 13:58:00
365	PR5933	Factura	https://example.com/qr/8448	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-01 14:05:00	2024-09-01 14:05:00
366	PR3713	Boleta	https://example.com/qr/7597	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-12 11:15:00	2024-09-12 11:15:00
367	PR2905	Factura	https://example.com/qr/4642	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-17 08:06:00	2024-09-17 08:06:00
368	PR1377	Factura	https://example.com/qr/9224	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-15 11:42:00	2024-09-15 11:42:00
369	PR8488	Boleta	https://example.com/qr/7430	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-08 14:09:00	2024-09-08 14:09:00
370	PR5651	Boleta	https://example.com/qr/3787	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-07 13:14:00	2024-09-07 13:14:00
371	PR6496	Boleta	https://example.com/qr/4544	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-27 16:21:00	2024-09-27 16:21:00
372	PR3273	Boleta	https://example.com/qr/2591	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-24 12:14:00	2024-09-24 12:14:00
373	PR2025	Factura	https://example.com/qr/8378	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-25 09:29:00	2024-09-25 09:29:00
374	PR3437	Boleta	https://example.com/qr/1934	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-01 14:50:00	2024-09-01 14:50:00
375	PR7812	Factura	https://example.com/qr/9785	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-27 16:57:00	2024-09-27 16:57:00
376	PR2976	Factura	https://example.com/qr/9822	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-10 16:52:00	2024-09-10 16:52:00
377	PR6515	Factura	https://example.com/qr/1674	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-26 09:44:00	2024-09-26 09:44:00
378	PR5403	Factura	https://example.com/qr/9276	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-06 16:54:00	2024-09-06 16:54:00
379	PR1025	Boleta	https://example.com/qr/2836	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-07 09:29:00	2024-09-07 09:29:00
380	PR4180	Factura	https://example.com/qr/7910	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-25 08:26:00	2024-09-25 08:26:00
381	PR6561	Boleta	https://example.com/qr/1106	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-10 13:38:00	2024-09-10 13:38:00
382	PR5260	Factura	https://example.com/qr/4739	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-21 11:35:00	2024-09-21 11:35:00
383	PR7581	Factura	https://example.com/qr/3992	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-26 16:25:00	2024-09-26 16:25:00
384	PR9812	Boleta	https://example.com/qr/2567	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-12 13:48:00	2024-09-12 13:48:00
385	PR2563	Boleta	https://example.com/qr/7205	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-29 10:42:00	2024-09-29 10:42:00
386	PR5897	Boleta	https://example.com/qr/5550	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-08 13:33:00	2024-09-08 13:33:00
387	PR3055	Factura	https://example.com/qr/5603	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-06 11:11:00	2024-09-06 11:11:00
388	PR1829	Boleta	https://example.com/qr/2080	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-02 13:55:00	2024-09-02 13:55:00
389	PR5939	Factura	https://example.com/qr/4461	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-29 11:56:00	2024-09-29 11:56:00
390	PR1007	Boleta	https://example.com/qr/7287	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-13 12:01:00	2024-09-13 12:01:00
391	PR9418	Factura	https://example.com/qr/5622	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-27 13:35:00	2024-09-27 13:35:00
392	PR9931	Factura	https://example.com/qr/3626	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-17 12:29:00	2024-09-17 12:29:00
393	PR1080	Factura	https://example.com/qr/8525	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-25 14:44:00	2024-09-25 14:44:00
394	PR8240	Factura	https://example.com/qr/2105	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-25 12:41:00	2024-09-25 12:41:00
395	PR2650	Boleta	https://example.com/qr/5933	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-02 14:53:00	2024-09-02 14:53:00
396	PR6195	Factura	https://example.com/qr/4077	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-14 12:57:00	2024-09-14 12:57:00
397	PR9278	Factura	https://example.com/qr/9459	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-27 16:35:00	2024-09-27 16:35:00
398	PR2770	Boleta	https://example.com/qr/8641	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-21 08:29:00	2024-09-21 08:29:00
399	PR5239	Factura	https://example.com/qr/3089	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-06 15:02:00	2024-09-06 15:02:00
400	PR7553	Boleta	https://example.com/qr/9528	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-12 15:50:00	2024-09-12 15:50:00
401	PR2659	Factura	https://example.com/qr/5159	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-10 16:34:00	2024-09-10 16:34:00
402	PR5615	Boleta	https://example.com/qr/8459	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-15 08:27:00	2024-09-15 08:27:00
403	PR8823	Factura	https://example.com/qr/9287	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-07 11:29:00	2024-09-07 11:29:00
404	PR5680	Boleta	https://example.com/qr/2092	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-09 10:07:00	2024-09-09 10:07:00
405	PR2349	Factura	https://example.com/qr/5543	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-06 14:42:00	2024-09-06 14:42:00
406	PR7909	Boleta	https://example.com/qr/1983	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-18 14:01:00	2024-09-18 14:01:00
407	PR2440	Factura	https://example.com/qr/1595	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-12 12:33:00	2024-09-12 12:33:00
408	PR9606	Factura	https://example.com/qr/9415	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-06 15:58:00	2024-09-06 15:58:00
409	PR3746	Boleta	https://example.com/qr/7495	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-14 10:50:00	2024-09-14 10:50:00
410	PR3809	Boleta	https://example.com/qr/7294	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-26 12:52:00	2024-09-26 12:52:00
411	PR2134	Boleta	https://example.com/qr/7731	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-04 16:53:00	2024-09-04 16:53:00
412	PR9678	Boleta	https://example.com/qr/8541	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-10 15:16:00	2024-09-10 15:16:00
413	PR6843	Boleta	https://example.com/qr/5474	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-03 15:17:00	2024-09-03 15:17:00
414	PR6853	Boleta	https://example.com/qr/8194	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-12 13:02:00	2024-09-12 13:02:00
415	PR6085	Boleta	https://example.com/qr/7638	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-21 08:25:00	2024-09-21 08:25:00
416	PR7525	Boleta	https://example.com/qr/4821	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-24 14:42:00	2024-09-24 14:42:00
417	PR4833	Factura	https://example.com/qr/6895	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-11 09:06:00	2024-09-11 09:06:00
418	PR6152	Boleta	https://example.com/qr/5472	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-07 11:40:00	2024-09-07 11:40:00
419	PR2117	Factura	https://example.com/qr/5277	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-22 12:52:00	2024-09-22 12:52:00
420	PR8637	Factura	https://example.com/qr/6585	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-17 16:57:00	2024-09-17 16:57:00
421	PR8183	Boleta	https://example.com/qr/5859	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-17 11:36:00	2024-09-17 11:36:00
422	PR6421	Factura	https://example.com/qr/4212	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-19 14:57:00	2024-09-19 14:57:00
423	PR3855	Factura	https://example.com/qr/3643	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-25 08:24:00	2024-09-25 08:24:00
424	PR3027	Boleta	https://example.com/qr/6341	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-29 12:36:00	2024-09-29 12:36:00
425	PR7322	Boleta	https://example.com/qr/4680	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-14 15:29:00	2024-09-14 15:29:00
426	PR9066	Factura	https://example.com/qr/3626	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-02 10:34:00	2024-09-02 10:34:00
427	PR9156	Boleta	https://example.com/qr/4249	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-28 10:04:00	2024-09-28 10:04:00
428	PR5507	Boleta	https://example.com/qr/1917	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-17 10:20:00	2024-09-17 10:20:00
429	PR2400	Factura	https://example.com/qr/4937	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-13 13:19:00	2024-09-13 13:19:00
430	PR4012	Boleta	https://example.com/qr/7576	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-27 14:26:00	2024-09-27 14:26:00
431	PR7030	Factura	https://example.com/qr/1977	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-04 08:18:00	2024-09-04 08:18:00
432	PR2159	Boleta	https://example.com/qr/3840	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-08 15:30:00	2024-09-08 15:30:00
433	PR8148	Factura	https://example.com/qr/2539	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-07 14:50:00	2024-09-07 14:50:00
434	PR7133	Boleta	https://example.com/qr/2401	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-02 08:00:00	2024-09-02 08:00:00
435	PR9602	Boleta	https://example.com/qr/3773	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-18 12:11:00	2024-09-18 12:11:00
436	PR1063	Factura	https://example.com/qr/5045	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-04 15:33:00	2024-09-04 15:33:00
437	PR5617	Factura	https://example.com/qr/4237	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-18 12:48:00	2024-09-18 12:48:00
438	PR3857	Factura	https://example.com/qr/8115	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-13 13:37:00	2024-09-13 13:37:00
439	PR1675	Factura	https://example.com/qr/9271	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-06 08:40:00	2024-09-06 08:40:00
440	PR9339	Boleta	https://example.com/qr/9750	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-19 13:43:00	2024-09-19 13:43:00
441	PR2280	Factura	https://example.com/qr/8013	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-28 11:10:00	2024-09-28 11:10:00
442	PR8681	Factura	https://example.com/qr/6513	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-13 15:29:00	2024-09-13 15:29:00
443	PR3504	Boleta	https://example.com/qr/9491	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-28 08:19:00	2024-09-28 08:19:00
444	PR4341	Factura	https://example.com/qr/9090	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-16 10:18:00	2024-09-16 10:18:00
445	PR1463	Boleta	https://example.com/qr/9316	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-02 11:32:00	2024-09-02 11:32:00
446	PR2428	Factura	https://example.com/qr/2810	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-05 11:06:00	2024-09-05 11:06:00
447	PR6576	Boleta	https://example.com/qr/6141	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-26 10:33:00	2024-09-26 10:33:00
448	PR9169	Boleta	https://example.com/qr/8169	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-01 09:32:00	2024-09-01 09:32:00
449	PR7663	Boleta	https://example.com/qr/5786	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-24 09:25:00	2024-09-24 09:25:00
450	PR4057	Factura	https://example.com/qr/8921	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-09-23 16:53:00	2024-09-23 16:53:00
451	PR1808	Boleta	https://example.com/qr/5839	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-29 11:42:00	2024-10-29 11:42:00
452	PR2287	Factura	https://example.com/qr/9636	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-18 10:19:00	2024-10-18 10:19:00
453	PR3736	Boleta	https://example.com/qr/3238	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 12:17:00	2024-10-28 12:17:00
454	PR7668	Factura	https://example.com/qr/1749	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-30 09:21:00	2024-10-30 09:21:00
455	PR8454	Boleta	https://example.com/qr/7883	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-05 11:03:00	2024-10-05 11:03:00
456	PR7398	Factura	https://example.com/qr/6364	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-19 13:51:00	2024-10-19 13:51:00
457	PR2344	Factura	https://example.com/qr/4323	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-03 14:32:00	2024-10-03 14:32:00
458	PR9835	Factura	https://example.com/qr/3760	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-25 16:59:00	2024-10-25 16:59:00
459	PR2296	Factura	https://example.com/qr/4248	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-26 10:45:00	2024-10-26 10:45:00
460	PR5788	Boleta	https://example.com/qr/3197	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-04 08:21:00	2024-10-04 08:21:00
461	PR7913	Boleta	https://example.com/qr/2789	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-05 09:54:00	2024-10-05 09:54:00
462	PR2964	Boleta	https://example.com/qr/1701	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-13 12:53:00	2024-10-13 12:53:00
463	PR5542	Factura	https://example.com/qr/3681	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-22 11:06:00	2024-10-22 11:06:00
464	PR1965	Boleta	https://example.com/qr/1643	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-19 15:14:00	2024-10-19 15:14:00
465	PR4200	Factura	https://example.com/qr/3765	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-21 09:27:00	2024-10-21 09:27:00
466	PR8808	Boleta	https://example.com/qr/2662	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-31 10:16:00	2024-10-31 10:16:00
467	PR6493	Factura	https://example.com/qr/1036	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-22 15:19:00	2024-10-22 15:19:00
468	PR9800	Boleta	https://example.com/qr/1020	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-20 14:43:00	2024-10-20 14:43:00
469	PR7884	Boleta	https://example.com/qr/5738	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-26 08:22:00	2024-10-26 08:22:00
470	PR8439	Boleta	https://example.com/qr/7923	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 14:07:00	2024-10-28 14:07:00
471	PR9145	Boleta	https://example.com/qr/2518	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-06 16:01:00	2024-10-06 16:01:00
472	PR8785	Factura	https://example.com/qr/4086	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-06 08:23:00	2024-10-06 08:23:00
473	PR9975	Boleta	https://example.com/qr/7930	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-26 12:31:00	2024-10-26 12:31:00
474	PR7573	Factura	https://example.com/qr/4713	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-20 08:07:00	2024-10-20 08:07:00
475	PR1983	Factura	https://example.com/qr/3114	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-19 12:14:00	2024-10-19 12:14:00
476	PR4528	Boleta	https://example.com/qr/6477	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-21 16:03:00	2024-10-21 16:03:00
477	PR3163	Boleta	https://example.com/qr/3450	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 14:28:00	2024-10-28 14:28:00
478	PR7388	Factura	https://example.com/qr/1685	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-13 09:40:00	2024-10-13 09:40:00
479	PR5120	Factura	https://example.com/qr/6282	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-03 14:22:00	2024-10-03 14:22:00
480	PR4436	Factura	https://example.com/qr/2390	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-23 14:30:00	2024-10-23 14:30:00
481	PR7915	Boleta	https://example.com/qr/6550	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-11 15:35:00	2024-10-11 15:35:00
482	PR1710	Factura	https://example.com/qr/9768	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-17 13:17:00	2024-10-17 13:17:00
483	PR4425	Boleta	https://example.com/qr/6200	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 12:55:00	2024-10-28 12:55:00
484	PR1348	Factura	https://example.com/qr/2687	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-26 13:40:00	2024-10-26 13:40:00
485	PR5033	Boleta	https://example.com/qr/8531	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 15:53:00	2024-10-28 15:53:00
486	PR4165	Boleta	https://example.com/qr/9775	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-20 10:46:00	2024-10-20 10:46:00
487	PR9596	Factura	https://example.com/qr/6273	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-17 09:05:00	2024-10-17 09:05:00
488	PR3727	Boleta	https://example.com/qr/3488	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-20 08:15:00	2024-10-20 08:15:00
489	PR6447	Boleta	https://example.com/qr/3020	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-06 08:33:00	2024-10-06 08:33:00
490	PR5669	Boleta	https://example.com/qr/7897	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-21 11:42:00	2024-10-21 11:42:00
491	PR4744	Factura	https://example.com/qr/1257	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-11 09:46:00	2024-10-11 09:46:00
492	PR7178	Factura	https://example.com/qr/1081	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-30 09:04:00	2024-10-30 09:04:00
493	PR4298	Boleta	https://example.com/qr/6067	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-05 13:56:00	2024-10-05 13:56:00
494	PR7382	Boleta	https://example.com/qr/5752	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-31 09:42:00	2024-10-31 09:42:00
495	PR4437	Factura	https://example.com/qr/6420	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 12:51:00	2024-10-28 12:51:00
496	PR5656	Factura	https://example.com/qr/8712	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-20 12:29:00	2024-10-20 12:29:00
497	PR6440	Factura	https://example.com/qr/3902	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-24 14:21:00	2024-10-24 14:21:00
498	PR2968	Boleta	https://example.com/qr/7685	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-13 13:29:00	2024-10-13 13:29:00
499	PR3988	Factura	https://example.com/qr/3676	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-15 09:00:00	2024-10-15 09:00:00
500	PR5215	Factura	https://example.com/qr/3737	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-12 12:17:00	2024-10-12 12:17:00
501	PR5452	Factura	https://example.com/qr/1857	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-15 10:21:00	2024-10-15 10:21:00
502	PR7499	Factura	https://example.com/qr/6742	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-17 13:30:00	2024-10-17 13:30:00
503	PR5016	Boleta	https://example.com/qr/7282	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-12 09:34:00	2024-10-12 09:34:00
504	PR5881	Factura	https://example.com/qr/1056	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-30 10:01:00	2024-10-30 10:01:00
505	PR9280	Boleta	https://example.com/qr/6597	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-24 12:44:00	2024-10-24 12:44:00
506	PR3718	Boleta	https://example.com/qr/6057	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-16 10:10:00	2024-10-16 10:10:00
507	PR4189	Factura	https://example.com/qr/3299	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-07 09:27:00	2024-10-07 09:27:00
508	PR9954	Boleta	https://example.com/qr/7880	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-17 08:53:00	2024-10-17 08:53:00
509	PR5878	Boleta	https://example.com/qr/7780	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-09 08:34:00	2024-10-09 08:34:00
510	PR4313	Boleta	https://example.com/qr/7058	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-23 11:20:00	2024-10-23 11:20:00
511	PR2759	Boleta	https://example.com/qr/2064	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-24 15:22:00	2024-10-24 15:22:00
512	PR4735	Boleta	https://example.com/qr/9172	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-19 16:24:00	2024-10-19 16:24:00
513	PR2162	Factura	https://example.com/qr/2890	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-23 13:53:00	2024-10-23 13:53:00
514	PR1516	Boleta	https://example.com/qr/2124	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-14 12:56:00	2024-10-14 12:56:00
515	PR2848	Factura	https://example.com/qr/3974	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-01 11:01:00	2024-10-01 11:01:00
516	PR9748	Factura	https://example.com/qr/7964	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-10 14:46:00	2024-10-10 14:46:00
517	PR5452	Factura	https://example.com/qr/3481	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-03 14:28:00	2024-10-03 14:28:00
518	PR5169	Boleta	https://example.com/qr/3004	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-22 08:53:00	2024-10-22 08:53:00
519	PR2887	Factura	https://example.com/qr/5012	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-31 09:38:00	2024-10-31 09:38:00
520	PR7301	Boleta	https://example.com/qr/3905	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-24 14:19:00	2024-10-24 14:19:00
521	PR7210	Factura	https://example.com/qr/5087	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-12 12:17:00	2024-10-12 12:17:00
522	PR9253	Factura	https://example.com/qr/6506	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-10 15:52:00	2024-10-10 15:52:00
523	PR6935	Boleta	https://example.com/qr/8614	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-13 10:28:00	2024-10-13 10:28:00
524	PR3229	Factura	https://example.com/qr/8847	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-03 13:51:00	2024-10-03 13:51:00
525	PR6335	Boleta	https://example.com/qr/8141	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-21 16:58:00	2024-10-21 16:58:00
526	PR8217	Boleta	https://example.com/qr/7129	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-05 10:40:00	2024-10-05 10:40:00
527	PR5610	Factura	https://example.com/qr/2904	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-24 11:44:00	2024-10-24 11:44:00
528	PR3625	Boleta	https://example.com/qr/4571	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-07 11:24:00	2024-10-07 11:24:00
529	PR3102	Factura	https://example.com/qr/1365	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-11 13:12:00	2024-10-11 13:12:00
530	PR2810	Boleta	https://example.com/qr/7500	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-03 15:09:00	2024-10-03 15:09:00
531	PR8463	Boleta	https://example.com/qr/5958	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-19 10:00:00	2024-10-19 10:00:00
532	PR2844	Factura	https://example.com/qr/3855	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-11 10:34:00	2024-10-11 10:34:00
533	PR4556	Factura	https://example.com/qr/1473	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-07 11:08:00	2024-10-07 11:08:00
534	PR2590	Boleta	https://example.com/qr/9136	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-28 13:22:00	2024-10-28 13:22:00
535	PR2910	Boleta	https://example.com/qr/9294	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-13 16:02:00	2024-10-13 16:02:00
536	PR7646	Boleta	https://example.com/qr/5537	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-21 14:29:00	2024-10-21 14:29:00
537	PR4797	Boleta	https://example.com/qr/4074	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-29 11:10:00	2024-10-29 11:10:00
538	PR3980	Factura	https://example.com/qr/9193	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-01 09:03:00	2024-10-01 09:03:00
539	PR8802	Factura	https://example.com/qr/7487	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-27 12:37:00	2024-10-27 12:37:00
540	PR2689	Boleta	https://example.com/qr/4654	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-13 09:51:00	2024-10-13 09:51:00
541	PR3131	Factura	https://example.com/qr/8996	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-23 11:44:00	2024-10-23 11:44:00
542	PR3978	Factura	https://example.com/qr/5929	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-07 12:08:00	2024-10-07 12:08:00
543	PR6510	Boleta	https://example.com/qr/8203	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-24 10:04:00	2024-10-24 10:04:00
544	PR1426	Factura	https://example.com/qr/8938	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-19 13:33:00	2024-10-19 13:33:00
545	PR7447	Boleta	https://example.com/qr/7198	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-11 14:38:00	2024-10-11 14:38:00
546	PR5143	Factura	https://example.com/qr/8021	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-10 10:06:00	2024-10-10 10:06:00
547	PR6552	Boleta	https://example.com/qr/8202	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-12 08:24:00	2024-10-12 08:24:00
548	PR9374	Boleta	https://example.com/qr/7996	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-10-16 13:19:00	2024-10-16 13:19:00
549	PR2091	Boleta	https://example.com/qr/7568	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-03 09:37:00	2024-11-03 09:37:00
550	PR6963	Boleta	https://example.com/qr/1218	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-23 13:12:00	2024-11-23 13:12:00
551	PR3272	Boleta	https://example.com/qr/3589	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-13 09:07:00	2024-11-13 09:07:00
552	PR7265	Boleta	https://example.com/qr/3925	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-12 08:53:00	2024-11-12 08:53:00
553	PR4349	Factura	https://example.com/qr/8773	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-20 09:43:00	2024-11-20 09:43:00
554	PR9807	Boleta	https://example.com/qr/5955	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-14 12:50:00	2024-11-14 12:50:00
555	PR3171	Boleta	https://example.com/qr/8327	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 15:20:00	2024-11-02 15:20:00
556	PR5565	Boleta	https://example.com/qr/2505	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 08:14:00	2024-11-27 08:14:00
557	PR4112	Boleta	https://example.com/qr/6969	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-04 11:02:00	2024-11-04 11:02:00
558	PR4013	Boleta	https://example.com/qr/5596	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 10:27:00	2024-11-27 10:27:00
559	PR7328	Factura	https://example.com/qr/4700	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 09:12:00	2024-11-02 09:12:00
560	PR2893	Factura	https://example.com/qr/1742	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-30 13:20:00	2024-11-30 13:20:00
561	PR6323	Factura	https://example.com/qr/1729	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-11 15:55:00	2024-11-11 15:55:00
562	PR9330	Boleta	https://example.com/qr/5291	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-12 12:07:00	2024-11-12 12:07:00
563	PR2522	Boleta	https://example.com/qr/2160	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-03 15:48:00	2024-11-03 15:48:00
564	PR9491	Boleta	https://example.com/qr/5761	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-24 12:03:00	2024-11-24 12:03:00
565	PR5338	Factura	https://example.com/qr/5643	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-21 12:20:00	2024-11-21 12:20:00
566	PR9646	Boleta	https://example.com/qr/5440	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-21 16:01:00	2024-11-21 16:01:00
567	PR3599	Boleta	https://example.com/qr/1338	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-04 09:00:00	2024-11-04 09:00:00
568	PR5212	Boleta	https://example.com/qr/5573	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 11:31:00	2024-11-27 11:31:00
569	PR4094	Boleta	https://example.com/qr/3088	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-16 09:23:00	2024-11-16 09:23:00
570	PR4317	Boleta	https://example.com/qr/4131	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 08:17:00	2024-11-02 08:17:00
571	PR5904	Boleta	https://example.com/qr/4670	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-25 12:33:00	2024-11-25 12:33:00
572	PR3706	Factura	https://example.com/qr/9521	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-08 13:24:00	2024-11-08 13:24:00
573	PR7735	Factura	https://example.com/qr/2311	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-05 14:45:00	2024-11-05 14:45:00
574	PR7745	Boleta	https://example.com/qr/5944	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-25 11:27:00	2024-11-25 11:27:00
575	PR2245	Factura	https://example.com/qr/5525	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-04 13:14:00	2024-11-04 13:14:00
576	PR7986	Boleta	https://example.com/qr/6988	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-17 09:36:00	2024-11-17 09:36:00
577	PR2640	Factura	https://example.com/qr/9692	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-29 13:16:00	2024-11-29 13:16:00
578	PR4549	Factura	https://example.com/qr/1377	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 13:03:00	2024-11-27 13:03:00
579	PR4855	Factura	https://example.com/qr/3337	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 12:04:00	2024-11-27 12:04:00
580	PR9899	Factura	https://example.com/qr/6291	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-28 13:52:00	2024-11-28 13:52:00
581	PR6512	Boleta	https://example.com/qr/5638	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-10 14:43:00	2024-11-10 14:43:00
582	PR9573	Factura	https://example.com/qr/9724	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-25 15:08:00	2024-11-25 15:08:00
583	PR7873	Factura	https://example.com/qr/2837	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-12 09:19:00	2024-11-12 09:19:00
584	PR7044	Boleta	https://example.com/qr/4480	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-08 14:57:00	2024-11-08 14:57:00
585	PR2788	Factura	https://example.com/qr/4812	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-15 16:48:00	2024-11-15 16:48:00
586	PR7799	Boleta	https://example.com/qr/1336	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-16 09:26:00	2024-11-16 09:26:00
587	PR8188	Boleta	https://example.com/qr/5404	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-06 08:20:00	2024-11-06 08:20:00
588	PR9902	Boleta	https://example.com/qr/6690	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-09 11:14:00	2024-11-09 11:14:00
589	PR3231	Boleta	https://example.com/qr/9152	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-26 16:13:00	2024-11-26 16:13:00
590	PR5834	Boleta	https://example.com/qr/3679	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 14:33:00	2024-11-02 14:33:00
591	PR6485	Factura	https://example.com/qr/4061	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-13 11:12:00	2024-11-13 11:12:00
592	PR4167	Boleta	https://example.com/qr/6028	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 11:50:00	2024-11-02 11:50:00
593	PR2680	Boleta	https://example.com/qr/2524	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-08 12:21:00	2024-11-08 12:21:00
594	PR9408	Boleta	https://example.com/qr/5590	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-15 14:23:00	2024-11-15 14:23:00
595	PR7067	Boleta	https://example.com/qr/6885	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-20 15:25:00	2024-11-20 15:25:00
596	PR2412	Factura	https://example.com/qr/8206	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-04 16:09:00	2024-11-04 16:09:00
597	PR7599	Boleta	https://example.com/qr/8803	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-30 16:51:00	2024-11-30 16:51:00
598	PR4659	Boleta	https://example.com/qr/7560	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 10:47:00	2024-11-02 10:47:00
599	PR9469	Factura	https://example.com/qr/5913	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-11 10:58:00	2024-11-11 10:58:00
600	PR2714	Boleta	https://example.com/qr/3888	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-21 13:07:00	2024-11-21 13:07:00
601	PR5675	Factura	https://example.com/qr/6473	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-06 12:47:00	2024-11-06 12:47:00
602	PR5071	Factura	https://example.com/qr/1164	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-20 15:52:00	2024-11-20 15:52:00
603	PR8680	Boleta	https://example.com/qr/1547	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-12 14:02:00	2024-11-12 14:02:00
604	PR2220	Boleta	https://example.com/qr/2387	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-24 14:07:00	2024-11-24 14:07:00
605	PR6142	Boleta	https://example.com/qr/1524	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-14 09:20:00	2024-11-14 09:20:00
606	PR6468	Boleta	https://example.com/qr/2060	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-10 16:27:00	2024-11-10 16:27:00
607	PR1448	Boleta	https://example.com/qr/4360	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-06 11:51:00	2024-11-06 11:51:00
608	PR8834	Factura	https://example.com/qr/9843	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-21 15:34:00	2024-11-21 15:34:00
609	PR5832	Factura	https://example.com/qr/9610	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-26 16:23:00	2024-11-26 16:23:00
610	PR8258	Factura	https://example.com/qr/7758	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-15 10:22:00	2024-11-15 10:22:00
611	PR9134	Factura	https://example.com/qr/8735	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-24 16:53:00	2024-11-24 16:53:00
612	PR8377	Factura	https://example.com/qr/6293	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-28 11:59:00	2024-11-28 11:59:00
613	PR4147	Boleta	https://example.com/qr/3405	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-07 12:42:00	2024-11-07 12:42:00
614	PR1493	Factura	https://example.com/qr/7313	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-24 10:02:00	2024-11-24 10:02:00
615	PR2704	Boleta	https://example.com/qr/9218	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-21 08:47:00	2024-11-21 08:47:00
616	PR8523	Boleta	https://example.com/qr/2688	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-07 12:05:00	2024-11-07 12:05:00
617	PR6131	Factura	https://example.com/qr/2094	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-15 12:49:00	2024-11-15 12:49:00
618	PR4675	Factura	https://example.com/qr/8560	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-14 10:48:00	2024-11-14 10:48:00
619	PR8130	Factura	https://example.com/qr/8594	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-01 13:01:00	2024-11-01 13:01:00
620	PR4597	Boleta	https://example.com/qr/4703	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-23 11:28:00	2024-11-23 11:28:00
621	PR5450	Factura	https://example.com/qr/7752	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-29 16:44:00	2024-11-29 16:44:00
622	PR5668	Factura	https://example.com/qr/6543	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 13:58:00	2024-11-27 13:58:00
623	PR5804	Factura	https://example.com/qr/5518	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-26 14:55:00	2024-11-26 14:55:00
624	PR7916	Factura	https://example.com/qr/2246	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-09 10:01:00	2024-11-09 10:01:00
625	PR7372	Boleta	https://example.com/qr/1957	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-14 16:33:00	2024-11-14 16:33:00
626	PR6175	Factura	https://example.com/qr/5261	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-05 15:51:00	2024-11-05 15:51:00
627	PR2040	Factura	https://example.com/qr/2055	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-27 11:52:00	2024-11-27 11:52:00
628	PR2373	Boleta	https://example.com/qr/9897	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-06 16:22:00	2024-11-06 16:22:00
629	PR2946	Boleta	https://example.com/qr/5373	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-06 12:56:00	2024-11-06 12:56:00
630	PR7574	Boleta	https://example.com/qr/7419	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-18 13:27:00	2024-11-18 13:27:00
631	PR7478	Boleta	https://example.com/qr/9405	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-19 11:23:00	2024-11-19 11:23:00
632	PR3624	Boleta	https://example.com/qr/1378	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-17 11:09:00	2024-11-17 11:09:00
633	PR8414	Boleta	https://example.com/qr/7139	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-17 15:49:00	2024-11-17 15:49:00
634	PR5788	Boleta	https://example.com/qr/6683	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-09 16:42:00	2024-11-09 16:42:00
635	PR2454	Factura	https://example.com/qr/8109	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-23 16:30:00	2024-11-23 16:30:00
636	PR6827	Boleta	https://example.com/qr/1641	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-05 10:10:00	2024-11-05 10:10:00
637	PR6959	Boleta	https://example.com/qr/5910	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-12 16:30:00	2024-11-12 16:30:00
638	PR8918	Boleta	https://example.com/qr/2844	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-02 08:48:00	2024-11-02 08:48:00
639	PR7652	Boleta	https://example.com/qr/4963	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-07 08:03:00	2024-11-07 08:03:00
640	PR2706	Boleta	https://example.com/qr/4188	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-12 14:18:00	2024-11-12 14:18:00
641	PR4428	Factura	https://example.com/qr/4403	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-16 14:42:00	2024-11-16 14:42:00
642	PR8878	Factura	https://example.com/qr/5693	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-21 10:17:00	2024-11-21 10:17:00
643	PR5628	Factura	https://example.com/qr/6335	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-01 11:53:00	2024-11-01 11:53:00
644	PR7149	Boleta	https://example.com/qr/8683	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-18 16:54:00	2024-11-18 16:54:00
645	PR4373	Boleta	https://example.com/qr/9800	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-14 15:27:00	2024-11-14 15:27:00
646	PR6786	Factura	https://example.com/qr/2008	0.00	0.00	0.00	0.00	0.00	0.00	0.00	0.00	completed	Comprobante de pago por venta.	2024-11-23 11:42:00	2024-11-23 11:42:00
\.


--
-- Data for Name: purchase_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchase_details (id, purchase_id, article_id, unit_of_measurement, batch_code, due_date, quantity, unit_price, freight, other, costs_plus, total, created_at, updated_at) FROM stdin;
1	1	5	Unidad	BATCH4025	2025-04-15	79	92.00	0.00	0.00	0.00	5135.00	2024-09-06 10:52:00	2024-09-06 10:52:00
2	1	7	Unidad	BATCH4503	2025-06-15	76	61.00	0.00	0.00	0.00	6232.00	2024-09-06 10:52:00	2024-09-06 10:52:00
3	1	19	Unidad	BATCH1030	2025-03-15	57	35.00	0.00	0.00	0.00	1824.00	2024-09-06 10:52:00	2024-09-06 10:52:00
4	1	21	Unidad	BATCH2910	2025-01-15	53	94.00	0.00	0.00	0.00	1537.00	2024-09-06 10:52:00	2024-09-06 10:52:00
5	1	27	Unidad	BATCH6716	2025-06-15	71	99.00	0.00	0.00	0.00	2840.00	2024-09-06 10:52:00	2024-09-06 10:52:00
6	2	2	Unidad	BATCH5110	2025-01-15	85	23.00	0.00	0.00	0.00	3655.00	2024-09-14 11:48:00	2024-09-14 11:48:00
7	2	5	Unidad	BATCH7588	2025-03-15	87	74.00	0.00	0.00	0.00	8004.00	2024-09-14 11:48:00	2024-09-14 11:48:00
8	2	10	Unidad	BATCH8442	2025-05-15	66	54.00	0.00	0.00	0.00	4224.00	2024-09-14 11:48:00	2024-09-14 11:48:00
9	2	27	Unidad	BATCH1417	2025-05-15	71	53.00	0.00	0.00	0.00	2414.00	2024-09-14 11:48:00	2024-09-14 11:48:00
10	2	29	Unidad	BATCH1042	2025-04-15	82	80.00	0.00	0.00	0.00	3608.00	2024-09-14 11:48:00	2024-09-14 11:48:00
11	3	1	Unidad	BATCH4170	2025-02-15	76	99.00	0.00	0.00	0.00	6080.00	2024-09-13 15:58:00	2024-09-13 15:58:00
12	3	7	Unidad	BATCH4896	2025-02-15	52	67.00	0.00	0.00	0.00	3172.00	2024-09-13 15:58:00	2024-09-13 15:58:00
13	3	14	Unidad	BATCH3606	2025-02-15	82	58.00	0.00	0.00	0.00	3198.00	2024-09-13 15:58:00	2024-09-13 15:58:00
14	3	18	Unidad	BATCH2322	2025-03-15	90	71.00	0.00	0.00	0.00	2430.00	2024-09-13 15:58:00	2024-09-13 15:58:00
15	3	20	Unidad	BATCH5694	2025-05-15	66	74.00	0.00	0.00	0.00	1518.00	2024-09-13 15:58:00	2024-09-13 15:58:00
16	4	4	Unidad	BATCH4734	2025-01-15	58	25.00	0.00	0.00	0.00	1740.00	2024-09-27 08:36:00	2024-09-27 08:36:00
17	4	8	Unidad	BATCH5361	2025-04-15	79	45.00	0.00	0.00	0.00	5135.00	2024-09-27 08:36:00	2024-09-27 08:36:00
18	4	12	Unidad	BATCH8166	2025-02-15	57	51.00	0.00	0.00	0.00	5529.00	2024-09-27 08:36:00	2024-09-27 08:36:00
19	4	16	Unidad	BATCH9512	2025-05-15	97	59.00	0.00	0.00	0.00	3492.00	2024-09-27 08:36:00	2024-09-27 08:36:00
20	4	28	Unidad	BATCH3487	2025-04-15	86	29.00	0.00	0.00	0.00	2666.00	2024-09-27 08:36:00	2024-09-27 08:36:00
21	5	11	Unidad	BATCH1111	2025-02-15	100	37.00	0.00	0.00	0.00	8000.00	2024-09-11 14:23:00	2024-09-11 14:23:00
22	5	13	Unidad	BATCH4508	2025-05-15	77	79.00	0.00	0.00	0.00	1848.00	2024-09-11 14:23:00	2024-09-11 14:23:00
23	5	20	Unidad	BATCH5765	2025-02-15	57	75.00	0.00	0.00	0.00	4959.00	2024-09-11 14:23:00	2024-09-11 14:23:00
24	5	24	Unidad	BATCH8776	2025-06-15	86	70.00	0.00	0.00	0.00	5332.00	2024-09-11 14:23:00	2024-09-11 14:23:00
25	5	27	Unidad	BATCH3831	2025-04-15	63	21.00	0.00	0.00	0.00	3276.00	2024-09-11 14:23:00	2024-09-11 14:23:00
26	6	9	Unidad	BATCH1256	2025-04-15	53	31.00	0.00	0.00	0.00	1113.00	2024-09-09 14:41:00	2024-09-09 14:41:00
27	6	18	Unidad	BATCH6721	2025-05-15	61	75.00	0.00	0.00	0.00	5978.00	2024-09-09 14:41:00	2024-09-09 14:41:00
28	6	19	Unidad	BATCH5252	2025-04-15	73	43.00	0.00	0.00	0.00	6935.00	2024-09-09 14:41:00	2024-09-09 14:41:00
29	6	21	Unidad	BATCH8839	2025-06-15	50	86.00	0.00	0.00	0.00	4850.00	2024-09-09 14:41:00	2024-09-09 14:41:00
30	6	28	Unidad	BATCH4223	2025-02-15	70	52.00	0.00	0.00	0.00	5600.00	2024-09-09 14:41:00	2024-09-09 14:41:00
31	7	4	Unidad	BATCH9519	2025-02-15	73	23.00	0.00	0.00	0.00	3869.00	2024-09-14 14:41:00	2024-09-14 14:41:00
32	7	8	Unidad	BATCH6140	2025-06-15	86	28.00	0.00	0.00	0.00	5676.00	2024-09-14 14:41:00	2024-09-14 14:41:00
33	7	9	Unidad	BATCH3333	2025-02-15	82	40.00	0.00	0.00	0.00	6068.00	2024-09-14 14:41:00	2024-09-14 14:41:00
34	7	20	Unidad	BATCH3033	2025-06-15	58	35.00	0.00	0.00	0.00	4350.00	2024-09-14 14:41:00	2024-09-14 14:41:00
35	7	24	Unidad	BATCH8987	2025-05-15	87	26.00	0.00	0.00	0.00	7047.00	2024-09-14 14:41:00	2024-09-14 14:41:00
36	8	4	Unidad	BATCH6402	2025-04-15	53	32.00	0.00	0.00	0.00	2014.00	2024-09-18 12:22:00	2024-09-18 12:22:00
37	8	5	Unidad	BATCH5105	2025-06-15	54	82.00	0.00	0.00	0.00	2592.00	2024-09-18 12:22:00	2024-09-18 12:22:00
38	8	13	Unidad	BATCH3491	2025-05-15	68	61.00	0.00	0.00	0.00	6664.00	2024-09-18 12:22:00	2024-09-18 12:22:00
39	8	14	Unidad	BATCH9338	2025-06-15	91	20.00	0.00	0.00	0.00	4277.00	2024-09-18 12:22:00	2024-09-18 12:22:00
40	8	21	Unidad	BATCH7845	2025-04-15	54	80.00	0.00	0.00	0.00	2322.00	2024-09-18 12:22:00	2024-09-18 12:22:00
41	9	2	Unidad	BATCH4414	2025-06-15	77	44.00	0.00	0.00	0.00	4697.00	2024-09-30 09:55:00	2024-09-30 09:55:00
42	9	17	Unidad	BATCH3804	2025-03-15	75	24.00	0.00	0.00	0.00	4350.00	2024-09-30 09:55:00	2024-09-30 09:55:00
43	9	23	Unidad	BATCH9379	2025-06-15	56	67.00	0.00	0.00	0.00	3976.00	2024-09-30 09:55:00	2024-09-30 09:55:00
44	9	27	Unidad	BATCH9561	2025-06-15	79	37.00	0.00	0.00	0.00	3555.00	2024-09-30 09:55:00	2024-09-30 09:55:00
45	9	28	Unidad	BATCH4228	2025-04-15	55	76.00	0.00	0.00	0.00	2970.00	2024-09-30 09:55:00	2024-09-30 09:55:00
46	10	12	Unidad	BATCH5158	2025-01-15	74	75.00	0.00	0.00	0.00	2886.00	2024-09-10 09:01:00	2024-09-10 09:01:00
47	10	21	Unidad	BATCH3458	2025-06-15	97	53.00	0.00	0.00	0.00	7372.00	2024-09-10 09:01:00	2024-09-10 09:01:00
48	10	22	Unidad	BATCH5430	2025-02-15	67	70.00	0.00	0.00	0.00	5293.00	2024-09-10 09:01:00	2024-09-10 09:01:00
49	10	24	Unidad	BATCH9162	2025-05-15	92	84.00	0.00	0.00	0.00	3772.00	2024-09-10 09:01:00	2024-09-10 09:01:00
50	10	26	Unidad	BATCH6300	2025-05-15	73	52.00	0.00	0.00	0.00	6643.00	2024-09-10 09:01:00	2024-09-10 09:01:00
51	11	1	Unidad	BATCH4402	2025-01-15	54	42.00	0.00	0.00	0.00	2808.00	2024-09-07 15:28:00	2024-09-07 15:28:00
52	11	5	Unidad	BATCH9424	2025-05-15	81	45.00	0.00	0.00	0.00	5913.00	2024-09-07 15:28:00	2024-09-07 15:28:00
53	11	19	Unidad	BATCH1980	2025-04-15	66	79.00	0.00	0.00	0.00	2640.00	2024-09-07 15:28:00	2024-09-07 15:28:00
54	11	24	Unidad	BATCH9628	2025-06-15	57	92.00	0.00	0.00	0.00	1368.00	2024-09-07 15:28:00	2024-09-07 15:28:00
55	11	27	Unidad	BATCH7515	2025-05-15	82	28.00	0.00	0.00	0.00	5904.00	2024-09-07 15:28:00	2024-09-07 15:28:00
56	12	10	Unidad	BATCH6351	2025-01-15	78	54.00	0.00	0.00	0.00	1794.00	2024-09-24 15:02:00	2024-09-24 15:02:00
57	12	14	Unidad	BATCH7450	2025-04-15	60	25.00	0.00	0.00	0.00	3300.00	2024-09-24 15:02:00	2024-09-24 15:02:00
58	12	17	Unidad	BATCH6111	2025-05-15	79	92.00	0.00	0.00	0.00	7189.00	2024-09-24 15:02:00	2024-09-24 15:02:00
59	12	18	Unidad	BATCH9750	2025-03-15	72	47.00	0.00	0.00	0.00	1944.00	2024-09-24 15:02:00	2024-09-24 15:02:00
60	12	29	Unidad	BATCH4125	2025-01-15	54	87.00	0.00	0.00	0.00	3942.00	2024-09-24 15:02:00	2024-09-24 15:02:00
61	13	16	Unidad	BATCH1202	2025-04-15	99	47.00	0.00	0.00	0.00	2079.00	2024-09-07 14:30:00	2024-09-07 14:30:00
62	13	17	Unidad	BATCH4361	2025-03-15	67	26.00	0.00	0.00	0.00	3484.00	2024-09-07 14:30:00	2024-09-07 14:30:00
63	13	19	Unidad	BATCH7006	2025-05-15	65	95.00	0.00	0.00	0.00	4160.00	2024-09-07 14:30:00	2024-09-07 14:30:00
64	13	24	Unidad	BATCH6690	2025-01-15	83	48.00	0.00	0.00	0.00	3403.00	2024-09-07 14:30:00	2024-09-07 14:30:00
65	13	29	Unidad	BATCH9860	2025-06-15	77	57.00	0.00	0.00	0.00	6468.00	2024-09-07 14:30:00	2024-09-07 14:30:00
66	14	9	Unidad	BATCH8214	2025-05-15	92	47.00	0.00	0.00	0.00	4048.00	2024-09-13 13:37:00	2024-09-13 13:37:00
67	14	13	Unidad	BATCH9361	2025-03-15	93	61.00	0.00	0.00	0.00	5022.00	2024-09-13 13:37:00	2024-09-13 13:37:00
68	14	19	Unidad	BATCH4185	2025-02-15	53	93.00	0.00	0.00	0.00	4770.00	2024-09-13 13:37:00	2024-09-13 13:37:00
69	14	23	Unidad	BATCH8284	2025-02-15	71	75.00	0.00	0.00	0.00	4899.00	2024-09-13 13:37:00	2024-09-13 13:37:00
70	14	29	Unidad	BATCH3653	2025-03-15	58	83.00	0.00	0.00	0.00	3886.00	2024-09-13 13:37:00	2024-09-13 13:37:00
71	15	7	Unidad	BATCH5445	2025-06-15	81	46.00	0.00	0.00	0.00	5994.00	2024-09-20 09:36:00	2024-09-20 09:36:00
72	15	14	Unidad	BATCH7567	2025-06-15	89	47.00	0.00	0.00	0.00	8900.00	2024-09-20 09:36:00	2024-09-20 09:36:00
73	15	26	Unidad	BATCH5821	2025-04-15	75	68.00	0.00	0.00	0.00	7350.00	2024-09-20 09:36:00	2024-09-20 09:36:00
74	15	27	Unidad	BATCH9228	2025-02-15	89	88.00	0.00	0.00	0.00	7654.00	2024-09-20 09:36:00	2024-09-20 09:36:00
75	15	29	Unidad	BATCH9305	2025-03-15	53	77.00	0.00	0.00	0.00	4558.00	2024-09-20 09:36:00	2024-09-20 09:36:00
76	16	2	Unidad	BATCH7729	2025-02-15	85	77.00	0.00	0.00	0.00	2125.00	2024-09-09 15:25:00	2024-09-09 15:25:00
77	16	13	Unidad	BATCH6905	2025-01-15	69	62.00	0.00	0.00	0.00	4899.00	2024-09-09 15:25:00	2024-09-09 15:25:00
78	16	16	Unidad	BATCH6759	2025-05-15	92	83.00	0.00	0.00	0.00	7636.00	2024-09-09 15:25:00	2024-09-09 15:25:00
79	16	21	Unidad	BATCH3859	2025-02-15	97	100.00	0.00	0.00	0.00	7081.00	2024-09-09 15:25:00	2024-09-09 15:25:00
80	16	25	Unidad	BATCH5659	2025-06-15	55	33.00	0.00	0.00	0.00	2310.00	2024-09-09 15:25:00	2024-09-09 15:25:00
81	17	3	Unidad	BATCH2352	2025-02-15	81	53.00	0.00	0.00	0.00	2916.00	2024-09-22 10:11:00	2024-09-22 10:11:00
82	17	5	Unidad	BATCH1183	2025-01-15	52	43.00	0.00	0.00	0.00	1300.00	2024-09-22 10:11:00	2024-09-22 10:11:00
83	17	15	Unidad	BATCH8370	2025-01-15	58	84.00	0.00	0.00	0.00	1334.00	2024-09-22 10:11:00	2024-09-22 10:11:00
84	17	17	Unidad	BATCH5186	2025-05-15	61	41.00	0.00	0.00	0.00	4331.00	2024-09-22 10:11:00	2024-09-22 10:11:00
85	17	22	Unidad	BATCH3291	2025-05-15	100	45.00	0.00	0.00	0.00	9100.00	2024-09-22 10:11:00	2024-09-22 10:11:00
86	18	10	Unidad	BATCH6730	2025-04-15	100	47.00	0.00	0.00	0.00	3400.00	2024-09-05 14:29:00	2024-09-05 14:29:00
87	18	17	Unidad	BATCH7638	2025-01-15	51	75.00	0.00	0.00	0.00	4131.00	2024-09-05 14:29:00	2024-09-05 14:29:00
88	18	20	Unidad	BATCH1565	2025-03-15	51	88.00	0.00	0.00	0.00	1632.00	2024-09-05 14:29:00	2024-09-05 14:29:00
89	18	25	Unidad	BATCH6675	2025-05-15	70	46.00	0.00	0.00	0.00	2030.00	2024-09-05 14:29:00	2024-09-05 14:29:00
90	18	30	Unidad	BATCH9784	2025-01-15	60	37.00	0.00	0.00	0.00	4260.00	2024-09-05 14:29:00	2024-09-05 14:29:00
91	19	6	Unidad	BATCH2219	2025-03-15	67	71.00	0.00	0.00	0.00	2211.00	2024-09-13 12:24:00	2024-09-13 12:24:00
92	19	8	Unidad	BATCH3038	2025-05-15	61	77.00	0.00	0.00	0.00	3843.00	2024-09-13 12:24:00	2024-09-13 12:24:00
93	19	13	Unidad	BATCH4273	2025-03-15	93	37.00	0.00	0.00	0.00	4371.00	2024-09-13 12:24:00	2024-09-13 12:24:00
94	19	22	Unidad	BATCH5794	2025-03-15	64	26.00	0.00	0.00	0.00	1280.00	2024-09-13 12:24:00	2024-09-13 12:24:00
95	19	30	Unidad	BATCH6434	2025-03-15	81	48.00	0.00	0.00	0.00	3888.00	2024-09-13 12:24:00	2024-09-13 12:24:00
96	20	10	Unidad	BATCH8960	2025-01-15	81	56.00	0.00	0.00	0.00	5832.00	2024-09-04 09:40:00	2024-09-04 09:40:00
97	20	14	Unidad	BATCH1463	2025-06-15	97	86.00	0.00	0.00	0.00	5820.00	2024-09-04 09:40:00	2024-09-04 09:40:00
98	20	16	Unidad	BATCH5706	2025-01-15	72	84.00	0.00	0.00	0.00	5184.00	2024-09-04 09:40:00	2024-09-04 09:40:00
99	20	26	Unidad	BATCH6777	2025-04-15	98	40.00	0.00	0.00	0.00	2548.00	2024-09-04 09:40:00	2024-09-04 09:40:00
100	20	30	Unidad	BATCH4375	2025-06-15	72	74.00	0.00	0.00	0.00	1800.00	2024-09-04 09:40:00	2024-09-04 09:40:00
101	21	1	Unidad	BATCH7410	2025-01-15	86	24.00	0.00	0.00	0.00	7310.00	2024-09-16 10:33:00	2024-09-16 10:33:00
102	21	9	Unidad	BATCH3174	2025-04-15	69	65.00	0.00	0.00	0.00	4692.00	2024-09-16 10:33:00	2024-09-16 10:33:00
103	21	18	Unidad	BATCH1765	2025-03-15	94	52.00	0.00	0.00	0.00	3854.00	2024-09-16 10:33:00	2024-09-16 10:33:00
104	21	19	Unidad	BATCH4471	2025-03-15	85	29.00	0.00	0.00	0.00	3485.00	2024-09-16 10:33:00	2024-09-16 10:33:00
105	21	21	Unidad	BATCH5989	2025-01-15	80	60.00	0.00	0.00	0.00	5040.00	2024-09-16 10:33:00	2024-09-16 10:33:00
106	22	3	Unidad	BATCH3853	2025-04-15	87	61.00	0.00	0.00	0.00	2001.00	2024-09-21 15:49:00	2024-09-21 15:49:00
107	22	8	Unidad	BATCH4434	2025-02-15	77	50.00	0.00	0.00	0.00	6545.00	2024-09-21 15:49:00	2024-09-21 15:49:00
108	22	17	Unidad	BATCH6029	2025-04-15	89	42.00	0.00	0.00	0.00	4717.00	2024-09-21 15:49:00	2024-09-21 15:49:00
109	22	21	Unidad	BATCH1212	2025-03-15	73	43.00	0.00	0.00	0.00	5037.00	2024-09-21 15:49:00	2024-09-21 15:49:00
110	22	30	Unidad	BATCH1038	2025-06-15	53	41.00	0.00	0.00	0.00	3498.00	2024-09-21 15:49:00	2024-09-21 15:49:00
111	23	1	Unidad	BATCH8767	2025-03-15	78	26.00	0.00	0.00	0.00	5304.00	2024-09-25 15:52:00	2024-09-25 15:52:00
112	23	12	Unidad	BATCH9830	2025-04-15	76	72.00	0.00	0.00	0.00	4332.00	2024-09-25 15:52:00	2024-09-25 15:52:00
113	23	22	Unidad	BATCH9800	2025-04-15	51	100.00	0.00	0.00	0.00	1020.00	2024-09-25 15:52:00	2024-09-25 15:52:00
114	23	24	Unidad	BATCH8180	2025-03-15	72	26.00	0.00	0.00	0.00	5904.00	2024-09-25 15:52:00	2024-09-25 15:52:00
115	23	29	Unidad	BATCH4213	2025-03-15	73	80.00	0.00	0.00	0.00	1460.00	2024-09-25 15:52:00	2024-09-25 15:52:00
116	24	2	Unidad	BATCH1335	2025-06-15	51	52.00	0.00	0.00	0.00	3774.00	2024-09-02 12:50:00	2024-09-02 12:50:00
117	24	7	Unidad	BATCH5246	2025-05-15	92	87.00	0.00	0.00	0.00	5980.00	2024-09-02 12:50:00	2024-09-02 12:50:00
118	24	15	Unidad	BATCH7676	2025-01-15	79	44.00	0.00	0.00	0.00	1896.00	2024-09-02 12:50:00	2024-09-02 12:50:00
119	24	24	Unidad	BATCH4668	2025-03-15	98	100.00	0.00	0.00	0.00	2058.00	2024-09-02 12:50:00	2024-09-02 12:50:00
120	24	30	Unidad	BATCH2395	2025-02-15	59	34.00	0.00	0.00	0.00	5546.00	2024-09-02 12:50:00	2024-09-02 12:50:00
121	25	2	Unidad	BATCH1574	2025-05-15	84	28.00	0.00	0.00	0.00	5376.00	2024-09-29 14:56:00	2024-09-29 14:56:00
122	25	7	Unidad	BATCH7362	2025-05-15	94	57.00	0.00	0.00	0.00	8460.00	2024-09-29 14:56:00	2024-09-29 14:56:00
123	25	18	Unidad	BATCH3706	2025-02-15	79	21.00	0.00	0.00	0.00	5530.00	2024-09-29 14:56:00	2024-09-29 14:56:00
124	25	20	Unidad	BATCH2183	2025-04-15	53	63.00	0.00	0.00	0.00	1908.00	2024-09-29 14:56:00	2024-09-29 14:56:00
125	25	22	Unidad	BATCH8418	2025-06-15	96	66.00	0.00	0.00	0.00	6912.00	2024-09-29 14:56:00	2024-09-29 14:56:00
126	26	3	Unidad	BATCH4039	2025-06-15	67	57.00	0.00	0.00	0.00	5963.00	2024-09-18 10:56:00	2024-09-18 10:56:00
127	26	8	Unidad	BATCH4383	2025-01-15	71	69.00	0.00	0.00	0.00	2769.00	2024-09-18 10:56:00	2024-09-18 10:56:00
128	26	13	Unidad	BATCH7626	2025-01-15	90	27.00	0.00	0.00	0.00	5400.00	2024-09-18 10:56:00	2024-09-18 10:56:00
129	26	24	Unidad	BATCH1291	2025-05-15	100	68.00	0.00	0.00	0.00	8500.00	2024-09-18 10:56:00	2024-09-18 10:56:00
130	26	30	Unidad	BATCH6932	2025-04-15	52	78.00	0.00	0.00	0.00	1872.00	2024-09-18 10:56:00	2024-09-18 10:56:00
131	27	2	Unidad	BATCH1165	2025-06-15	71	43.00	0.00	0.00	0.00	3337.00	2024-09-27 08:58:00	2024-09-27 08:58:00
132	27	9	Unidad	BATCH9062	2025-04-15	53	88.00	0.00	0.00	0.00	4134.00	2024-09-27 08:58:00	2024-09-27 08:58:00
133	27	11	Unidad	BATCH3322	2025-05-15	75	20.00	0.00	0.00	0.00	2775.00	2024-09-27 08:58:00	2024-09-27 08:58:00
134	27	14	Unidad	BATCH1988	2025-02-15	84	91.00	0.00	0.00	0.00	8400.00	2024-09-27 08:58:00	2024-09-27 08:58:00
135	27	18	Unidad	BATCH5127	2025-06-15	66	29.00	0.00	0.00	0.00	2376.00	2024-09-27 08:58:00	2024-09-27 08:58:00
136	28	1	Unidad	BATCH5350	2025-04-15	60	100.00	0.00	0.00	0.00	5100.00	2024-09-25 13:22:00	2024-09-25 13:22:00
137	28	8	Unidad	BATCH8268	2025-01-15	73	53.00	0.00	0.00	0.00	4745.00	2024-09-25 13:22:00	2024-09-25 13:22:00
138	28	15	Unidad	BATCH5000	2025-04-15	70	49.00	0.00	0.00	0.00	3920.00	2024-09-25 13:22:00	2024-09-25 13:22:00
139	28	18	Unidad	BATCH8192	2025-01-15	57	77.00	0.00	0.00	0.00	1425.00	2024-09-25 13:22:00	2024-09-25 13:22:00
140	28	20	Unidad	BATCH7587	2025-01-15	67	29.00	0.00	0.00	0.00	6700.00	2024-09-25 13:22:00	2024-09-25 13:22:00
141	29	2	Unidad	BATCH3869	2025-05-15	93	97.00	0.00	0.00	0.00	4929.00	2024-09-03 10:18:00	2024-09-03 10:18:00
142	29	9	Unidad	BATCH6086	2025-06-15	95	84.00	0.00	0.00	0.00	3420.00	2024-09-03 10:18:00	2024-09-03 10:18:00
143	29	10	Unidad	BATCH4493	2025-06-15	58	89.00	0.00	0.00	0.00	5394.00	2024-09-03 10:18:00	2024-09-03 10:18:00
144	29	11	Unidad	BATCH7419	2025-01-15	83	27.00	0.00	0.00	0.00	6972.00	2024-09-03 10:18:00	2024-09-03 10:18:00
145	29	19	Unidad	BATCH8261	2025-06-15	96	56.00	0.00	0.00	0.00	2880.00	2024-09-03 10:18:00	2024-09-03 10:18:00
146	30	1	Unidad	BATCH2556	2025-05-15	100	93.00	0.00	0.00	0.00	8300.00	2024-09-02 13:42:00	2024-09-02 13:42:00
147	30	12	Unidad	BATCH2353	2025-05-15	86	71.00	0.00	0.00	0.00	3440.00	2024-09-02 13:42:00	2024-09-02 13:42:00
148	30	13	Unidad	BATCH8054	2025-03-15	94	76.00	0.00	0.00	0.00	3478.00	2024-09-02 13:42:00	2024-09-02 13:42:00
149	30	21	Unidad	BATCH9726	2025-03-15	74	55.00	0.00	0.00	0.00	2886.00	2024-09-02 13:42:00	2024-09-02 13:42:00
150	30	22	Unidad	BATCH8349	2025-03-15	81	77.00	0.00	0.00	0.00	5751.00	2024-09-02 13:42:00	2024-09-02 13:42:00
151	31	2	Unidad	BATCH4814	2025-02-15	68	50.00	0.00	0.00	0.00	2448.00	2024-09-21 11:06:00	2024-09-21 11:06:00
152	31	3	Unidad	BATCH6286	2025-05-15	50	27.00	0.00	0.00	0.00	4450.00	2024-09-21 11:06:00	2024-09-21 11:06:00
153	31	22	Unidad	BATCH7480	2025-05-15	95	58.00	0.00	0.00	0.00	3325.00	2024-09-21 11:06:00	2024-09-21 11:06:00
154	31	24	Unidad	BATCH5317	2025-02-15	96	53.00	0.00	0.00	0.00	6912.00	2024-09-21 11:06:00	2024-09-21 11:06:00
155	31	25	Unidad	BATCH7614	2025-02-15	91	53.00	0.00	0.00	0.00	2912.00	2024-09-21 11:06:00	2024-09-21 11:06:00
156	32	9	Unidad	BATCH8790	2025-01-15	65	92.00	0.00	0.00	0.00	2665.00	2024-09-18 16:05:00	2024-09-18 16:05:00
157	32	10	Unidad	BATCH5630	2025-05-15	98	92.00	0.00	0.00	0.00	4214.00	2024-09-18 16:05:00	2024-09-18 16:05:00
158	32	11	Unidad	BATCH3745	2025-01-15	58	45.00	0.00	0.00	0.00	5684.00	2024-09-18 16:05:00	2024-09-18 16:05:00
159	32	15	Unidad	BATCH7548	2025-05-15	73	32.00	0.00	0.00	0.00	2920.00	2024-09-18 16:05:00	2024-09-18 16:05:00
160	32	29	Unidad	BATCH8058	2025-06-15	57	37.00	0.00	0.00	0.00	1482.00	2024-09-18 16:05:00	2024-09-18 16:05:00
161	33	2	Unidad	BATCH1016	2025-03-15	53	51.00	0.00	0.00	0.00	2703.00	2024-09-05 13:39:00	2024-09-05 13:39:00
162	33	6	Unidad	BATCH2505	2025-01-15	100	85.00	0.00	0.00	0.00	8200.00	2024-09-05 13:39:00	2024-09-05 13:39:00
163	33	7	Unidad	BATCH7657	2025-06-15	57	48.00	0.00	0.00	0.00	4959.00	2024-09-05 13:39:00	2024-09-05 13:39:00
164	33	9	Unidad	BATCH1070	2025-06-15	95	74.00	0.00	0.00	0.00	8360.00	2024-09-05 13:39:00	2024-09-05 13:39:00
165	33	25	Unidad	BATCH3995	2025-03-15	61	91.00	0.00	0.00	0.00	3355.00	2024-09-05 13:39:00	2024-09-05 13:39:00
166	34	2	Unidad	BATCH5086	2025-02-15	73	40.00	0.00	0.00	0.00	4818.00	2024-09-11 10:33:00	2024-09-11 10:33:00
167	34	5	Unidad	BATCH1489	2025-04-15	95	56.00	0.00	0.00	0.00	9215.00	2024-09-11 10:33:00	2024-09-11 10:33:00
168	34	9	Unidad	BATCH1578	2025-05-15	80	60.00	0.00	0.00	0.00	6320.00	2024-09-11 10:33:00	2024-09-11 10:33:00
169	34	15	Unidad	BATCH8826	2025-04-15	54	84.00	0.00	0.00	0.00	3564.00	2024-09-11 10:33:00	2024-09-11 10:33:00
170	34	20	Unidad	BATCH2586	2025-01-15	70	72.00	0.00	0.00	0.00	2170.00	2024-09-11 10:33:00	2024-09-11 10:33:00
171	35	11	Unidad	BATCH4052	2025-04-15	50	81.00	0.00	0.00	0.00	2050.00	2024-09-10 08:19:00	2024-09-10 08:19:00
172	35	14	Unidad	BATCH8837	2025-04-15	56	55.00	0.00	0.00	0.00	1512.00	2024-09-10 08:19:00	2024-09-10 08:19:00
173	35	15	Unidad	BATCH8740	2025-04-15	70	86.00	0.00	0.00	0.00	2450.00	2024-09-10 08:19:00	2024-09-10 08:19:00
174	35	23	Unidad	BATCH6271	2025-02-15	86	68.00	0.00	0.00	0.00	7912.00	2024-09-10 08:19:00	2024-09-10 08:19:00
175	35	25	Unidad	BATCH2247	2025-02-15	58	47.00	0.00	0.00	0.00	1856.00	2024-09-10 08:19:00	2024-09-10 08:19:00
176	36	6	Unidad	BATCH7850	2025-05-15	71	34.00	0.00	0.00	0.00	5609.00	2024-09-08 16:53:00	2024-09-08 16:53:00
177	36	7	Unidad	BATCH5485	2025-05-15	60	81.00	0.00	0.00	0.00	2640.00	2024-09-08 16:53:00	2024-09-08 16:53:00
178	36	11	Unidad	BATCH8159	2025-05-15	79	36.00	0.00	0.00	0.00	2370.00	2024-09-08 16:53:00	2024-09-08 16:53:00
179	36	18	Unidad	BATCH8527	2025-03-15	72	90.00	0.00	0.00	0.00	5976.00	2024-09-08 16:53:00	2024-09-08 16:53:00
180	36	23	Unidad	BATCH1653	2025-05-15	92	43.00	0.00	0.00	0.00	6164.00	2024-09-08 16:53:00	2024-09-08 16:53:00
181	37	3	Unidad	BATCH9631	2025-05-15	61	43.00	0.00	0.00	0.00	5490.00	2024-09-17 10:24:00	2024-09-17 10:24:00
182	37	12	Unidad	BATCH9803	2025-04-15	89	48.00	0.00	0.00	0.00	8277.00	2024-09-17 10:24:00	2024-09-17 10:24:00
183	37	14	Unidad	BATCH4288	2025-01-15	93	79.00	0.00	0.00	0.00	5580.00	2024-09-17 10:24:00	2024-09-17 10:24:00
184	37	21	Unidad	BATCH6015	2025-01-15	66	66.00	0.00	0.00	0.00	1320.00	2024-09-17 10:24:00	2024-09-17 10:24:00
185	37	22	Unidad	BATCH2628	2025-05-15	74	89.00	0.00	0.00	0.00	3404.00	2024-09-17 10:24:00	2024-09-17 10:24:00
186	38	5	Unidad	BATCH9042	2025-05-15	52	60.00	0.00	0.00	0.00	2600.00	2024-09-21 16:16:00	2024-09-21 16:16:00
187	38	6	Unidad	BATCH5628	2025-03-15	87	95.00	0.00	0.00	0.00	6699.00	2024-09-21 16:16:00	2024-09-21 16:16:00
188	38	9	Unidad	BATCH6026	2025-02-15	72	96.00	0.00	0.00	0.00	2808.00	2024-09-21 16:16:00	2024-09-21 16:16:00
189	38	23	Unidad	BATCH5571	2025-01-15	64	28.00	0.00	0.00	0.00	5056.00	2024-09-21 16:16:00	2024-09-21 16:16:00
190	38	25	Unidad	BATCH3248	2025-06-15	66	73.00	0.00	0.00	0.00	5676.00	2024-09-21 16:16:00	2024-09-21 16:16:00
191	39	1	Unidad	BATCH7488	2025-01-15	72	52.00	0.00	0.00	0.00	5544.00	2024-09-09 09:15:00	2024-09-09 09:15:00
192	39	4	Unidad	BATCH8976	2025-02-15	80	46.00	0.00	0.00	0.00	6560.00	2024-09-09 09:15:00	2024-09-09 09:15:00
193	39	14	Unidad	BATCH5646	2025-06-15	88	77.00	0.00	0.00	0.00	8360.00	2024-09-09 09:15:00	2024-09-09 09:15:00
194	39	17	Unidad	BATCH9581	2025-02-15	50	30.00	0.00	0.00	0.00	1050.00	2024-09-09 09:15:00	2024-09-09 09:15:00
195	39	27	Unidad	BATCH6336	2025-06-15	76	87.00	0.00	0.00	0.00	3116.00	2024-09-09 09:15:00	2024-09-09 09:15:00
196	40	2	Unidad	BATCH7946	2025-02-15	80	27.00	0.00	0.00	0.00	3520.00	2024-09-20 16:22:00	2024-09-20 16:22:00
197	40	10	Unidad	BATCH6853	2025-02-15	89	72.00	0.00	0.00	0.00	2403.00	2024-09-20 16:22:00	2024-09-20 16:22:00
198	40	13	Unidad	BATCH3181	2025-01-15	99	40.00	0.00	0.00	0.00	2178.00	2024-09-20 16:22:00	2024-09-20 16:22:00
199	40	14	Unidad	BATCH1541	2025-04-15	98	88.00	0.00	0.00	0.00	6664.00	2024-09-20 16:22:00	2024-09-20 16:22:00
200	40	23	Unidad	BATCH2833	2025-05-15	79	20.00	0.00	0.00	0.00	5293.00	2024-09-20 16:22:00	2024-09-20 16:22:00
201	41	2	Unidad	BATCH9132	2025-06-15	78	29.00	0.00	0.00	0.00	7488.00	2024-09-28 10:54:00	2024-09-28 10:54:00
202	41	8	Unidad	BATCH5382	2025-03-15	54	38.00	0.00	0.00	0.00	3726.00	2024-09-28 10:54:00	2024-09-28 10:54:00
203	41	10	Unidad	BATCH5272	2025-05-15	74	53.00	0.00	0.00	0.00	1998.00	2024-09-28 10:54:00	2024-09-28 10:54:00
204	41	16	Unidad	BATCH8066	2025-02-15	58	94.00	0.00	0.00	0.00	5104.00	2024-09-28 10:54:00	2024-09-28 10:54:00
205	41	17	Unidad	BATCH1216	2025-04-15	74	62.00	0.00	0.00	0.00	1554.00	2024-09-28 10:54:00	2024-09-28 10:54:00
206	42	4	Unidad	BATCH4061	2025-05-15	81	73.00	0.00	0.00	0.00	6966.00	2024-09-02 13:13:00	2024-09-02 13:13:00
207	42	5	Unidad	BATCH7920	2025-04-15	83	27.00	0.00	0.00	0.00	7885.00	2024-09-02 13:13:00	2024-09-02 13:13:00
208	42	16	Unidad	BATCH6484	2025-04-15	75	89.00	0.00	0.00	0.00	2925.00	2024-09-02 13:13:00	2024-09-02 13:13:00
209	42	21	Unidad	BATCH7434	2025-01-15	66	40.00	0.00	0.00	0.00	2706.00	2024-09-02 13:13:00	2024-09-02 13:13:00
210	42	27	Unidad	BATCH1488	2025-01-15	97	64.00	0.00	0.00	0.00	3007.00	2024-09-02 13:13:00	2024-09-02 13:13:00
211	43	5	Unidad	BATCH9792	2025-04-15	79	66.00	0.00	0.00	0.00	3002.00	2024-09-14 10:16:00	2024-09-14 10:16:00
212	43	11	Unidad	BATCH8245	2025-04-15	89	53.00	0.00	0.00	0.00	7921.00	2024-09-14 10:16:00	2024-09-14 10:16:00
213	43	17	Unidad	BATCH1919	2025-05-15	59	62.00	0.00	0.00	0.00	5192.00	2024-09-14 10:16:00	2024-09-14 10:16:00
214	43	21	Unidad	BATCH9738	2025-03-15	94	71.00	0.00	0.00	0.00	6674.00	2024-09-14 10:16:00	2024-09-14 10:16:00
215	43	30	Unidad	BATCH9667	2025-02-15	57	45.00	0.00	0.00	0.00	3249.00	2024-09-14 10:16:00	2024-09-14 10:16:00
216	44	2	Unidad	BATCH9337	2025-03-15	76	32.00	0.00	0.00	0.00	5548.00	2024-09-15 09:11:00	2024-09-15 09:11:00
217	44	13	Unidad	BATCH3877	2025-06-15	72	61.00	0.00	0.00	0.00	5976.00	2024-09-15 09:11:00	2024-09-15 09:11:00
218	44	16	Unidad	BATCH1056	2025-01-15	50	67.00	0.00	0.00	0.00	1250.00	2024-09-15 09:11:00	2024-09-15 09:11:00
219	44	22	Unidad	BATCH6635	2025-04-15	86	72.00	0.00	0.00	0.00	7052.00	2024-09-15 09:11:00	2024-09-15 09:11:00
220	44	27	Unidad	BATCH4327	2025-04-15	79	47.00	0.00	0.00	0.00	3081.00	2024-09-15 09:11:00	2024-09-15 09:11:00
221	45	1	Unidad	BATCH5589	2025-04-15	58	74.00	0.00	0.00	0.00	1276.00	2024-09-10 08:58:00	2024-09-10 08:58:00
222	45	3	Unidad	BATCH6419	2025-01-15	81	74.00	0.00	0.00	0.00	6966.00	2024-09-10 08:58:00	2024-09-10 08:58:00
223	45	7	Unidad	BATCH5594	2025-02-15	84	47.00	0.00	0.00	0.00	2100.00	2024-09-10 08:58:00	2024-09-10 08:58:00
224	45	8	Unidad	BATCH1181	2025-06-15	59	32.00	0.00	0.00	0.00	2419.00	2024-09-10 08:58:00	2024-09-10 08:58:00
225	45	11	Unidad	BATCH5322	2025-01-15	81	65.00	0.00	0.00	0.00	5508.00	2024-09-10 08:58:00	2024-09-10 08:58:00
226	46	4	Unidad	BATCH1997	2025-04-15	100	75.00	0.00	0.00	0.00	5900.00	2024-09-02 13:22:00	2024-09-02 13:22:00
227	46	5	Unidad	BATCH2769	2025-05-15	51	100.00	0.00	0.00	0.00	2346.00	2024-09-02 13:22:00	2024-09-02 13:22:00
228	46	7	Unidad	BATCH3753	2025-02-15	94	27.00	0.00	0.00	0.00	8554.00	2024-09-02 13:22:00	2024-09-02 13:22:00
229	46	13	Unidad	BATCH6726	2025-01-15	66	49.00	0.00	0.00	0.00	5808.00	2024-09-02 13:22:00	2024-09-02 13:22:00
230	46	20	Unidad	BATCH7291	2025-02-15	99	36.00	0.00	0.00	0.00	3465.00	2024-09-02 13:22:00	2024-09-02 13:22:00
231	47	10	Unidad	BATCH2278	2025-04-15	58	73.00	0.00	0.00	0.00	5220.00	2024-09-22 15:53:00	2024-09-22 15:53:00
232	47	14	Unidad	BATCH3196	2025-06-15	84	71.00	0.00	0.00	0.00	5040.00	2024-09-22 15:53:00	2024-09-22 15:53:00
233	47	19	Unidad	BATCH4017	2025-01-15	77	55.00	0.00	0.00	0.00	1925.00	2024-09-22 15:53:00	2024-09-22 15:53:00
234	47	23	Unidad	BATCH1500	2025-01-15	99	74.00	0.00	0.00	0.00	4059.00	2024-09-22 15:53:00	2024-09-22 15:53:00
235	47	25	Unidad	BATCH3659	2025-03-15	63	98.00	0.00	0.00	0.00	1386.00	2024-09-22 15:53:00	2024-09-22 15:53:00
236	48	13	Unidad	BATCH2831	2025-02-15	73	29.00	0.00	0.00	0.00	1898.00	2024-09-16 10:43:00	2024-09-16 10:43:00
237	48	17	Unidad	BATCH2305	2025-04-15	100	33.00	0.00	0.00	0.00	9800.00	2024-09-16 10:43:00	2024-09-16 10:43:00
238	48	19	Unidad	BATCH9632	2025-06-15	63	99.00	0.00	0.00	0.00	2961.00	2024-09-16 10:43:00	2024-09-16 10:43:00
239	48	21	Unidad	BATCH4659	2025-06-15	64	39.00	0.00	0.00	0.00	6208.00	2024-09-16 10:43:00	2024-09-16 10:43:00
240	48	26	Unidad	BATCH4122	2025-05-15	87	38.00	0.00	0.00	0.00	6960.00	2024-09-16 10:43:00	2024-09-16 10:43:00
241	49	3	Unidad	BATCH2647	2025-03-15	95	34.00	0.00	0.00	0.00	9310.00	2024-09-02 15:46:00	2024-09-02 15:46:00
242	49	6	Unidad	BATCH4092	2025-06-15	75	30.00	0.00	0.00	0.00	6450.00	2024-09-02 15:46:00	2024-09-02 15:46:00
243	49	10	Unidad	BATCH8416	2025-06-15	65	21.00	0.00	0.00	0.00	3835.00	2024-09-02 15:46:00	2024-09-02 15:46:00
244	49	12	Unidad	BATCH4685	2025-04-15	63	48.00	0.00	0.00	0.00	4914.00	2024-09-02 15:46:00	2024-09-02 15:46:00
245	49	13	Unidad	BATCH1115	2025-01-15	60	47.00	0.00	0.00	0.00	4800.00	2024-09-02 15:46:00	2024-09-02 15:46:00
246	50	3	Unidad	BATCH1652	2025-05-15	73	78.00	0.00	0.00	0.00	5986.00	2024-09-18 08:55:00	2024-09-18 08:55:00
247	50	6	Unidad	BATCH7416	2025-06-15	89	86.00	0.00	0.00	0.00	6853.00	2024-09-18 08:55:00	2024-09-18 08:55:00
248	50	9	Unidad	BATCH3770	2025-04-15	61	93.00	0.00	0.00	0.00	6100.00	2024-09-18 08:55:00	2024-09-18 08:55:00
249	50	10	Unidad	BATCH8807	2025-04-15	53	41.00	0.00	0.00	0.00	3021.00	2024-09-18 08:55:00	2024-09-18 08:55:00
250	50	19	Unidad	BATCH9769	2025-03-15	60	42.00	0.00	0.00	0.00	4200.00	2024-09-18 08:55:00	2024-09-18 08:55:00
251	51	3	Unidad	BATCH5071	2025-06-15	94	57.00	0.00	0.00	0.00	4512.00	2024-09-23 09:50:00	2024-09-23 09:50:00
252	51	10	Unidad	BATCH3219	2025-02-15	77	84.00	0.00	0.00	0.00	7623.00	2024-09-23 09:50:00	2024-09-23 09:50:00
253	51	16	Unidad	BATCH1534	2025-03-15	84	76.00	0.00	0.00	0.00	3612.00	2024-09-23 09:50:00	2024-09-23 09:50:00
254	51	20	Unidad	BATCH9849	2025-02-15	90	78.00	0.00	0.00	0.00	2520.00	2024-09-23 09:50:00	2024-09-23 09:50:00
255	51	27	Unidad	BATCH9859	2025-03-15	84	67.00	0.00	0.00	0.00	5292.00	2024-09-23 09:50:00	2024-09-23 09:50:00
256	52	11	Unidad	BATCH7102	2025-02-15	58	56.00	0.00	0.00	0.00	4756.00	2024-09-11 13:27:00	2024-09-11 13:27:00
257	52	14	Unidad	BATCH1524	2025-04-15	50	71.00	0.00	0.00	0.00	4800.00	2024-09-11 13:27:00	2024-09-11 13:27:00
258	52	20	Unidad	BATCH6693	2025-02-15	71	83.00	0.00	0.00	0.00	2343.00	2024-09-11 13:27:00	2024-09-11 13:27:00
259	52	21	Unidad	BATCH6763	2025-03-15	89	35.00	0.00	0.00	0.00	2670.00	2024-09-11 13:27:00	2024-09-11 13:27:00
260	52	26	Unidad	BATCH7581	2025-04-15	66	61.00	0.00	0.00	0.00	4026.00	2024-09-11 13:27:00	2024-09-11 13:27:00
261	53	7	Unidad	BATCH2386	2025-02-15	51	54.00	0.00	0.00	0.00	1938.00	2024-09-10 10:18:00	2024-09-10 10:18:00
262	53	8	Unidad	BATCH3850	2025-05-15	73	99.00	0.00	0.00	0.00	5694.00	2024-09-10 10:18:00	2024-09-10 10:18:00
263	53	13	Unidad	BATCH6438	2025-02-15	88	79.00	0.00	0.00	0.00	2112.00	2024-09-10 10:18:00	2024-09-10 10:18:00
264	53	17	Unidad	BATCH9601	2025-06-15	60	85.00	0.00	0.00	0.00	3360.00	2024-09-10 10:18:00	2024-09-10 10:18:00
265	53	28	Unidad	BATCH3861	2025-02-15	87	62.00	0.00	0.00	0.00	6786.00	2024-09-10 10:18:00	2024-09-10 10:18:00
266	54	3	Unidad	BATCH5003	2025-04-15	100	94.00	0.00	0.00	0.00	2500.00	2024-09-01 15:00:00	2024-09-01 15:00:00
267	54	4	Unidad	BATCH8557	2025-06-15	50	89.00	0.00	0.00	0.00	2050.00	2024-09-01 15:00:00	2024-09-01 15:00:00
268	54	6	Unidad	BATCH6138	2025-04-15	81	49.00	0.00	0.00	0.00	6804.00	2024-09-01 15:00:00	2024-09-01 15:00:00
269	54	21	Unidad	BATCH4299	2025-05-15	50	58.00	0.00	0.00	0.00	3050.00	2024-09-01 15:00:00	2024-09-01 15:00:00
270	54	28	Unidad	BATCH3913	2025-06-15	52	40.00	0.00	0.00	0.00	2808.00	2024-09-01 15:00:00	2024-09-01 15:00:00
271	55	9	Unidad	BATCH6244	2025-02-15	82	61.00	0.00	0.00	0.00	5904.00	2024-09-13 16:49:00	2024-09-13 16:49:00
272	55	13	Unidad	BATCH5870	2025-02-15	100	98.00	0.00	0.00	0.00	5900.00	2024-09-13 16:49:00	2024-09-13 16:49:00
273	55	19	Unidad	BATCH9819	2025-02-15	63	35.00	0.00	0.00	0.00	6174.00	2024-09-13 16:49:00	2024-09-13 16:49:00
274	55	24	Unidad	BATCH4184	2025-01-15	56	84.00	0.00	0.00	0.00	4984.00	2024-09-13 16:49:00	2024-09-13 16:49:00
275	55	30	Unidad	BATCH4397	2025-02-15	87	60.00	0.00	0.00	0.00	5568.00	2024-09-13 16:49:00	2024-09-13 16:49:00
276	56	3	Unidad	BATCH2553	2025-04-15	70	27.00	0.00	0.00	0.00	3850.00	2024-09-16 11:47:00	2024-09-16 11:47:00
277	56	7	Unidad	BATCH5179	2025-03-15	85	64.00	0.00	0.00	0.00	5185.00	2024-09-16 11:47:00	2024-09-16 11:47:00
278	56	13	Unidad	BATCH4274	2025-06-15	90	57.00	0.00	0.00	0.00	4950.00	2024-09-16 11:47:00	2024-09-16 11:47:00
279	56	19	Unidad	BATCH4175	2025-01-15	72	57.00	0.00	0.00	0.00	1656.00	2024-09-16 11:47:00	2024-09-16 11:47:00
280	56	25	Unidad	BATCH6948	2025-05-15	89	97.00	0.00	0.00	0.00	3204.00	2024-09-16 11:47:00	2024-09-16 11:47:00
281	57	5	Unidad	BATCH6179	2025-01-15	83	88.00	0.00	0.00	0.00	5561.00	2024-09-20 16:45:00	2024-09-20 16:45:00
282	57	11	Unidad	BATCH8167	2025-06-15	61	60.00	0.00	0.00	0.00	6039.00	2024-09-20 16:45:00	2024-09-20 16:45:00
283	57	15	Unidad	BATCH2839	2025-01-15	57	87.00	0.00	0.00	0.00	3192.00	2024-09-20 16:45:00	2024-09-20 16:45:00
284	57	20	Unidad	BATCH5323	2025-06-15	57	52.00	0.00	0.00	0.00	2907.00	2024-09-20 16:45:00	2024-09-20 16:45:00
285	57	21	Unidad	BATCH7667	2025-02-15	87	40.00	0.00	0.00	0.00	6351.00	2024-09-20 16:45:00	2024-09-20 16:45:00
286	58	4	Unidad	BATCH1624	2025-03-15	53	97.00	0.00	0.00	0.00	3392.00	2024-09-17 14:47:00	2024-09-17 14:47:00
287	58	5	Unidad	BATCH4931	2025-02-15	54	56.00	0.00	0.00	0.00	2808.00	2024-09-17 14:47:00	2024-09-17 14:47:00
288	58	14	Unidad	BATCH9901	2025-05-15	97	65.00	0.00	0.00	0.00	2716.00	2024-09-17 14:47:00	2024-09-17 14:47:00
289	58	22	Unidad	BATCH1784	2025-06-15	51	39.00	0.00	0.00	0.00	3111.00	2024-09-17 14:47:00	2024-09-17 14:47:00
290	58	23	Unidad	BATCH7712	2025-01-15	54	88.00	0.00	0.00	0.00	2916.00	2024-09-17 14:47:00	2024-09-17 14:47:00
291	59	3	Unidad	BATCH3116	2025-02-15	55	54.00	0.00	0.00	0.00	4730.00	2024-09-19 10:59:00	2024-09-19 10:59:00
292	59	6	Unidad	BATCH5501	2025-03-15	97	40.00	0.00	0.00	0.00	8342.00	2024-09-19 10:59:00	2024-09-19 10:59:00
293	59	18	Unidad	BATCH6461	2025-05-15	64	100.00	0.00	0.00	0.00	4800.00	2024-09-19 10:59:00	2024-09-19 10:59:00
294	59	20	Unidad	BATCH7956	2025-06-15	97	26.00	0.00	0.00	0.00	8924.00	2024-09-19 10:59:00	2024-09-19 10:59:00
295	59	22	Unidad	BATCH6583	2025-05-15	51	32.00	0.00	0.00	0.00	3672.00	2024-09-19 10:59:00	2024-09-19 10:59:00
296	60	6	Unidad	BATCH5749	2025-05-15	76	77.00	0.00	0.00	0.00	4408.00	2024-09-14 09:20:00	2024-09-14 09:20:00
297	60	10	Unidad	BATCH5300	2025-06-15	52	99.00	0.00	0.00	0.00	4368.00	2024-09-14 09:20:00	2024-09-14 09:20:00
298	60	18	Unidad	BATCH3208	2025-01-15	66	93.00	0.00	0.00	0.00	4950.00	2024-09-14 09:20:00	2024-09-14 09:20:00
299	60	20	Unidad	BATCH9690	2025-02-15	73	46.00	0.00	0.00	0.00	3942.00	2024-09-14 09:20:00	2024-09-14 09:20:00
300	60	29	Unidad	BATCH6291	2025-05-15	76	78.00	0.00	0.00	0.00	2736.00	2024-09-14 09:20:00	2024-09-14 09:20:00
301	61	12	Unidad	BATCH9216	2025-02-15	56	44.00	0.00	0.00	0.00	5376.00	2024-09-03 10:21:00	2024-09-03 10:21:00
302	61	19	Unidad	BATCH2038	2025-06-15	79	47.00	0.00	0.00	0.00	6952.00	2024-09-03 10:21:00	2024-09-03 10:21:00
303	61	21	Unidad	BATCH7230	2025-06-15	50	89.00	0.00	0.00	0.00	1450.00	2024-09-03 10:21:00	2024-09-03 10:21:00
304	61	22	Unidad	BATCH8813	2025-06-15	52	92.00	0.00	0.00	0.00	3432.00	2024-09-03 10:21:00	2024-09-03 10:21:00
305	61	26	Unidad	BATCH6814	2025-03-15	57	33.00	0.00	0.00	0.00	1368.00	2024-09-03 10:21:00	2024-09-03 10:21:00
306	62	8	Unidad	BATCH9494	2025-01-15	68	53.00	0.00	0.00	0.00	6596.00	2024-09-10 13:47:00	2024-09-10 13:47:00
307	62	11	Unidad	BATCH8975	2025-05-15	67	20.00	0.00	0.00	0.00	2680.00	2024-09-10 13:47:00	2024-09-10 13:47:00
308	62	12	Unidad	BATCH7478	2025-05-15	63	33.00	0.00	0.00	0.00	6237.00	2024-09-10 13:47:00	2024-09-10 13:47:00
309	62	18	Unidad	BATCH2068	2025-04-15	95	86.00	0.00	0.00	0.00	3895.00	2024-09-10 13:47:00	2024-09-10 13:47:00
310	62	29	Unidad	BATCH1546	2025-05-15	71	47.00	0.00	0.00	0.00	6887.00	2024-09-10 13:47:00	2024-09-10 13:47:00
311	63	1	Unidad	BATCH9311	2025-05-15	95	55.00	0.00	0.00	0.00	7600.00	2024-09-24 16:04:00	2024-09-24 16:04:00
312	63	6	Unidad	BATCH3162	2025-01-15	94	38.00	0.00	0.00	0.00	5922.00	2024-09-24 16:04:00	2024-09-24 16:04:00
313	63	16	Unidad	BATCH9480	2025-05-15	70	50.00	0.00	0.00	0.00	3150.00	2024-09-24 16:04:00	2024-09-24 16:04:00
314	63	23	Unidad	BATCH6954	2025-06-15	82	80.00	0.00	0.00	0.00	7954.00	2024-09-24 16:04:00	2024-09-24 16:04:00
315	63	24	Unidad	BATCH6344	2025-01-15	68	22.00	0.00	0.00	0.00	1360.00	2024-09-24 16:04:00	2024-09-24 16:04:00
316	64	3	Unidad	BATCH2344	2025-01-15	71	42.00	0.00	0.00	0.00	6177.00	2024-09-04 16:08:00	2024-09-04 16:08:00
317	64	12	Unidad	BATCH2005	2025-02-15	85	56.00	0.00	0.00	0.00	4420.00	2024-09-04 16:08:00	2024-09-04 16:08:00
318	64	18	Unidad	BATCH8548	2025-05-15	87	79.00	0.00	0.00	0.00	6786.00	2024-09-04 16:08:00	2024-09-04 16:08:00
319	64	28	Unidad	BATCH8458	2025-03-15	68	86.00	0.00	0.00	0.00	6460.00	2024-09-04 16:08:00	2024-09-04 16:08:00
320	64	29	Unidad	BATCH8022	2025-06-15	52	44.00	0.00	0.00	0.00	4316.00	2024-09-04 16:08:00	2024-09-04 16:08:00
321	65	10	Unidad	BATCH4966	2025-04-15	78	70.00	0.00	0.00	0.00	6474.00	2024-09-27 10:12:00	2024-09-27 10:12:00
322	65	12	Unidad	BATCH4563	2025-01-15	91	50.00	0.00	0.00	0.00	7917.00	2024-09-27 10:12:00	2024-09-27 10:12:00
323	65	18	Unidad	BATCH3077	2025-06-15	84	84.00	0.00	0.00	0.00	3108.00	2024-09-27 10:12:00	2024-09-27 10:12:00
324	65	20	Unidad	BATCH1615	2025-01-15	88	72.00	0.00	0.00	0.00	4400.00	2024-09-27 10:12:00	2024-09-27 10:12:00
325	65	21	Unidad	BATCH7775	2025-02-15	67	25.00	0.00	0.00	0.00	3886.00	2024-09-27 10:12:00	2024-09-27 10:12:00
326	66	1	Unidad	BATCH4930	2025-05-15	91	98.00	0.00	0.00	0.00	3549.00	2024-09-15 10:05:00	2024-09-15 10:05:00
327	66	5	Unidad	BATCH4226	2025-01-15	68	88.00	0.00	0.00	0.00	4284.00	2024-09-15 10:05:00	2024-09-15 10:05:00
328	66	8	Unidad	BATCH2939	2025-03-15	62	25.00	0.00	0.00	0.00	2914.00	2024-09-15 10:05:00	2024-09-15 10:05:00
329	66	9	Unidad	BATCH9759	2025-06-15	54	51.00	0.00	0.00	0.00	5184.00	2024-09-15 10:05:00	2024-09-15 10:05:00
330	66	12	Unidad	BATCH1108	2025-05-15	52	36.00	0.00	0.00	0.00	4784.00	2024-09-15 10:05:00	2024-09-15 10:05:00
331	67	6	Unidad	BATCH2622	2025-04-15	70	88.00	0.00	0.00	0.00	2310.00	2024-09-04 13:31:00	2024-09-04 13:31:00
332	67	12	Unidad	BATCH7771	2025-06-15	57	96.00	0.00	0.00	0.00	2394.00	2024-09-04 13:31:00	2024-09-04 13:31:00
333	67	14	Unidad	BATCH7669	2025-03-15	53	34.00	0.00	0.00	0.00	4770.00	2024-09-04 13:31:00	2024-09-04 13:31:00
334	67	18	Unidad	BATCH1847	2025-01-15	55	56.00	0.00	0.00	0.00	3300.00	2024-09-04 13:31:00	2024-09-04 13:31:00
335	67	27	Unidad	BATCH1749	2025-04-15	81	34.00	0.00	0.00	0.00	6075.00	2024-09-04 13:31:00	2024-09-04 13:31:00
336	68	5	Unidad	BATCH2009	2025-02-15	55	49.00	0.00	0.00	0.00	2090.00	2024-09-18 15:03:00	2024-09-18 15:03:00
337	68	6	Unidad	BATCH7182	2025-03-15	89	77.00	0.00	0.00	0.00	6141.00	2024-09-18 15:03:00	2024-09-18 15:03:00
338	68	22	Unidad	BATCH5894	2025-03-15	70	76.00	0.00	0.00	0.00	1680.00	2024-09-18 15:03:00	2024-09-18 15:03:00
339	68	25	Unidad	BATCH8104	2025-01-15	86	75.00	0.00	0.00	0.00	2236.00	2024-09-18 15:03:00	2024-09-18 15:03:00
340	68	28	Unidad	BATCH8029	2025-01-15	76	75.00	0.00	0.00	0.00	4256.00	2024-09-18 15:03:00	2024-09-18 15:03:00
341	69	4	Unidad	BATCH7199	2025-03-15	77	78.00	0.00	0.00	0.00	7007.00	2024-09-02 13:08:00	2024-09-02 13:08:00
342	69	6	Unidad	BATCH3682	2025-04-15	85	49.00	0.00	0.00	0.00	8075.00	2024-09-02 13:08:00	2024-09-02 13:08:00
343	69	19	Unidad	BATCH7084	2025-05-15	84	50.00	0.00	0.00	0.00	4872.00	2024-09-02 13:08:00	2024-09-02 13:08:00
344	69	22	Unidad	BATCH7959	2025-05-15	76	69.00	0.00	0.00	0.00	5700.00	2024-09-02 13:08:00	2024-09-02 13:08:00
345	69	24	Unidad	BATCH3544	2025-03-15	82	41.00	0.00	0.00	0.00	7380.00	2024-09-02 13:08:00	2024-09-02 13:08:00
346	70	1	Unidad	BATCH3823	2025-02-15	89	68.00	0.00	0.00	0.00	8544.00	2024-09-08 12:03:00	2024-09-08 12:03:00
347	70	2	Unidad	BATCH4167	2025-05-15	90	20.00	0.00	0.00	0.00	7560.00	2024-09-08 12:03:00	2024-09-08 12:03:00
348	70	4	Unidad	BATCH4807	2025-01-15	61	49.00	0.00	0.00	0.00	1525.00	2024-09-08 12:03:00	2024-09-08 12:03:00
349	70	12	Unidad	BATCH8089	2025-05-15	66	21.00	0.00	0.00	0.00	6534.00	2024-09-08 12:03:00	2024-09-08 12:03:00
350	70	29	Unidad	BATCH8799	2025-02-15	52	33.00	0.00	0.00	0.00	2652.00	2024-09-08 12:03:00	2024-09-08 12:03:00
351	71	2	Unidad	BATCH4907	2025-02-15	55	91.00	0.00	0.00	0.00	4565.00	2024-09-01 09:17:00	2024-09-01 09:17:00
352	71	7	Unidad	BATCH3083	2025-04-15	51	91.00	0.00	0.00	0.00	2091.00	2024-09-01 09:17:00	2024-09-01 09:17:00
353	71	9	Unidad	BATCH2945	2025-01-15	56	45.00	0.00	0.00	0.00	3808.00	2024-09-01 09:17:00	2024-09-01 09:17:00
354	71	14	Unidad	BATCH1052	2025-01-15	56	38.00	0.00	0.00	0.00	3584.00	2024-09-01 09:17:00	2024-09-01 09:17:00
355	71	27	Unidad	BATCH3704	2025-02-15	66	70.00	0.00	0.00	0.00	4488.00	2024-09-01 09:17:00	2024-09-01 09:17:00
356	72	2	Unidad	BATCH2019	2025-04-15	88	50.00	0.00	0.00	0.00	2376.00	2024-09-18 11:17:00	2024-09-18 11:17:00
357	72	5	Unidad	BATCH1865	2025-02-15	90	38.00	0.00	0.00	0.00	2700.00	2024-09-18 11:17:00	2024-09-18 11:17:00
358	72	10	Unidad	BATCH4739	2025-05-15	94	40.00	0.00	0.00	0.00	3384.00	2024-09-18 11:17:00	2024-09-18 11:17:00
359	72	14	Unidad	BATCH5081	2025-01-15	59	57.00	0.00	0.00	0.00	2065.00	2024-09-18 11:17:00	2024-09-18 11:17:00
360	72	16	Unidad	BATCH1634	2025-06-15	92	26.00	0.00	0.00	0.00	8004.00	2024-09-18 11:17:00	2024-09-18 11:17:00
361	73	1	Unidad	BATCH3228	2025-01-15	61	93.00	0.00	0.00	0.00	4819.00	2024-09-23 11:00:00	2024-09-23 11:00:00
362	73	7	Unidad	BATCH9701	2025-03-15	99	86.00	0.00	0.00	0.00	9900.00	2024-09-23 11:00:00	2024-09-23 11:00:00
363	73	8	Unidad	BATCH8007	2025-06-15	69	36.00	0.00	0.00	0.00	4278.00	2024-09-23 11:00:00	2024-09-23 11:00:00
364	73	9	Unidad	BATCH4825	2025-06-15	72	99.00	0.00	0.00	0.00	3744.00	2024-09-23 11:00:00	2024-09-23 11:00:00
365	73	23	Unidad	BATCH3756	2025-03-15	76	76.00	0.00	0.00	0.00	2736.00	2024-09-23 11:00:00	2024-09-23 11:00:00
366	74	6	Unidad	BATCH5750	2025-04-15	72	92.00	0.00	0.00	0.00	1800.00	2024-09-14 10:58:00	2024-09-14 10:58:00
367	74	13	Unidad	BATCH5216	2025-05-15	54	76.00	0.00	0.00	0.00	1728.00	2024-09-14 10:58:00	2024-09-14 10:58:00
368	74	15	Unidad	BATCH4513	2025-01-15	54	35.00	0.00	0.00	0.00	1836.00	2024-09-14 10:58:00	2024-09-14 10:58:00
369	74	19	Unidad	BATCH9320	2025-04-15	64	56.00	0.00	0.00	0.00	5056.00	2024-09-14 10:58:00	2024-09-14 10:58:00
370	74	25	Unidad	BATCH3439	2025-03-15	83	60.00	0.00	0.00	0.00	6225.00	2024-09-14 10:58:00	2024-09-14 10:58:00
371	75	9	Unidad	BATCH2557	2025-01-15	56	99.00	0.00	0.00	0.00	3304.00	2024-09-25 10:22:00	2024-09-25 10:22:00
372	75	15	Unidad	BATCH4227	2025-06-15	93	60.00	0.00	0.00	0.00	7812.00	2024-09-25 10:22:00	2024-09-25 10:22:00
373	75	16	Unidad	BATCH6109	2025-02-15	98	69.00	0.00	0.00	0.00	8428.00	2024-09-25 10:22:00	2024-09-25 10:22:00
374	75	17	Unidad	BATCH9044	2025-02-15	62	42.00	0.00	0.00	0.00	4898.00	2024-09-25 10:22:00	2024-09-25 10:22:00
375	75	19	Unidad	BATCH2047	2025-03-15	91	21.00	0.00	0.00	0.00	4732.00	2024-09-25 10:22:00	2024-09-25 10:22:00
376	76	4	Unidad	BATCH8347	2025-02-15	93	95.00	0.00	0.00	0.00	8277.00	2024-09-29 16:10:00	2024-09-29 16:10:00
377	76	18	Unidad	BATCH2313	2025-04-15	87	57.00	0.00	0.00	0.00	4698.00	2024-09-29 16:10:00	2024-09-29 16:10:00
378	76	19	Unidad	BATCH1900	2025-04-15	88	42.00	0.00	0.00	0.00	3520.00	2024-09-29 16:10:00	2024-09-29 16:10:00
379	76	28	Unidad	BATCH5579	2025-04-15	79	65.00	0.00	0.00	0.00	5925.00	2024-09-29 16:10:00	2024-09-29 16:10:00
380	76	29	Unidad	BATCH2403	2025-01-15	73	24.00	0.00	0.00	0.00	3066.00	2024-09-29 16:10:00	2024-09-29 16:10:00
381	77	16	Unidad	BATCH1824	2025-06-15	66	81.00	0.00	0.00	0.00	2046.00	2024-09-29 14:55:00	2024-09-29 14:55:00
382	77	18	Unidad	BATCH8848	2025-04-15	67	51.00	0.00	0.00	0.00	3015.00	2024-09-29 14:55:00	2024-09-29 14:55:00
383	77	19	Unidad	BATCH2786	2025-06-15	98	87.00	0.00	0.00	0.00	6174.00	2024-09-29 14:55:00	2024-09-29 14:55:00
384	77	23	Unidad	BATCH3091	2025-01-15	90	27.00	0.00	0.00	0.00	7110.00	2024-09-29 14:55:00	2024-09-29 14:55:00
385	77	27	Unidad	BATCH5261	2025-03-15	93	47.00	0.00	0.00	0.00	6975.00	2024-09-29 14:55:00	2024-09-29 14:55:00
386	78	7	Unidad	BATCH8915	2025-04-15	75	75.00	0.00	0.00	0.00	7425.00	2024-09-08 13:16:00	2024-09-08 13:16:00
387	78	9	Unidad	BATCH6457	2025-05-15	78	20.00	0.00	0.00	0.00	2418.00	2024-09-08 13:16:00	2024-09-08 13:16:00
388	78	15	Unidad	BATCH9430	2025-05-15	50	22.00	0.00	0.00	0.00	1650.00	2024-09-08 13:16:00	2024-09-08 13:16:00
389	78	16	Unidad	BATCH7512	2025-01-15	61	83.00	0.00	0.00	0.00	1281.00	2024-09-08 13:16:00	2024-09-08 13:16:00
390	78	23	Unidad	BATCH5581	2025-01-15	62	31.00	0.00	0.00	0.00	3658.00	2024-09-08 13:16:00	2024-09-08 13:16:00
391	79	1	Unidad	BATCH8748	2025-05-15	97	35.00	0.00	0.00	0.00	6208.00	2024-09-03 08:45:00	2024-09-03 08:45:00
392	79	2	Unidad	BATCH1023	2025-01-15	94	96.00	0.00	0.00	0.00	4136.00	2024-09-03 08:45:00	2024-09-03 08:45:00
393	79	3	Unidad	BATCH9571	2025-01-15	61	51.00	0.00	0.00	0.00	1464.00	2024-09-03 08:45:00	2024-09-03 08:45:00
394	79	7	Unidad	BATCH3567	2025-02-15	72	69.00	0.00	0.00	0.00	5832.00	2024-09-03 08:45:00	2024-09-03 08:45:00
395	79	12	Unidad	BATCH7623	2025-06-15	56	55.00	0.00	0.00	0.00	4032.00	2024-09-03 08:45:00	2024-09-03 08:45:00
396	80	12	Unidad	BATCH7564	2025-02-15	69	41.00	0.00	0.00	0.00	4761.00	2024-09-24 13:48:00	2024-09-24 13:48:00
397	80	16	Unidad	BATCH1706	2025-01-15	61	55.00	0.00	0.00	0.00	5429.00	2024-09-24 13:48:00	2024-09-24 13:48:00
398	80	17	Unidad	BATCH9444	2025-04-15	90	20.00	0.00	0.00	0.00	7110.00	2024-09-24 13:48:00	2024-09-24 13:48:00
399	80	20	Unidad	BATCH4411	2025-02-15	50	55.00	0.00	0.00	0.00	2550.00	2024-09-24 13:48:00	2024-09-24 13:48:00
400	80	22	Unidad	BATCH5973	2025-03-15	65	94.00	0.00	0.00	0.00	6110.00	2024-09-24 13:48:00	2024-09-24 13:48:00
401	81	11	Unidad	BATCH1168	2025-02-15	52	67.00	0.00	0.00	0.00	4732.00	2024-09-01 09:04:00	2024-09-01 09:04:00
402	81	12	Unidad	BATCH3650	2025-04-15	92	70.00	0.00	0.00	0.00	6072.00	2024-09-01 09:04:00	2024-09-01 09:04:00
403	81	15	Unidad	BATCH2059	2025-03-15	59	33.00	0.00	0.00	0.00	2419.00	2024-09-01 09:04:00	2024-09-01 09:04:00
404	81	18	Unidad	BATCH2315	2025-05-15	52	91.00	0.00	0.00	0.00	4108.00	2024-09-01 09:04:00	2024-09-01 09:04:00
405	81	24	Unidad	BATCH3951	2025-04-15	67	65.00	0.00	0.00	0.00	3283.00	2024-09-01 09:04:00	2024-09-01 09:04:00
406	82	5	Unidad	BATCH4416	2025-05-15	74	60.00	0.00	0.00	0.00	6068.00	2024-09-26 13:16:00	2024-09-26 13:16:00
407	82	18	Unidad	BATCH2319	2025-06-15	80	99.00	0.00	0.00	0.00	5600.00	2024-09-26 13:16:00	2024-09-26 13:16:00
408	82	21	Unidad	BATCH5162	2025-05-15	53	75.00	0.00	0.00	0.00	5300.00	2024-09-26 13:16:00	2024-09-26 13:16:00
409	82	22	Unidad	BATCH7473	2025-01-15	73	24.00	0.00	0.00	0.00	5402.00	2024-09-26 13:16:00	2024-09-26 13:16:00
410	82	28	Unidad	BATCH3150	2025-04-15	53	29.00	0.00	0.00	0.00	4876.00	2024-09-26 13:16:00	2024-09-26 13:16:00
411	83	3	Unidad	BATCH4281	2025-01-15	81	33.00	0.00	0.00	0.00	4374.00	2024-09-21 16:52:00	2024-09-21 16:52:00
412	83	8	Unidad	BATCH5638	2025-01-15	67	79.00	0.00	0.00	0.00	5762.00	2024-09-21 16:52:00	2024-09-21 16:52:00
413	83	19	Unidad	BATCH4429	2025-02-15	75	55.00	0.00	0.00	0.00	5475.00	2024-09-21 16:52:00	2024-09-21 16:52:00
414	83	22	Unidad	BATCH2364	2025-01-15	77	23.00	0.00	0.00	0.00	7007.00	2024-09-21 16:52:00	2024-09-21 16:52:00
415	83	23	Unidad	BATCH7016	2025-06-15	52	82.00	0.00	0.00	0.00	3692.00	2024-09-21 16:52:00	2024-09-21 16:52:00
416	84	1	Unidad	BATCH8035	2025-02-15	71	67.00	0.00	0.00	0.00	6035.00	2024-09-04 16:17:00	2024-09-04 16:17:00
417	84	3	Unidad	BATCH3424	2025-02-15	85	29.00	0.00	0.00	0.00	6460.00	2024-09-04 16:17:00	2024-09-04 16:17:00
418	84	8	Unidad	BATCH9955	2025-01-15	56	75.00	0.00	0.00	0.00	3528.00	2024-09-04 16:17:00	2024-09-04 16:17:00
419	84	14	Unidad	BATCH9643	2025-03-15	93	24.00	0.00	0.00	0.00	2511.00	2024-09-04 16:17:00	2024-09-04 16:17:00
420	84	21	Unidad	BATCH5633	2025-06-15	75	64.00	0.00	0.00	0.00	7050.00	2024-09-04 16:17:00	2024-09-04 16:17:00
421	85	1	Unidad	BATCH6149	2025-04-15	74	83.00	0.00	0.00	0.00	2146.00	2024-09-13 16:26:00	2024-09-13 16:26:00
422	85	8	Unidad	BATCH3440	2025-02-15	58	21.00	0.00	0.00	0.00	3248.00	2024-09-13 16:26:00	2024-09-13 16:26:00
423	85	24	Unidad	BATCH2545	2025-04-15	68	83.00	0.00	0.00	0.00	2380.00	2024-09-13 16:26:00	2024-09-13 16:26:00
424	85	25	Unidad	BATCH5171	2025-06-15	88	35.00	0.00	0.00	0.00	6600.00	2024-09-13 16:26:00	2024-09-13 16:26:00
425	85	28	Unidad	BATCH2491	2025-04-15	76	45.00	0.00	0.00	0.00	6004.00	2024-09-13 16:26:00	2024-09-13 16:26:00
426	86	1	Unidad	BATCH9232	2025-04-15	96	62.00	0.00	0.00	0.00	2592.00	2024-09-25 10:34:00	2024-09-25 10:34:00
427	86	14	Unidad	BATCH7797	2025-04-15	79	89.00	0.00	0.00	0.00	6952.00	2024-09-25 10:34:00	2024-09-25 10:34:00
428	86	16	Unidad	BATCH1515	2025-04-15	56	27.00	0.00	0.00	0.00	2968.00	2024-09-25 10:34:00	2024-09-25 10:34:00
429	86	22	Unidad	BATCH1643	2025-03-15	73	61.00	0.00	0.00	0.00	2774.00	2024-09-25 10:34:00	2024-09-25 10:34:00
430	86	28	Unidad	BATCH6684	2025-06-15	71	28.00	0.00	0.00	0.00	1420.00	2024-09-25 10:34:00	2024-09-25 10:34:00
431	87	12	Unidad	BATCH5748	2025-04-15	89	61.00	0.00	0.00	0.00	4895.00	2024-09-03 12:26:00	2024-09-03 12:26:00
432	87	14	Unidad	BATCH8860	2025-04-15	71	78.00	0.00	0.00	0.00	6035.00	2024-09-03 12:26:00	2024-09-03 12:26:00
433	87	16	Unidad	BATCH1352	2025-01-15	55	27.00	0.00	0.00	0.00	2640.00	2024-09-03 12:26:00	2024-09-03 12:26:00
434	87	23	Unidad	BATCH3969	2025-04-15	62	88.00	0.00	0.00	0.00	4898.00	2024-09-03 12:26:00	2024-09-03 12:26:00
435	87	26	Unidad	BATCH5424	2025-06-15	93	37.00	0.00	0.00	0.00	6882.00	2024-09-03 12:26:00	2024-09-03 12:26:00
436	88	10	Unidad	BATCH3202	2025-03-15	66	55.00	0.00	0.00	0.00	5478.00	2024-09-06 15:03:00	2024-09-06 15:03:00
437	88	12	Unidad	BATCH3468	2025-04-15	51	73.00	0.00	0.00	0.00	4029.00	2024-09-06 15:03:00	2024-09-06 15:03:00
438	88	26	Unidad	BATCH4748	2025-04-15	79	37.00	0.00	0.00	0.00	2686.00	2024-09-06 15:03:00	2024-09-06 15:03:00
439	88	29	Unidad	BATCH3330	2025-04-15	63	27.00	0.00	0.00	0.00	1512.00	2024-09-06 15:03:00	2024-09-06 15:03:00
440	88	30	Unidad	BATCH6517	2025-06-15	94	74.00	0.00	0.00	0.00	7520.00	2024-09-06 15:03:00	2024-09-06 15:03:00
441	89	6	Unidad	BATCH2362	2025-06-15	76	67.00	0.00	0.00	0.00	3800.00	2024-09-12 16:56:00	2024-09-12 16:56:00
442	89	16	Unidad	BATCH1804	2025-01-15	70	100.00	0.00	0.00	0.00	1680.00	2024-09-12 16:56:00	2024-09-12 16:56:00
443	89	17	Unidad	BATCH4129	2025-03-15	51	39.00	0.00	0.00	0.00	1224.00	2024-09-12 16:56:00	2024-09-12 16:56:00
444	89	19	Unidad	BATCH3880	2025-02-15	66	95.00	0.00	0.00	0.00	1386.00	2024-09-12 16:56:00	2024-09-12 16:56:00
445	89	25	Unidad	BATCH6394	2025-06-15	85	74.00	0.00	0.00	0.00	5015.00	2024-09-12 16:56:00	2024-09-12 16:56:00
446	90	7	Unidad	BATCH1457	2025-02-15	52	58.00	0.00	0.00	0.00	2080.00	2024-09-09 10:54:00	2024-09-09 10:54:00
447	90	11	Unidad	BATCH4121	2025-06-15	88	92.00	0.00	0.00	0.00	3256.00	2024-09-09 10:54:00	2024-09-09 10:54:00
448	90	22	Unidad	BATCH9083	2025-06-15	75	77.00	0.00	0.00	0.00	3525.00	2024-09-09 10:54:00	2024-09-09 10:54:00
449	90	23	Unidad	BATCH7594	2025-03-15	62	100.00	0.00	0.00	0.00	5642.00	2024-09-09 10:54:00	2024-09-09 10:54:00
450	90	25	Unidad	BATCH5444	2025-04-15	50	76.00	0.00	0.00	0.00	1450.00	2024-09-09 10:54:00	2024-09-09 10:54:00
451	91	2	Unidad	BATCH6186	2025-04-15	64	78.00	0.00	0.00	0.00	5568.00	2024-09-29 11:38:00	2024-09-29 11:38:00
452	91	18	Unidad	BATCH4950	2025-04-15	68	85.00	0.00	0.00	0.00	3332.00	2024-09-29 11:38:00	2024-09-29 11:38:00
453	91	19	Unidad	BATCH6805	2025-05-15	93	45.00	0.00	0.00	0.00	8649.00	2024-09-29 11:38:00	2024-09-29 11:38:00
454	91	23	Unidad	BATCH2272	2025-05-15	82	84.00	0.00	0.00	0.00	2706.00	2024-09-29 11:38:00	2024-09-29 11:38:00
455	91	28	Unidad	BATCH4532	2025-04-15	65	71.00	0.00	0.00	0.00	3705.00	2024-09-29 11:38:00	2024-09-29 11:38:00
456	92	3	Unidad	BATCH2296	2025-01-15	54	33.00	0.00	0.00	0.00	3942.00	2024-09-12 11:21:00	2024-09-12 11:21:00
457	92	6	Unidad	BATCH5002	2025-05-15	77	44.00	0.00	0.00	0.00	7161.00	2024-09-12 11:21:00	2024-09-12 11:21:00
458	92	10	Unidad	BATCH8434	2025-03-15	92	58.00	0.00	0.00	0.00	7176.00	2024-09-12 11:21:00	2024-09-12 11:21:00
459	92	12	Unidad	BATCH6231	2025-02-15	90	40.00	0.00	0.00	0.00	4950.00	2024-09-12 11:21:00	2024-09-12 11:21:00
460	92	25	Unidad	BATCH9712	2025-04-15	77	20.00	0.00	0.00	0.00	4158.00	2024-09-12 11:21:00	2024-09-12 11:21:00
461	93	5	Unidad	BATCH7791	2025-03-15	90	20.00	0.00	0.00	0.00	2430.00	2024-09-23 09:53:00	2024-09-23 09:53:00
462	93	8	Unidad	BATCH1658	2025-02-15	96	45.00	0.00	0.00	0.00	5664.00	2024-09-23 09:53:00	2024-09-23 09:53:00
463	93	13	Unidad	BATCH9961	2025-06-15	91	24.00	0.00	0.00	0.00	6825.00	2024-09-23 09:53:00	2024-09-23 09:53:00
464	93	19	Unidad	BATCH6851	2025-02-15	88	88.00	0.00	0.00	0.00	5368.00	2024-09-23 09:53:00	2024-09-23 09:53:00
465	93	20	Unidad	BATCH2814	2025-03-15	93	76.00	0.00	0.00	0.00	8928.00	2024-09-23 09:53:00	2024-09-23 09:53:00
466	94	9	Unidad	BATCH8784	2025-02-15	89	94.00	0.00	0.00	0.00	6052.00	2024-09-08 11:42:00	2024-09-08 11:42:00
467	94	11	Unidad	BATCH1048	2025-06-15	92	34.00	0.00	0.00	0.00	1932.00	2024-09-08 11:42:00	2024-09-08 11:42:00
468	94	18	Unidad	BATCH9002	2025-04-15	77	69.00	0.00	0.00	0.00	4466.00	2024-09-08 11:42:00	2024-09-08 11:42:00
469	94	25	Unidad	BATCH9814	2025-05-15	79	40.00	0.00	0.00	0.00	2212.00	2024-09-08 11:42:00	2024-09-08 11:42:00
470	94	27	Unidad	BATCH6257	2025-03-15	98	68.00	0.00	0.00	0.00	2940.00	2024-09-08 11:42:00	2024-09-08 11:42:00
471	95	3	Unidad	BATCH6069	2025-06-15	66	43.00	0.00	0.00	0.00	4356.00	2024-10-02 10:04:00	2024-10-02 10:04:00
472	95	4	Unidad	BATCH8723	2025-05-15	72	30.00	0.00	0.00	0.00	5832.00	2024-10-02 10:04:00	2024-10-02 10:04:00
473	95	9	Unidad	BATCH7069	2025-05-15	81	24.00	0.00	0.00	0.00	4374.00	2024-10-02 10:04:00	2024-10-02 10:04:00
474	95	10	Unidad	BATCH5878	2025-05-15	50	20.00	0.00	0.00	0.00	3000.00	2024-10-02 10:04:00	2024-10-02 10:04:00
475	95	22	Unidad	BATCH4565	2025-02-15	76	72.00	0.00	0.00	0.00	3724.00	2024-10-02 10:04:00	2024-10-02 10:04:00
476	96	4	Unidad	BATCH1418	2025-03-15	58	79.00	0.00	0.00	0.00	4234.00	2024-10-06 12:54:00	2024-10-06 12:54:00
477	96	12	Unidad	BATCH6990	2025-04-15	94	70.00	0.00	0.00	0.00	6298.00	2024-10-06 12:54:00	2024-10-06 12:54:00
478	96	14	Unidad	BATCH8666	2025-05-15	65	49.00	0.00	0.00	0.00	3185.00	2024-10-06 12:54:00	2024-10-06 12:54:00
479	96	15	Unidad	BATCH3301	2025-03-15	70	41.00	0.00	0.00	0.00	3290.00	2024-10-06 12:54:00	2024-10-06 12:54:00
480	96	26	Unidad	BATCH9128	2025-06-15	69	46.00	0.00	0.00	0.00	6693.00	2024-10-06 12:54:00	2024-10-06 12:54:00
481	97	5	Unidad	BATCH6626	2025-01-15	55	43.00	0.00	0.00	0.00	2970.00	2024-10-29 13:32:00	2024-10-29 13:32:00
482	97	9	Unidad	BATCH8556	2025-05-15	59	78.00	0.00	0.00	0.00	5369.00	2024-10-29 13:32:00	2024-10-29 13:32:00
483	97	16	Unidad	BATCH5534	2025-03-15	53	80.00	0.00	0.00	0.00	4134.00	2024-10-29 13:32:00	2024-10-29 13:32:00
484	97	22	Unidad	BATCH6040	2025-06-15	57	90.00	0.00	0.00	0.00	4788.00	2024-10-29 13:32:00	2024-10-29 13:32:00
485	97	26	Unidad	BATCH6644	2025-03-15	100	83.00	0.00	0.00	0.00	8300.00	2024-10-29 13:32:00	2024-10-29 13:32:00
486	98	4	Unidad	BATCH2288	2025-01-15	74	68.00	0.00	0.00	0.00	6142.00	2024-10-24 11:51:00	2024-10-24 11:51:00
487	98	5	Unidad	BATCH1828	2025-02-15	88	24.00	0.00	0.00	0.00	8624.00	2024-10-24 11:51:00	2024-10-24 11:51:00
488	98	6	Unidad	BATCH2606	2025-01-15	79	44.00	0.00	0.00	0.00	4424.00	2024-10-24 11:51:00	2024-10-24 11:51:00
489	98	14	Unidad	BATCH7858	2025-02-15	78	47.00	0.00	0.00	0.00	5928.00	2024-10-24 11:51:00	2024-10-24 11:51:00
490	98	18	Unidad	BATCH5288	2025-04-15	71	77.00	0.00	0.00	0.00	2840.00	2024-10-24 11:51:00	2024-10-24 11:51:00
491	99	1	Unidad	BATCH9970	2025-05-15	82	54.00	0.00	0.00	0.00	3772.00	2024-10-24 11:07:00	2024-10-24 11:07:00
492	99	6	Unidad	BATCH2187	2025-06-15	83	82.00	0.00	0.00	0.00	5395.00	2024-10-24 11:07:00	2024-10-24 11:07:00
493	99	17	Unidad	BATCH5868	2025-06-15	78	59.00	0.00	0.00	0.00	6240.00	2024-10-24 11:07:00	2024-10-24 11:07:00
494	99	18	Unidad	BATCH9026	2025-01-15	96	97.00	0.00	0.00	0.00	4032.00	2024-10-24 11:07:00	2024-10-24 11:07:00
495	99	27	Unidad	BATCH1718	2025-01-15	54	72.00	0.00	0.00	0.00	3564.00	2024-10-24 11:07:00	2024-10-24 11:07:00
496	100	6	Unidad	BATCH2206	2025-03-15	55	37.00	0.00	0.00	0.00	2915.00	2024-10-02 11:17:00	2024-10-02 11:17:00
497	100	10	Unidad	BATCH7537	2025-04-15	71	68.00	0.00	0.00	0.00	2414.00	2024-10-02 11:17:00	2024-10-02 11:17:00
498	100	11	Unidad	BATCH1728	2025-02-15	69	60.00	0.00	0.00	0.00	5796.00	2024-10-02 11:17:00	2024-10-02 11:17:00
499	100	16	Unidad	BATCH8224	2025-03-15	81	85.00	0.00	0.00	0.00	3240.00	2024-10-02 11:17:00	2024-10-02 11:17:00
500	100	21	Unidad	BATCH9127	2025-03-15	68	97.00	0.00	0.00	0.00	2924.00	2024-10-02 11:17:00	2024-10-02 11:17:00
501	101	8	Unidad	BATCH9905	2025-05-15	83	60.00	0.00	0.00	0.00	5146.00	2024-10-11 12:51:00	2024-10-11 12:51:00
502	101	15	Unidad	BATCH9088	2025-02-15	99	97.00	0.00	0.00	0.00	3465.00	2024-10-11 12:51:00	2024-10-11 12:51:00
503	101	16	Unidad	BATCH1214	2025-04-15	57	57.00	0.00	0.00	0.00	4275.00	2024-10-11 12:51:00	2024-10-11 12:51:00
504	101	19	Unidad	BATCH6868	2025-05-15	69	49.00	0.00	0.00	0.00	2484.00	2024-10-11 12:51:00	2024-10-11 12:51:00
505	101	27	Unidad	BATCH4083	2025-03-15	67	53.00	0.00	0.00	0.00	3618.00	2024-10-11 12:51:00	2024-10-11 12:51:00
506	102	7	Unidad	BATCH7240	2025-06-15	57	94.00	0.00	0.00	0.00	5358.00	2024-10-13 08:01:00	2024-10-13 08:01:00
507	102	8	Unidad	BATCH3934	2025-01-15	50	67.00	0.00	0.00	0.00	2400.00	2024-10-13 08:01:00	2024-10-13 08:01:00
508	102	11	Unidad	BATCH3730	2025-01-15	89	55.00	0.00	0.00	0.00	3382.00	2024-10-13 08:01:00	2024-10-13 08:01:00
509	102	18	Unidad	BATCH8822	2025-06-15	51	92.00	0.00	0.00	0.00	4131.00	2024-10-13 08:01:00	2024-10-13 08:01:00
510	102	22	Unidad	BATCH9069	2025-06-15	62	37.00	0.00	0.00	0.00	5828.00	2024-10-13 08:01:00	2024-10-13 08:01:00
511	103	10	Unidad	BATCH5253	2025-04-15	86	58.00	0.00	0.00	0.00	3698.00	2024-10-29 12:12:00	2024-10-29 12:12:00
512	103	12	Unidad	BATCH9422	2025-05-15	74	56.00	0.00	0.00	0.00	5402.00	2024-10-29 12:12:00	2024-10-29 12:12:00
513	103	20	Unidad	BATCH2674	2025-06-15	84	100.00	0.00	0.00	0.00	1680.00	2024-10-29 12:12:00	2024-10-29 12:12:00
514	103	26	Unidad	BATCH8220	2025-02-15	88	41.00	0.00	0.00	0.00	8008.00	2024-10-29 12:12:00	2024-10-29 12:12:00
515	103	29	Unidad	BATCH9939	2025-01-15	96	90.00	0.00	0.00	0.00	9024.00	2024-10-29 12:12:00	2024-10-29 12:12:00
516	104	2	Unidad	BATCH8114	2025-04-15	92	63.00	0.00	0.00	0.00	2852.00	2024-10-04 11:23:00	2024-10-04 11:23:00
517	104	10	Unidad	BATCH8871	2025-04-15	71	94.00	0.00	0.00	0.00	3550.00	2024-10-04 11:23:00	2024-10-04 11:23:00
518	104	12	Unidad	BATCH6443	2025-03-15	55	36.00	0.00	0.00	0.00	3080.00	2024-10-04 11:23:00	2024-10-04 11:23:00
519	104	23	Unidad	BATCH7635	2025-04-15	95	80.00	0.00	0.00	0.00	6840.00	2024-10-04 11:23:00	2024-10-04 11:23:00
520	104	25	Unidad	BATCH8815	2025-02-15	66	83.00	0.00	0.00	0.00	5082.00	2024-10-04 11:23:00	2024-10-04 11:23:00
521	105	4	Unidad	BATCH1764	2025-05-15	54	24.00	0.00	0.00	0.00	3024.00	2024-10-17 09:42:00	2024-10-17 09:42:00
522	105	15	Unidad	BATCH5218	2025-03-15	79	71.00	0.00	0.00	0.00	3713.00	2024-10-17 09:42:00	2024-10-17 09:42:00
523	105	23	Unidad	BATCH4812	2025-05-15	74	87.00	0.00	0.00	0.00	6364.00	2024-10-17 09:42:00	2024-10-17 09:42:00
524	105	24	Unidad	BATCH1306	2025-04-15	83	23.00	0.00	0.00	0.00	3901.00	2024-10-17 09:42:00	2024-10-17 09:42:00
525	105	25	Unidad	BATCH2569	2025-06-15	91	88.00	0.00	0.00	0.00	1911.00	2024-10-17 09:42:00	2024-10-17 09:42:00
526	106	1	Unidad	BATCH3018	2025-04-15	58	88.00	0.00	0.00	0.00	1682.00	2024-10-11 10:17:00	2024-10-11 10:17:00
527	106	7	Unidad	BATCH6885	2025-05-15	62	56.00	0.00	0.00	0.00	4216.00	2024-10-11 10:17:00	2024-10-11 10:17:00
528	106	12	Unidad	BATCH4401	2025-01-15	97	84.00	0.00	0.00	0.00	5335.00	2024-10-11 10:17:00	2024-10-11 10:17:00
529	106	25	Unidad	BATCH8939	2025-01-15	78	95.00	0.00	0.00	0.00	6084.00	2024-10-11 10:17:00	2024-10-11 10:17:00
530	106	29	Unidad	BATCH8651	2025-01-15	58	94.00	0.00	0.00	0.00	3596.00	2024-10-11 10:17:00	2024-10-11 10:17:00
531	107	3	Unidad	BATCH5874	2025-01-15	62	95.00	0.00	0.00	0.00	3348.00	2024-10-16 12:20:00	2024-10-16 12:20:00
532	107	4	Unidad	BATCH4815	2025-06-15	91	54.00	0.00	0.00	0.00	3458.00	2024-10-16 12:20:00	2024-10-16 12:20:00
533	107	11	Unidad	BATCH7682	2025-04-15	63	79.00	0.00	0.00	0.00	4158.00	2024-10-16 12:20:00	2024-10-16 12:20:00
534	107	18	Unidad	BATCH6966	2025-05-15	82	26.00	0.00	0.00	0.00	7790.00	2024-10-16 12:20:00	2024-10-16 12:20:00
535	107	27	Unidad	BATCH7441	2025-04-15	90	63.00	0.00	0.00	0.00	6210.00	2024-10-16 12:20:00	2024-10-16 12:20:00
536	108	4	Unidad	BATCH6468	2025-04-15	86	22.00	0.00	0.00	0.00	2580.00	2024-10-17 14:43:00	2024-10-17 14:43:00
537	108	19	Unidad	BATCH8398	2025-06-15	75	49.00	0.00	0.00	0.00	5475.00	2024-10-17 14:43:00	2024-10-17 14:43:00
538	108	21	Unidad	BATCH8724	2025-03-15	63	97.00	0.00	0.00	0.00	2268.00	2024-10-17 14:43:00	2024-10-17 14:43:00
539	108	28	Unidad	BATCH3231	2025-06-15	74	84.00	0.00	0.00	0.00	5772.00	2024-10-17 14:43:00	2024-10-17 14:43:00
540	108	29	Unidad	BATCH1717	2025-05-15	58	81.00	0.00	0.00	0.00	5684.00	2024-10-17 14:43:00	2024-10-17 14:43:00
541	109	14	Unidad	BATCH5357	2025-03-15	79	56.00	0.00	0.00	0.00	2449.00	2024-10-20 13:18:00	2024-10-20 13:18:00
542	109	16	Unidad	BATCH2252	2025-03-15	70	49.00	0.00	0.00	0.00	1540.00	2024-10-20 13:18:00	2024-10-20 13:18:00
543	109	18	Unidad	BATCH7534	2025-03-15	94	60.00	0.00	0.00	0.00	5170.00	2024-10-20 13:18:00	2024-10-20 13:18:00
544	109	23	Unidad	BATCH4854	2025-03-15	72	34.00	0.00	0.00	0.00	6264.00	2024-10-20 13:18:00	2024-10-20 13:18:00
545	109	27	Unidad	BATCH4183	2025-06-15	52	55.00	0.00	0.00	0.00	2548.00	2024-10-20 13:18:00	2024-10-20 13:18:00
546	110	5	Unidad	BATCH8484	2025-06-15	53	84.00	0.00	0.00	0.00	2650.00	2024-10-30 14:26:00	2024-10-30 14:26:00
547	110	16	Unidad	BATCH3917	2025-06-15	69	83.00	0.00	0.00	0.00	3450.00	2024-10-30 14:26:00	2024-10-30 14:26:00
548	110	20	Unidad	BATCH3829	2025-04-15	86	96.00	0.00	0.00	0.00	4300.00	2024-10-30 14:26:00	2024-10-30 14:26:00
549	110	26	Unidad	BATCH5449	2025-06-15	70	91.00	0.00	0.00	0.00	2310.00	2024-10-30 14:26:00	2024-10-30 14:26:00
550	110	27	Unidad	BATCH2077	2025-03-15	92	37.00	0.00	0.00	0.00	4232.00	2024-10-30 14:26:00	2024-10-30 14:26:00
551	111	2	Unidad	BATCH2787	2025-06-15	71	61.00	0.00	0.00	0.00	1491.00	2024-10-28 08:20:00	2024-10-28 08:20:00
552	111	6	Unidad	BATCH5567	2025-01-15	81	88.00	0.00	0.00	0.00	4131.00	2024-10-28 08:20:00	2024-10-28 08:20:00
553	111	19	Unidad	BATCH8907	2025-05-15	55	56.00	0.00	0.00	0.00	1595.00	2024-10-28 08:20:00	2024-10-28 08:20:00
554	111	25	Unidad	BATCH1583	2025-01-15	87	73.00	0.00	0.00	0.00	6351.00	2024-10-28 08:20:00	2024-10-28 08:20:00
555	111	27	Unidad	BATCH2279	2025-06-15	52	37.00	0.00	0.00	0.00	3744.00	2024-10-28 08:20:00	2024-10-28 08:20:00
556	112	3	Unidad	BATCH9868	2025-01-15	88	86.00	0.00	0.00	0.00	6952.00	2024-10-09 15:37:00	2024-10-09 15:37:00
557	112	8	Unidad	BATCH7583	2025-02-15	61	82.00	0.00	0.00	0.00	1525.00	2024-10-09 15:37:00	2024-10-09 15:37:00
558	112	12	Unidad	BATCH1365	2025-05-15	55	35.00	0.00	0.00	0.00	2805.00	2024-10-09 15:37:00	2024-10-09 15:37:00
559	112	26	Unidad	BATCH3871	2025-04-15	50	65.00	0.00	0.00	0.00	3700.00	2024-10-09 15:37:00	2024-10-09 15:37:00
560	112	27	Unidad	BATCH7694	2025-06-15	82	84.00	0.00	0.00	0.00	3280.00	2024-10-09 15:37:00	2024-10-09 15:37:00
561	113	7	Unidad	BATCH4086	2025-05-15	80	57.00	0.00	0.00	0.00	4080.00	2024-10-21 16:10:00	2024-10-21 16:10:00
562	113	11	Unidad	BATCH2605	2025-05-15	53	33.00	0.00	0.00	0.00	2173.00	2024-10-21 16:10:00	2024-10-21 16:10:00
563	113	13	Unidad	BATCH4127	2025-01-15	55	30.00	0.00	0.00	0.00	3960.00	2024-10-21 16:10:00	2024-10-21 16:10:00
564	113	21	Unidad	BATCH3688	2025-02-15	80	93.00	0.00	0.00	0.00	7680.00	2024-10-21 16:10:00	2024-10-21 16:10:00
565	113	23	Unidad	BATCH9490	2025-02-15	93	68.00	0.00	0.00	0.00	4836.00	2024-10-21 16:10:00	2024-10-21 16:10:00
566	114	6	Unidad	BATCH8979	2025-05-15	67	37.00	0.00	0.00	0.00	5494.00	2024-10-07 12:01:00	2024-10-07 12:01:00
567	114	18	Unidad	BATCH3521	2025-02-15	78	46.00	0.00	0.00	0.00	7644.00	2024-10-07 12:01:00	2024-10-07 12:01:00
568	114	21	Unidad	BATCH4169	2025-04-15	50	51.00	0.00	0.00	0.00	3300.00	2024-10-07 12:01:00	2024-10-07 12:01:00
569	114	25	Unidad	BATCH8498	2025-05-15	78	69.00	0.00	0.00	0.00	6708.00	2024-10-07 12:01:00	2024-10-07 12:01:00
570	114	28	Unidad	BATCH4830	2025-03-15	80	39.00	0.00	0.00	0.00	1920.00	2024-10-07 12:01:00	2024-10-07 12:01:00
571	115	11	Unidad	BATCH3786	2025-03-15	61	100.00	0.00	0.00	0.00	6100.00	2024-10-08 13:53:00	2024-10-08 13:53:00
572	115	18	Unidad	BATCH8083	2025-05-15	79	91.00	0.00	0.00	0.00	6004.00	2024-10-08 13:53:00	2024-10-08 13:53:00
573	115	20	Unidad	BATCH6874	2025-05-15	97	37.00	0.00	0.00	0.00	2716.00	2024-10-08 13:53:00	2024-10-08 13:53:00
574	115	27	Unidad	BATCH5671	2025-02-15	54	85.00	0.00	0.00	0.00	3186.00	2024-10-08 13:53:00	2024-10-08 13:53:00
575	115	29	Unidad	BATCH8909	2025-03-15	84	25.00	0.00	0.00	0.00	5376.00	2024-10-08 13:53:00	2024-10-08 13:53:00
576	116	3	Unidad	BATCH2010	2025-01-15	70	95.00	0.00	0.00	0.00	2380.00	2024-10-20 16:30:00	2024-10-20 16:30:00
577	116	5	Unidad	BATCH7129	2025-04-15	90	77.00	0.00	0.00	0.00	3600.00	2024-10-20 16:30:00	2024-10-20 16:30:00
578	116	8	Unidad	BATCH4511	2025-01-15	83	62.00	0.00	0.00	0.00	3652.00	2024-10-20 16:30:00	2024-10-20 16:30:00
579	116	19	Unidad	BATCH6864	2025-05-15	98	77.00	0.00	0.00	0.00	9800.00	2024-10-20 16:30:00	2024-10-20 16:30:00
580	116	26	Unidad	BATCH5508	2025-04-15	84	41.00	0.00	0.00	0.00	3948.00	2024-10-20 16:30:00	2024-10-20 16:30:00
581	117	9	Unidad	BATCH9654	2025-05-15	62	52.00	0.00	0.00	0.00	5146.00	2024-10-20 16:16:00	2024-10-20 16:16:00
582	117	15	Unidad	BATCH6195	2025-06-15	68	30.00	0.00	0.00	0.00	6120.00	2024-10-20 16:16:00	2024-10-20 16:16:00
583	117	16	Unidad	BATCH9832	2025-03-15	85	72.00	0.00	0.00	0.00	7310.00	2024-10-20 16:16:00	2024-10-20 16:16:00
584	117	19	Unidad	BATCH5865	2025-05-15	96	39.00	0.00	0.00	0.00	7776.00	2024-10-20 16:16:00	2024-10-20 16:16:00
585	117	27	Unidad	BATCH7443	2025-01-15	65	66.00	0.00	0.00	0.00	2015.00	2024-10-20 16:16:00	2024-10-20 16:16:00
586	118	5	Unidad	BATCH5831	2025-05-15	56	51.00	0.00	0.00	0.00	1568.00	2024-10-23 11:55:00	2024-10-23 11:55:00
587	118	6	Unidad	BATCH6294	2025-04-15	69	40.00	0.00	0.00	0.00	1587.00	2024-10-23 11:55:00	2024-10-23 11:55:00
588	118	9	Unidad	BATCH2372	2025-03-15	68	22.00	0.00	0.00	0.00	6256.00	2024-10-23 11:55:00	2024-10-23 11:55:00
589	118	15	Unidad	BATCH6444	2025-03-15	64	88.00	0.00	0.00	0.00	3200.00	2024-10-23 11:55:00	2024-10-23 11:55:00
590	118	20	Unidad	BATCH4439	2025-04-15	55	82.00	0.00	0.00	0.00	1155.00	2024-10-23 11:55:00	2024-10-23 11:55:00
591	119	9	Unidad	BATCH8260	2025-03-15	77	76.00	0.00	0.00	0.00	7392.00	2024-10-26 13:21:00	2024-10-26 13:21:00
592	119	17	Unidad	BATCH3512	2025-02-15	52	70.00	0.00	0.00	0.00	1560.00	2024-10-26 13:21:00	2024-10-26 13:21:00
593	119	19	Unidad	BATCH6318	2025-01-15	81	85.00	0.00	0.00	0.00	3240.00	2024-10-26 13:21:00	2024-10-26 13:21:00
594	119	21	Unidad	BATCH8710	2025-05-15	86	60.00	0.00	0.00	0.00	8342.00	2024-10-26 13:21:00	2024-10-26 13:21:00
595	119	22	Unidad	BATCH6792	2025-06-15	52	45.00	0.00	0.00	0.00	4056.00	2024-10-26 13:21:00	2024-10-26 13:21:00
596	120	1	Unidad	BATCH9489	2025-06-15	66	55.00	0.00	0.00	0.00	2574.00	2024-10-22 08:32:00	2024-10-22 08:32:00
597	120	2	Unidad	BATCH6054	2025-04-15	68	62.00	0.00	0.00	0.00	3264.00	2024-10-22 08:32:00	2024-10-22 08:32:00
598	120	3	Unidad	BATCH1082	2025-06-15	75	46.00	0.00	0.00	0.00	5175.00	2024-10-22 08:32:00	2024-10-22 08:32:00
599	120	16	Unidad	BATCH7456	2025-01-15	60	88.00	0.00	0.00	0.00	3900.00	2024-10-22 08:32:00	2024-10-22 08:32:00
600	120	20	Unidad	BATCH1099	2025-06-15	52	32.00	0.00	0.00	0.00	2392.00	2024-10-22 08:32:00	2024-10-22 08:32:00
601	121	13	Unidad	BATCH4670	2025-04-15	63	74.00	0.00	0.00	0.00	3780.00	2024-10-25 12:41:00	2024-10-25 12:41:00
602	121	16	Unidad	BATCH7672	2025-06-15	55	61.00	0.00	0.00	0.00	3740.00	2024-10-25 12:41:00	2024-10-25 12:41:00
603	121	27	Unidad	BATCH2488	2025-06-15	99	82.00	0.00	0.00	0.00	8118.00	2024-10-25 12:41:00	2024-10-25 12:41:00
604	121	29	Unidad	BATCH3158	2025-04-15	72	46.00	0.00	0.00	0.00	4968.00	2024-10-25 12:41:00	2024-10-25 12:41:00
605	121	30	Unidad	BATCH4759	2025-02-15	59	39.00	0.00	0.00	0.00	5723.00	2024-10-25 12:41:00	2024-10-25 12:41:00
606	122	1	Unidad	BATCH1795	2025-02-15	53	21.00	0.00	0.00	0.00	1908.00	2024-10-17 09:45:00	2024-10-17 09:45:00
607	122	9	Unidad	BATCH7908	2025-01-15	100	33.00	0.00	0.00	0.00	3100.00	2024-10-17 09:45:00	2024-10-17 09:45:00
608	122	15	Unidad	BATCH7673	2025-05-15	62	31.00	0.00	0.00	0.00	2480.00	2024-10-17 09:45:00	2024-10-17 09:45:00
609	122	17	Unidad	BATCH3718	2025-02-15	85	48.00	0.00	0.00	0.00	2805.00	2024-10-17 09:45:00	2024-10-17 09:45:00
610	122	28	Unidad	BATCH8993	2025-03-15	73	55.00	0.00	0.00	0.00	1898.00	2024-10-17 09:45:00	2024-10-17 09:45:00
611	123	5	Unidad	BATCH6627	2025-06-15	65	27.00	0.00	0.00	0.00	1950.00	2024-10-26 14:26:00	2024-10-26 14:26:00
612	123	13	Unidad	BATCH2210	2025-04-15	53	35.00	0.00	0.00	0.00	3922.00	2024-10-26 14:26:00	2024-10-26 14:26:00
613	123	18	Unidad	BATCH3939	2025-06-15	87	68.00	0.00	0.00	0.00	5481.00	2024-10-26 14:26:00	2024-10-26 14:26:00
614	123	22	Unidad	BATCH1661	2025-01-15	98	80.00	0.00	0.00	0.00	5390.00	2024-10-26 14:26:00	2024-10-26 14:26:00
615	123	23	Unidad	BATCH1389	2025-04-15	93	82.00	0.00	0.00	0.00	7812.00	2024-10-26 14:26:00	2024-10-26 14:26:00
616	124	3	Unidad	BATCH7945	2025-02-15	83	32.00	0.00	0.00	0.00	1909.00	2024-10-08 13:14:00	2024-10-08 13:14:00
617	124	6	Unidad	BATCH9892	2025-06-15	67	24.00	0.00	0.00	0.00	3484.00	2024-10-08 13:14:00	2024-10-08 13:14:00
618	124	10	Unidad	BATCH2452	2025-02-15	88	73.00	0.00	0.00	0.00	2464.00	2024-10-08 13:14:00	2024-10-08 13:14:00
619	124	20	Unidad	BATCH3705	2025-02-15	84	91.00	0.00	0.00	0.00	4452.00	2024-10-08 13:14:00	2024-10-08 13:14:00
620	124	30	Unidad	BATCH6446	2025-02-15	63	55.00	0.00	0.00	0.00	5544.00	2024-10-08 13:14:00	2024-10-08 13:14:00
621	125	2	Unidad	BATCH7166	2025-05-15	61	67.00	0.00	0.00	0.00	5124.00	2024-10-16 14:54:00	2024-10-16 14:54:00
622	125	8	Unidad	BATCH3960	2025-04-15	69	43.00	0.00	0.00	0.00	6693.00	2024-10-16 14:54:00	2024-10-16 14:54:00
623	125	14	Unidad	BATCH4154	2025-03-15	62	28.00	0.00	0.00	0.00	4092.00	2024-10-16 14:54:00	2024-10-16 14:54:00
624	125	22	Unidad	BATCH4590	2025-01-15	80	98.00	0.00	0.00	0.00	6800.00	2024-10-16 14:54:00	2024-10-16 14:54:00
625	125	27	Unidad	BATCH4112	2025-01-15	66	48.00	0.00	0.00	0.00	3498.00	2024-10-16 14:54:00	2024-10-16 14:54:00
626	126	1	Unidad	BATCH1301	2025-05-15	86	55.00	0.00	0.00	0.00	6622.00	2024-10-08 16:38:00	2024-10-08 16:38:00
627	126	15	Unidad	BATCH6482	2025-02-15	54	93.00	0.00	0.00	0.00	2862.00	2024-10-08 16:38:00	2024-10-08 16:38:00
628	126	17	Unidad	BATCH4282	2025-06-15	82	35.00	0.00	0.00	0.00	8200.00	2024-10-08 16:38:00	2024-10-08 16:38:00
629	126	18	Unidad	BATCH1507	2025-01-15	72	55.00	0.00	0.00	0.00	6552.00	2024-10-08 16:38:00	2024-10-08 16:38:00
630	126	22	Unidad	BATCH1013	2025-03-15	74	37.00	0.00	0.00	0.00	5550.00	2024-10-08 16:38:00	2024-10-08 16:38:00
631	127	3	Unidad	BATCH5482	2025-02-15	78	40.00	0.00	0.00	0.00	4602.00	2024-10-05 08:29:00	2024-10-05 08:29:00
632	127	13	Unidad	BATCH1846	2025-03-15	83	79.00	0.00	0.00	0.00	1992.00	2024-10-05 08:29:00	2024-10-05 08:29:00
633	127	16	Unidad	BATCH3495	2025-03-15	94	30.00	0.00	0.00	0.00	2820.00	2024-10-05 08:29:00	2024-10-05 08:29:00
634	127	24	Unidad	BATCH8055	2025-06-15	54	72.00	0.00	0.00	0.00	5346.00	2024-10-05 08:29:00	2024-10-05 08:29:00
635	127	28	Unidad	BATCH2885	2025-03-15	51	37.00	0.00	0.00	0.00	1275.00	2024-10-05 08:29:00	2024-10-05 08:29:00
636	128	1	Unidad	BATCH2265	2025-03-15	50	94.00	0.00	0.00	0.00	4950.00	2024-10-09 14:05:00	2024-10-09 14:05:00
637	128	16	Unidad	BATCH6793	2025-05-15	96	31.00	0.00	0.00	0.00	9408.00	2024-10-09 14:05:00	2024-10-09 14:05:00
638	128	18	Unidad	BATCH6624	2025-06-15	96	43.00	0.00	0.00	0.00	8448.00	2024-10-09 14:05:00	2024-10-09 14:05:00
639	128	23	Unidad	BATCH2205	2025-03-15	61	68.00	0.00	0.00	0.00	3355.00	2024-10-09 14:05:00	2024-10-09 14:05:00
640	128	30	Unidad	BATCH6435	2025-06-15	88	89.00	0.00	0.00	0.00	8360.00	2024-10-09 14:05:00	2024-10-09 14:05:00
641	129	1	Unidad	BATCH8948	2025-02-15	93	54.00	0.00	0.00	0.00	1860.00	2024-10-21 08:25:00	2024-10-21 08:25:00
642	129	5	Unidad	BATCH6934	2025-06-15	76	70.00	0.00	0.00	0.00	2736.00	2024-10-21 08:25:00	2024-10-21 08:25:00
643	129	16	Unidad	BATCH7579	2025-04-15	84	50.00	0.00	0.00	0.00	4956.00	2024-10-21 08:25:00	2024-10-21 08:25:00
644	129	24	Unidad	BATCH7957	2025-03-15	88	64.00	0.00	0.00	0.00	2816.00	2024-10-21 08:25:00	2024-10-21 08:25:00
645	129	29	Unidad	BATCH1989	2025-05-15	61	68.00	0.00	0.00	0.00	4819.00	2024-10-21 08:25:00	2024-10-21 08:25:00
646	130	11	Unidad	BATCH3790	2025-03-15	70	63.00	0.00	0.00	0.00	2730.00	2024-10-18 16:54:00	2024-10-18 16:54:00
647	130	15	Unidad	BATCH2091	2025-03-15	87	90.00	0.00	0.00	0.00	5568.00	2024-10-18 16:54:00	2024-10-18 16:54:00
648	130	20	Unidad	BATCH7683	2025-03-15	64	61.00	0.00	0.00	0.00	1344.00	2024-10-18 16:54:00	2024-10-18 16:54:00
649	130	28	Unidad	BATCH5998	2025-02-15	70	92.00	0.00	0.00	0.00	6790.00	2024-10-18 16:54:00	2024-10-18 16:54:00
650	130	29	Unidad	BATCH6483	2025-02-15	95	32.00	0.00	0.00	0.00	2090.00	2024-10-18 16:54:00	2024-10-18 16:54:00
651	131	8	Unidad	BATCH6836	2025-05-15	92	78.00	0.00	0.00	0.00	8464.00	2024-10-14 16:47:00	2024-10-14 16:47:00
652	131	14	Unidad	BATCH1069	2025-05-15	72	58.00	0.00	0.00	0.00	1872.00	2024-10-14 16:47:00	2024-10-14 16:47:00
653	131	24	Unidad	BATCH6466	2025-05-15	97	41.00	0.00	0.00	0.00	7178.00	2024-10-14 16:47:00	2024-10-14 16:47:00
654	131	29	Unidad	BATCH9844	2025-03-15	100	73.00	0.00	0.00	0.00	6700.00	2024-10-14 16:47:00	2024-10-14 16:47:00
655	131	30	Unidad	BATCH5411	2025-02-15	96	84.00	0.00	0.00	0.00	8928.00	2024-10-14 16:47:00	2024-10-14 16:47:00
656	132	2	Unidad	BATCH9035	2025-05-15	100	54.00	0.00	0.00	0.00	3200.00	2024-10-24 16:06:00	2024-10-24 16:06:00
657	132	8	Unidad	BATCH7352	2025-01-15	57	75.00	0.00	0.00	0.00	4959.00	2024-10-24 16:06:00	2024-10-24 16:06:00
658	132	11	Unidad	BATCH1509	2025-02-15	62	92.00	0.00	0.00	0.00	4898.00	2024-10-24 16:06:00	2024-10-24 16:06:00
659	132	18	Unidad	BATCH2486	2025-05-15	100	86.00	0.00	0.00	0.00	7100.00	2024-10-24 16:06:00	2024-10-24 16:06:00
660	132	19	Unidad	BATCH2190	2025-06-15	69	27.00	0.00	0.00	0.00	2139.00	2024-10-24 16:06:00	2024-10-24 16:06:00
661	133	6	Unidad	BATCH1636	2025-01-15	95	32.00	0.00	0.00	0.00	5225.00	2024-10-19 14:24:00	2024-10-19 14:24:00
662	133	8	Unidad	BATCH2698	2025-01-15	84	76.00	0.00	0.00	0.00	6300.00	2024-10-19 14:24:00	2024-10-19 14:24:00
663	133	9	Unidad	BATCH1120	2025-05-15	94	67.00	0.00	0.00	0.00	1974.00	2024-10-19 14:24:00	2024-10-19 14:24:00
664	133	10	Unidad	BATCH1955	2025-04-15	86	99.00	0.00	0.00	0.00	3870.00	2024-10-19 14:24:00	2024-10-19 14:24:00
665	133	29	Unidad	BATCH6036	2025-06-15	73	23.00	0.00	0.00	0.00	1460.00	2024-10-19 14:24:00	2024-10-19 14:24:00
666	134	11	Unidad	BATCH5001	2025-02-15	61	20.00	0.00	0.00	0.00	6039.00	2024-10-26 16:15:00	2024-10-26 16:15:00
667	134	16	Unidad	BATCH6272	2025-04-15	64	80.00	0.00	0.00	0.00	3264.00	2024-10-26 16:15:00	2024-10-26 16:15:00
668	134	20	Unidad	BATCH2646	2025-05-15	82	89.00	0.00	0.00	0.00	2624.00	2024-10-26 16:15:00	2024-10-26 16:15:00
669	134	27	Unidad	BATCH5658	2025-04-15	57	35.00	0.00	0.00	0.00	5529.00	2024-10-26 16:15:00	2024-10-26 16:15:00
670	134	28	Unidad	BATCH4049	2025-04-15	60	48.00	0.00	0.00	0.00	2220.00	2024-10-26 16:15:00	2024-10-26 16:15:00
671	135	1	Unidad	BATCH5496	2025-06-15	69	46.00	0.00	0.00	0.00	1518.00	2024-10-22 14:36:00	2024-10-22 14:36:00
672	135	14	Unidad	BATCH2437	2025-02-15	99	42.00	0.00	0.00	0.00	5643.00	2024-10-22 14:36:00	2024-10-22 14:36:00
673	135	23	Unidad	BATCH9229	2025-04-15	54	55.00	0.00	0.00	0.00	3024.00	2024-10-22 14:36:00	2024-10-22 14:36:00
674	135	26	Unidad	BATCH7557	2025-03-15	96	54.00	0.00	0.00	0.00	7968.00	2024-10-22 14:36:00	2024-10-22 14:36:00
675	135	27	Unidad	BATCH8003	2025-06-15	61	72.00	0.00	0.00	0.00	5917.00	2024-10-22 14:36:00	2024-10-22 14:36:00
676	136	1	Unidad	BATCH7907	2025-03-15	78	75.00	0.00	0.00	0.00	2028.00	2024-10-13 12:45:00	2024-10-13 12:45:00
677	136	6	Unidad	BATCH6241	2025-02-15	58	79.00	0.00	0.00	0.00	2958.00	2024-10-13 12:45:00	2024-10-13 12:45:00
678	136	12	Unidad	BATCH1496	2025-01-15	91	69.00	0.00	0.00	0.00	8099.00	2024-10-13 12:45:00	2024-10-13 12:45:00
679	136	14	Unidad	BATCH9165	2025-03-15	88	65.00	0.00	0.00	0.00	1760.00	2024-10-13 12:45:00	2024-10-13 12:45:00
680	136	16	Unidad	BATCH1934	2025-03-15	63	97.00	0.00	0.00	0.00	2394.00	2024-10-13 12:45:00	2024-10-13 12:45:00
681	137	1	Unidad	BATCH9177	2025-06-15	71	24.00	0.00	0.00	0.00	3479.00	2024-10-24 16:18:00	2024-10-24 16:18:00
682	137	4	Unidad	BATCH5066	2025-03-15	55	62.00	0.00	0.00	0.00	3520.00	2024-10-24 16:18:00	2024-10-24 16:18:00
683	137	5	Unidad	BATCH7674	2025-02-15	68	94.00	0.00	0.00	0.00	5236.00	2024-10-24 16:18:00	2024-10-24 16:18:00
684	137	9	Unidad	BATCH4961	2025-05-15	79	35.00	0.00	0.00	0.00	3950.00	2024-10-24 16:18:00	2024-10-24 16:18:00
685	137	23	Unidad	BATCH7505	2025-01-15	86	73.00	0.00	0.00	0.00	4816.00	2024-10-24 16:18:00	2024-10-24 16:18:00
686	138	3	Unidad	BATCH2161	2025-06-15	91	23.00	0.00	0.00	0.00	4914.00	2024-10-26 16:21:00	2024-10-26 16:21:00
687	138	5	Unidad	BATCH3014	2025-02-15	83	55.00	0.00	0.00	0.00	5229.00	2024-10-26 16:21:00	2024-10-26 16:21:00
688	138	7	Unidad	BATCH9178	2025-06-15	80	34.00	0.00	0.00	0.00	6560.00	2024-10-26 16:21:00	2024-10-26 16:21:00
689	138	11	Unidad	BATCH3154	2025-04-15	53	92.00	0.00	0.00	0.00	4187.00	2024-10-26 16:21:00	2024-10-26 16:21:00
690	138	29	Unidad	BATCH7787	2025-05-15	74	76.00	0.00	0.00	0.00	2960.00	2024-10-26 16:21:00	2024-10-26 16:21:00
691	139	1	Unidad	BATCH6188	2025-05-15	88	24.00	0.00	0.00	0.00	8800.00	2024-10-08 11:31:00	2024-10-08 11:31:00
692	139	11	Unidad	BATCH4302	2025-03-15	56	56.00	0.00	0.00	0.00	2184.00	2024-10-08 11:31:00	2024-10-08 11:31:00
693	139	14	Unidad	BATCH6760	2025-03-15	70	86.00	0.00	0.00	0.00	6510.00	2024-10-08 11:31:00	2024-10-08 11:31:00
694	139	16	Unidad	BATCH7637	2025-06-15	77	77.00	0.00	0.00	0.00	5775.00	2024-10-08 11:31:00	2024-10-08 11:31:00
695	139	18	Unidad	BATCH7779	2025-03-15	67	68.00	0.00	0.00	0.00	6164.00	2024-10-08 11:31:00	2024-10-08 11:31:00
696	140	9	Unidad	BATCH4354	2025-05-15	63	52.00	0.00	0.00	0.00	5733.00	2024-10-28 13:05:00	2024-10-28 13:05:00
697	140	10	Unidad	BATCH6213	2025-03-15	87	30.00	0.00	0.00	0.00	6699.00	2024-10-28 13:05:00	2024-10-28 13:05:00
698	140	22	Unidad	BATCH6636	2025-01-15	89	86.00	0.00	0.00	0.00	8188.00	2024-10-28 13:05:00	2024-10-28 13:05:00
699	140	24	Unidad	BATCH2295	2025-04-15	68	22.00	0.00	0.00	0.00	2312.00	2024-10-28 13:05:00	2024-10-28 13:05:00
700	140	26	Unidad	BATCH3082	2025-04-15	78	21.00	0.00	0.00	0.00	4212.00	2024-10-28 13:05:00	2024-10-28 13:05:00
701	141	1	Unidad	BATCH8727	2025-01-15	97	75.00	0.00	0.00	0.00	2813.00	2024-10-23 15:39:00	2024-10-23 15:39:00
702	141	6	Unidad	BATCH8583	2025-02-15	76	54.00	0.00	0.00	0.00	1596.00	2024-10-23 15:39:00	2024-10-23 15:39:00
703	141	15	Unidad	BATCH1469	2025-06-15	96	79.00	0.00	0.00	0.00	8736.00	2024-10-23 15:39:00	2024-10-23 15:39:00
704	141	19	Unidad	BATCH8471	2025-01-15	78	44.00	0.00	0.00	0.00	6708.00	2024-10-23 15:39:00	2024-10-23 15:39:00
705	141	27	Unidad	BATCH8805	2025-01-15	88	91.00	0.00	0.00	0.00	6600.00	2024-10-23 15:39:00	2024-10-23 15:39:00
706	142	2	Unidad	BATCH2270	2025-04-15	90	36.00	0.00	0.00	0.00	3960.00	2024-10-24 12:23:00	2024-10-24 12:23:00
707	142	6	Unidad	BATCH3327	2025-06-15	92	28.00	0.00	0.00	0.00	6808.00	2024-10-24 12:23:00	2024-10-24 12:23:00
708	142	16	Unidad	BATCH5732	2025-03-15	71	93.00	0.00	0.00	0.00	3124.00	2024-10-24 12:23:00	2024-10-24 12:23:00
709	142	19	Unidad	BATCH9098	2025-05-15	59	65.00	0.00	0.00	0.00	4425.00	2024-10-24 12:23:00	2024-10-24 12:23:00
710	142	23	Unidad	BATCH6183	2025-04-15	54	55.00	0.00	0.00	0.00	5238.00	2024-10-24 12:23:00	2024-10-24 12:23:00
711	143	6	Unidad	BATCH4143	2025-01-15	65	70.00	0.00	0.00	0.00	1950.00	2024-10-13 10:10:00	2024-10-13 10:10:00
712	143	15	Unidad	BATCH9545	2025-04-15	60	74.00	0.00	0.00	0.00	2760.00	2024-10-13 10:10:00	2024-10-13 10:10:00
713	143	17	Unidad	BATCH8901	2025-06-15	51	86.00	0.00	0.00	0.00	2397.00	2024-10-13 10:10:00	2024-10-13 10:10:00
714	143	20	Unidad	BATCH6904	2025-02-15	72	70.00	0.00	0.00	0.00	2736.00	2024-10-13 10:10:00	2024-10-13 10:10:00
715	143	29	Unidad	BATCH2964	2025-05-15	61	48.00	0.00	0.00	0.00	1769.00	2024-10-13 10:10:00	2024-10-13 10:10:00
716	144	1	Unidad	BATCH5754	2025-06-15	62	95.00	0.00	0.00	0.00	1488.00	2024-10-16 12:27:00	2024-10-16 12:27:00
717	144	5	Unidad	BATCH4631	2025-04-15	88	49.00	0.00	0.00	0.00	1848.00	2024-10-16 12:27:00	2024-10-16 12:27:00
718	144	14	Unidad	BATCH4829	2025-02-15	80	30.00	0.00	0.00	0.00	7520.00	2024-10-16 12:27:00	2024-10-16 12:27:00
719	144	15	Unidad	BATCH7232	2025-01-15	74	30.00	0.00	0.00	0.00	4218.00	2024-10-16 12:27:00	2024-10-16 12:27:00
720	144	26	Unidad	BATCH8861	2025-04-15	89	89.00	0.00	0.00	0.00	4628.00	2024-10-16 12:27:00	2024-10-16 12:27:00
721	145	5	Unidad	BATCH8085	2025-04-15	77	26.00	0.00	0.00	0.00	7084.00	2024-10-13 15:00:00	2024-10-13 15:00:00
722	145	6	Unidad	BATCH5715	2025-01-15	86	82.00	0.00	0.00	0.00	3956.00	2024-10-13 15:00:00	2024-10-13 15:00:00
723	145	9	Unidad	BATCH1832	2025-01-15	57	69.00	0.00	0.00	0.00	3306.00	2024-10-13 15:00:00	2024-10-13 15:00:00
724	145	19	Unidad	BATCH3727	2025-03-15	71	40.00	0.00	0.00	0.00	4473.00	2024-10-13 15:00:00	2024-10-13 15:00:00
725	145	28	Unidad	BATCH7905	2025-03-15	81	90.00	0.00	0.00	0.00	4050.00	2024-10-13 15:00:00	2024-10-13 15:00:00
726	146	7	Unidad	BATCH5315	2025-04-15	78	31.00	0.00	0.00	0.00	6942.00	2024-10-11 14:00:00	2024-10-11 14:00:00
727	146	10	Unidad	BATCH2632	2025-02-15	55	52.00	0.00	0.00	0.00	1925.00	2024-10-11 14:00:00	2024-10-11 14:00:00
728	146	12	Unidad	BATCH5572	2025-05-15	57	75.00	0.00	0.00	0.00	2223.00	2024-10-11 14:00:00	2024-10-11 14:00:00
729	146	16	Unidad	BATCH7032	2025-01-15	88	64.00	0.00	0.00	0.00	5016.00	2024-10-11 14:00:00	2024-10-11 14:00:00
730	146	30	Unidad	BATCH1133	2025-03-15	69	92.00	0.00	0.00	0.00	2967.00	2024-10-11 14:00:00	2024-10-11 14:00:00
731	147	2	Unidad	BATCH2217	2025-02-15	64	25.00	0.00	0.00	0.00	4160.00	2024-10-17 09:39:00	2024-10-17 09:39:00
732	147	14	Unidad	BATCH6056	2025-03-15	93	83.00	0.00	0.00	0.00	8649.00	2024-10-17 09:39:00	2024-10-17 09:39:00
733	147	16	Unidad	BATCH1399	2025-05-15	83	24.00	0.00	0.00	0.00	1826.00	2024-10-17 09:39:00	2024-10-17 09:39:00
734	147	18	Unidad	BATCH1679	2025-06-15	86	58.00	0.00	0.00	0.00	6106.00	2024-10-17 09:39:00	2024-10-17 09:39:00
735	147	30	Unidad	BATCH9182	2025-05-15	88	25.00	0.00	0.00	0.00	6424.00	2024-10-17 09:39:00	2024-10-17 09:39:00
736	148	18	Unidad	BATCH7524	2025-03-15	86	36.00	0.00	0.00	0.00	3440.00	2024-10-11 13:34:00	2024-10-11 13:34:00
737	148	21	Unidad	BATCH9419	2025-02-15	61	50.00	0.00	0.00	0.00	1525.00	2024-10-11 13:34:00	2024-10-11 13:34:00
738	148	24	Unidad	BATCH2766	2025-03-15	53	43.00	0.00	0.00	0.00	3339.00	2024-10-11 13:34:00	2024-10-11 13:34:00
739	148	25	Unidad	BATCH8968	2025-04-15	55	97.00	0.00	0.00	0.00	3520.00	2024-10-11 13:34:00	2024-10-11 13:34:00
740	148	29	Unidad	BATCH2960	2025-03-15	57	39.00	0.00	0.00	0.00	5301.00	2024-10-11 13:34:00	2024-10-11 13:34:00
741	149	1	Unidad	BATCH4204	2025-04-15	67	87.00	0.00	0.00	0.00	6365.00	2024-10-05 09:57:00	2024-10-05 09:57:00
742	149	17	Unidad	BATCH5094	2025-02-15	79	58.00	0.00	0.00	0.00	3792.00	2024-10-05 09:57:00	2024-10-05 09:57:00
743	149	21	Unidad	BATCH1263	2025-04-15	86	80.00	0.00	0.00	0.00	8428.00	2024-10-05 09:57:00	2024-10-05 09:57:00
744	149	25	Unidad	BATCH6603	2025-05-15	84	44.00	0.00	0.00	0.00	6468.00	2024-10-05 09:57:00	2024-10-05 09:57:00
745	149	30	Unidad	BATCH1481	2025-03-15	62	51.00	0.00	0.00	0.00	1860.00	2024-10-05 09:57:00	2024-10-05 09:57:00
746	150	2	Unidad	BATCH6963	2025-02-15	78	86.00	0.00	0.00	0.00	1560.00	2024-10-05 15:47:00	2024-10-05 15:47:00
747	150	7	Unidad	BATCH7643	2025-04-15	61	73.00	0.00	0.00	0.00	5673.00	2024-10-05 15:47:00	2024-10-05 15:47:00
748	150	9	Unidad	BATCH3817	2025-03-15	71	90.00	0.00	0.00	0.00	3976.00	2024-10-05 15:47:00	2024-10-05 15:47:00
749	150	12	Unidad	BATCH9043	2025-02-15	94	31.00	0.00	0.00	0.00	5170.00	2024-10-05 15:47:00	2024-10-05 15:47:00
750	150	14	Unidad	BATCH5480	2025-03-15	95	70.00	0.00	0.00	0.00	3135.00	2024-10-05 15:47:00	2024-10-05 15:47:00
751	151	1	Unidad	BATCH5037	2025-03-15	60	20.00	0.00	0.00	0.00	2280.00	2024-10-23 08:26:00	2024-10-23 08:26:00
752	151	4	Unidad	BATCH6191	2025-02-15	78	91.00	0.00	0.00	0.00	4212.00	2024-10-23 08:26:00	2024-10-23 08:26:00
753	151	14	Unidad	BATCH9496	2025-05-15	99	84.00	0.00	0.00	0.00	9108.00	2024-10-23 08:26:00	2024-10-23 08:26:00
754	151	22	Unidad	BATCH9644	2025-05-15	90	61.00	0.00	0.00	0.00	7200.00	2024-10-23 08:26:00	2024-10-23 08:26:00
755	151	23	Unidad	BATCH7521	2025-02-15	94	74.00	0.00	0.00	0.00	4700.00	2024-10-23 08:26:00	2024-10-23 08:26:00
756	152	15	Unidad	BATCH3520	2025-04-15	100	53.00	0.00	0.00	0.00	8600.00	2024-10-22 09:56:00	2024-10-22 09:56:00
757	152	18	Unidad	BATCH2400	2025-03-15	96	57.00	0.00	0.00	0.00	5952.00	2024-10-22 09:56:00	2024-10-22 09:56:00
758	152	23	Unidad	BATCH9879	2025-04-15	75	49.00	0.00	0.00	0.00	7500.00	2024-10-22 09:56:00	2024-10-22 09:56:00
759	152	25	Unidad	BATCH4367	2025-01-15	87	96.00	0.00	0.00	0.00	3480.00	2024-10-22 09:56:00	2024-10-22 09:56:00
760	152	27	Unidad	BATCH3410	2025-01-15	95	39.00	0.00	0.00	0.00	2945.00	2024-10-22 09:56:00	2024-10-22 09:56:00
761	153	6	Unidad	BATCH1079	2025-03-15	82	84.00	0.00	0.00	0.00	2296.00	2024-10-22 10:05:00	2024-10-22 10:05:00
762	153	8	Unidad	BATCH7197	2025-05-15	59	26.00	0.00	0.00	0.00	3835.00	2024-10-22 10:05:00	2024-10-22 10:05:00
763	153	25	Unidad	BATCH7125	2025-04-15	70	76.00	0.00	0.00	0.00	4620.00	2024-10-22 10:05:00	2024-10-22 10:05:00
764	153	26	Unidad	BATCH3785	2025-01-15	61	27.00	0.00	0.00	0.00	2562.00	2024-10-22 10:05:00	2024-10-22 10:05:00
765	153	27	Unidad	BATCH3010	2025-05-15	71	77.00	0.00	0.00	0.00	7100.00	2024-10-22 10:05:00	2024-10-22 10:05:00
766	154	4	Unidad	BATCH6765	2025-03-15	94	98.00	0.00	0.00	0.00	4136.00	2024-10-25 09:23:00	2024-10-25 09:23:00
767	154	5	Unidad	BATCH8923	2025-03-15	92	53.00	0.00	0.00	0.00	7636.00	2024-10-25 09:23:00	2024-10-25 09:23:00
768	154	12	Unidad	BATCH3172	2025-01-15	53	43.00	0.00	0.00	0.00	3074.00	2024-10-25 09:23:00	2024-10-25 09:23:00
769	154	29	Unidad	BATCH8914	2025-03-15	62	49.00	0.00	0.00	0.00	5146.00	2024-10-25 09:23:00	2024-10-25 09:23:00
770	154	30	Unidad	BATCH5663	2025-06-15	82	63.00	0.00	0.00	0.00	5330.00	2024-10-25 09:23:00	2024-10-25 09:23:00
771	155	3	Unidad	BATCH9237	2025-06-15	66	51.00	0.00	0.00	0.00	6006.00	2024-10-23 09:37:00	2024-10-23 09:37:00
772	155	4	Unidad	BATCH5128	2025-06-15	70	32.00	0.00	0.00	0.00	4130.00	2024-10-23 09:37:00	2024-10-23 09:37:00
773	155	17	Unidad	BATCH1785	2025-05-15	76	48.00	0.00	0.00	0.00	3724.00	2024-10-23 09:37:00	2024-10-23 09:37:00
774	155	27	Unidad	BATCH4320	2025-02-15	52	66.00	0.00	0.00	0.00	3796.00	2024-10-23 09:37:00	2024-10-23 09:37:00
775	155	28	Unidad	BATCH7693	2025-06-15	75	98.00	0.00	0.00	0.00	4800.00	2024-10-23 09:37:00	2024-10-23 09:37:00
776	156	5	Unidad	BATCH8552	2025-02-15	54	90.00	0.00	0.00	0.00	5292.00	2024-10-26 09:45:00	2024-10-26 09:45:00
777	156	8	Unidad	BATCH5296	2025-06-15	50	82.00	0.00	0.00	0.00	1400.00	2024-10-26 09:45:00	2024-10-26 09:45:00
778	156	9	Unidad	BATCH2013	2025-05-15	60	27.00	0.00	0.00	0.00	4260.00	2024-10-26 09:45:00	2024-10-26 09:45:00
779	156	15	Unidad	BATCH3278	2025-04-15	93	33.00	0.00	0.00	0.00	6231.00	2024-10-26 09:45:00	2024-10-26 09:45:00
780	156	28	Unidad	BATCH1074	2025-01-15	81	70.00	0.00	0.00	0.00	6075.00	2024-10-26 09:45:00	2024-10-26 09:45:00
781	157	4	Unidad	BATCH1763	2025-06-15	100	81.00	0.00	0.00	0.00	4800.00	2024-10-22 08:21:00	2024-10-22 08:21:00
782	157	8	Unidad	BATCH5957	2025-06-15	79	48.00	0.00	0.00	0.00	3002.00	2024-10-22 08:21:00	2024-10-22 08:21:00
783	157	12	Unidad	BATCH3600	2025-04-15	93	82.00	0.00	0.00	0.00	2325.00	2024-10-22 08:21:00	2024-10-22 08:21:00
784	157	18	Unidad	BATCH6710	2025-02-15	59	31.00	0.00	0.00	0.00	3481.00	2024-10-22 08:21:00	2024-10-22 08:21:00
785	157	19	Unidad	BATCH4036	2025-01-15	72	26.00	0.00	0.00	0.00	4464.00	2024-10-22 08:21:00	2024-10-22 08:21:00
786	158	7	Unidad	BATCH3938	2025-02-15	94	97.00	0.00	0.00	0.00	7802.00	2024-10-26 09:02:00	2024-10-26 09:02:00
787	158	20	Unidad	BATCH3244	2025-02-15	92	80.00	0.00	0.00	0.00	7544.00	2024-10-26 09:02:00	2024-10-26 09:02:00
788	158	22	Unidad	BATCH7734	2025-01-15	53	54.00	0.00	0.00	0.00	2332.00	2024-10-26 09:02:00	2024-10-26 09:02:00
789	158	25	Unidad	BATCH9500	2025-04-15	92	50.00	0.00	0.00	0.00	4968.00	2024-10-26 09:02:00	2024-10-26 09:02:00
790	158	30	Unidad	BATCH7247	2025-04-15	79	41.00	0.00	0.00	0.00	7900.00	2024-10-26 09:02:00	2024-10-26 09:02:00
791	159	1	Unidad	BATCH7876	2025-05-15	87	99.00	0.00	0.00	0.00	4089.00	2024-10-13 14:20:00	2024-10-13 14:20:00
792	159	15	Unidad	BATCH1035	2025-05-15	51	68.00	0.00	0.00	0.00	1326.00	2024-10-13 14:20:00	2024-10-13 14:20:00
793	159	26	Unidad	BATCH1697	2025-01-15	90	54.00	0.00	0.00	0.00	3960.00	2024-10-13 14:20:00	2024-10-13 14:20:00
794	159	27	Unidad	BATCH3928	2025-02-15	90	78.00	0.00	0.00	0.00	3510.00	2024-10-13 14:20:00	2024-10-13 14:20:00
795	159	30	Unidad	BATCH1962	2025-04-15	63	86.00	0.00	0.00	0.00	5292.00	2024-10-13 14:20:00	2024-10-13 14:20:00
796	160	1	Unidad	BATCH6712	2025-03-15	82	43.00	0.00	0.00	0.00	6478.00	2024-10-01 08:35:00	2024-10-01 08:35:00
797	160	2	Unidad	BATCH3251	2025-05-15	50	55.00	0.00	0.00	0.00	4400.00	2024-10-01 08:35:00	2024-10-01 08:35:00
798	160	4	Unidad	BATCH2230	2025-04-15	75	78.00	0.00	0.00	0.00	6000.00	2024-10-01 08:35:00	2024-10-01 08:35:00
799	160	16	Unidad	BATCH5091	2025-01-15	78	65.00	0.00	0.00	0.00	2886.00	2024-10-01 08:35:00	2024-10-01 08:35:00
800	160	19	Unidad	BATCH7113	2025-06-15	64	75.00	0.00	0.00	0.00	1792.00	2024-10-01 08:35:00	2024-10-01 08:35:00
801	161	6	Unidad	BATCH9491	2025-06-15	58	82.00	0.00	0.00	0.00	4524.00	2024-10-10 11:32:00	2024-10-10 11:32:00
802	161	13	Unidad	BATCH8078	2025-03-15	74	57.00	0.00	0.00	0.00	3404.00	2024-10-10 11:32:00	2024-10-10 11:32:00
803	161	17	Unidad	BATCH7901	2025-03-15	57	70.00	0.00	0.00	0.00	2109.00	2024-10-10 11:32:00	2024-10-10 11:32:00
804	161	22	Unidad	BATCH1257	2025-06-15	84	55.00	0.00	0.00	0.00	4872.00	2024-10-10 11:32:00	2024-10-10 11:32:00
805	161	28	Unidad	BATCH3591	2025-03-15	58	35.00	0.00	0.00	0.00	5684.00	2024-10-10 11:32:00	2024-10-10 11:32:00
806	162	17	Unidad	BATCH8602	2025-05-15	61	32.00	0.00	0.00	0.00	3233.00	2024-10-13 13:46:00	2024-10-13 13:46:00
807	162	18	Unidad	BATCH2370	2025-03-15	76	61.00	0.00	0.00	0.00	7068.00	2024-10-13 13:46:00	2024-10-13 13:46:00
808	162	19	Unidad	BATCH2978	2025-03-15	81	21.00	0.00	0.00	0.00	1782.00	2024-10-13 13:46:00	2024-10-13 13:46:00
809	162	24	Unidad	BATCH5554	2025-04-15	60	63.00	0.00	0.00	0.00	1740.00	2024-10-13 13:46:00	2024-10-13 13:46:00
810	162	28	Unidad	BATCH2608	2025-02-15	82	76.00	0.00	0.00	0.00	4920.00	2024-10-13 13:46:00	2024-10-13 13:46:00
811	163	2	Unidad	BATCH1239	2025-03-15	70	61.00	0.00	0.00	0.00	6860.00	2024-10-20 15:52:00	2024-10-20 15:52:00
812	163	3	Unidad	BATCH1833	2025-03-15	72	66.00	0.00	0.00	0.00	3240.00	2024-10-20 15:52:00	2024-10-20 15:52:00
813	163	18	Unidad	BATCH6143	2025-05-15	91	38.00	0.00	0.00	0.00	5733.00	2024-10-20 15:52:00	2024-10-20 15:52:00
814	163	21	Unidad	BATCH5392	2025-02-15	99	68.00	0.00	0.00	0.00	4653.00	2024-10-20 15:52:00	2024-10-20 15:52:00
815	163	28	Unidad	BATCH1075	2025-06-15	65	44.00	0.00	0.00	0.00	4745.00	2024-10-20 15:52:00	2024-10-20 15:52:00
816	164	1	Unidad	BATCH4075	2025-01-15	59	96.00	0.00	0.00	0.00	2537.00	2024-10-04 13:17:00	2024-10-04 13:17:00
817	164	5	Unidad	BATCH9739	2025-04-15	60	99.00	0.00	0.00	0.00	2640.00	2024-10-04 13:17:00	2024-10-04 13:17:00
818	164	12	Unidad	BATCH4188	2025-02-15	86	92.00	0.00	0.00	0.00	6966.00	2024-10-04 13:17:00	2024-10-04 13:17:00
819	164	17	Unidad	BATCH8125	2025-02-15	99	85.00	0.00	0.00	0.00	5445.00	2024-10-04 13:17:00	2024-10-04 13:17:00
820	164	26	Unidad	BATCH7913	2025-04-15	98	45.00	0.00	0.00	0.00	2450.00	2024-10-04 13:17:00	2024-10-04 13:17:00
821	165	1	Unidad	BATCH9274	2025-04-15	71	65.00	0.00	0.00	0.00	2201.00	2024-10-25 14:41:00	2024-10-25 14:41:00
822	165	7	Unidad	BATCH9407	2025-04-15	100	38.00	0.00	0.00	0.00	2500.00	2024-10-25 14:41:00	2024-10-25 14:41:00
823	165	9	Unidad	BATCH1076	2025-03-15	73	75.00	0.00	0.00	0.00	2482.00	2024-10-25 14:41:00	2024-10-25 14:41:00
824	165	10	Unidad	BATCH3211	2025-06-15	95	29.00	0.00	0.00	0.00	5700.00	2024-10-25 14:41:00	2024-10-25 14:41:00
825	165	11	Unidad	BATCH3858	2025-03-15	62	81.00	0.00	0.00	0.00	5084.00	2024-10-25 14:41:00	2024-10-25 14:41:00
826	166	3	Unidad	BATCH4194	2025-01-15	96	68.00	0.00	0.00	0.00	3456.00	2024-10-27 12:59:00	2024-10-27 12:59:00
827	166	6	Unidad	BATCH1946	2025-03-15	76	31.00	0.00	0.00	0.00	2812.00	2024-10-27 12:59:00	2024-10-27 12:59:00
828	166	12	Unidad	BATCH3714	2025-02-15	71	53.00	0.00	0.00	0.00	2556.00	2024-10-27 12:59:00	2024-10-27 12:59:00
829	166	17	Unidad	BATCH1054	2025-05-15	51	96.00	0.00	0.00	0.00	3111.00	2024-10-27 12:59:00	2024-10-27 12:59:00
830	166	24	Unidad	BATCH4357	2025-02-15	89	68.00	0.00	0.00	0.00	1780.00	2024-10-27 12:59:00	2024-10-27 12:59:00
831	167	8	Unidad	BATCH7366	2025-02-15	52	89.00	0.00	0.00	0.00	4784.00	2024-10-23 11:21:00	2024-10-23 11:21:00
832	167	9	Unidad	BATCH5828	2025-02-15	92	88.00	0.00	0.00	0.00	9016.00	2024-10-23 11:21:00	2024-10-23 11:21:00
833	167	14	Unidad	BATCH8937	2025-02-15	55	92.00	0.00	0.00	0.00	3685.00	2024-10-23 11:21:00	2024-10-23 11:21:00
834	167	15	Unidad	BATCH5556	2025-02-15	95	79.00	0.00	0.00	0.00	2945.00	2024-10-23 11:21:00	2024-10-23 11:21:00
835	167	29	Unidad	BATCH1938	2025-05-15	99	50.00	0.00	0.00	0.00	5841.00	2024-10-23 11:21:00	2024-10-23 11:21:00
836	168	2	Unidad	BATCH8636	2025-06-15	68	93.00	0.00	0.00	0.00	3400.00	2024-10-28 08:53:00	2024-10-28 08:53:00
837	168	10	Unidad	BATCH8800	2025-01-15	96	31.00	0.00	0.00	0.00	7872.00	2024-10-28 08:53:00	2024-10-28 08:53:00
838	168	22	Unidad	BATCH1004	2025-01-15	59	54.00	0.00	0.00	0.00	4661.00	2024-10-28 08:53:00	2024-10-28 08:53:00
839	168	27	Unidad	BATCH3074	2025-01-15	71	85.00	0.00	0.00	0.00	1917.00	2024-10-28 08:53:00	2024-10-28 08:53:00
840	168	28	Unidad	BATCH3404	2025-04-15	87	52.00	0.00	0.00	0.00	4524.00	2024-10-28 08:53:00	2024-10-28 08:53:00
841	169	6	Unidad	BATCH8674	2025-02-15	95	67.00	0.00	0.00	0.00	4560.00	2024-10-29 13:57:00	2024-10-29 13:57:00
842	169	8	Unidad	BATCH3739	2025-04-15	67	68.00	0.00	0.00	0.00	3350.00	2024-10-29 13:57:00	2024-10-29 13:57:00
843	169	18	Unidad	BATCH3994	2025-01-15	99	88.00	0.00	0.00	0.00	6831.00	2024-10-29 13:57:00	2024-10-29 13:57:00
844	169	23	Unidad	BATCH4630	2025-04-15	69	52.00	0.00	0.00	0.00	5037.00	2024-10-29 13:57:00	2024-10-29 13:57:00
845	169	29	Unidad	BATCH9383	2025-06-15	77	76.00	0.00	0.00	0.00	4543.00	2024-10-29 13:57:00	2024-10-29 13:57:00
846	170	3	Unidad	BATCH5609	2025-03-15	84	94.00	0.00	0.00	0.00	5544.00	2024-10-10 10:51:00	2024-10-10 10:51:00
847	170	4	Unidad	BATCH6090	2025-01-15	91	77.00	0.00	0.00	0.00	7553.00	2024-10-10 10:51:00	2024-10-10 10:51:00
848	170	5	Unidad	BATCH6368	2025-06-15	59	72.00	0.00	0.00	0.00	5782.00	2024-10-10 10:51:00	2024-10-10 10:51:00
849	170	6	Unidad	BATCH3507	2025-03-15	83	93.00	0.00	0.00	0.00	7138.00	2024-10-10 10:51:00	2024-10-10 10:51:00
850	170	12	Unidad	BATCH4653	2025-05-15	89	64.00	0.00	0.00	0.00	7120.00	2024-10-10 10:51:00	2024-10-10 10:51:00
851	171	3	Unidad	BATCH1819	2025-04-15	95	65.00	0.00	0.00	0.00	5415.00	2024-10-05 15:02:00	2024-10-05 15:02:00
852	171	17	Unidad	BATCH9943	2025-03-15	89	23.00	0.00	0.00	0.00	4628.00	2024-10-05 15:02:00	2024-10-05 15:02:00
853	171	19	Unidad	BATCH1434	2025-06-15	98	56.00	0.00	0.00	0.00	3234.00	2024-10-05 15:02:00	2024-10-05 15:02:00
854	171	25	Unidad	BATCH5810	2025-05-15	54	47.00	0.00	0.00	0.00	2754.00	2024-10-05 15:02:00	2024-10-05 15:02:00
855	171	30	Unidad	BATCH1387	2025-05-15	79	34.00	0.00	0.00	0.00	4898.00	2024-10-05 15:02:00	2024-10-05 15:02:00
856	172	5	Unidad	BATCH9102	2025-04-15	83	41.00	0.00	0.00	0.00	5312.00	2024-10-11 15:39:00	2024-10-11 15:39:00
857	172	6	Unidad	BATCH9010	2025-05-15	64	67.00	0.00	0.00	0.00	3712.00	2024-10-11 15:39:00	2024-10-11 15:39:00
858	172	11	Unidad	BATCH5026	2025-02-15	99	24.00	0.00	0.00	0.00	7722.00	2024-10-11 15:39:00	2024-10-11 15:39:00
859	172	16	Unidad	BATCH8313	2025-05-15	98	44.00	0.00	0.00	0.00	9408.00	2024-10-11 15:39:00	2024-10-11 15:39:00
860	172	23	Unidad	BATCH1586	2025-03-15	59	31.00	0.00	0.00	0.00	1298.00	2024-10-11 15:39:00	2024-10-11 15:39:00
861	173	1	Unidad	BATCH1818	2025-03-15	54	79.00	0.00	0.00	0.00	1134.00	2024-10-05 11:53:00	2024-10-05 11:53:00
862	173	9	Unidad	BATCH2021	2025-01-15	71	78.00	0.00	0.00	0.00	6532.00	2024-10-05 11:53:00	2024-10-05 11:53:00
863	173	22	Unidad	BATCH9321	2025-06-15	97	57.00	0.00	0.00	0.00	6111.00	2024-10-05 11:53:00	2024-10-05 11:53:00
864	173	23	Unidad	BATCH8954	2025-06-15	52	71.00	0.00	0.00	0.00	4888.00	2024-10-05 11:53:00	2024-10-05 11:53:00
865	173	26	Unidad	BATCH2485	2025-04-15	99	28.00	0.00	0.00	0.00	4257.00	2024-10-05 11:53:00	2024-10-05 11:53:00
866	174	1	Unidad	BATCH3496	2025-06-15	73	93.00	0.00	0.00	0.00	3358.00	2024-10-11 16:15:00	2024-10-11 16:15:00
867	174	9	Unidad	BATCH7952	2025-04-15	83	27.00	0.00	0.00	0.00	6059.00	2024-10-11 16:15:00	2024-10-11 16:15:00
868	174	12	Unidad	BATCH3370	2025-03-15	53	51.00	0.00	0.00	0.00	4134.00	2024-10-11 16:15:00	2024-10-11 16:15:00
869	174	16	Unidad	BATCH4400	2025-02-15	83	69.00	0.00	0.00	0.00	8051.00	2024-10-11 16:15:00	2024-10-11 16:15:00
870	174	23	Unidad	BATCH7399	2025-06-15	96	29.00	0.00	0.00	0.00	4608.00	2024-10-11 16:15:00	2024-10-11 16:15:00
871	175	6	Unidad	BATCH1540	2025-02-15	80	88.00	0.00	0.00	0.00	5200.00	2024-10-01 08:27:00	2024-10-01 08:27:00
872	175	7	Unidad	BATCH4019	2025-01-15	73	48.00	0.00	0.00	0.00	5329.00	2024-10-01 08:27:00	2024-10-01 08:27:00
873	175	16	Unidad	BATCH1705	2025-05-15	64	74.00	0.00	0.00	0.00	3008.00	2024-10-01 08:27:00	2024-10-01 08:27:00
874	175	25	Unidad	BATCH9462	2025-02-15	92	33.00	0.00	0.00	0.00	8372.00	2024-10-01 08:27:00	2024-10-01 08:27:00
875	175	29	Unidad	BATCH4754	2025-02-15	60	62.00	0.00	0.00	0.00	3720.00	2024-10-01 08:27:00	2024-10-01 08:27:00
876	176	4	Unidad	BATCH1813	2025-03-15	82	41.00	0.00	0.00	0.00	7954.00	2024-10-30 12:18:00	2024-10-30 12:18:00
877	176	6	Unidad	BATCH7887	2025-03-15	51	45.00	0.00	0.00	0.00	4590.00	2024-10-30 12:18:00	2024-10-30 12:18:00
878	176	10	Unidad	BATCH6692	2025-03-15	74	54.00	0.00	0.00	0.00	2516.00	2024-10-30 12:18:00	2024-10-30 12:18:00
879	176	14	Unidad	BATCH5623	2025-06-15	64	27.00	0.00	0.00	0.00	4544.00	2024-10-30 12:18:00	2024-10-30 12:18:00
880	176	30	Unidad	BATCH9949	2025-01-15	65	66.00	0.00	0.00	0.00	4875.00	2024-10-30 12:18:00	2024-10-30 12:18:00
881	177	10	Unidad	BATCH7002	2025-01-15	87	24.00	0.00	0.00	0.00	2610.00	2024-10-05 09:18:00	2024-10-05 09:18:00
882	177	13	Unidad	BATCH6418	2025-06-15	68	43.00	0.00	0.00	0.00	5440.00	2024-10-05 09:18:00	2024-10-05 09:18:00
883	177	15	Unidad	BATCH8980	2025-04-15	100	24.00	0.00	0.00	0.00	3300.00	2024-10-05 09:18:00	2024-10-05 09:18:00
884	177	25	Unidad	BATCH7179	2025-05-15	99	29.00	0.00	0.00	0.00	8514.00	2024-10-05 09:18:00	2024-10-05 09:18:00
885	177	26	Unidad	BATCH3089	2025-01-15	100	24.00	0.00	0.00	0.00	3600.00	2024-10-05 09:18:00	2024-10-05 09:18:00
886	178	2	Unidad	BATCH6638	2025-02-15	81	35.00	0.00	0.00	0.00	5103.00	2024-10-13 10:26:00	2024-10-13 10:26:00
887	178	6	Unidad	BATCH9537	2025-01-15	86	30.00	0.00	0.00	0.00	2408.00	2024-10-13 10:26:00	2024-10-13 10:26:00
888	178	7	Unidad	BATCH2880	2025-03-15	82	70.00	0.00	0.00	0.00	4182.00	2024-10-13 10:26:00	2024-10-13 10:26:00
889	178	13	Unidad	BATCH6733	2025-03-15	76	79.00	0.00	0.00	0.00	2356.00	2024-10-13 10:26:00	2024-10-13 10:26:00
890	178	22	Unidad	BATCH8186	2025-02-15	72	71.00	0.00	0.00	0.00	2160.00	2024-10-13 10:26:00	2024-10-13 10:26:00
891	179	4	Unidad	BATCH7575	2025-05-15	81	81.00	0.00	0.00	0.00	4131.00	2024-10-03 10:32:00	2024-10-03 10:32:00
892	179	16	Unidad	BATCH9004	2025-05-15	59	97.00	0.00	0.00	0.00	3422.00	2024-10-03 10:32:00	2024-10-03 10:32:00
893	179	17	Unidad	BATCH1834	2025-05-15	75	97.00	0.00	0.00	0.00	3300.00	2024-10-03 10:32:00	2024-10-03 10:32:00
894	179	26	Unidad	BATCH2404	2025-06-15	71	27.00	0.00	0.00	0.00	3124.00	2024-10-03 10:32:00	2024-10-03 10:32:00
895	179	30	Unidad	BATCH7612	2025-02-15	84	82.00	0.00	0.00	0.00	2688.00	2024-10-03 10:32:00	2024-10-03 10:32:00
896	180	5	Unidad	BATCH8681	2025-02-15	85	79.00	0.00	0.00	0.00	3655.00	2024-10-18 11:33:00	2024-10-18 11:33:00
897	180	7	Unidad	BATCH3141	2025-01-15	60	37.00	0.00	0.00	0.00	5460.00	2024-10-18 11:33:00	2024-10-18 11:33:00
898	180	9	Unidad	BATCH8382	2025-02-15	59	22.00	0.00	0.00	0.00	4071.00	2024-10-18 11:33:00	2024-10-18 11:33:00
899	180	28	Unidad	BATCH5414	2025-04-15	56	31.00	0.00	0.00	0.00	2408.00	2024-10-18 11:33:00	2024-10-18 11:33:00
900	180	30	Unidad	BATCH4334	2025-02-15	98	41.00	0.00	0.00	0.00	4312.00	2024-10-18 11:33:00	2024-10-18 11:33:00
901	181	1	Unidad	BATCH3986	2025-06-15	97	82.00	0.00	0.00	0.00	4268.00	2024-10-26 08:11:00	2024-10-26 08:11:00
902	181	5	Unidad	BATCH1998	2025-03-15	97	44.00	0.00	0.00	0.00	9700.00	2024-10-26 08:11:00	2024-10-26 08:11:00
903	181	19	Unidad	BATCH6328	2025-01-15	77	38.00	0.00	0.00	0.00	4235.00	2024-10-26 08:11:00	2024-10-26 08:11:00
904	181	24	Unidad	BATCH4246	2025-04-15	54	91.00	0.00	0.00	0.00	5130.00	2024-10-26 08:11:00	2024-10-26 08:11:00
905	181	25	Unidad	BATCH9146	2025-03-15	69	70.00	0.00	0.00	0.00	3657.00	2024-10-26 08:11:00	2024-10-26 08:11:00
906	182	8	Unidad	BATCH3802	2025-04-15	51	33.00	0.00	0.00	0.00	1479.00	2024-10-08 10:07:00	2024-10-08 10:07:00
907	182	9	Unidad	BATCH3060	2025-06-15	90	50.00	0.00	0.00	0.00	6030.00	2024-10-08 10:07:00	2024-10-08 10:07:00
908	182	18	Unidad	BATCH5450	2025-05-15	96	76.00	0.00	0.00	0.00	9600.00	2024-10-08 10:07:00	2024-10-08 10:07:00
909	182	22	Unidad	BATCH5583	2025-01-15	73	25.00	0.00	0.00	0.00	5256.00	2024-10-08 10:07:00	2024-10-08 10:07:00
910	182	25	Unidad	BATCH6623	2025-02-15	81	30.00	0.00	0.00	0.00	2997.00	2024-10-08 10:07:00	2024-10-08 10:07:00
911	183	1	Unidad	BATCH6477	2025-06-15	83	100.00	0.00	0.00	0.00	2739.00	2024-10-01 13:36:00	2024-10-01 13:36:00
912	183	3	Unidad	BATCH4362	2025-06-15	67	67.00	0.00	0.00	0.00	1340.00	2024-10-01 13:36:00	2024-10-01 13:36:00
913	183	11	Unidad	BATCH3571	2025-04-15	61	66.00	0.00	0.00	0.00	2684.00	2024-10-01 13:36:00	2024-10-01 13:36:00
914	183	23	Unidad	BATCH1752	2025-04-15	53	66.00	0.00	0.00	0.00	1908.00	2024-10-01 13:36:00	2024-10-01 13:36:00
915	183	27	Unidad	BATCH4309	2025-02-15	99	27.00	0.00	0.00	0.00	5346.00	2024-10-01 13:36:00	2024-10-01 13:36:00
916	184	8	Unidad	BATCH7308	2025-03-15	78	41.00	0.00	0.00	0.00	2028.00	2024-10-10 11:31:00	2024-10-10 11:31:00
917	184	10	Unidad	BATCH8913	2025-06-15	69	51.00	0.00	0.00	0.00	2277.00	2024-10-10 11:31:00	2024-10-10 11:31:00
918	184	19	Unidad	BATCH6178	2025-05-15	88	99.00	0.00	0.00	0.00	4576.00	2024-10-10 11:31:00	2024-10-10 11:31:00
919	184	23	Unidad	BATCH2856	2025-01-15	77	29.00	0.00	0.00	0.00	2541.00	2024-10-10 11:31:00	2024-10-10 11:31:00
920	184	24	Unidad	BATCH5439	2025-05-15	84	29.00	0.00	0.00	0.00	5628.00	2024-10-10 11:31:00	2024-10-10 11:31:00
921	185	4	Unidad	BATCH6032	2025-01-15	62	87.00	0.00	0.00	0.00	4588.00	2024-10-17 16:11:00	2024-10-17 16:11:00
922	185	7	Unidad	BATCH1974	2025-04-15	67	87.00	0.00	0.00	0.00	3752.00	2024-10-17 16:11:00	2024-10-17 16:11:00
923	185	10	Unidad	BATCH2913	2025-03-15	56	73.00	0.00	0.00	0.00	4592.00	2024-10-17 16:11:00	2024-10-17 16:11:00
924	185	19	Unidad	BATCH1567	2025-04-15	84	59.00	0.00	0.00	0.00	3696.00	2024-10-17 16:11:00	2024-10-17 16:11:00
925	185	22	Unidad	BATCH9247	2025-04-15	86	95.00	0.00	0.00	0.00	7052.00	2024-10-17 16:11:00	2024-10-17 16:11:00
926	186	2	Unidad	BATCH3046	2025-04-15	67	57.00	0.00	0.00	0.00	2278.00	2024-10-26 09:42:00	2024-10-26 09:42:00
927	186	8	Unidad	BATCH1478	2025-06-15	71	79.00	0.00	0.00	0.00	1988.00	2024-10-26 09:42:00	2024-10-26 09:42:00
928	186	20	Unidad	BATCH3281	2025-06-15	66	69.00	0.00	0.00	0.00	1584.00	2024-10-26 09:42:00	2024-10-26 09:42:00
929	186	21	Unidad	BATCH7444	2025-04-15	75	78.00	0.00	0.00	0.00	2550.00	2024-10-26 09:42:00	2024-10-26 09:42:00
930	186	30	Unidad	BATCH6070	2025-01-15	56	37.00	0.00	0.00	0.00	3584.00	2024-10-26 09:42:00	2024-10-26 09:42:00
931	187	6	Unidad	BATCH3686	2025-01-15	68	48.00	0.00	0.00	0.00	5372.00	2024-10-05 15:45:00	2024-10-05 15:45:00
932	187	14	Unidad	BATCH4265	2025-04-15	63	28.00	0.00	0.00	0.00	4599.00	2024-10-05 15:45:00	2024-10-05 15:45:00
933	187	19	Unidad	BATCH8255	2025-04-15	57	42.00	0.00	0.00	0.00	5130.00	2024-10-05 15:45:00	2024-10-05 15:45:00
934	187	24	Unidad	BATCH2293	2025-04-15	91	43.00	0.00	0.00	0.00	8736.00	2024-10-05 15:45:00	2024-10-05 15:45:00
935	187	30	Unidad	BATCH4353	2025-03-15	85	92.00	0.00	0.00	0.00	1870.00	2024-10-05 15:45:00	2024-10-05 15:45:00
936	188	6	Unidad	BATCH5680	2025-03-15	59	68.00	0.00	0.00	0.00	5723.00	2024-10-30 08:45:00	2024-10-30 08:45:00
937	188	8	Unidad	BATCH2588	2025-06-15	97	75.00	0.00	0.00	0.00	4074.00	2024-10-30 08:45:00	2024-10-30 08:45:00
938	188	9	Unidad	BATCH3556	2025-03-15	82	67.00	0.00	0.00	0.00	7954.00	2024-10-30 08:45:00	2024-10-30 08:45:00
939	188	14	Unidad	BATCH8672	2025-03-15	90	86.00	0.00	0.00	0.00	5670.00	2024-10-30 08:45:00	2024-10-30 08:45:00
940	188	25	Unidad	BATCH4841	2025-06-15	50	91.00	0.00	0.00	0.00	3600.00	2024-10-30 08:45:00	2024-10-30 08:45:00
941	189	8	Unidad	BATCH8541	2025-06-15	81	85.00	0.00	0.00	0.00	1620.00	2024-11-24 08:59:00	2024-11-24 08:59:00
942	189	12	Unidad	BATCH7214	2025-05-15	81	91.00	0.00	0.00	0.00	2997.00	2024-11-24 08:59:00	2024-11-24 08:59:00
943	189	15	Unidad	BATCH6560	2025-03-15	74	53.00	0.00	0.00	0.00	2664.00	2024-11-24 08:59:00	2024-11-24 08:59:00
944	189	20	Unidad	BATCH1197	2025-06-15	85	37.00	0.00	0.00	0.00	6545.00	2024-11-24 08:59:00	2024-11-24 08:59:00
945	189	27	Unidad	BATCH8903	2025-02-15	57	45.00	0.00	0.00	0.00	4332.00	2024-11-24 08:59:00	2024-11-24 08:59:00
946	190	6	Unidad	BATCH7692	2025-04-15	50	27.00	0.00	0.00	0.00	1000.00	2024-11-01 16:48:00	2024-11-01 16:48:00
947	190	14	Unidad	BATCH6508	2025-05-15	83	72.00	0.00	0.00	0.00	2822.00	2024-11-01 16:48:00	2024-11-01 16:48:00
948	190	19	Unidad	BATCH3701	2025-06-15	82	89.00	0.00	0.00	0.00	4182.00	2024-11-01 16:48:00	2024-11-01 16:48:00
949	190	22	Unidad	BATCH3919	2025-04-15	53	22.00	0.00	0.00	0.00	1378.00	2024-11-01 16:48:00	2024-11-01 16:48:00
950	190	26	Unidad	BATCH7109	2025-04-15	99	70.00	0.00	0.00	0.00	3267.00	2024-11-01 16:48:00	2024-11-01 16:48:00
951	191	1	Unidad	BATCH5217	2025-02-15	67	42.00	0.00	0.00	0.00	6566.00	2024-11-02 11:00:00	2024-11-02 11:00:00
952	191	5	Unidad	BATCH4789	2025-06-15	91	64.00	0.00	0.00	0.00	5369.00	2024-11-02 11:00:00	2024-11-02 11:00:00
953	191	16	Unidad	BATCH7794	2025-01-15	96	60.00	0.00	0.00	0.00	2112.00	2024-11-02 11:00:00	2024-11-02 11:00:00
954	191	20	Unidad	BATCH6709	2025-02-15	77	81.00	0.00	0.00	0.00	4081.00	2024-11-02 11:00:00	2024-11-02 11:00:00
955	191	22	Unidad	BATCH9222	2025-06-15	77	28.00	0.00	0.00	0.00	2156.00	2024-11-02 11:00:00	2024-11-02 11:00:00
956	192	4	Unidad	BATCH5994	2025-03-15	84	35.00	0.00	0.00	0.00	2184.00	2024-11-27 15:45:00	2024-11-27 15:45:00
957	192	9	Unidad	BATCH1592	2025-06-15	87	85.00	0.00	0.00	0.00	5916.00	2024-11-27 15:45:00	2024-11-27 15:45:00
958	192	17	Unidad	BATCH2926	2025-03-15	94	65.00	0.00	0.00	0.00	4512.00	2024-11-27 15:45:00	2024-11-27 15:45:00
959	192	18	Unidad	BATCH3936	2025-03-15	100	67.00	0.00	0.00	0.00	5600.00	2024-11-27 15:45:00	2024-11-27 15:45:00
960	192	21	Unidad	BATCH7911	2025-03-15	70	21.00	0.00	0.00	0.00	3710.00	2024-11-27 15:45:00	2024-11-27 15:45:00
961	193	10	Unidad	BATCH6217	2025-01-15	83	26.00	0.00	0.00	0.00	2490.00	2024-11-18 11:03:00	2024-11-18 11:03:00
962	193	13	Unidad	BATCH3008	2025-01-15	89	26.00	0.00	0.00	0.00	4628.00	2024-11-18 11:03:00	2024-11-18 11:03:00
963	193	16	Unidad	BATCH7750	2025-05-15	79	50.00	0.00	0.00	0.00	5530.00	2024-11-18 11:03:00	2024-11-18 11:03:00
964	193	18	Unidad	BATCH5734	2025-05-15	99	83.00	0.00	0.00	0.00	8316.00	2024-11-18 11:03:00	2024-11-18 11:03:00
965	193	27	Unidad	BATCH6502	2025-05-15	94	41.00	0.00	0.00	0.00	6016.00	2024-11-18 11:03:00	2024-11-18 11:03:00
966	194	5	Unidad	BATCH4242	2025-05-15	66	82.00	0.00	0.00	0.00	5940.00	2024-11-20 16:10:00	2024-11-20 16:10:00
967	194	6	Unidad	BATCH1594	2025-03-15	97	88.00	0.00	0.00	0.00	7081.00	2024-11-20 16:10:00	2024-11-20 16:10:00
968	194	8	Unidad	BATCH1454	2025-05-15	78	81.00	0.00	0.00	0.00	3900.00	2024-11-20 16:10:00	2024-11-20 16:10:00
969	194	9	Unidad	BATCH7430	2025-02-15	91	74.00	0.00	0.00	0.00	5369.00	2024-11-20 16:10:00	2024-11-20 16:10:00
970	194	16	Unidad	BATCH4544	2025-05-15	77	74.00	0.00	0.00	0.00	4235.00	2024-11-20 16:10:00	2024-11-20 16:10:00
971	195	6	Unidad	BATCH6190	2025-03-15	77	83.00	0.00	0.00	0.00	5313.00	2024-11-29 14:23:00	2024-11-29 14:23:00
972	195	13	Unidad	BATCH8758	2025-06-15	60	67.00	0.00	0.00	0.00	5880.00	2024-11-29 14:23:00	2024-11-29 14:23:00
973	195	17	Unidad	BATCH5819	2025-05-15	82	89.00	0.00	0.00	0.00	2050.00	2024-11-29 14:23:00	2024-11-29 14:23:00
974	195	21	Unidad	BATCH1870	2025-03-15	70	61.00	0.00	0.00	0.00	5880.00	2024-11-29 14:23:00	2024-11-29 14:23:00
975	195	25	Unidad	BATCH8650	2025-02-15	99	25.00	0.00	0.00	0.00	7722.00	2024-11-29 14:23:00	2024-11-29 14:23:00
976	196	8	Unidad	BATCH1662	2025-05-15	72	26.00	0.00	0.00	0.00	1800.00	2024-11-27 12:57:00	2024-11-27 12:57:00
977	196	16	Unidad	BATCH4348	2025-02-15	80	21.00	0.00	0.00	0.00	3680.00	2024-11-27 12:57:00	2024-11-27 12:57:00
978	196	17	Unidad	BATCH9565	2025-04-15	87	27.00	0.00	0.00	0.00	6699.00	2024-11-27 12:57:00	2024-11-27 12:57:00
979	196	19	Unidad	BATCH4900	2025-06-15	72	90.00	0.00	0.00	0.00	5184.00	2024-11-27 12:57:00	2024-11-27 12:57:00
980	196	22	Unidad	BATCH2857	2025-05-15	56	99.00	0.00	0.00	0.00	4928.00	2024-11-27 12:57:00	2024-11-27 12:57:00
981	197	10	Unidad	BATCH3325	2025-06-15	52	35.00	0.00	0.00	0.00	4784.00	2024-11-30 15:47:00	2024-11-30 15:47:00
982	197	21	Unidad	BATCH9431	2025-04-15	64	65.00	0.00	0.00	0.00	2432.00	2024-11-30 15:47:00	2024-11-30 15:47:00
983	197	25	Unidad	BATCH8950	2025-06-15	71	86.00	0.00	0.00	0.00	3266.00	2024-11-30 15:47:00	2024-11-30 15:47:00
984	197	27	Unidad	BATCH5351	2025-04-15	76	91.00	0.00	0.00	0.00	5776.00	2024-11-30 15:47:00	2024-11-30 15:47:00
985	197	28	Unidad	BATCH7897	2025-03-15	88	24.00	0.00	0.00	0.00	5280.00	2024-11-30 15:47:00	2024-11-30 15:47:00
986	198	1	Unidad	BATCH6651	2025-06-15	93	22.00	0.00	0.00	0.00	9300.00	2024-11-12 10:34:00	2024-11-12 10:34:00
987	198	2	Unidad	BATCH6170	2025-02-15	98	61.00	0.00	0.00	0.00	3724.00	2024-11-12 10:34:00	2024-11-12 10:34:00
988	198	9	Unidad	BATCH1340	2025-05-15	58	23.00	0.00	0.00	0.00	4234.00	2024-11-12 10:34:00	2024-11-12 10:34:00
989	198	22	Unidad	BATCH4824	2025-05-15	84	71.00	0.00	0.00	0.00	7728.00	2024-11-12 10:34:00	2024-11-12 10:34:00
990	198	30	Unidad	BATCH7413	2025-04-15	54	49.00	0.00	0.00	0.00	4482.00	2024-11-12 10:34:00	2024-11-12 10:34:00
991	199	7	Unidad	BATCH1581	2025-05-15	88	95.00	0.00	0.00	0.00	5456.00	2024-11-15 09:13:00	2024-11-15 09:13:00
992	199	16	Unidad	BATCH1852	2025-02-15	87	59.00	0.00	0.00	0.00	5307.00	2024-11-15 09:13:00	2024-11-15 09:13:00
993	199	20	Unidad	BATCH7195	2025-02-15	79	32.00	0.00	0.00	0.00	3792.00	2024-11-15 09:13:00	2024-11-15 09:13:00
994	199	23	Unidad	BATCH2723	2025-06-15	76	55.00	0.00	0.00	0.00	6536.00	2024-11-15 09:13:00	2024-11-15 09:13:00
995	199	30	Unidad	BATCH3759	2025-02-15	96	33.00	0.00	0.00	0.00	6720.00	2024-11-15 09:13:00	2024-11-15 09:13:00
996	200	1	Unidad	BATCH4136	2025-02-15	87	73.00	0.00	0.00	0.00	5655.00	2024-11-22 14:45:00	2024-11-22 14:45:00
997	200	18	Unidad	BATCH2203	2025-04-15	77	69.00	0.00	0.00	0.00	2849.00	2024-11-22 14:45:00	2024-11-22 14:45:00
998	200	22	Unidad	BATCH2314	2025-06-15	59	49.00	0.00	0.00	0.00	4897.00	2024-11-22 14:45:00	2024-11-22 14:45:00
999	200	26	Unidad	BATCH1022	2025-03-15	90	68.00	0.00	0.00	0.00	6480.00	2024-11-22 14:45:00	2024-11-22 14:45:00
1000	200	28	Unidad	BATCH5592	2025-02-15	95	89.00	0.00	0.00	0.00	6650.00	2024-11-22 14:45:00	2024-11-22 14:45:00
1001	201	6	Unidad	BATCH4542	2025-06-15	72	46.00	0.00	0.00	0.00	1728.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1002	201	9	Unidad	BATCH1287	2025-01-15	52	88.00	0.00	0.00	0.00	1300.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1003	201	15	Unidad	BATCH3267	2025-05-15	84	86.00	0.00	0.00	0.00	2688.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1004	201	16	Unidad	BATCH2767	2025-03-15	83	45.00	0.00	0.00	0.00	1909.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1005	201	22	Unidad	BATCH8480	2025-06-15	89	51.00	0.00	0.00	0.00	6319.00	2024-11-05 13:57:00	2024-11-05 13:57:00
1006	202	2	Unidad	BATCH1692	2025-02-15	52	22.00	0.00	0.00	0.00	2340.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1007	202	8	Unidad	BATCH3806	2025-02-15	83	34.00	0.00	0.00	0.00	7802.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1008	202	10	Unidad	BATCH7167	2025-01-15	75	84.00	0.00	0.00	0.00	2475.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1009	202	14	Unidad	BATCH4557	2025-01-15	51	38.00	0.00	0.00	0.00	2346.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1010	202	22	Unidad	BATCH7489	2025-01-15	54	48.00	0.00	0.00	0.00	2376.00	2024-11-24 11:04:00	2024-11-24 11:04:00
1011	203	6	Unidad	BATCH7491	2025-05-15	56	85.00	0.00	0.00	0.00	2744.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1012	203	7	Unidad	BATCH6451	2025-05-15	93	89.00	0.00	0.00	0.00	9021.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1013	203	22	Unidad	BATCH3122	2025-06-15	66	79.00	0.00	0.00	0.00	2508.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1014	203	24	Unidad	BATCH6630	2025-01-15	54	85.00	0.00	0.00	0.00	4752.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1015	203	25	Unidad	BATCH1001	2025-02-15	56	46.00	0.00	0.00	0.00	4592.00	2024-11-26 15:59:00	2024-11-26 15:59:00
1016	204	12	Unidad	BATCH4314	2025-05-15	89	62.00	0.00	0.00	0.00	6319.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1017	204	13	Unidad	BATCH7275	2025-06-15	79	31.00	0.00	0.00	0.00	5135.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1018	204	20	Unidad	BATCH1807	2025-04-15	53	33.00	0.00	0.00	0.00	3657.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1019	204	21	Unidad	BATCH5431	2025-02-15	91	81.00	0.00	0.00	0.00	5460.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1020	204	28	Unidad	BATCH5599	2025-03-15	87	59.00	0.00	0.00	0.00	8439.00	2024-11-12 10:25:00	2024-11-12 10:25:00
1021	205	3	Unidad	BATCH8576	2025-06-15	71	28.00	0.00	0.00	0.00	3479.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1022	205	5	Unidad	BATCH2741	2025-05-15	67	42.00	0.00	0.00	0.00	2010.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1023	205	17	Unidad	BATCH3822	2025-01-15	87	64.00	0.00	0.00	0.00	5307.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1024	205	19	Unidad	BATCH6472	2025-04-15	68	78.00	0.00	0.00	0.00	1564.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1025	205	29	Unidad	BATCH1623	2025-01-15	82	58.00	0.00	0.00	0.00	2050.00	2024-11-14 11:55:00	2024-11-14 11:55:00
1026	206	7	Unidad	BATCH8368	2025-02-15	77	65.00	0.00	0.00	0.00	6237.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1027	206	19	Unidad	BATCH5992	2025-05-15	68	23.00	0.00	0.00	0.00	2244.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1028	206	20	Unidad	BATCH2595	2025-04-15	98	55.00	0.00	0.00	0.00	2352.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1029	206	24	Unidad	BATCH4048	2025-03-15	68	34.00	0.00	0.00	0.00	5644.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1030	206	25	Unidad	BATCH3949	2025-04-15	73	72.00	0.00	0.00	0.00	3650.00	2024-11-19 11:00:00	2024-11-19 11:00:00
1031	207	6	Unidad	BATCH3985	2025-04-15	57	35.00	0.00	0.00	0.00	3192.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1032	207	13	Unidad	BATCH5287	2025-02-15	94	98.00	0.00	0.00	0.00	6768.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1033	207	14	Unidad	BATCH6924	2025-03-15	56	35.00	0.00	0.00	0.00	3528.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1034	207	15	Unidad	BATCH6388	2025-04-15	54	73.00	0.00	0.00	0.00	2754.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1035	207	19	Unidad	BATCH5835	2025-04-15	73	34.00	0.00	0.00	0.00	1460.00	2024-11-11 10:25:00	2024-11-11 10:25:00
1036	208	11	Unidad	BATCH8470	2025-03-15	82	60.00	0.00	0.00	0.00	6806.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1037	208	12	Unidad	BATCH7201	2025-06-15	69	74.00	0.00	0.00	0.00	2139.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1038	208	15	Unidad	BATCH7332	2025-02-15	88	34.00	0.00	0.00	0.00	8272.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1039	208	19	Unidad	BATCH4230	2025-04-15	83	95.00	0.00	0.00	0.00	2905.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1040	208	30	Unidad	BATCH3258	2025-04-15	75	52.00	0.00	0.00	0.00	2925.00	2024-11-06 08:31:00	2024-11-06 08:31:00
1041	209	4	Unidad	BATCH3674	2025-03-15	63	28.00	0.00	0.00	0.00	5607.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1042	209	8	Unidad	BATCH8897	2025-03-15	89	34.00	0.00	0.00	0.00	1958.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1043	209	12	Unidad	BATCH3286	2025-06-15	66	100.00	0.00	0.00	0.00	1320.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1044	209	24	Unidad	BATCH7264	2025-06-15	65	74.00	0.00	0.00	0.00	6500.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1045	209	29	Unidad	BATCH1190	2025-06-15	53	46.00	0.00	0.00	0.00	2438.00	2024-11-26 10:05:00	2024-11-26 10:05:00
1046	210	7	Unidad	BATCH7726	2025-01-15	52	69.00	0.00	0.00	0.00	2964.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1047	210	11	Unidad	BATCH4538	2025-03-15	72	52.00	0.00	0.00	0.00	5112.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1048	210	13	Unidad	BATCH5926	2025-03-15	53	81.00	0.00	0.00	0.00	1643.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1049	210	18	Unidad	BATCH3807	2025-01-15	91	64.00	0.00	0.00	0.00	6006.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1050	210	19	Unidad	BATCH5443	2025-05-15	83	62.00	0.00	0.00	0.00	6308.00	2024-11-29 09:43:00	2024-11-29 09:43:00
1051	211	2	Unidad	BATCH1157	2025-02-15	64	98.00	0.00	0.00	0.00	2112.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1052	211	12	Unidad	BATCH3779	2025-04-15	72	82.00	0.00	0.00	0.00	6552.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1053	211	16	Unidad	BATCH3295	2025-03-15	85	72.00	0.00	0.00	0.00	3060.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1054	211	18	Unidad	BATCH4147	2025-06-15	99	41.00	0.00	0.00	0.00	8316.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1055	211	25	Unidad	BATCH4554	2025-06-15	57	81.00	0.00	0.00	0.00	4902.00	2024-11-04 08:59:00	2024-11-04 08:59:00
1056	212	3	Unidad	BATCH7208	2025-01-15	50	25.00	0.00	0.00	0.00	3200.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1057	212	10	Unidad	BATCH8967	2025-02-15	67	55.00	0.00	0.00	0.00	4489.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1058	212	13	Unidad	BATCH3084	2025-04-15	92	53.00	0.00	0.00	0.00	4692.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1059	212	27	Unidad	BATCH1228	2025-06-15	83	79.00	0.00	0.00	0.00	4399.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1060	212	29	Unidad	BATCH1616	2025-01-15	62	24.00	0.00	0.00	0.00	3038.00	2024-11-24 16:57:00	2024-11-24 16:57:00
1061	213	1	Unidad	BATCH5688	2025-03-15	68	22.00	0.00	0.00	0.00	5304.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1062	213	5	Unidad	BATCH5532	2025-06-15	99	80.00	0.00	0.00	0.00	4356.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1063	213	15	Unidad	BATCH7351	2025-05-15	73	72.00	0.00	0.00	0.00	1898.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1064	213	18	Unidad	BATCH1222	2025-06-15	58	40.00	0.00	0.00	0.00	4524.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1065	213	29	Unidad	BATCH5408	2025-03-15	69	33.00	0.00	0.00	0.00	6555.00	2024-11-14 09:46:00	2024-11-14 09:46:00
1066	214	9	Unidad	BATCH5550	2025-01-15	81	54.00	0.00	0.00	0.00	4941.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1067	214	19	Unidad	BATCH7187	2025-03-15	56	80.00	0.00	0.00	0.00	5264.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1068	214	21	Unidad	BATCH6496	2025-02-15	52	70.00	0.00	0.00	0.00	2548.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1069	214	24	Unidad	BATCH3695	2025-02-15	78	61.00	0.00	0.00	0.00	4836.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1070	214	25	Unidad	BATCH4291	2025-05-15	67	31.00	0.00	0.00	0.00	2881.00	2024-11-29 13:44:00	2024-11-29 13:44:00
1071	215	7	Unidad	BATCH5059	2025-06-15	50	46.00	0.00	0.00	0.00	1300.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1072	215	11	Unidad	BATCH3747	2025-06-15	59	64.00	0.00	0.00	0.00	1534.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1073	215	19	Unidad	BATCH6245	2025-06-15	83	57.00	0.00	0.00	0.00	4814.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1074	215	20	Unidad	BATCH6011	2025-01-15	78	35.00	0.00	0.00	0.00	6786.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1075	215	29	Unidad	BATCH7532	2025-06-15	87	64.00	0.00	0.00	0.00	5829.00	2024-11-25 16:45:00	2024-11-25 16:45:00
1076	216	8	Unidad	BATCH7560	2025-06-15	64	39.00	0.00	0.00	0.00	6208.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1077	216	15	Unidad	BATCH8974	2025-05-15	64	92.00	0.00	0.00	0.00	1856.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1078	216	16	Unidad	BATCH6776	2025-06-15	66	63.00	0.00	0.00	0.00	5148.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1079	216	18	Unidad	BATCH3255	2025-03-15	70	82.00	0.00	0.00	0.00	2520.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1080	216	21	Unidad	BATCH4441	2025-06-15	87	68.00	0.00	0.00	0.00	4350.00	2024-11-19 16:27:00	2024-11-19 16:27:00
1081	217	2	Unidad	BATCH3830	2025-05-15	50	62.00	0.00	0.00	0.00	4550.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1082	217	12	Unidad	BATCH6597	2025-03-15	98	74.00	0.00	0.00	0.00	8722.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1083	217	18	Unidad	BATCH5394	2025-04-15	61	33.00	0.00	0.00	0.00	4453.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1084	217	19	Unidad	BATCH8282	2025-02-15	69	70.00	0.00	0.00	0.00	1863.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1085	217	29	Unidad	BATCH8040	2025-02-15	53	61.00	0.00	0.00	0.00	2438.00	2024-11-21 13:33:00	2024-11-21 13:33:00
1086	218	7	Unidad	BATCH5728	2025-05-15	66	56.00	0.00	0.00	0.00	5610.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1087	218	13	Unidad	BATCH8581	2025-01-15	97	20.00	0.00	0.00	0.00	3201.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1088	218	16	Unidad	BATCH6685	2025-03-15	51	39.00	0.00	0.00	0.00	1071.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1089	218	26	Unidad	BATCH2417	2025-01-15	55	87.00	0.00	0.00	0.00	2145.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1090	218	29	Unidad	BATCH6781	2025-03-15	60	75.00	0.00	0.00	0.00	4380.00	2024-11-08 10:31:00	2024-11-08 10:31:00
1091	219	5	Unidad	BATCH8711	2025-01-15	92	66.00	0.00	0.00	0.00	2576.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1092	219	7	Unidad	BATCH8108	2025-01-15	68	64.00	0.00	0.00	0.00	5780.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1093	219	13	Unidad	BATCH1475	2025-01-15	94	44.00	0.00	0.00	0.00	3854.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1094	219	15	Unidad	BATCH9968	2025-06-15	63	28.00	0.00	0.00	0.00	3843.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1095	219	30	Unidad	BATCH4611	2025-02-15	80	33.00	0.00	0.00	0.00	2640.00	2024-11-24 08:51:00	2024-11-24 08:51:00
1096	220	21	Unidad	BATCH2754	2025-04-15	75	42.00	0.00	0.00	0.00	3825.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1097	220	25	Unidad	BATCH9751	2025-05-15	52	59.00	0.00	0.00	0.00	1352.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1098	220	26	Unidad	BATCH9259	2025-04-15	84	59.00	0.00	0.00	0.00	6300.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1099	220	27	Unidad	BATCH6804	2025-03-15	92	80.00	0.00	0.00	0.00	4416.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1100	220	30	Unidad	BATCH3572	2025-05-15	92	100.00	0.00	0.00	0.00	4508.00	2024-11-07 09:23:00	2024-11-07 09:23:00
1101	221	12	Unidad	BATCH5309	2025-01-15	99	32.00	0.00	0.00	0.00	7623.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1102	221	15	Unidad	BATCH9855	2025-03-15	99	33.00	0.00	0.00	0.00	6435.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1103	221	19	Unidad	BATCH1177	2025-03-15	61	63.00	0.00	0.00	0.00	1281.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1104	221	25	Unidad	BATCH6256	2025-06-15	88	63.00	0.00	0.00	0.00	7920.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1105	221	29	Unidad	BATCH6951	2025-06-15	79	62.00	0.00	0.00	0.00	4345.00	2024-11-24 12:26:00	2024-11-24 12:26:00
1106	222	6	Unidad	BATCH4390	2025-04-15	87	79.00	0.00	0.00	0.00	1914.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1107	222	9	Unidad	BATCH3383	2025-03-15	63	36.00	0.00	0.00	0.00	5418.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1108	222	13	Unidad	BATCH9115	2025-06-15	94	56.00	0.00	0.00	0.00	4700.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1109	222	24	Unidad	BATCH1196	2025-03-15	79	71.00	0.00	0.00	0.00	3871.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1110	222	27	Unidad	BATCH3377	2025-01-15	63	85.00	0.00	0.00	0.00	4977.00	2024-11-15 08:13:00	2024-11-15 08:13:00
1111	223	7	Unidad	BATCH4607	2025-03-15	82	72.00	0.00	0.00	0.00	8118.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1112	223	11	Unidad	BATCH8502	2025-04-15	63	40.00	0.00	0.00	0.00	2520.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1113	223	14	Unidad	BATCH8549	2025-06-15	77	54.00	0.00	0.00	0.00	7469.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1114	223	23	Unidad	BATCH6662	2025-06-15	65	44.00	0.00	0.00	0.00	1430.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1115	223	29	Unidad	BATCH2383	2025-05-15	59	36.00	0.00	0.00	0.00	5192.00	2024-11-12 14:53:00	2024-11-12 14:53:00
1116	224	6	Unidad	BATCH1060	2025-06-15	100	94.00	0.00	0.00	0.00	2100.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1117	224	13	Unidad	BATCH1866	2025-05-15	54	81.00	0.00	0.00	0.00	2700.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1118	224	21	Unidad	BATCH3148	2025-04-15	97	43.00	0.00	0.00	0.00	9700.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1119	224	22	Unidad	BATCH1479	2025-03-15	79	50.00	0.00	0.00	0.00	4661.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1120	224	23	Unidad	BATCH1431	2025-02-15	97	54.00	0.00	0.00	0.00	6208.00	2024-11-08 13:34:00	2024-11-08 13:34:00
1121	225	13	Unidad	BATCH1304	2025-06-15	94	25.00	0.00	0.00	0.00	9212.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1122	225	20	Unidad	BATCH1841	2025-02-15	71	68.00	0.00	0.00	0.00	3692.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1123	225	22	Unidad	BATCH3683	2025-05-15	84	40.00	0.00	0.00	0.00	6552.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1124	225	23	Unidad	BATCH3128	2025-05-15	75	41.00	0.00	0.00	0.00	6000.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1125	225	25	Unidad	BATCH7616	2025-05-15	78	28.00	0.00	0.00	0.00	5226.00	2024-11-12 08:56:00	2024-11-12 08:56:00
1126	226	7	Unidad	BATCH9065	2025-03-15	85	69.00	0.00	0.00	0.00	7820.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1127	226	9	Unidad	BATCH1921	2025-04-15	97	87.00	0.00	0.00	0.00	4462.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1128	226	12	Unidad	BATCH1562	2025-02-15	93	97.00	0.00	0.00	0.00	9207.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1129	226	21	Unidad	BATCH1415	2025-01-15	97	74.00	0.00	0.00	0.00	9409.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1130	226	26	Unidad	BATCH4330	2025-02-15	71	50.00	0.00	0.00	0.00	6887.00	2024-11-06 14:15:00	2024-11-06 14:15:00
1131	227	4	Unidad	BATCH2086	2025-03-15	54	37.00	0.00	0.00	0.00	2754.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1132	227	7	Unidad	BATCH4995	2025-06-15	59	58.00	0.00	0.00	0.00	4602.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1133	227	12	Unidad	BATCH5961	2025-03-15	98	46.00	0.00	0.00	0.00	3332.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1134	227	19	Unidad	BATCH4775	2025-01-15	51	81.00	0.00	0.00	0.00	2091.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1135	227	21	Unidad	BATCH6000	2025-03-15	59	90.00	0.00	0.00	0.00	1180.00	2024-11-25 09:58:00	2024-11-25 09:58:00
1136	228	1	Unidad	BATCH8044	2025-05-15	72	52.00	0.00	0.00	0.00	6840.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1137	228	3	Unidad	BATCH5366	2025-04-15	95	52.00	0.00	0.00	0.00	6840.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1138	228	18	Unidad	BATCH1672	2025-05-15	68	52.00	0.00	0.00	0.00	6664.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1139	228	21	Unidad	BATCH6185	2025-03-15	52	96.00	0.00	0.00	0.00	1768.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1140	228	23	Unidad	BATCH1435	2025-04-15	55	32.00	0.00	0.00	0.00	2475.00	2024-11-17 11:34:00	2024-11-17 11:34:00
1141	229	5	Unidad	BATCH5203	2025-06-15	87	96.00	0.00	0.00	0.00	7308.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1142	229	22	Unidad	BATCH3716	2025-06-15	74	51.00	0.00	0.00	0.00	6068.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1143	229	23	Unidad	BATCH6449	2025-05-15	79	43.00	0.00	0.00	0.00	2844.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1144	229	24	Unidad	BATCH5863	2025-03-15	87	21.00	0.00	0.00	0.00	2175.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1145	229	29	Unidad	BATCH7772	2025-05-15	52	38.00	0.00	0.00	0.00	4108.00	2024-11-01 08:59:00	2024-11-01 08:59:00
1146	230	11	Unidad	BATCH6287	2025-05-15	99	22.00	0.00	0.00	0.00	8514.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1147	230	12	Unidad	BATCH5991	2025-02-15	67	67.00	0.00	0.00	0.00	6231.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1148	230	13	Unidad	BATCH9415	2025-02-15	71	70.00	0.00	0.00	0.00	5396.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1149	230	26	Unidad	BATCH3296	2025-01-15	96	49.00	0.00	0.00	0.00	2496.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1150	230	28	Unidad	BATCH3292	2025-04-15	74	65.00	0.00	0.00	0.00	4662.00	2024-11-16 11:40:00	2024-11-16 11:40:00
1151	231	2	Unidad	BATCH9677	2025-02-15	92	47.00	0.00	0.00	0.00	8372.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1152	231	6	Unidad	BATCH5495	2025-05-15	68	74.00	0.00	0.00	0.00	5780.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1153	231	16	Unidad	BATCH9568	2025-03-15	73	90.00	0.00	0.00	0.00	2993.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1154	231	20	Unidad	BATCH1163	2025-04-15	94	61.00	0.00	0.00	0.00	8366.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1155	231	21	Unidad	BATCH2653	2025-04-15	92	25.00	0.00	0.00	0.00	8648.00	2024-11-06 14:45:00	2024-11-06 14:45:00
1156	232	2	Unidad	BATCH8328	2025-01-15	71	62.00	0.00	0.00	0.00	5680.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1157	232	3	Unidad	BATCH5271	2025-05-15	64	76.00	0.00	0.00	0.00	2688.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1158	232	6	Unidad	BATCH1367	2025-01-15	64	56.00	0.00	0.00	0.00	1728.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1159	232	15	Unidad	BATCH6890	2025-02-15	53	92.00	0.00	0.00	0.00	4823.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1160	232	18	Unidad	BATCH3152	2025-02-15	60	45.00	0.00	0.00	0.00	1620.00	2024-11-25 10:18:00	2024-11-25 10:18:00
1161	233	4	Unidad	BATCH2360	2025-02-15	62	70.00	0.00	0.00	0.00	2666.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1162	233	9	Unidad	BATCH8577	2025-02-15	56	61.00	0.00	0.00	0.00	1792.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1163	233	14	Unidad	BATCH5943	2025-05-15	83	88.00	0.00	0.00	0.00	6142.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1164	233	25	Unidad	BATCH5301	2025-04-15	65	66.00	0.00	0.00	0.00	4615.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1165	233	27	Unidad	BATCH6390	2025-01-15	91	21.00	0.00	0.00	0.00	7826.00	2024-11-24 12:42:00	2024-11-24 12:42:00
1166	234	1	Unidad	BATCH2756	2025-06-15	75	95.00	0.00	0.00	0.00	4725.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1167	234	4	Unidad	BATCH8706	2025-05-15	99	96.00	0.00	0.00	0.00	5148.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1168	234	7	Unidad	BATCH4686	2025-01-15	65	41.00	0.00	0.00	0.00	6305.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1169	234	13	Unidad	BATCH4813	2025-05-15	72	85.00	0.00	0.00	0.00	2376.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1170	234	17	Unidad	BATCH7530	2025-02-15	54	77.00	0.00	0.00	0.00	4806.00	2024-11-27 14:35:00	2024-11-27 14:35:00
1171	235	1	Unidad	BATCH3673	2025-04-15	62	84.00	0.00	0.00	0.00	2480.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1172	235	8	Unidad	BATCH2785	2025-02-15	88	46.00	0.00	0.00	0.00	8712.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1173	235	9	Unidad	BATCH5319	2025-05-15	55	79.00	0.00	0.00	0.00	5390.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1174	235	17	Unidad	BATCH4524	2025-03-15	86	92.00	0.00	0.00	0.00	2924.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1175	235	26	Unidad	BATCH1398	2025-03-15	52	67.00	0.00	0.00	0.00	3328.00	2024-11-27 14:46:00	2024-11-27 14:46:00
1176	236	13	Unidad	BATCH3298	2025-05-15	69	25.00	0.00	0.00	0.00	1794.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1177	236	16	Unidad	BATCH1886	2025-02-15	77	80.00	0.00	0.00	0.00	6776.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1178	236	18	Unidad	BATCH9378	2025-03-15	86	37.00	0.00	0.00	0.00	4386.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1179	236	21	Unidad	BATCH3341	2025-01-15	53	70.00	0.00	0.00	0.00	3286.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1180	236	30	Unidad	BATCH6282	2025-02-15	59	21.00	0.00	0.00	0.00	4484.00	2024-11-11 12:27:00	2024-11-11 12:27:00
1181	237	1	Unidad	BATCH5427	2025-02-15	61	76.00	0.00	0.00	0.00	5185.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1182	237	9	Unidad	BATCH7704	2025-02-15	89	52.00	0.00	0.00	0.00	3382.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1183	237	13	Unidad	BATCH7549	2025-02-15	82	59.00	0.00	0.00	0.00	7216.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1184	237	18	Unidad	BATCH4063	2025-06-15	77	40.00	0.00	0.00	0.00	4774.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1185	237	29	Unidad	BATCH5760	2025-03-15	74	77.00	0.00	0.00	0.00	1776.00	2024-11-12 16:20:00	2024-11-12 16:20:00
1186	238	2	Unidad	BATCH9296	2025-01-15	99	100.00	0.00	0.00	0.00	8118.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1187	238	11	Unidad	BATCH5986	2025-03-15	66	46.00	0.00	0.00	0.00	2706.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1188	238	16	Unidad	BATCH9450	2025-06-15	89	44.00	0.00	0.00	0.00	8811.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1189	238	19	Unidad	BATCH6783	2025-02-15	68	52.00	0.00	0.00	0.00	4352.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1190	238	25	Unidad	BATCH3984	2025-05-15	91	34.00	0.00	0.00	0.00	8190.00	2024-11-17 11:26:00	2024-11-17 11:26:00
1191	239	3	Unidad	BATCH1779	2025-03-15	70	71.00	0.00	0.00	0.00	6860.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1192	239	12	Unidad	BATCH8403	2025-03-15	62	22.00	0.00	0.00	0.00	2232.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1193	239	17	Unidad	BATCH8953	2025-02-15	86	52.00	0.00	0.00	0.00	2064.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1194	239	23	Unidad	BATCH3920	2025-04-15	71	40.00	0.00	0.00	0.00	3195.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1195	239	27	Unidad	BATCH5073	2025-05-15	83	43.00	0.00	0.00	0.00	2324.00	2024-11-07 16:45:00	2024-11-07 16:45:00
1196	240	4	Unidad	BATCH6834	2025-02-15	77	99.00	0.00	0.00	0.00	4543.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1197	240	5	Unidad	BATCH8680	2025-04-15	50	35.00	0.00	0.00	0.00	1150.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1198	240	10	Unidad	BATCH7076	2025-04-15	62	82.00	0.00	0.00	0.00	4712.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1199	240	13	Unidad	BATCH7631	2025-05-15	89	90.00	0.00	0.00	0.00	3293.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1200	240	19	Unidad	BATCH7243	2025-02-15	94	67.00	0.00	0.00	0.00	2350.00	2024-11-17 10:43:00	2024-11-17 10:43:00
1201	241	3	Unidad	BATCH1198	2025-01-15	53	81.00	0.00	0.00	0.00	1060.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1202	241	18	Unidad	BATCH3988	2025-03-15	81	74.00	0.00	0.00	0.00	6642.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1203	241	20	Unidad	BATCH5702	2025-01-15	72	70.00	0.00	0.00	0.00	6120.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1204	241	27	Unidad	BATCH3856	2025-03-15	82	24.00	0.00	0.00	0.00	3772.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1205	241	28	Unidad	BATCH8525	2025-06-15	66	41.00	0.00	0.00	0.00	1980.00	2024-11-18 11:55:00	2024-11-18 11:55:00
1206	242	2	Unidad	BATCH7031	2025-04-15	77	36.00	0.00	0.00	0.00	4004.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1207	242	12	Unidad	BATCH6417	2025-06-15	59	51.00	0.00	0.00	0.00	3245.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1208	242	15	Unidad	BATCH4287	2025-04-15	50	31.00	0.00	0.00	0.00	4950.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1209	242	18	Unidad	BATCH3843	2025-05-15	64	79.00	0.00	0.00	0.00	1920.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1210	242	20	Unidad	BATCH4140	2025-01-15	57	42.00	0.00	0.00	0.00	3591.00	2024-11-26 15:48:00	2024-11-26 15:48:00
1211	243	5	Unidad	BATCH6592	2025-01-15	57	83.00	0.00	0.00	0.00	5586.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1212	243	9	Unidad	BATCH2965	2025-03-15	54	23.00	0.00	0.00	0.00	3240.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1213	243	12	Unidad	BATCH4643	2025-01-15	52	80.00	0.00	0.00	0.00	4576.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1214	243	23	Unidad	BATCH8247	2025-05-15	94	66.00	0.00	0.00	0.00	6016.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1215	243	27	Unidad	BATCH5048	2025-03-15	67	26.00	0.00	0.00	0.00	1541.00	2024-11-13 10:27:00	2024-11-13 10:27:00
1216	244	1	Unidad	BATCH7507	2025-03-15	93	55.00	0.00	0.00	0.00	6417.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1217	244	2	Unidad	BATCH4863	2025-02-15	96	20.00	0.00	0.00	0.00	9120.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1218	244	6	Unidad	BATCH5604	2025-05-15	99	70.00	0.00	0.00	0.00	3663.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1219	244	21	Unidad	BATCH4821	2025-01-15	69	24.00	0.00	0.00	0.00	5589.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1220	244	27	Unidad	BATCH8760	2025-01-15	80	45.00	0.00	0.00	0.00	2800.00	2024-11-19 08:04:00	2024-11-19 08:04:00
1221	245	3	Unidad	BATCH3359	2025-03-15	82	58.00	0.00	0.00	0.00	6970.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1222	245	6	Unidad	BATCH3027	2025-05-15	50	99.00	0.00	0.00	0.00	3650.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1223	245	9	Unidad	BATCH6912	2025-05-15	85	50.00	0.00	0.00	0.00	8500.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1224	245	13	Unidad	BATCH9140	2025-05-15	56	57.00	0.00	0.00	0.00	1232.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1225	245	15	Unidad	BATCH7874	2025-06-15	56	45.00	0.00	0.00	0.00	2800.00	2024-11-11 08:25:00	2024-11-11 08:25:00
1226	246	1	Unidad	BATCH3631	2025-02-15	53	35.00	0.00	0.00	0.00	1696.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1227	246	3	Unidad	BATCH5451	2025-06-15	61	54.00	0.00	0.00	0.00	5917.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1228	246	5	Unidad	BATCH6322	2025-06-15	97	58.00	0.00	0.00	0.00	3104.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1229	246	13	Unidad	BATCH8793	2025-02-15	54	57.00	0.00	0.00	0.00	1512.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1230	246	27	Unidad	BATCH5244	2025-04-15	78	46.00	0.00	0.00	0.00	7722.00	2024-11-15 08:59:00	2024-11-15 08:59:00
1231	247	1	Unidad	BATCH2100	2025-02-15	63	53.00	0.00	0.00	0.00	2520.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1232	247	8	Unidad	BATCH7474	2025-06-15	87	54.00	0.00	0.00	0.00	7917.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1233	247	10	Unidad	BATCH4802	2025-05-15	55	97.00	0.00	0.00	0.00	1430.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1234	247	13	Unidad	BATCH3489	2025-02-15	61	83.00	0.00	0.00	0.00	2196.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1235	247	28	Unidad	BATCH5616	2025-06-15	97	37.00	0.00	0.00	0.00	8148.00	2024-11-25 14:36:00	2024-11-25 14:36:00
1236	248	4	Unidad	BATCH4796	2025-06-15	98	81.00	0.00	0.00	0.00	4704.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1237	248	14	Unidad	BATCH1580	2025-01-15	98	85.00	0.00	0.00	0.00	3430.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1238	248	21	Unidad	BATCH9699	2025-05-15	85	42.00	0.00	0.00	0.00	2550.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1239	248	25	Unidad	BATCH3602	2025-04-15	95	36.00	0.00	0.00	0.00	5510.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1240	248	29	Unidad	BATCH9807	2025-03-15	88	45.00	0.00	0.00	0.00	5896.00	2024-11-10 11:32:00	2024-11-10 11:32:00
1241	249	2	Unidad	BATCH9349	2025-03-15	89	29.00	0.00	0.00	0.00	5963.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1242	249	10	Unidad	BATCH1376	2025-02-15	98	62.00	0.00	0.00	0.00	2352.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1243	249	11	Unidad	BATCH3816	2025-06-15	63	90.00	0.00	0.00	0.00	3213.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1244	249	16	Unidad	BATCH3129	2025-05-15	97	62.00	0.00	0.00	0.00	5141.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1245	249	27	Unidad	BATCH3662	2025-04-15	91	98.00	0.00	0.00	0.00	4823.00	2024-11-28 12:49:00	2024-11-28 12:49:00
1246	250	2	Unidad	BATCH9277	2025-01-15	90	23.00	0.00	0.00	0.00	6750.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1247	250	8	Unidad	BATCH5289	2025-06-15	88	34.00	0.00	0.00	0.00	3520.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1248	250	13	Unidad	BATCH6373	2025-03-15	69	93.00	0.00	0.00	0.00	6831.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1249	250	15	Unidad	BATCH2255	2025-01-15	67	85.00	0.00	0.00	0.00	4154.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1250	250	28	Unidad	BATCH6493	2025-03-15	84	86.00	0.00	0.00	0.00	6720.00	2024-11-26 12:14:00	2024-11-26 12:14:00
1251	251	8	Unidad	BATCH6428	2025-02-15	89	74.00	0.00	0.00	0.00	2492.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1252	251	22	Unidad	BATCH1170	2025-06-15	62	52.00	0.00	0.00	0.00	5208.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1253	251	23	Unidad	BATCH5893	2025-03-15	58	67.00	0.00	0.00	0.00	5336.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1254	251	28	Unidad	BATCH5523	2025-04-15	69	62.00	0.00	0.00	0.00	2346.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1255	251	29	Unidad	BATCH9509	2025-04-15	53	89.00	0.00	0.00	0.00	3869.00	2024-11-23 16:16:00	2024-11-23 16:16:00
1256	252	5	Unidad	BATCH2841	2025-01-15	66	34.00	0.00	0.00	0.00	4950.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1257	252	8	Unidad	BATCH1952	2025-06-15	60	86.00	0.00	0.00	0.00	3120.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1258	252	21	Unidad	BATCH1132	2025-06-15	79	98.00	0.00	0.00	0.00	5767.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1259	252	23	Unidad	BATCH9364	2025-02-15	62	81.00	0.00	0.00	0.00	2356.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1260	252	26	Unidad	BATCH6145	2025-06-15	69	41.00	0.00	0.00	0.00	4692.00	2024-11-16 15:37:00	2024-11-16 15:37:00
1261	253	8	Unidad	BATCH6337	2025-01-15	91	29.00	0.00	0.00	0.00	4186.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1262	253	19	Unidad	BATCH9700	2025-06-15	65	43.00	0.00	0.00	0.00	1625.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1263	253	25	Unidad	BATCH5697	2025-01-15	57	85.00	0.00	0.00	0.00	3477.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1264	253	28	Unidad	BATCH6495	2025-04-15	67	92.00	0.00	0.00	0.00	6231.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1265	253	30	Unidad	BATCH1954	2025-04-15	69	91.00	0.00	0.00	0.00	4278.00	2024-11-27 12:45:00	2024-11-27 12:45:00
1266	254	13	Unidad	BATCH2361	2025-04-15	80	31.00	0.00	0.00	0.00	3280.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1267	254	14	Unidad	BATCH5683	2025-03-15	56	49.00	0.00	0.00	0.00	3360.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1268	254	16	Unidad	BATCH4664	2025-05-15	78	98.00	0.00	0.00	0.00	3744.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1269	254	24	Unidad	BATCH1595	2025-03-15	72	48.00	0.00	0.00	0.00	6264.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1270	254	30	Unidad	BATCH1275	2025-06-15	72	83.00	0.00	0.00	0.00	1728.00	2024-11-30 14:42:00	2024-11-30 14:42:00
1271	255	3	Unidad	BATCH3371	2025-02-15	72	37.00	0.00	0.00	0.00	1944.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1272	255	4	Unidad	BATCH7838	2025-01-15	67	28.00	0.00	0.00	0.00	3350.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1273	255	11	Unidad	BATCH8643	2025-03-15	94	35.00	0.00	0.00	0.00	5640.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1274	255	15	Unidad	BATCH3450	2025-04-15	53	25.00	0.00	0.00	0.00	4505.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1275	255	17	Unidad	BATCH5207	2025-06-15	73	88.00	0.00	0.00	0.00	6862.00	2024-11-02 08:58:00	2024-11-02 08:58:00
1276	256	3	Unidad	BATCH3664	2025-05-15	62	42.00	0.00	0.00	0.00	3906.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1277	256	10	Unidad	BATCH1252	2025-06-15	74	67.00	0.00	0.00	0.00	5624.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1278	256	17	Unidad	BATCH6738	2025-03-15	54	91.00	0.00	0.00	0.00	3726.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1279	256	27	Unidad	BATCH1958	2025-03-15	72	69.00	0.00	0.00	0.00	2088.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1280	256	30	Unidad	BATCH6975	2025-03-15	83	64.00	0.00	0.00	0.00	7304.00	2024-11-19 13:48:00	2024-11-19 13:48:00
1281	257	7	Unidad	BATCH3833	2025-06-15	50	89.00	0.00	0.00	0.00	1850.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1282	257	14	Unidad	BATCH9315	2025-01-15	54	46.00	0.00	0.00	0.00	3726.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1283	257	15	Unidad	BATCH8081	2025-03-15	77	28.00	0.00	0.00	0.00	5159.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1284	257	26	Unidad	BATCH6073	2025-05-15	59	97.00	0.00	0.00	0.00	2242.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1285	257	30	Unidad	BATCH8619	2025-02-15	67	37.00	0.00	0.00	0.00	6432.00	2024-11-19 13:11:00	2024-11-19 13:11:00
1286	258	5	Unidad	BATCH1285	2025-05-15	57	97.00	0.00	0.00	0.00	5529.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1287	258	6	Unidad	BATCH2853	2025-04-15	57	77.00	0.00	0.00	0.00	1539.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1288	258	17	Unidad	BATCH3234	2025-06-15	52	23.00	0.00	0.00	0.00	4420.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1289	258	23	Unidad	BATCH8944	2025-04-15	78	72.00	0.00	0.00	0.00	7644.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1290	258	29	Unidad	BATCH9560	2025-03-15	65	74.00	0.00	0.00	0.00	5005.00	2024-11-22 10:33:00	2024-11-22 10:33:00
1291	259	2	Unidad	BATCH7851	2025-04-15	82	29.00	0.00	0.00	0.00	8036.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1292	259	5	Unidad	BATCH8840	2025-01-15	62	83.00	0.00	0.00	0.00	5704.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1293	259	14	Unidad	BATCH5716	2025-04-15	73	59.00	0.00	0.00	0.00	7081.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1294	259	15	Unidad	BATCH2638	2025-05-15	86	49.00	0.00	0.00	0.00	7310.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1295	259	18	Unidad	BATCH4098	2025-02-15	61	76.00	0.00	0.00	0.00	5917.00	2024-11-14 12:37:00	2024-11-14 12:37:00
1296	260	4	Unidad	BATCH3362	2025-01-15	84	60.00	0.00	0.00	0.00	5628.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1297	260	18	Unidad	BATCH8955	2025-04-15	77	45.00	0.00	0.00	0.00	5082.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1298	260	23	Unidad	BATCH2970	2025-05-15	85	40.00	0.00	0.00	0.00	2465.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1299	260	26	Unidad	BATCH9186	2025-01-15	94	68.00	0.00	0.00	0.00	5640.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1300	260	30	Unidad	BATCH4889	2025-01-15	61	43.00	0.00	0.00	0.00	3050.00	2024-11-12 15:46:00	2024-11-12 15:46:00
1301	261	15	Unidad	BATCH6878	2025-03-15	58	66.00	0.00	0.00	0.00	5452.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1302	261	16	Unidad	BATCH2594	2025-03-15	90	99.00	0.00	0.00	0.00	3330.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1303	261	18	Unidad	BATCH1187	2025-05-15	95	69.00	0.00	0.00	0.00	1900.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1304	261	27	Unidad	BATCH3317	2025-06-15	61	37.00	0.00	0.00	0.00	5795.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1305	261	29	Unidad	BATCH5262	2025-05-15	74	94.00	0.00	0.00	0.00	2738.00	2024-11-09 13:59:00	2024-11-09 13:59:00
1306	262	9	Unidad	BATCH1323	2025-04-15	94	78.00	0.00	0.00	0.00	9024.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1307	262	11	Unidad	BATCH8621	2025-05-15	81	29.00	0.00	0.00	0.00	7371.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1308	262	21	Unidad	BATCH8945	2025-02-15	100	44.00	0.00	0.00	0.00	5500.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1309	262	22	Unidad	BATCH1759	2025-01-15	100	24.00	0.00	0.00	0.00	3100.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1310	262	28	Unidad	BATCH2954	2025-02-15	61	65.00	0.00	0.00	0.00	4697.00	2024-11-25 10:26:00	2024-11-25 10:26:00
1311	263	7	Unidad	BATCH2149	2025-03-15	84	70.00	0.00	0.00	0.00	6720.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1312	263	11	Unidad	BATCH6297	2025-01-15	86	87.00	0.00	0.00	0.00	8600.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1313	263	12	Unidad	BATCH8856	2025-04-15	53	61.00	0.00	0.00	0.00	4876.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1314	263	25	Unidad	BATCH5183	2025-05-15	93	66.00	0.00	0.00	0.00	6045.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1315	263	27	Unidad	BATCH1088	2025-06-15	94	33.00	0.00	0.00	0.00	4700.00	2024-11-23 15:39:00	2024-11-23 15:39:00
1316	264	3	Unidad	BATCH8359	2025-02-15	68	42.00	0.00	0.00	0.00	3740.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1317	264	6	Unidad	BATCH3480	2025-02-15	65	76.00	0.00	0.00	0.00	2925.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1318	264	7	Unidad	BATCH9488	2025-03-15	96	100.00	0.00	0.00	0.00	4512.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1319	264	8	Unidad	BATCH6285	2025-01-15	55	21.00	0.00	0.00	0.00	2365.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1320	264	14	Unidad	BATCH6774	2025-04-15	85	21.00	0.00	0.00	0.00	8075.00	2024-11-20 08:58:00	2024-11-20 08:58:00
1321	265	7	Unidad	BATCH8591	2025-02-15	72	57.00	0.00	0.00	0.00	3168.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1322	265	14	Unidad	BATCH2581	2025-06-15	77	44.00	0.00	0.00	0.00	2233.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1323	265	17	Unidad	BATCH7609	2025-05-15	88	40.00	0.00	0.00	0.00	4048.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1324	265	21	Unidad	BATCH5535	2025-01-15	86	58.00	0.00	0.00	0.00	5246.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1325	265	22	Unidad	BATCH8751	2025-02-15	63	91.00	0.00	0.00	0.00	1575.00	2024-11-22 10:36:00	2024-11-22 10:36:00
1326	266	3	Unidad	BATCH4468	2025-03-15	88	84.00	0.00	0.00	0.00	8624.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1327	266	10	Unidad	BATCH8162	2025-01-15	60	35.00	0.00	0.00	0.00	3240.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1328	266	14	Unidad	BATCH7438	2025-06-15	91	41.00	0.00	0.00	0.00	7917.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1329	266	15	Unidad	BATCH1787	2025-01-15	95	57.00	0.00	0.00	0.00	6460.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1330	266	18	Unidad	BATCH6416	2025-04-15	91	25.00	0.00	0.00	0.00	6643.00	2024-11-14 08:02:00	2024-11-14 08:02:00
1331	267	2	Unidad	BATCH8158	2025-03-15	51	70.00	0.00	0.00	0.00	2397.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1332	267	19	Unidad	BATCH3055	2025-05-15	67	55.00	0.00	0.00	0.00	3685.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1333	267	22	Unidad	BATCH2248	2025-03-15	87	30.00	0.00	0.00	0.00	2175.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1334	267	25	Unidad	BATCH9131	2025-06-15	64	51.00	0.00	0.00	0.00	2304.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1335	267	30	Unidad	BATCH1983	2025-03-15	75	74.00	0.00	0.00	0.00	4425.00	2024-11-12 15:08:00	2024-11-12 15:08:00
1336	268	3	Unidad	BATCH1427	2025-05-15	93	33.00	0.00	0.00	0.00	1953.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1337	268	5	Unidad	BATCH9359	2025-06-15	97	25.00	0.00	0.00	0.00	3783.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1338	268	13	Unidad	BATCH1344	2025-06-15	66	66.00	0.00	0.00	0.00	1584.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1339	268	18	Unidad	BATCH5597	2025-06-15	67	86.00	0.00	0.00	0.00	6164.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1340	268	20	Unidad	BATCH6492	2025-03-15	100	25.00	0.00	0.00	0.00	8900.00	2024-11-24 08:45:00	2024-11-24 08:45:00
1341	269	20	Unidad	BATCH2074	2025-01-15	100	91.00	0.00	0.00	0.00	7500.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1342	269	23	Unidad	BATCH8761	2025-02-15	88	79.00	0.00	0.00	0.00	3168.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1343	269	27	Unidad	BATCH6341	2025-01-15	52	32.00	0.00	0.00	0.00	3380.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1344	269	28	Unidad	BATCH5463	2025-01-15	87	40.00	0.00	0.00	0.00	5568.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1345	269	30	Unidad	BATCH9374	2025-03-15	65	80.00	0.00	0.00	0.00	4030.00	2024-11-30 15:19:00	2024-11-30 15:19:00
1346	270	7	Unidad	BATCH1453	2025-06-15	85	24.00	0.00	0.00	0.00	7225.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1347	270	13	Unidad	BATCH3661	2025-06-15	85	60.00	0.00	0.00	0.00	6205.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1348	270	17	Unidad	BATCH5314	2025-06-15	77	45.00	0.00	0.00	0.00	3696.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1349	270	18	Unidad	BATCH5722	2025-05-15	57	98.00	0.00	0.00	0.00	3591.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1350	270	28	Unidad	BATCH7864	2025-06-15	94	59.00	0.00	0.00	0.00	6486.00	2024-11-21 11:10:00	2024-11-21 11:10:00
1351	271	4	Unidad	BATCH6350	2025-01-15	91	91.00	0.00	0.00	0.00	3731.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1352	271	7	Unidad	BATCH2153	2025-01-15	97	39.00	0.00	0.00	0.00	2328.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1353	271	8	Unidad	BATCH3335	2025-06-15	53	39.00	0.00	0.00	0.00	4399.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1354	271	12	Unidad	BATCH8020	2025-05-15	75	89.00	0.00	0.00	0.00	5325.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1355	271	13	Unidad	BATCH7807	2025-01-15	65	35.00	0.00	0.00	0.00	6175.00	2024-11-22 12:57:00	2024-11-22 12:57:00
1356	272	7	Unidad	BATCH8053	2025-06-15	63	34.00	0.00	0.00	0.00	6300.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1357	272	11	Unidad	BATCH3799	2025-02-15	75	53.00	0.00	0.00	0.00	1650.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1358	272	16	Unidad	BATCH6535	2025-06-15	87	36.00	0.00	0.00	0.00	5481.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1359	272	17	Unidad	BATCH9808	2025-04-15	92	27.00	0.00	0.00	0.00	2852.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1360	272	30	Unidad	BATCH6277	2025-01-15	87	34.00	0.00	0.00	0.00	2697.00	2024-11-01 15:10:00	2024-11-01 15:10:00
1361	273	8	Unidad	BATCH6965	2025-05-15	91	34.00	0.00	0.00	0.00	2639.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1362	273	16	Unidad	BATCH6392	2025-01-15	81	22.00	0.00	0.00	0.00	5670.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1363	273	17	Unidad	BATCH9261	2025-06-15	68	82.00	0.00	0.00	0.00	4080.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1364	273	23	Unidad	BATCH6251	2025-02-15	67	31.00	0.00	0.00	0.00	4221.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1365	273	27	Unidad	BATCH4499	2025-04-15	62	72.00	0.00	0.00	0.00	2666.00	2024-11-19 10:30:00	2024-11-19 10:30:00
1366	274	3	Unidad	BATCH5007	2025-04-15	90	90.00	0.00	0.00	0.00	7740.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1367	274	11	Unidad	BATCH5611	2025-02-15	60	41.00	0.00	0.00	0.00	2760.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1368	274	13	Unidad	BATCH9802	2025-05-15	93	86.00	0.00	0.00	0.00	9207.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1369	274	25	Unidad	BATCH5580	2025-02-15	76	70.00	0.00	0.00	0.00	3876.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1370	274	29	Unidad	BATCH6123	2025-03-15	75	45.00	0.00	0.00	0.00	5175.00	2024-11-20 12:29:00	2024-11-20 12:29:00
1371	275	5	Unidad	BATCH2851	2025-03-15	76	79.00	0.00	0.00	0.00	2204.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1372	275	14	Unidad	BATCH8794	2025-06-15	66	59.00	0.00	0.00	0.00	5346.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1373	275	22	Unidad	BATCH7411	2025-01-15	57	71.00	0.00	0.00	0.00	3933.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1374	275	24	Unidad	BATCH5477	2025-06-15	69	36.00	0.00	0.00	0.00	4347.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1375	275	25	Unidad	BATCH7147	2025-03-15	96	97.00	0.00	0.00	0.00	7968.00	2024-11-15 11:05:00	2024-11-15 11:05:00
1376	276	9	Unidad	BATCH1825	2025-04-15	89	86.00	0.00	0.00	0.00	7298.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1377	276	11	Unidad	BATCH7882	2025-06-15	72	41.00	0.00	0.00	0.00	7056.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1378	276	12	Unidad	BATCH8455	2025-02-15	91	60.00	0.00	0.00	0.00	5915.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1379	276	17	Unidad	BATCH1987	2025-02-15	58	98.00	0.00	0.00	0.00	5510.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1380	276	27	Unidad	BATCH9749	2025-06-15	92	91.00	0.00	0.00	0.00	6348.00	2024-11-26 12:42:00	2024-11-26 12:42:00
1381	277	4	Unidad	BATCH7064	2025-01-15	99	95.00	0.00	0.00	0.00	5940.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1382	277	5	Unidad	BATCH7888	2025-02-15	96	31.00	0.00	0.00	0.00	6432.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1383	277	7	Unidad	BATCH2718	2025-04-15	94	22.00	0.00	0.00	0.00	3102.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1384	277	12	Unidad	BATCH4865	2025-02-15	53	52.00	0.00	0.00	0.00	1060.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1385	277	26	Unidad	BATCH1153	2025-01-15	98	28.00	0.00	0.00	0.00	6174.00	2024-11-26 13:44:00	2024-11-26 13:44:00
1386	278	1	Unidad	BATCH4235	2025-06-15	53	63.00	0.00	0.00	0.00	2491.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1387	278	12	Unidad	BATCH7193	2025-06-15	61	69.00	0.00	0.00	0.00	4941.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1388	278	15	Unidad	BATCH2056	2025-03-15	64	57.00	0.00	0.00	0.00	2816.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1389	278	24	Unidad	BATCH9025	2025-03-15	94	61.00	0.00	0.00	0.00	6956.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1390	278	28	Unidad	BATCH2271	2025-02-15	87	98.00	0.00	0.00	0.00	4002.00	2024-11-19 14:08:00	2024-11-19 14:08:00
1391	279	1	Unidad	BATCH2616	2025-02-15	72	90.00	0.00	0.00	0.00	1800.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1392	279	2	Unidad	BATCH4103	2025-02-15	68	95.00	0.00	0.00	0.00	4896.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1393	279	6	Unidad	BATCH2621	2025-03-15	58	90.00	0.00	0.00	0.00	1218.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1394	279	7	Unidad	BATCH9958	2025-06-15	65	36.00	0.00	0.00	0.00	3185.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1395	279	12	Unidad	BATCH9076	2025-06-15	53	76.00	0.00	0.00	0.00	1749.00	2024-11-17 15:12:00	2024-11-17 15:12:00
1396	280	9	Unidad	BATCH7940	2025-03-15	95	54.00	0.00	0.00	0.00	7695.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1397	280	13	Unidad	BATCH1521	2025-01-15	70	39.00	0.00	0.00	0.00	2800.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1398	280	18	Unidad	BATCH3339	2025-01-15	79	48.00	0.00	0.00	0.00	1659.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1399	280	20	Unidad	BATCH5639	2025-06-15	74	36.00	0.00	0.00	0.00	6364.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1400	280	30	Unidad	BATCH8197	2025-06-15	72	86.00	0.00	0.00	0.00	6048.00	2024-11-24 12:04:00	2024-11-24 12:04:00
1401	281	6	Unidad	BATCH1093	2025-03-15	61	28.00	0.00	0.00	0.00	3477.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1402	281	8	Unidad	BATCH8346	2025-01-15	55	96.00	0.00	0.00	0.00	1320.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1403	281	9	Unidad	BATCH8812	2025-01-15	84	60.00	0.00	0.00	0.00	5544.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1404	281	14	Unidad	BATCH4747	2025-06-15	100	77.00	0.00	0.00	0.00	7800.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1405	281	29	Unidad	BATCH2258	2025-01-15	63	23.00	0.00	0.00	0.00	2457.00	2024-11-04 12:24:00	2024-11-04 12:24:00
1406	282	7	Unidad	BATCH4285	2025-06-15	58	87.00	0.00	0.00	0.00	5336.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1407	282	9	Unidad	BATCH4964	2025-06-15	84	25.00	0.00	0.00	0.00	5124.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1408	282	10	Unidad	BATCH2185	2025-05-15	77	44.00	0.00	0.00	0.00	4697.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1409	282	15	Unidad	BATCH5692	2025-04-15	82	100.00	0.00	0.00	0.00	3444.00	2024-11-22 09:19:00	2024-11-22 09:19:00
1410	282	23	Unidad	BATCH8378	2025-05-15	75	91.00	0.00	0.00	0.00	5400.00	2024-11-22 09:19:00	2024-11-22 09:19:00
\.


--
-- Data for Name: purchases; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.purchases (id, supplier_id, warehouse_id, payment_receipt_id, type_document, payment_receipt_code, date_of_entry, igv, exchange_rate, payment_condition, status, currency_type, observation, sale_value, total_igv, exonerated, subtotal, total_freight, total, created_at, updated_at) FROM stdin;
1	17	7	71	Factura	PR6108	2024-09-06	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3430.08	0.00	19056.00	0.00	22486.08	2024-09-06 10:52:00	2024-09-06 10:52:00
2	9	2	72	Boleta	PR7845	2024-09-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4166.64	0.00	23148.00	0.00	27314.64	2024-09-14 11:48:00	2024-09-14 11:48:00
3	13	8	73	Factura	PR4654	2024-09-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5233.68	0.00	29076.00	0.00	34309.68	2024-09-13 15:58:00	2024-09-13 15:58:00
4	15	5	74	Boleta	PR1961	2024-09-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4198.68	0.00	23326.00	0.00	27524.68	2024-09-27 08:36:00	2024-09-27 08:36:00
5	11	7	75	Factura	PR7335	2024-09-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4710.06	0.00	26167.00	0.00	30877.06	2024-09-11 14:23:00	2024-09-11 14:23:00
6	4	5	76	Boleta	PR3051	2024-09-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4015.80	0.00	22310.00	0.00	26325.80	2024-09-09 14:41:00	2024-09-09 14:41:00
7	6	1	77	Boleta	PR6626	2024-09-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3100.14	0.00	17223.00	0.00	20323.14	2024-09-14 14:41:00	2024-09-14 14:41:00
8	15	7	78	Factura	PR2151	2024-09-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3879.18	0.00	21551.00	0.00	25430.18	2024-09-18 12:22:00	2024-09-18 12:22:00
9	2	7	79	Factura	PR2203	2024-09-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3637.44	0.00	20208.00	0.00	23845.44	2024-09-30 09:55:00	2024-09-30 09:55:00
10	10	7	80	Factura	PR3084	2024-09-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5017.32	0.00	27874.00	0.00	32891.32	2024-09-10 09:01:00	2024-09-10 09:01:00
11	13	2	81	Boleta	PR5609	2024-09-07	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4207.32	0.00	23374.00	0.00	27581.32	2024-09-07 15:28:00	2024-09-07 15:28:00
12	12	8	82	Factura	PR9355	2024-09-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3660.66	0.00	20337.00	0.00	23997.66	2024-09-24 15:02:00	2024-09-24 15:02:00
13	11	1	83	Factura	PR9793	2024-09-07	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4527.18	0.00	25151.00	0.00	29678.18	2024-09-07 14:30:00	2024-09-07 14:30:00
14	11	8	84	Boleta	PR8096	2024-09-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3506.40	0.00	19480.00	0.00	22986.40	2024-09-13 13:37:00	2024-09-13 13:37:00
15	18	2	85	Factura	PR8313	2024-09-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3108.78	0.00	17271.00	0.00	20379.78	2024-09-20 09:36:00	2024-09-20 09:36:00
16	11	1	86	Boleta	PR1822	2024-09-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4118.04	0.00	22878.00	0.00	26996.04	2024-09-09 15:25:00	2024-09-09 15:25:00
17	8	2	87	Boleta	PR9956	2024-09-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3972.24	0.00	22068.00	0.00	26040.24	2024-09-22 10:11:00	2024-09-22 10:11:00
18	7	9	88	Factura	PR8540	2024-09-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3381.30	0.00	18785.00	0.00	22166.30	2024-09-05 14:29:00	2024-09-05 14:29:00
19	19	5	89	Boleta	PR5271	2024-09-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3902.76	0.00	21682.00	0.00	25584.76	2024-09-13 12:24:00	2024-09-13 12:24:00
20	5	1	90	Factura	PR2675	2024-09-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3079.80	0.00	17110.00	0.00	20189.80	2024-09-04 09:40:00	2024-09-04 09:40:00
21	16	7	91	Boleta	PR6982	2024-09-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3429.00	0.00	19050.00	0.00	22479.00	2024-09-16 10:33:00	2024-09-16 10:33:00
22	13	1	92	Factura	PR9333	2024-09-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4368.96	0.00	24272.00	0.00	28640.96	2024-09-21 15:49:00	2024-09-21 15:49:00
23	8	3	93	Factura	PR3597	2024-09-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4006.62	0.00	22259.00	0.00	26265.62	2024-09-25 15:52:00	2024-09-25 15:52:00
24	10	2	94	Boleta	PR1779	2024-09-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5831.28	0.00	32396.00	0.00	38227.28	2024-09-02 12:50:00	2024-09-02 12:50:00
25	19	8	95	Factura	PR5969	2024-09-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4242.24	0.00	23568.00	0.00	27810.24	2024-09-29 14:56:00	2024-09-29 14:56:00
26	20	5	96	Boleta	PR9116	2024-09-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3105.54	0.00	17253.00	0.00	20358.54	2024-09-18 10:56:00	2024-09-18 10:56:00
27	17	6	97	Boleta	PR5777	2024-09-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3639.78	0.00	20221.00	0.00	23860.78	2024-09-27 08:58:00	2024-09-27 08:58:00
28	5	1	98	Boleta	PR2486	2024-09-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3640.86	0.00	20227.00	0.00	23867.86	2024-09-25 13:22:00	2024-09-25 13:22:00
29	10	8	99	Factura	PR1059	2024-09-03	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4147.92	0.00	23044.00	0.00	27191.92	2024-09-03 10:18:00	2024-09-03 10:18:00
30	17	8	100	Boleta	PR4059	2024-09-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5097.78	0.00	28321.00	0.00	33418.78	2024-09-02 13:42:00	2024-09-02 13:42:00
31	5	5	101	Factura	PR4125	2024-09-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4735.26	0.00	26307.00	0.00	31042.26	2024-09-21 11:06:00	2024-09-21 11:06:00
32	16	4	102	Boleta	PR6191	2024-09-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4271.22	0.00	23729.00	0.00	28000.22	2024-09-18 16:05:00	2024-09-18 16:05:00
33	19	8	103	Factura	PR5735	2024-09-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4118.40	0.00	22880.00	0.00	26998.40	2024-09-05 13:39:00	2024-09-05 13:39:00
34	9	1	104	Boleta	PR5362	2024-09-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4327.74	0.00	24043.00	0.00	28370.74	2024-09-11 10:33:00	2024-09-11 10:33:00
35	6	7	105	Factura	PR8203	2024-09-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2588.04	0.00	14378.00	0.00	16966.04	2024-09-10 08:19:00	2024-09-10 08:19:00
36	1	6	106	Factura	PR9227	2024-09-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3466.44	0.00	19258.00	0.00	22724.44	2024-09-08 16:53:00	2024-09-08 16:53:00
37	4	8	107	Boleta	PR8376	2024-09-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3751.92	0.00	20844.00	0.00	24595.92	2024-09-17 10:24:00	2024-09-17 10:24:00
38	4	2	108	Boleta	PR5414	2024-09-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4353.48	0.00	24186.00	0.00	28539.48	2024-09-21 16:16:00	2024-09-21 16:16:00
39	5	8	109	Boleta	PR5634	2024-09-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4202.64	0.00	23348.00	0.00	27550.64	2024-09-09 09:15:00	2024-09-09 09:15:00
40	1	1	110	Boleta	PR1229	2024-09-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3865.86	0.00	21477.00	0.00	25342.86	2024-09-20 16:22:00	2024-09-20 16:22:00
41	6	9	111	Boleta	PR2745	2024-09-28	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3679.56	0.00	20442.00	0.00	24121.56	2024-09-28 10:54:00	2024-09-28 10:54:00
42	8	5	112	Factura	PR1445	2024-09-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4767.48	0.00	26486.00	0.00	31253.48	2024-09-02 13:13:00	2024-09-02 13:13:00
43	13	7	113	Factura	PR3766	2024-09-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4632.66	0.00	25737.00	0.00	30369.66	2024-09-14 10:16:00	2024-09-14 10:16:00
44	8	7	114	Factura	PR3596	2024-09-15	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4951.26	0.00	27507.00	0.00	32458.26	2024-09-15 09:11:00	2024-09-15 09:11:00
45	1	4	115	Boleta	PR4998	2024-09-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3947.76	0.00	21932.00	0.00	25879.76	2024-09-10 08:58:00	2024-09-10 08:58:00
46	16	6	116	Factura	PR9043	2024-09-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3721.86	0.00	20677.00	0.00	24398.86	2024-09-02 13:22:00	2024-09-02 13:22:00
47	2	3	117	Factura	PR5449	2024-09-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3273.84	0.00	18188.00	0.00	21461.84	2024-09-22 15:53:00	2024-09-22 15:53:00
48	16	5	118	Boleta	PR3125	2024-09-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4367.70	0.00	24265.00	0.00	28632.70	2024-09-16 10:43:00	2024-09-16 10:43:00
49	16	4	119	Factura	PR2347	2024-09-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3661.56	0.00	20342.00	0.00	24003.56	2024-09-02 15:46:00	2024-09-02 15:46:00
50	13	1	120	Factura	PR9605	2024-09-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3512.52	0.00	19514.00	0.00	23026.52	2024-09-18 08:55:00	2024-09-18 08:55:00
51	10	6	121	Boleta	PR5526	2024-09-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4512.60	0.00	25070.00	0.00	29582.60	2024-09-23 09:50:00	2024-09-23 09:50:00
52	13	7	122	Boleta	PR1745	2024-09-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3282.84	0.00	18238.00	0.00	21520.84	2024-09-11 13:27:00	2024-09-11 13:27:00
53	2	9	123	Factura	PR3100	2024-09-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3710.70	0.00	20615.00	0.00	24325.70	2024-09-10 10:18:00	2024-09-10 10:18:00
54	5	1	124	Boleta	PR2861	2024-09-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2870.64	0.00	15948.00	0.00	18818.64	2024-09-01 15:00:00	2024-09-01 15:00:00
55	2	4	125	Factura	PR7200	2024-09-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3524.94	0.00	19583.00	0.00	23107.94	2024-09-13 16:49:00	2024-09-13 16:49:00
56	4	9	126	Boleta	PR9594	2024-09-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4262.40	0.00	23680.00	0.00	27942.40	2024-09-16 11:47:00	2024-09-16 11:47:00
57	5	9	127	Factura	PR9562	2024-09-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3356.10	0.00	18645.00	0.00	22001.10	2024-09-20 16:45:00	2024-09-20 16:45:00
58	13	9	128	Boleta	PR2997	2024-09-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3321.36	0.00	18452.00	0.00	21773.36	2024-09-17 14:47:00	2024-09-17 14:47:00
59	8	2	129	Boleta	PR4051	2024-09-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4404.78	0.00	24471.00	0.00	28875.78	2024-09-19 10:59:00	2024-09-19 10:59:00
60	14	1	130	Factura	PR8371	2024-09-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2687.58	0.00	14931.00	0.00	17618.58	2024-09-14 09:20:00	2024-09-14 09:20:00
61	3	9	131	Boleta	PR1396	2024-09-03	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2746.80	0.00	15260.00	0.00	18006.80	2024-09-03 10:21:00	2024-09-03 10:21:00
62	20	2	132	Boleta	PR9078	2024-09-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3136.50	0.00	17425.00	0.00	20561.50	2024-09-10 13:47:00	2024-09-10 13:47:00
63	6	5	133	Factura	PR4523	2024-09-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4197.42	0.00	23319.00	0.00	27516.42	2024-09-24 16:04:00	2024-09-24 16:04:00
64	17	9	134	Boleta	PR9314	2024-09-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2893.68	0.00	16076.00	0.00	18969.68	2024-09-04 16:08:00	2024-09-04 16:08:00
65	11	2	135	Factura	PR5148	2024-09-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4356.36	0.00	24202.00	0.00	28558.36	2024-09-27 10:12:00	2024-09-27 10:12:00
66	16	1	136	Boleta	PR6661	2024-09-15	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4843.80	0.00	26910.00	0.00	31753.80	2024-09-15 10:05:00	2024-09-15 10:05:00
67	16	7	137	Boleta	PR8833	2024-09-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3012.12	0.00	16734.00	0.00	19746.12	2024-09-04 13:31:00	2024-09-04 13:31:00
68	18	1	138	Factura	PR1468	2024-09-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5039.10	0.00	27995.00	0.00	33034.10	2024-09-18 15:03:00	2024-09-18 15:03:00
69	11	9	139	Boleta	PR6327	2024-09-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5277.06	0.00	29317.00	0.00	34594.06	2024-09-02 13:08:00	2024-09-02 13:08:00
70	7	3	140	Boleta	PR7288	2024-09-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3821.04	0.00	21228.00	0.00	25049.04	2024-09-08 12:03:00	2024-09-08 12:03:00
71	11	1	141	Factura	PR6747	2024-09-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3339.54	0.00	18553.00	0.00	21892.54	2024-09-01 09:17:00	2024-09-01 09:17:00
72	6	7	142	Boleta	PR8562	2024-09-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5434.38	0.00	30191.00	0.00	35625.38	2024-09-18 11:17:00	2024-09-18 11:17:00
73	2	3	143	Boleta	PR4930	2024-09-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4640.04	0.00	25778.00	0.00	30418.04	2024-09-23 11:00:00	2024-09-23 11:00:00
74	20	1	144	Factura	PR8193	2024-09-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3487.50	0.00	19375.00	0.00	22862.50	2024-09-14 10:58:00	2024-09-14 10:58:00
75	12	8	145	Factura	PR8496	2024-09-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5284.62	0.00	29359.00	0.00	34643.62	2024-09-25 10:22:00	2024-09-25 10:22:00
76	14	8	146	Factura	PR8525	2024-09-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3345.66	0.00	18587.00	0.00	21932.66	2024-09-29 16:10:00	2024-09-29 16:10:00
77	20	6	147	Factura	PR4150	2024-09-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6131.70	0.00	34065.00	0.00	40196.70	2024-09-29 14:55:00	2024-09-29 14:55:00
78	9	3	148	Boleta	PR2967	2024-09-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2239.56	0.00	12442.00	0.00	14681.56	2024-09-08 13:16:00	2024-09-08 13:16:00
79	17	1	149	Factura	PR6581	2024-09-03	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4061.70	0.00	22565.00	0.00	26626.70	2024-09-03 08:45:00	2024-09-03 08:45:00
80	13	8	150	Factura	PR2671	2024-09-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	1925.82	0.00	10699.00	0.00	12624.82	2024-09-24 13:48:00	2024-09-24 13:48:00
81	11	1	151	Factura	PR1278	2024-09-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3901.32	0.00	21674.00	0.00	25575.32	2024-09-01 09:04:00	2024-09-01 09:04:00
82	11	4	152	Boleta	PR5390	2024-09-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2848.50	0.00	15825.00	0.00	18673.50	2024-09-26 13:16:00	2024-09-26 13:16:00
83	9	6	153	Boleta	PR9979	2024-09-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4023.72	0.00	22354.00	0.00	26377.72	2024-09-21 16:52:00	2024-09-21 16:52:00
84	15	4	154	Boleta	PR4898	2024-09-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4018.68	0.00	22326.00	0.00	26344.68	2024-09-04 16:17:00	2024-09-04 16:17:00
85	6	4	155	Boleta	PR1006	2024-09-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4334.04	0.00	24078.00	0.00	28412.04	2024-09-13 16:26:00	2024-09-13 16:26:00
86	10	9	156	Factura	PR4031	2024-09-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3421.26	0.00	19007.00	0.00	22428.26	2024-09-25 10:34:00	2024-09-25 10:34:00
87	10	6	157	Boleta	PR4263	2024-09-03	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4626.00	0.00	25700.00	0.00	30326.00	2024-09-03 12:26:00	2024-09-03 12:26:00
88	3	8	158	Boleta	PR7709	2024-09-06	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5202.72	0.00	28904.00	0.00	34106.72	2024-09-06 15:03:00	2024-09-06 15:03:00
89	2	1	159	Factura	PR9726	2024-09-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4245.12	0.00	23584.00	0.00	27829.12	2024-09-12 16:56:00	2024-09-12 16:56:00
90	1	4	160	Factura	PR4107	2024-09-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4133.88	0.00	22966.00	0.00	27099.88	2024-09-09 10:54:00	2024-09-09 10:54:00
91	14	2	161	Boleta	PR7609	2024-09-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3449.88	0.00	19166.00	0.00	22615.88	2024-09-29 11:38:00	2024-09-29 11:38:00
92	9	9	162	Factura	PR5902	2024-09-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3675.96	0.00	20422.00	0.00	24097.96	2024-09-12 11:21:00	2024-09-12 11:21:00
93	12	9	163	Boleta	PR9897	2024-09-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3183.84	0.00	17688.00	0.00	20871.84	2024-09-23 09:53:00	2024-09-23 09:53:00
94	2	2	164	Factura	PR4470	2024-09-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6367.68	0.00	35376.00	0.00	41743.68	2024-09-08 11:42:00	2024-09-08 11:42:00
95	9	8	165	Factura	PR2489	2024-10-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3318.12	0.00	18434.00	0.00	21752.12	2024-10-02 10:04:00	2024-10-02 10:04:00
96	1	1	166	Boleta	PR1414	2024-10-06	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3225.60	0.00	17920.00	0.00	21145.60	2024-10-06 12:54:00	2024-10-06 12:54:00
97	7	1	167	Factura	PR5009	2024-10-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3872.52	0.00	21514.00	0.00	25386.52	2024-10-29 13:32:00	2024-10-29 13:32:00
98	16	5	168	Factura	PR6953	2024-10-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4988.88	0.00	27716.00	0.00	32704.88	2024-10-24 11:51:00	2024-10-24 11:51:00
99	6	1	169	Boleta	PR8473	2024-10-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4738.68	0.00	26326.00	0.00	31064.68	2024-10-24 11:07:00	2024-10-24 11:07:00
100	9	3	170	Boleta	PR4395	2024-10-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4461.12	0.00	24784.00	0.00	29245.12	2024-10-02 11:17:00	2024-10-02 11:17:00
101	1	8	171	Boleta	PR7938	2024-10-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3559.14	0.00	19773.00	0.00	23332.14	2024-10-11 12:51:00	2024-10-11 12:51:00
102	18	2	172	Factura	PR7739	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3561.48	0.00	19786.00	0.00	23347.48	2024-10-13 08:01:00	2024-10-13 08:01:00
103	8	3	173	Factura	PR9575	2024-10-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5255.64	0.00	29198.00	0.00	34453.64	2024-10-29 12:12:00	2024-10-29 12:12:00
104	15	5	174	Boleta	PR7008	2024-10-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4398.84	0.00	24438.00	0.00	28836.84	2024-10-04 11:23:00	2024-10-04 11:23:00
105	3	2	175	Factura	PR5895	2024-10-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4801.32	0.00	26674.00	0.00	31475.32	2024-10-17 09:42:00	2024-10-17 09:42:00
106	3	1	176	Factura	PR2556	2024-10-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4720.86	0.00	26227.00	0.00	30947.86	2024-10-11 10:17:00	2024-10-11 10:17:00
107	9	7	177	Factura	PR8320	2024-10-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4219.56	0.00	23442.00	0.00	27661.56	2024-10-16 12:20:00	2024-10-16 12:20:00
108	12	9	178	Boleta	PR9548	2024-10-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3004.38	0.00	16691.00	0.00	19695.38	2024-10-17 14:43:00	2024-10-17 14:43:00
109	8	5	179	Factura	PR8443	2024-10-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4796.46	0.00	26647.00	0.00	31443.46	2024-10-20 13:18:00	2024-10-20 13:18:00
110	14	4	180	Boleta	PR4639	2024-10-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	1939.50	0.00	10775.00	0.00	12714.50	2024-10-30 14:26:00	2024-10-30 14:26:00
111	9	3	181	Boleta	PR8157	2024-10-28	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4195.44	0.00	23308.00	0.00	27503.44	2024-10-28 08:20:00	2024-10-28 08:20:00
112	12	1	182	Boleta	PR9080	2024-10-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2823.48	0.00	15686.00	0.00	18509.48	2024-10-09 15:37:00	2024-10-09 15:37:00
113	10	8	183	Factura	PR4456	2024-10-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4069.44	0.00	22608.00	0.00	26677.44	2024-10-21 16:10:00	2024-10-21 16:10:00
114	8	1	184	Factura	PR1381	2024-10-07	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2162.52	0.00	12014.00	0.00	14176.52	2024-10-07 12:01:00	2024-10-07 12:01:00
115	1	7	185	Factura	PR6905	2024-10-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4598.10	0.00	25545.00	0.00	30143.10	2024-10-08 13:53:00	2024-10-08 13:53:00
116	12	5	186	Factura	PR8498	2024-10-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4595.58	0.00	25531.00	0.00	30126.58	2024-10-20 16:30:00	2024-10-20 16:30:00
117	19	5	187	Factura	PR1780	2024-10-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4257.36	0.00	23652.00	0.00	27909.36	2024-10-20 16:16:00	2024-10-20 16:16:00
118	15	8	188	Boleta	PR4351	2024-10-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2804.40	0.00	15580.00	0.00	18384.40	2024-10-23 11:55:00	2024-10-23 11:55:00
119	10	7	189	Factura	PR7491	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3681.36	0.00	20452.00	0.00	24133.36	2024-10-26 13:21:00	2024-10-26 13:21:00
120	11	1	190	Factura	PR1506	2024-10-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2618.10	0.00	14545.00	0.00	17163.10	2024-10-22 08:32:00	2024-10-22 08:32:00
121	13	9	191	Factura	PR3911	2024-10-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4675.32	0.00	25974.00	0.00	30649.32	2024-10-25 12:41:00	2024-10-25 12:41:00
122	12	2	192	Boleta	PR4829	2024-10-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4010.58	0.00	22281.00	0.00	26291.58	2024-10-17 09:45:00	2024-10-17 09:45:00
123	8	5	193	Boleta	PR3419	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4538.16	0.00	25212.00	0.00	29750.16	2024-10-26 14:26:00	2024-10-26 14:26:00
124	10	7	194	Factura	PR4790	2024-10-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3727.62	0.00	20709.00	0.00	24436.62	2024-10-08 13:14:00	2024-10-08 13:14:00
125	9	6	195	Boleta	PR3170	2024-10-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4168.26	0.00	23157.00	0.00	27325.26	2024-10-16 14:54:00	2024-10-16 14:54:00
126	11	6	196	Boleta	PR1555	2024-10-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4514.04	0.00	25078.00	0.00	29592.04	2024-10-08 16:38:00	2024-10-08 16:38:00
127	8	6	197	Factura	PR8601	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4233.60	0.00	23520.00	0.00	27753.60	2024-10-05 08:29:00	2024-10-05 08:29:00
128	14	5	198	Factura	PR9337	2024-10-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3857.76	0.00	21432.00	0.00	25289.76	2024-10-09 14:05:00	2024-10-09 14:05:00
129	14	1	199	Factura	PR8729	2024-10-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4039.38	0.00	22441.00	0.00	26480.38	2024-10-21 08:25:00	2024-10-21 08:25:00
130	14	6	200	Boleta	PR7424	2024-10-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3484.98	0.00	19361.00	0.00	22845.98	2024-10-18 16:54:00	2024-10-18 16:54:00
131	18	7	201	Boleta	PR4592	2024-10-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6067.62	0.00	33709.00	0.00	39776.62	2024-10-14 16:47:00	2024-10-14 16:47:00
132	3	9	202	Boleta	PR1465	2024-10-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4002.48	0.00	22236.00	0.00	26238.48	2024-10-24 16:06:00	2024-10-24 16:06:00
133	8	3	203	Boleta	PR6028	2024-10-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4546.98	0.00	25261.00	0.00	29807.98	2024-10-19 14:24:00	2024-10-19 14:24:00
134	17	5	204	Factura	PR9097	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2372.94	0.00	13183.00	0.00	15555.94	2024-10-26 16:15:00	2024-10-26 16:15:00
135	10	7	205	Factura	PR5654	2024-10-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4313.88	0.00	23966.00	0.00	28279.88	2024-10-22 14:36:00	2024-10-22 14:36:00
136	18	2	206	Boleta	PR2471	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5287.50	0.00	29375.00	0.00	34662.50	2024-10-13 12:45:00	2024-10-13 12:45:00
137	16	2	207	Factura	PR2592	2024-10-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3846.06	0.00	21367.00	0.00	25213.06	2024-10-24 16:18:00	2024-10-24 16:18:00
138	1	6	208	Factura	PR7740	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3841.56	0.00	21342.00	0.00	25183.56	2024-10-26 16:21:00	2024-10-26 16:21:00
139	17	2	209	Boleta	PR6587	2024-10-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3485.16	0.00	19362.00	0.00	22847.16	2024-10-08 11:31:00	2024-10-08 11:31:00
140	15	9	210	Factura	PR6407	2024-10-28	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6038.64	0.00	33548.00	0.00	39586.64	2024-10-28 13:05:00	2024-10-28 13:05:00
141	17	2	211	Boleta	PR6372	2024-10-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3042.00	0.00	16900.00	0.00	19942.00	2024-10-23 15:39:00	2024-10-23 15:39:00
142	2	4	212	Factura	PR6659	2024-10-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2838.06	0.00	15767.00	0.00	18605.06	2024-10-24 12:23:00	2024-10-24 12:23:00
143	3	5	213	Factura	PR8239	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2359.80	0.00	13110.00	0.00	15469.80	2024-10-13 10:10:00	2024-10-13 10:10:00
144	20	5	214	Boleta	PR7847	2024-10-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3554.82	0.00	19749.00	0.00	23303.82	2024-10-16 12:27:00	2024-10-16 12:27:00
145	4	1	215	Boleta	PR9070	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4918.14	0.00	27323.00	0.00	32241.14	2024-10-13 15:00:00	2024-10-13 15:00:00
146	11	4	216	Boleta	PR3349	2024-10-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2526.84	0.00	14038.00	0.00	16564.84	2024-10-11 14:00:00	2024-10-11 14:00:00
147	2	4	217	Boleta	PR6820	2024-10-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5078.88	0.00	28216.00	0.00	33294.88	2024-10-17 09:39:00	2024-10-17 09:39:00
148	11	4	218	Factura	PR2113	2024-10-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	1953.18	0.00	10851.00	0.00	12804.18	2024-10-11 13:34:00	2024-10-11 13:34:00
149	1	8	219	Boleta	PR3291	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3799.26	0.00	21107.00	0.00	24906.26	2024-10-05 09:57:00	2024-10-05 09:57:00
150	13	3	220	Factura	PR3558	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5660.28	0.00	31446.00	0.00	37106.28	2024-10-05 15:47:00	2024-10-05 15:47:00
151	20	5	221	Boleta	PR1227	2024-10-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4298.40	0.00	23880.00	0.00	28178.40	2024-10-23 08:26:00	2024-10-23 08:26:00
152	5	1	222	Boleta	PR5122	2024-10-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5560.02	0.00	30889.00	0.00	36449.02	2024-10-22 09:56:00	2024-10-22 09:56:00
153	3	8	223	Boleta	PR1909	2024-10-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5004.72	0.00	27804.00	0.00	32808.72	2024-10-22 10:05:00	2024-10-22 10:05:00
154	11	3	224	Factura	PR2206	2024-10-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3499.92	0.00	19444.00	0.00	22943.92	2024-10-25 09:23:00	2024-10-25 09:23:00
155	1	2	225	Boleta	PR3139	2024-10-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3290.58	0.00	18281.00	0.00	21571.58	2024-10-23 09:37:00	2024-10-23 09:37:00
156	18	4	226	Boleta	PR7304	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2930.04	0.00	16278.00	0.00	19208.04	2024-10-26 09:45:00	2024-10-26 09:45:00
157	1	4	227	Factura	PR4010	2024-10-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4420.80	0.00	24560.00	0.00	28980.80	2024-10-22 08:21:00	2024-10-22 08:21:00
158	14	3	228	Factura	PR1940	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3975.48	0.00	22086.00	0.00	26061.48	2024-10-26 09:02:00	2024-10-26 09:02:00
159	3	7	229	Factura	PR9739	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3430.62	0.00	19059.00	0.00	22489.62	2024-10-13 14:20:00	2024-10-13 14:20:00
160	14	3	230	Factura	PR4956	2024-10-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3526.56	0.00	19592.00	0.00	23118.56	2024-10-01 08:35:00	2024-10-01 08:35:00
161	3	8	231	Boleta	PR9190	2024-10-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4236.66	0.00	23537.00	0.00	27773.66	2024-10-10 11:32:00	2024-10-10 11:32:00
162	15	5	232	Boleta	PR5535	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3184.38	0.00	17691.00	0.00	20875.38	2024-10-13 13:46:00	2024-10-13 13:46:00
163	6	2	233	Factura	PR3107	2024-10-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3776.58	0.00	20981.00	0.00	24757.58	2024-10-20 15:52:00	2024-10-20 15:52:00
164	10	4	234	Factura	PR8942	2024-10-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4798.26	0.00	26657.00	0.00	31455.26	2024-10-04 13:17:00	2024-10-04 13:17:00
165	2	7	235	Boleta	PR1428	2024-10-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4981.86	0.00	27677.00	0.00	32658.86	2024-10-25 14:41:00	2024-10-25 14:41:00
166	11	9	236	Factura	PR9865	2024-10-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3644.46	0.00	20247.00	0.00	23891.46	2024-10-27 12:59:00	2024-10-27 12:59:00
167	1	3	237	Factura	PR6104	2024-10-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3801.96	0.00	21122.00	0.00	24923.96	2024-10-23 11:21:00	2024-10-23 11:21:00
168	9	2	238	Boleta	PR2884	2024-10-28	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4298.04	0.00	23878.00	0.00	28176.04	2024-10-28 08:53:00	2024-10-28 08:53:00
169	11	2	239	Boleta	PR1286	2024-10-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4944.24	0.00	27468.00	0.00	32412.24	2024-10-29 13:57:00	2024-10-29 13:57:00
170	10	7	240	Factura	PR1858	2024-10-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4785.84	0.00	26588.00	0.00	31373.84	2024-10-10 10:51:00	2024-10-10 10:51:00
171	2	2	241	Factura	PR3915	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3895.38	0.00	21641.00	0.00	25536.38	2024-10-05 15:02:00	2024-10-05 15:02:00
172	11	4	242	Factura	PR7661	2024-10-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4398.12	0.00	24434.00	0.00	28832.12	2024-10-11 15:39:00	2024-10-11 15:39:00
173	2	4	243	Boleta	PR9961	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4352.94	0.00	24183.00	0.00	28535.94	2024-10-05 11:53:00	2024-10-05 11:53:00
174	7	4	244	Boleta	PR8635	2024-10-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4460.58	0.00	24781.00	0.00	29241.58	2024-10-11 16:15:00	2024-10-11 16:15:00
175	18	1	245	Factura	PR6033	2024-10-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5059.80	0.00	28110.00	0.00	33169.80	2024-10-01 08:27:00	2024-10-01 08:27:00
176	4	1	246	Factura	PR5515	2024-10-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4586.76	0.00	25482.00	0.00	30068.76	2024-10-30 12:18:00	2024-10-30 12:18:00
177	16	7	247	Factura	PR2367	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4269.60	0.00	23720.00	0.00	27989.60	2024-10-05 09:18:00	2024-10-05 09:18:00
178	11	2	248	Factura	PR8058	2024-10-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3196.26	0.00	17757.00	0.00	20953.26	2024-10-13 10:26:00	2024-10-13 10:26:00
179	10	4	249	Factura	PR1510	2024-10-03	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3731.76	0.00	20732.00	0.00	24463.76	2024-10-03 10:32:00	2024-10-03 10:32:00
180	12	5	250	Factura	PR6167	2024-10-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3759.84	0.00	20888.00	0.00	24647.84	2024-10-18 11:33:00	2024-10-18 11:33:00
181	19	7	251	Boleta	PR8301	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6351.84	0.00	35288.00	0.00	41639.84	2024-10-26 08:11:00	2024-10-26 08:11:00
182	9	1	252	Factura	PR9724	2024-10-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5727.78	0.00	31821.00	0.00	37548.78	2024-10-08 10:07:00	2024-10-08 10:07:00
183	20	1	253	Boleta	PR5366	2024-10-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3775.86	0.00	20977.00	0.00	24752.86	2024-10-01 13:36:00	2024-10-01 13:36:00
184	15	9	254	Factura	PR6516	2024-10-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4219.20	0.00	23440.00	0.00	27659.20	2024-10-10 11:31:00	2024-10-10 11:31:00
185	12	8	255	Boleta	PR6312	2024-10-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4402.80	0.00	24460.00	0.00	28862.80	2024-10-17 16:11:00	2024-10-17 16:11:00
186	17	2	256	Boleta	PR6882	2024-10-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2250.36	0.00	12502.00	0.00	14752.36	2024-10-26 09:42:00	2024-10-26 09:42:00
187	18	8	257	Factura	PR4053	2024-10-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4986.00	0.00	27700.00	0.00	32686.00	2024-10-05 15:45:00	2024-10-05 15:45:00
188	19	2	258	Boleta	PR3493	2024-10-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3717.36	0.00	20652.00	0.00	24369.36	2024-10-30 08:45:00	2024-10-30 08:45:00
189	17	4	259	Boleta	PR3355	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4854.42	0.00	26969.00	0.00	31823.42	2024-11-24 08:59:00	2024-11-24 08:59:00
190	6	7	260	Boleta	PR5814	2024-11-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3686.22	0.00	20479.00	0.00	24165.22	2024-11-01 16:48:00	2024-11-01 16:48:00
191	5	6	261	Boleta	PR7380	2024-11-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3316.50	0.00	18425.00	0.00	21741.50	2024-11-02 11:00:00	2024-11-02 11:00:00
192	3	7	262	Factura	PR5514	2024-11-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3622.86	0.00	20127.00	0.00	23749.86	2024-11-27 15:45:00	2024-11-27 15:45:00
193	3	2	263	Boleta	PR5503	2024-11-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4681.08	0.00	26006.00	0.00	30687.08	2024-11-18 11:03:00	2024-11-18 11:03:00
194	18	2	264	Factura	PR5268	2024-11-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3449.16	0.00	19162.00	0.00	22611.16	2024-11-20 16:10:00	2024-11-20 16:10:00
195	16	4	265	Factura	PR3084	2024-11-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3715.38	0.00	20641.00	0.00	24356.38	2024-11-29 14:23:00	2024-11-29 14:23:00
196	4	3	266	Factura	PR2325	2024-11-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3329.46	0.00	18497.00	0.00	21826.46	2024-11-27 12:57:00	2024-11-27 12:57:00
197	18	1	267	Boleta	PR9335	2024-11-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3184.20	0.00	17690.00	0.00	20874.20	2024-11-30 15:47:00	2024-11-30 15:47:00
198	19	5	268	Boleta	PR2894	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3974.22	0.00	22079.00	0.00	26053.22	2024-11-12 10:34:00	2024-11-12 10:34:00
199	9	8	269	Factura	PR8569	2024-11-15	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5749.92	0.00	31944.00	0.00	37693.92	2024-11-15 09:13:00	2024-11-15 09:13:00
200	14	1	270	Boleta	PR3738	2024-11-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5150.34	0.00	28613.00	0.00	33763.34	2024-11-22 14:45:00	2024-11-22 14:45:00
201	10	1	271	Boleta	PR2568	2024-11-05	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4330.98	0.00	24061.00	0.00	28391.98	2024-11-05 13:57:00	2024-11-05 13:57:00
202	7	8	272	Boleta	PR8695	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2398.14	0.00	13323.00	0.00	15721.14	2024-11-24 11:04:00	2024-11-24 11:04:00
203	15	1	273	Boleta	PR5740	2024-11-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3321.54	0.00	18453.00	0.00	21774.54	2024-11-26 15:59:00	2024-11-26 15:59:00
204	11	6	274	Boleta	PR9671	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4093.38	0.00	22741.00	0.00	26834.38	2024-11-12 10:25:00	2024-11-12 10:25:00
205	3	5	275	Boleta	PR9997	2024-11-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2966.40	0.00	16480.00	0.00	19446.40	2024-11-14 11:55:00	2024-11-14 11:55:00
206	1	3	276	Boleta	PR6198	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4835.16	0.00	26862.00	0.00	31697.16	2024-11-19 11:00:00	2024-11-19 11:00:00
207	5	4	277	Boleta	PR4628	2024-11-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4928.22	0.00	27379.00	0.00	32307.22	2024-11-11 10:25:00	2024-11-11 10:25:00
208	1	3	278	Factura	PR2642	2024-11-06	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4073.94	0.00	22633.00	0.00	26706.94	2024-11-06 08:31:00	2024-11-06 08:31:00
209	13	4	279	Boleta	PR8421	2024-11-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3294.00	0.00	18300.00	0.00	21594.00	2024-11-26 10:05:00	2024-11-26 10:05:00
210	1	7	280	Factura	PR6812	2024-11-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3650.58	0.00	20281.00	0.00	23931.58	2024-11-29 09:43:00	2024-11-29 09:43:00
211	10	5	281	Factura	PR8685	2024-11-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4272.48	0.00	23736.00	0.00	28008.48	2024-11-04 08:59:00	2024-11-04 08:59:00
212	20	6	282	Boleta	PR1173	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4361.22	0.00	24229.00	0.00	28590.22	2024-11-24 16:57:00	2024-11-24 16:57:00
213	16	8	283	Boleta	PR6767	2024-11-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4350.24	0.00	24168.00	0.00	28518.24	2024-11-14 09:46:00	2024-11-14 09:46:00
214	16	9	284	Factura	PR7454	2024-11-29	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3254.76	0.00	18082.00	0.00	21336.76	2024-11-29 13:44:00	2024-11-29 13:44:00
215	3	6	285	Factura	PR3597	2024-11-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3394.98	0.00	18861.00	0.00	22255.98	2024-11-25 16:45:00	2024-11-25 16:45:00
216	10	9	286	Boleta	PR5935	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4449.60	0.00	24720.00	0.00	29169.60	2024-11-19 16:27:00	2024-11-19 16:27:00
217	10	2	287	Factura	PR7172	2024-11-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4163.94	0.00	23133.00	0.00	27296.94	2024-11-21 13:33:00	2024-11-21 13:33:00
218	20	9	288	Boleta	PR7459	2024-11-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4087.44	0.00	22708.00	0.00	26795.44	2024-11-08 10:31:00	2024-11-08 10:31:00
219	17	5	289	Factura	PR2322	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4291.02	0.00	23839.00	0.00	28130.02	2024-11-24 08:51:00	2024-11-24 08:51:00
220	17	3	290	Factura	PR6045	2024-11-07	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6298.74	0.00	34993.00	0.00	41291.74	2024-11-07 09:23:00	2024-11-07 09:23:00
221	17	5	291	Factura	PR9426	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2827.26	0.00	15707.00	0.00	18534.26	2024-11-24 12:26:00	2024-11-24 12:26:00
222	15	8	292	Boleta	PR7208	2024-11-15	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5115.06	0.00	28417.00	0.00	33532.06	2024-11-15 08:13:00	2024-11-15 08:13:00
223	6	3	293	Factura	PR4798	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4243.68	0.00	23576.00	0.00	27819.68	2024-11-12 14:53:00	2024-11-12 14:53:00
224	9	4	294	Factura	PR8110	2024-11-08	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3061.08	0.00	17006.00	0.00	20067.08	2024-11-08 13:34:00	2024-11-08 13:34:00
225	19	2	295	Factura	PR9070	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2765.16	0.00	15362.00	0.00	18127.16	2024-11-12 08:56:00	2024-11-12 08:56:00
226	18	4	296	Factura	PR9410	2024-11-06	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3865.50	0.00	21475.00	0.00	25340.50	2024-11-06 14:15:00	2024-11-06 14:15:00
227	20	8	297	Factura	PR4381	2024-11-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2960.82	0.00	16449.00	0.00	19409.82	2024-11-25 09:58:00	2024-11-25 09:58:00
228	9	2	298	Factura	PR8391	2024-11-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2984.58	0.00	16581.00	0.00	19565.58	2024-11-17 11:34:00	2024-11-17 11:34:00
229	14	8	299	Boleta	PR1476	2024-11-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4985.64	0.00	27698.00	0.00	32683.64	2024-11-01 08:59:00	2024-11-01 08:59:00
230	5	5	300	Factura	PR1285	2024-11-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3881.34	0.00	21563.00	0.00	25444.34	2024-11-16 11:40:00	2024-11-16 11:40:00
231	17	4	301	Factura	PR6473	2024-11-06	18.00	3.50	Contado	Recibido	Soles	\N	0.00	6015.06	0.00	33417.00	0.00	39432.06	2024-11-06 14:45:00	2024-11-06 14:45:00
232	11	3	302	Boleta	PR9851	2024-11-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3931.02	0.00	21839.00	0.00	25770.02	2024-11-25 10:18:00	2024-11-25 10:18:00
233	4	4	303	Boleta	PR1794	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3138.66	0.00	17437.00	0.00	20575.66	2024-11-24 12:42:00	2024-11-24 12:42:00
234	20	7	304	Boleta	PR7243	2024-11-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4462.38	0.00	24791.00	0.00	29253.38	2024-11-27 14:35:00	2024-11-27 14:35:00
235	3	5	305	Factura	PR2822	2024-11-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2960.64	0.00	16448.00	0.00	19408.64	2024-11-27 14:46:00	2024-11-27 14:46:00
236	14	3	306	Factura	PR6195	2024-11-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3966.84	0.00	22038.00	0.00	26004.84	2024-11-11 12:27:00	2024-11-11 12:27:00
237	17	6	307	Factura	PR7689	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3772.62	0.00	20959.00	0.00	24731.62	2024-11-12 16:20:00	2024-11-12 16:20:00
238	4	5	308	Boleta	PR3113	2024-11-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4018.14	0.00	22323.00	0.00	26341.14	2024-11-17 11:26:00	2024-11-17 11:26:00
239	8	7	309	Boleta	PR8061	2024-11-07	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3796.56	0.00	21092.00	0.00	24888.56	2024-11-07 16:45:00	2024-11-07 16:45:00
240	11	9	310	Factura	PR7999	2024-11-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4554.18	0.00	25301.00	0.00	29855.18	2024-11-17 10:43:00	2024-11-17 10:43:00
241	2	2	311	Factura	PR5859	2024-11-18	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2802.42	0.00	15569.00	0.00	18371.42	2024-11-18 11:55:00	2024-11-18 11:55:00
242	4	4	312	Boleta	PR6851	2024-11-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4432.86	0.00	24627.00	0.00	29059.86	2024-11-26 15:48:00	2024-11-26 15:48:00
243	8	6	313	Boleta	PR3215	2024-11-13	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2868.66	0.00	15937.00	0.00	18805.66	2024-11-13 10:27:00	2024-11-13 10:27:00
244	2	8	314	Boleta	PR4912	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4735.62	0.00	26309.00	0.00	31044.62	2024-11-19 08:04:00	2024-11-19 08:04:00
245	1	3	315	Boleta	PR5690	2024-11-11	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4324.68	0.00	24026.00	0.00	28350.68	2024-11-11 08:25:00	2024-11-11 08:25:00
246	9	8	316	Boleta	PR7127	2024-11-15	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3133.44	0.00	17408.00	0.00	20541.44	2024-11-15 08:59:00	2024-11-15 08:59:00
247	14	8	317	Boleta	PR7249	2024-11-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5361.48	0.00	29786.00	0.00	35147.48	2024-11-25 14:36:00	2024-11-25 14:36:00
248	18	7	318	Factura	PR9294	2024-11-10	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3943.80	0.00	21910.00	0.00	25853.80	2024-11-10 11:32:00	2024-11-10 11:32:00
249	3	9	319	Boleta	PR4390	2024-11-28	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5473.62	0.00	30409.00	0.00	35882.62	2024-11-28 12:49:00	2024-11-28 12:49:00
250	4	6	320	Boleta	PR7185	2024-11-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3612.06	0.00	20067.00	0.00	23679.06	2024-11-26 12:14:00	2024-11-26 12:14:00
251	15	5	321	Factura	PR3599	2024-11-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4446.54	0.00	24703.00	0.00	29149.54	2024-11-23 16:16:00	2024-11-23 16:16:00
252	11	4	322	Factura	PR8852	2024-11-16	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3993.66	0.00	22187.00	0.00	26180.66	2024-11-16 15:37:00	2024-11-16 15:37:00
253	3	7	323	Factura	PR1592	2024-11-27	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4089.60	0.00	22720.00	0.00	26809.60	2024-11-27 12:45:00	2024-11-27 12:45:00
254	16	4	324	Factura	PR8590	2024-11-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3985.56	0.00	22142.00	0.00	26127.56	2024-11-30 14:42:00	2024-11-30 14:42:00
255	2	6	325	Factura	PR7837	2024-11-02	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4171.86	0.00	23177.00	0.00	27348.86	2024-11-02 08:58:00	2024-11-02 08:58:00
256	17	7	326	Factura	PR3413	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3954.60	0.00	21970.00	0.00	25924.60	2024-11-19 13:48:00	2024-11-19 13:48:00
257	20	4	327	Factura	PR5368	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3722.94	0.00	20683.00	0.00	24405.94	2024-11-19 13:11:00	2024-11-19 13:11:00
258	1	4	328	Boleta	PR2577	2024-11-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3908.16	0.00	21712.00	0.00	25620.16	2024-11-22 10:33:00	2024-11-22 10:33:00
259	7	6	329	Factura	PR4198	2024-11-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5221.62	0.00	29009.00	0.00	34230.62	2024-11-14 12:37:00	2024-11-14 12:37:00
260	7	9	330	Boleta	PR4287	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3989.52	0.00	22164.00	0.00	26153.52	2024-11-12 15:46:00	2024-11-12 15:46:00
261	11	1	331	Boleta	PR6425	2024-11-09	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4159.08	0.00	23106.00	0.00	27265.08	2024-11-09 13:59:00	2024-11-09 13:59:00
262	12	3	332	Factura	PR9362	2024-11-25	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5507.82	0.00	30599.00	0.00	36106.82	2024-11-25 10:26:00	2024-11-25 10:26:00
263	19	3	333	Factura	PR1262	2024-11-23	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4215.78	0.00	23421.00	0.00	27636.78	2024-11-23 15:39:00	2024-11-23 15:39:00
264	17	3	334	Factura	PR8811	2024-11-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3594.96	0.00	19972.00	0.00	23566.96	2024-11-20 08:58:00	2024-11-20 08:58:00
265	4	4	335	Boleta	PR6584	2024-11-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5123.88	0.00	28466.00	0.00	33589.88	2024-11-22 10:36:00	2024-11-22 10:36:00
266	20	2	336	Boleta	PR7405	2024-11-14	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4929.48	0.00	27386.00	0.00	32315.48	2024-11-14 08:02:00	2024-11-14 08:02:00
267	8	8	337	Boleta	PR7696	2024-11-12	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3233.70	0.00	17965.00	0.00	21198.70	2024-11-12 15:08:00	2024-11-12 15:08:00
268	10	2	338	Factura	PR9732	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	5709.78	0.00	31721.00	0.00	37430.78	2024-11-24 08:45:00	2024-11-24 08:45:00
269	8	7	339	Factura	PR1243	2024-11-30	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4368.24	0.00	24268.00	0.00	28636.24	2024-11-30 15:19:00	2024-11-30 15:19:00
270	17	2	340	Boleta	PR6654	2024-11-21	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4332.96	0.00	24072.00	0.00	28404.96	2024-11-21 11:10:00	2024-11-21 11:10:00
271	10	3	341	Boleta	PR1523	2024-11-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3775.68	0.00	20976.00	0.00	24751.68	2024-11-22 12:57:00	2024-11-22 12:57:00
272	5	5	342	Boleta	PR7725	2024-11-01	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4430.88	0.00	24616.00	0.00	29046.88	2024-11-01 15:10:00	2024-11-01 15:10:00
273	8	7	343	Factura	PR9162	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3745.44	0.00	20808.00	0.00	24553.44	2024-11-19 10:30:00	2024-11-19 10:30:00
274	19	4	344	Factura	PR9644	2024-11-20	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3197.16	0.00	17762.00	0.00	20959.16	2024-11-20 12:29:00	2024-11-20 12:29:00
275	9	6	345	Boleta	PR2133	2024-11-15	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4207.86	0.00	23377.00	0.00	27584.86	2024-11-15 11:05:00	2024-11-15 11:05:00
276	12	7	346	Boleta	PR5025	2024-11-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4156.56	0.00	23092.00	0.00	27248.56	2024-11-26 12:42:00	2024-11-26 12:42:00
277	11	8	347	Boleta	PR5643	2024-11-26	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4355.28	0.00	24196.00	0.00	28551.28	2024-11-26 13:44:00	2024-11-26 13:44:00
278	8	9	348	Factura	PR8144	2024-11-19	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3808.08	0.00	21156.00	0.00	24964.08	2024-11-19 14:08:00	2024-11-19 14:08:00
279	14	7	349	Boleta	PR4132	2024-11-17	18.00	3.50	Contado	Recibido	Soles	\N	0.00	2449.26	0.00	13607.00	0.00	16056.26	2024-11-17 15:12:00	2024-11-17 15:12:00
280	14	7	350	Factura	PR2283	2024-11-24	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4925.16	0.00	27362.00	0.00	32287.16	2024-11-24 12:04:00	2024-11-24 12:04:00
281	2	9	351	Boleta	PR8205	2024-11-04	18.00	3.50	Contado	Recibido	Soles	\N	0.00	4195.08	0.00	23306.00	0.00	27501.08	2024-11-04 12:24:00	2024-11-04 12:24:00
282	13	4	352	Boleta	PR5274	2024-11-22	18.00	3.50	Contado	Recibido	Soles	\N	0.00	3015.54	0.00	16753.00	0.00	19768.54	2024-11-22 09:19:00	2024-11-22 09:19:00
\.


--
-- Data for Name: sale_details; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sale_details (id, sale_id, batch_id, quantity, unit_price, total, created_at, updated_at) FROM stdin;
1	1	342	4	82.00	328.00	2024-09-15 12:13:00	2024-09-15 12:13:00
2	1	263	39	74.00	2223.00	2024-09-15 12:13:00	2024-09-15 12:13:00
3	1	283	34	75.00	2516.00	2024-09-15 12:13:00	2024-09-15 12:13:00
4	1	290	30	45.00	900.00	2024-09-15 12:13:00	2024-09-15 12:13:00
5	1	305	43	42.00	1290.00	2024-09-15 12:13:00	2024-09-15 12:13:00
6	2	111	12	97.00	1140.00	2024-09-18 13:15:00	2024-09-18 13:15:00
7	2	112	26	73.00	2600.00	2024-09-18 13:15:00	2024-09-18 13:15:00
8	2	1176	1	54.00	77.00	2024-09-18 13:15:00	2024-09-18 13:15:00
9	2	113	10	52.00	820.00	2024-09-18 13:15:00	2024-09-18 13:15:00
10	2	770	33	20.00	2442.00	2024-09-18 13:15:00	2024-09-18 13:15:00
11	3	101	13	64.00	728.00	2024-09-30 15:47:00	2024-09-30 15:47:00
12	3	36	28	26.00	1904.00	2024-09-30 15:47:00	2024-09-30 15:47:00
13	3	102	2	57.00	104.00	2024-09-30 15:47:00	2024-09-30 15:47:00
14	3	22	37	41.00	3552.00	2024-09-30 15:47:00	2024-09-30 15:47:00
15	3	45	26	29.00	988.00	2024-09-30 15:47:00	2024-09-30 15:47:00
16	4	221	18	34.00	1548.00	2024-09-16 08:25:00	2024-09-16 08:25:00
17	4	222	28	94.00	784.00	2024-09-16 08:25:00	2024-09-16 08:25:00
18	4	223	14	80.00	420.00	2024-09-16 08:25:00	2024-09-16 08:25:00
19	4	548	18	70.00	1710.00	2024-09-16 08:25:00	2024-09-16 08:25:00
20	4	275	14	50.00	1036.00	2024-09-16 08:25:00	2024-09-16 08:25:00
21	5	51	26	96.00	1846.00	2024-09-15 12:58:00	2024-09-15 12:58:00
22	5	72	12	24.00	1116.00	2024-09-15 12:58:00	2024-09-15 12:58:00
23	5	680	33	56.00	2739.00	2024-09-15 12:58:00	2024-09-15 12:58:00
24	5	84	42	83.00	2436.00	2024-09-15 12:58:00	2024-09-15 12:58:00
25	5	9	46	49.00	3450.00	2024-09-15 12:58:00	2024-09-15 12:58:00
26	6	187	17	81.00	1615.00	2024-09-01 08:53:00	2024-09-01 08:53:00
27	6	71	42	79.00	2814.00	2024-09-01 08:53:00	2024-09-01 08:53:00
28	6	8	34	88.00	1564.00	2024-09-01 08:53:00	2024-09-01 08:53:00
29	6	189	32	90.00	2144.00	2024-09-01 08:53:00	2024-09-01 08:53:00
30	6	55	50	64.00	3900.00	2024-09-01 08:53:00	2024-09-01 08:53:00
31	7	121	39	81.00	1209.00	2024-09-05 13:14:00	2024-09-05 13:14:00
32	7	586	17	63.00	1326.00	2024-09-05 13:14:00	2024-09-05 13:14:00
33	7	162	18	20.00	450.00	2024-09-05 13:14:00	2024-09-05 13:14:00
34	7	68	14	92.00	490.00	2024-09-05 13:14:00	2024-09-05 13:14:00
35	7	379	26	29.00	1950.00	2024-09-05 13:14:00	2024-09-05 13:14:00
36	8	221	23	43.00	1564.00	2024-09-23 14:42:00	2024-09-23 14:42:00
37	8	241	30	76.00	2460.00	2024-09-23 14:42:00	2024-09-23 14:42:00
38	8	159	44	31.00	4004.00	2024-09-23 14:42:00	2024-09-23 14:42:00
39	8	274	8	22.00	648.00	2024-09-23 14:42:00	2024-09-23 14:42:00
40	8	549	41	78.00	2091.00	2024-09-23 14:42:00	2024-09-23 14:42:00
41	9	767	27	80.00	1485.00	2024-09-02 14:29:00	2024-09-02 14:29:00
42	9	364	50	32.00	2000.00	2024-09-02 14:29:00	2024-09-02 14:29:00
43	9	114	27	63.00	540.00	2024-09-02 14:29:00	2024-09-02 14:29:00
44	9	1310	3	58.00	177.00	2024-09-02 14:29:00	2024-09-02 14:29:00
45	9	115	33	54.00	1221.00	2024-09-02 14:29:00	2024-09-02 14:29:00
46	10	187	19	45.00	798.00	2024-09-05 14:07:00	2024-09-05 14:07:00
47	10	71	28	37.00	1232.00	2024-09-05 14:07:00	2024-09-05 14:07:00
48	10	8	32	54.00	2560.00	2024-09-05 14:07:00	2024-09-05 14:07:00
49	10	694	25	35.00	1875.00	2024-09-05 14:07:00	2024-09-05 14:07:00
50	10	325	2	42.00	68.00	2024-09-05 14:07:00	2024-09-05 14:07:00
51	11	223	22	23.00	1760.00	2024-09-29 15:44:00	2024-09-29 15:44:00
52	11	224	42	46.00	1890.00	2024-09-29 15:44:00	2024-09-29 15:44:00
53	11	407	6	96.00	120.00	2024-09-29 15:44:00	2024-09-29 15:44:00
54	11	273	21	83.00	441.00	2024-09-29 15:44:00	2024-09-29 15:44:00
55	11	944	45	52.00	2070.00	2024-09-29 15:44:00	2024-09-29 15:44:00
56	12	2	43	69.00	1677.00	2024-09-07 13:58:00	2024-09-07 13:58:00
57	12	102	36	75.00	972.00	2024-09-07 13:58:00	2024-09-07 13:58:00
58	12	103	32	65.00	2912.00	2024-09-07 13:58:00	2024-09-07 13:58:00
59	12	4	1	20.00	90.00	2024-09-07 13:58:00	2024-09-07 13:58:00
60	12	575	13	25.00	624.00	2024-09-07 13:58:00	2024-09-07 13:58:00
61	13	16	22	84.00	968.00	2024-09-01 14:05:00	2024-09-01 14:05:00
62	13	207	31	38.00	2511.00	2024-09-01 14:05:00	2024-09-01 14:05:00
63	13	129	43	41.00	1161.00	2024-09-01 14:05:00	2024-09-01 14:05:00
64	13	210	16	38.00	1056.00	2024-09-01 14:05:00	2024-09-01 14:05:00
65	13	715	34	63.00	816.00	2024-09-01 14:05:00	2024-09-01 14:05:00
66	14	781	50	49.00	1250.00	2024-09-12 11:15:00	2024-09-12 11:15:00
67	14	419	33	27.00	759.00	2024-09-12 11:15:00	2024-09-12 11:15:00
68	14	159	29	79.00	580.00	2024-09-12 11:15:00	2024-09-12 11:15:00
69	14	1154	13	34.00	884.00	2024-09-12 11:15:00	2024-09-12 11:15:00
70	14	409	50	32.00	3850.00	2024-09-12 11:15:00	2024-09-12 11:15:00
71	15	586	39	74.00	897.00	2024-09-17 08:06:00	2024-09-17 08:06:00
72	15	144	5	93.00	445.00	2024-09-17 08:06:00	2024-09-17 08:06:00
73	15	58	6	74.00	516.00	2024-09-17 08:06:00	2024-09-17 08:06:00
74	15	68	24	56.00	1800.00	2024-09-17 08:06:00	2024-09-17 08:06:00
75	15	805	20	82.00	1020.00	2024-09-17 08:06:00	2024-09-17 08:06:00
76	16	151	2	38.00	180.00	2024-09-15 11:42:00	2024-09-15 11:42:00
77	16	207	3	30.00	222.00	2024-09-15 11:42:00	2024-09-15 11:42:00
78	16	26	19	34.00	1710.00	2024-09-15 11:42:00	2024-09-15 11:42:00
79	16	18	23	97.00	483.00	2024-09-15 11:42:00	2024-09-15 11:42:00
80	16	154	1	56.00	28.00	2024-09-15 11:42:00	2024-09-15 11:42:00
81	17	532	44	52.00	3608.00	2024-09-08 14:09:00	2024-09-08 14:09:00
82	17	331	15	98.00	870.00	2024-09-08 14:09:00	2024-09-08 14:09:00
83	17	2	19	60.00	912.00	2024-09-08 14:09:00	2024-09-08 14:09:00
84	17	23	17	90.00	1173.00	2024-09-08 14:09:00	2024-09-08 14:09:00
85	17	45	29	64.00	580.00	2024-09-08 14:09:00	2024-09-08 14:09:00
86	18	628	38	28.00	3686.00	2024-09-07 13:14:00	2024-09-07 13:14:00
87	18	1019	2	44.00	108.00	2024-09-07 13:14:00	2024-09-07 13:14:00
88	18	180	3	26.00	225.00	2024-09-07 13:14:00	2024-09-07 13:14:00
89	18	255	14	92.00	392.00	2024-09-07 13:14:00	2024-09-07 13:14:00
90	19	1062	4	26.00	244.00	2024-09-27 16:21:00	2024-09-27 16:21:00
91	19	66	31	100.00	2511.00	2024-09-27 16:21:00	2024-09-27 16:21:00
92	19	147	21	38.00	1239.00	2024-09-27 16:21:00	2024-09-27 16:21:00
93	19	372	42	89.00	1596.00	2024-09-27 16:21:00	2024-09-27 16:21:00
94	19	373	17	72.00	595.00	2024-09-27 16:21:00	2024-09-27 16:21:00
95	20	311	48	29.00	4128.00	2024-09-24 12:14:00	2024-09-24 12:14:00
96	20	16	36	27.00	1116.00	2024-09-24 12:14:00	2024-09-24 12:14:00
97	20	17	40	75.00	2600.00	2024-09-24 12:14:00	2024-09-24 12:14:00
98	20	237	10	83.00	420.00	2024-09-24 12:14:00	2024-09-24 12:14:00
99	20	668	5	49.00	180.00	2024-09-24 12:14:00	2024-09-24 12:14:00
100	21	206	42	25.00	3990.00	2024-09-25 09:29:00	2024-09-25 09:29:00
101	21	207	13	36.00	819.00	2024-09-25 09:29:00	2024-09-25 09:29:00
102	21	897	30	37.00	870.00	2024-09-25 09:29:00	2024-09-25 09:29:00
103	21	94	1	80.00	96.00	2024-09-25 09:29:00	2024-09-25 09:29:00
104	21	155	29	43.00	2697.00	2024-09-25 09:29:00	2024-09-25 09:29:00
105	22	311	29	75.00	725.00	2024-09-01 14:50:00	2024-09-01 14:50:00
106	22	206	27	53.00	2673.00	2024-09-01 14:50:00	2024-09-01 14:50:00
107	22	91	24	37.00	1200.00	2024-09-01 14:50:00	2024-09-01 14:50:00
108	22	17	1	85.00	88.00	2024-09-01 14:50:00	2024-09-01 14:50:00
109	22	18	34	69.00	1904.00	2024-09-01 14:50:00	2024-09-01 14:50:00
110	23	101	26	53.00	2392.00	2024-09-27 16:57:00	2024-09-27 16:57:00
111	23	531	2	20.00	134.00	2024-09-27 16:57:00	2024-09-27 16:57:00
112	23	39	42	93.00	3612.00	2024-09-27 16:57:00	2024-09-27 16:57:00
113	23	23	30	26.00	990.00	2024-09-27 16:57:00	2024-09-27 16:57:00
114	23	48	35	62.00	1995.00	2024-09-27 16:57:00	2024-09-27 16:57:00
115	24	136	24	76.00	1320.00	2024-09-10 16:52:00	2024-09-10 16:52:00
116	24	200	28	38.00	1316.00	2024-09-10 16:52:00	2024-09-10 16:52:00
117	24	80	39	82.00	3588.00	2024-09-10 16:52:00	2024-09-10 16:52:00
118	24	99	16	92.00	736.00	2024-09-10 16:52:00	2024-09-10 16:52:00
119	24	355	21	94.00	1113.00	2024-09-10 16:52:00	2024-09-10 16:52:00
120	25	81	8	48.00	624.00	2024-09-26 09:44:00	2024-09-26 09:44:00
121	25	7	40	89.00	2840.00	2024-09-26 09:44:00	2024-09-26 09:44:00
122	25	307	8	45.00	272.00	2024-09-26 09:44:00	2024-09-26 09:44:00
123	25	308	46	68.00	3174.00	2024-09-26 09:44:00	2024-09-26 09:44:00
124	25	72	46	21.00	1058.00	2024-09-26 09:44:00	2024-09-26 09:44:00
125	26	76	35	54.00	2485.00	2024-09-06 16:54:00	2024-09-06 16:54:00
126	26	401	47	31.00	4700.00	2024-09-06 16:54:00	2024-09-06 16:54:00
127	26	62	47	93.00	2679.00	2024-09-06 16:54:00	2024-09-06 16:54:00
128	26	63	30	54.00	2370.00	2024-09-06 16:54:00	2024-09-06 16:54:00
129	26	99	10	61.00	360.00	2024-09-06 16:54:00	2024-09-06 16:54:00
130	27	251	46	83.00	4462.00	2024-09-07 09:29:00	2024-09-07 09:29:00
131	27	226	43	41.00	3096.00	2024-09-07 09:29:00	2024-09-07 09:29:00
132	27	134	47	99.00	3149.00	2024-09-07 09:29:00	2024-09-07 09:29:00
133	27	414	37	64.00	1850.00	2024-09-07 09:29:00	2024-09-07 09:29:00
134	27	435	35	73.00	3500.00	2024-09-07 09:29:00	2024-09-07 09:29:00
135	28	241	17	25.00	340.00	2024-09-25 08:26:00	2024-09-25 08:26:00
136	28	406	14	94.00	980.00	2024-09-25 08:26:00	2024-09-25 08:26:00
137	28	1210	29	83.00	1711.00	2024-09-25 08:26:00	2024-09-25 08:26:00
138	28	409	19	88.00	1710.00	2024-09-25 08:26:00	2024-09-25 08:26:00
139	28	449	27	88.00	2052.00	2024-09-25 08:26:00	2024-09-25 08:26:00
140	29	306	42	23.00	2898.00	2024-09-10 13:38:00	2024-09-10 13:38:00
141	29	307	41	98.00	1353.00	2024-09-10 13:38:00	2024-09-10 13:38:00
142	29	322	41	65.00	3444.00	2024-09-10 13:38:00	2024-09-10 13:38:00
143	29	83	43	20.00	2494.00	2024-09-10 13:38:00	2024-09-10 13:38:00
144	29	73	12	67.00	876.00	2024-09-10 13:38:00	2024-09-10 13:38:00
145	30	311	18	31.00	1134.00	2024-09-21 11:35:00	2024-09-21 11:35:00
146	30	897	21	53.00	1134.00	2024-09-21 11:35:00	2024-09-21 11:35:00
147	30	237	14	68.00	1134.00	2024-09-21 11:35:00	2024-09-21 11:35:00
148	30	29	2	84.00	132.00	2024-09-21 11:35:00	2024-09-21 11:35:00
149	30	240	3	65.00	288.00	2024-09-21 11:35:00	2024-09-21 11:35:00
150	31	52	48	100.00	4512.00	2024-09-26 16:25:00	2024-09-26 16:25:00
151	31	187	17	53.00	476.00	2024-09-26 16:25:00	2024-09-26 16:25:00
152	31	307	18	98.00	1404.00	2024-09-26 16:25:00	2024-09-26 16:25:00
153	31	189	1	61.00	45.00	2024-09-26 16:25:00	2024-09-26 16:25:00
154	31	190	40	45.00	3080.00	2024-09-26 16:25:00	2024-09-26 16:25:00
155	32	188	33	56.00	660.00	2024-09-12 13:48:00	2024-09-12 13:48:00
156	32	72	31	97.00	1674.00	2024-09-12 13:48:00	2024-09-12 13:48:00
157	32	83	15	44.00	1080.00	2024-09-12 13:48:00	2024-09-12 13:48:00
158	32	325	34	35.00	2482.00	2024-09-12 13:48:00	2024-09-12 13:48:00
159	32	455	44	98.00	3608.00	2024-09-12 13:48:00	2024-09-12 13:48:00
160	33	532	11	21.00	682.00	2024-09-29 10:42:00	2024-09-29 10:42:00
161	33	102	31	81.00	651.00	2024-09-29 10:42:00	2024-09-29 10:42:00
162	33	38	1	61.00	22.00	2024-09-29 10:42:00	2024-09-29 10:42:00
163	33	173	7	61.00	504.00	2024-09-29 10:42:00	2024-09-29 10:42:00
164	33	50	15	62.00	570.00	2024-09-29 10:42:00	2024-09-29 10:42:00
165	34	457	7	91.00	588.00	2024-09-08 13:33:00	2024-09-08 13:33:00
166	34	288	21	55.00	1722.00	2024-09-08 13:33:00	2024-09-08 13:33:00
167	34	283	23	95.00	598.00	2024-09-08 13:33:00	2024-09-08 13:33:00
168	34	289	41	23.00	2173.00	2024-09-08 13:33:00	2024-09-08 13:33:00
169	34	320	46	94.00	1288.00	2024-09-08 13:33:00	2024-09-08 13:33:00
170	35	181	20	49.00	1820.00	2024-09-06 11:11:00	2024-09-06 11:11:00
171	35	1141	9	56.00	558.00	2024-09-06 11:11:00	2024-09-06 11:11:00
172	35	147	34	32.00	1360.00	2024-09-06 11:11:00	2024-09-06 11:11:00
173	35	15	35	50.00	3290.00	2024-09-06 11:11:00	2024-09-06 11:11:00
174	35	195	1	74.00	35.00	2024-09-06 11:11:00	2024-09-06 11:11:00
175	36	132	19	95.00	1710.00	2024-09-02 13:55:00	2024-09-02 13:55:00
176	36	133	16	43.00	896.00	2024-09-02 13:55:00	2024-09-02 13:55:00
177	36	135	5	83.00	225.00	2024-09-02 13:55:00	2024-09-02 13:55:00
178	36	1019	36	46.00	936.00	2024-09-02 13:55:00	2024-09-02 13:55:00
179	36	435	28	83.00	1400.00	2024-09-02 13:55:00	2024-09-02 13:55:00
180	37	636	25	68.00	1850.00	2024-09-29 11:56:00	2024-09-29 11:56:00
181	37	897	9	85.00	900.00	2024-09-29 11:56:00	2024-09-29 11:56:00
182	37	489	19	27.00	1083.00	2024-09-29 11:56:00	2024-09-29 11:56:00
183	37	582	27	77.00	783.00	2024-09-29 11:56:00	2024-09-29 11:56:00
184	37	210	24	69.00	1248.00	2024-09-29 11:56:00	2024-09-29 11:56:00
185	38	1092	27	59.00	567.00	2024-09-13 12:01:00	2024-09-13 12:01:00
186	38	17	17	22.00	1326.00	2024-09-13 12:01:00	2024-09-13 12:01:00
187	38	26	34	21.00	2074.00	2024-09-13 12:01:00	2024-09-13 12:01:00
188	38	19	37	71.00	2257.00	2024-09-13 12:01:00	2024-09-13 12:01:00
189	38	153	25	53.00	2425.00	2024-09-13 12:01:00	2024-09-13 12:01:00
190	39	671	10	99.00	420.00	2024-09-27 13:35:00	2024-09-27 13:35:00
191	39	218	39	55.00	3705.00	2024-09-27 13:35:00	2024-09-27 13:35:00
192	39	24	49	40.00	2009.00	2024-09-27 13:35:00	2024-09-27 13:35:00
193	39	5	10	66.00	960.00	2024-09-27 13:35:00	2024-09-27 13:35:00
194	39	1264	34	52.00	2380.00	2024-09-27 13:35:00	2024-09-27 13:35:00
195	40	141	15	57.00	1095.00	2024-09-17 12:29:00	2024-09-17 12:29:00
196	40	142	4	57.00	320.00	2024-09-17 12:29:00	2024-09-17 12:29:00
197	40	397	35	65.00	3220.00	2024-09-17 12:29:00	2024-09-17 12:29:00
198	40	58	13	55.00	1066.00	2024-09-17 12:29:00	2024-09-17 12:29:00
199	40	15	24	46.00	1992.00	2024-09-17 12:29:00	2024-09-17 12:29:00
200	41	33	3	55.00	192.00	2024-09-25 14:44:00	2024-09-25 14:44:00
201	41	330	49	72.00	1274.00	2024-09-25 14:44:00	2024-09-25 14:44:00
202	41	34	49	44.00	3234.00	2024-09-25 14:44:00	2024-09-25 14:44:00
203	41	355	14	67.00	714.00	2024-09-25 14:44:00	2024-09-25 14:44:00
204	41	270	38	81.00	2774.00	2024-09-25 14:44:00	2024-09-25 14:44:00
205	42	126	22	88.00	1232.00	2024-09-25 12:41:00	2024-09-25 12:41:00
206	42	517	10	55.00	540.00	2024-09-25 12:41:00	2024-09-25 12:41:00
207	42	666	21	52.00	1575.00	2024-09-25 12:41:00	2024-09-25 12:41:00
208	42	489	26	35.00	2366.00	2024-09-25 12:41:00	2024-09-25 12:41:00
209	42	28	28	88.00	672.00	2024-09-25 12:41:00	2024-09-25 12:41:00
210	43	112	49	89.00	1029.00	2024-09-02 14:53:00	2024-09-02 14:53:00
211	43	388	26	75.00	2392.00	2024-09-02 14:53:00	2024-09-02 14:53:00
212	43	1160	9	21.00	801.00	2024-09-02 14:53:00	2024-09-02 14:53:00
213	43	235	33	56.00	2079.00	2024-09-02 14:53:00	2024-09-02 14:53:00
214	43	514	2	96.00	150.00	2024-09-02 14:53:00	2024-09-02 14:53:00
215	44	136	1	87.00	86.00	2024-09-14 12:57:00	2024-09-14 12:57:00
216	44	32	36	87.00	2592.00	2024-09-14 12:57:00	2024-09-14 12:57:00
217	44	97	13	42.00	325.00	2024-09-14 12:57:00	2024-09-14 12:57:00
218	44	340	1	56.00	93.00	2024-09-14 12:57:00	2024-09-14 12:57:00
219	44	100	19	21.00	437.00	2024-09-14 12:57:00	2024-09-14 12:57:00
220	45	33	20	72.00	1620.00	2024-09-27 16:35:00	2024-09-27 16:35:00
221	45	96	40	100.00	3960.00	2024-09-27 16:35:00	2024-09-27 16:35:00
222	45	401	5	66.00	235.00	2024-09-27 16:35:00	2024-09-27 16:35:00
223	45	62	20	33.00	840.00	2024-09-27 16:35:00	2024-09-27 16:35:00
224	45	110	2	74.00	124.00	2024-09-27 16:35:00	2024-09-27 16:35:00
225	46	282	48	58.00	2880.00	2024-09-21 08:29:00	2024-09-21 08:29:00
226	46	288	12	20.00	600.00	2024-09-21 08:29:00	2024-09-21 08:29:00
227	46	1077	39	25.00	1716.00	2024-09-21 08:29:00	2024-09-21 08:29:00
228	46	318	6	98.00	246.00	2024-09-21 08:29:00	2024-09-21 08:29:00
229	46	90	45	30.00	4050.00	2024-09-21 08:29:00	2024-09-21 08:29:00
230	47	346	43	52.00	2623.00	2024-09-06 15:02:00	2024-09-06 15:02:00
231	47	112	1	38.00	73.00	2024-09-06 15:02:00	2024-09-06 15:02:00
232	47	234	3	40.00	159.00	2024-09-06 15:02:00	2024-09-06 15:02:00
233	47	115	30	40.00	720.00	2024-09-06 15:02:00	2024-09-06 15:02:00
234	47	790	30	72.00	1770.00	2024-09-06 15:02:00	2024-09-06 15:02:00
235	48	138	31	57.00	2666.00	2024-09-12 15:50:00	2024-09-12 15:50:00
236	48	61	46	58.00	3082.00	2024-09-12 15:50:00	2024-09-12 15:50:00
237	48	35	10	53.00	370.00	2024-09-12 15:50:00	2024-09-12 15:50:00
238	48	355	31	58.00	2976.00	2024-09-12 15:50:00	2024-09-12 15:50:00
239	48	100	28	88.00	2660.00	2024-09-12 15:50:00	2024-09-12 15:50:00
240	49	261	9	92.00	630.00	2024-09-10 16:34:00	2024-09-10 16:34:00
241	49	278	6	35.00	318.00	2024-09-10 16:34:00	2024-09-10 16:34:00
242	49	288	45	27.00	1800.00	2024-09-10 16:34:00	2024-09-10 16:34:00
243	49	1077	25	99.00	1900.00	2024-09-10 16:34:00	2024-09-10 16:34:00
244	49	345	15	89.00	975.00	2024-09-10 16:34:00	2024-09-10 16:34:00
245	50	152	8	43.00	208.00	2024-09-15 08:27:00	2024-09-15 08:27:00
246	50	206	12	26.00	624.00	2024-09-15 08:27:00	2024-09-15 08:27:00
247	50	93	46	64.00	1840.00	2024-09-15 08:27:00	2024-09-15 08:27:00
248	50	582	40	85.00	3360.00	2024-09-15 08:27:00	2024-09-15 08:27:00
249	50	29	41	56.00	902.00	2024-09-15 08:27:00	2024-09-15 08:27:00
250	51	767	23	24.00	1173.00	2024-09-07 11:29:00	2024-09-07 11:29:00
251	51	233	20	65.00	700.00	2024-09-07 11:29:00	2024-09-07 11:29:00
252	51	514	49	88.00	4018.00	2024-09-07 11:29:00	2024-09-07 11:29:00
253	51	1310	46	52.00	1564.00	2024-09-07 11:29:00	2024-09-07 11:29:00
254	51	790	42	52.00	2856.00	2024-09-07 11:29:00	2024-09-07 11:29:00
255	52	226	35	27.00	3395.00	2024-09-09 10:07:00	2024-09-09 10:07:00
256	52	431	45	82.00	1935.00	2024-09-09 10:07:00	2024-09-09 10:07:00
257	52	134	13	73.00	793.00	2024-09-09 10:07:00	2024-09-09 10:07:00
258	52	628	36	89.00	1728.00	2024-09-09 10:07:00	2024-09-09 10:07:00
259	52	650	17	63.00	1241.00	2024-09-09 10:07:00	2024-09-09 10:07:00
260	53	696	8	86.00	272.00	2024-09-06 14:42:00	2024-09-06 14:42:00
261	53	282	13	25.00	1235.00	2024-09-06 14:42:00	2024-09-06 14:42:00
262	53	301	50	44.00	4800.00	2024-09-06 14:42:00	2024-09-06 14:42:00
263	53	288	12	43.00	348.00	2024-09-06 14:42:00	2024-09-06 14:42:00
264	53	89	11	22.00	561.00	2024-09-06 14:42:00	2024-09-06 14:42:00
265	54	696	4	21.00	148.00	2024-09-18 14:01:00	2024-09-18 14:01:00
266	54	288	7	93.00	217.00	2024-09-18 14:01:00	2024-09-18 14:01:00
267	54	204	22	84.00	594.00	2024-09-18 14:01:00	2024-09-18 14:01:00
268	54	87	44	46.00	2420.00	2024-09-18 14:01:00	2024-09-18 14:01:00
269	54	265	38	24.00	3268.00	2024-09-18 14:01:00	2024-09-18 14:01:00
270	55	626	8	83.00	384.00	2024-09-12 12:33:00	2024-09-12 12:33:00
271	55	227	16	52.00	848.00	2024-09-12 12:33:00	2024-09-12 12:33:00
272	55	253	10	92.00	840.00	2024-09-12 12:33:00	2024-09-12 12:33:00
273	55	230	26	82.00	2210.00	2024-09-12 12:33:00	2024-09-12 12:33:00
274	55	635	50	59.00	4850.00	2024-09-12 12:33:00	2024-09-12 12:33:00
275	56	286	20	65.00	660.00	2024-09-06 15:58:00	2024-09-06 15:58:00
276	56	86	46	28.00	1242.00	2024-09-06 15:58:00	2024-09-06 15:58:00
277	56	285	41	38.00	2665.00	2024-09-06 15:58:00	2024-09-06 15:58:00
278	56	290	19	22.00	570.00	2024-09-06 15:58:00	2024-09-06 15:58:00
279	56	89	15	56.00	855.00	2024-09-06 15:58:00	2024-09-06 15:58:00
280	57	242	29	98.00	1798.00	2024-09-14 10:50:00	2024-09-14 10:50:00
281	57	223	30	69.00	2520.00	2024-09-14 10:50:00	2024-09-14 10:50:00
282	57	224	17	95.00	1700.00	2024-09-14 10:50:00	2024-09-14 10:50:00
283	57	157	12	68.00	444.00	2024-09-14 10:50:00	2024-09-14 10:50:00
284	57	273	18	29.00	1602.00	2024-09-14 10:50:00	2024-09-14 10:50:00
285	58	221	17	29.00	1445.00	2024-09-26 12:52:00	2024-09-26 12:52:00
286	58	706	15	43.00	1005.00	2024-09-26 12:52:00	2024-09-26 12:52:00
287	58	242	37	77.00	2442.00	2024-09-26 12:52:00	2024-09-26 12:52:00
288	58	547	43	83.00	1462.00	2024-09-26 12:52:00	2024-09-26 12:52:00
289	58	410	39	27.00	1326.00	2024-09-26 12:52:00	2024-09-26 12:52:00
290	59	1157	13	93.00	637.00	2024-09-04 16:53:00	2024-09-04 16:53:00
291	59	388	24	40.00	1872.00	2024-09-04 16:53:00	2024-09-04 16:53:00
292	59	389	37	88.00	1369.00	2024-09-04 16:53:00	2024-09-04 16:53:00
293	59	500	18	80.00	1440.00	2024-09-04 16:53:00	2024-09-04 16:53:00
294	59	790	7	57.00	168.00	2024-09-04 16:53:00	2024-09-04 16:53:00
295	60	6	10	69.00	370.00	2024-09-10 15:16:00	2024-09-10 15:16:00
296	60	118	22	53.00	1958.00	2024-09-10 15:16:00	2024-09-10 15:16:00
297	60	293	25	72.00	600.00	2024-09-10 15:16:00	2024-09-10 15:16:00
298	60	73	35	57.00	2625.00	2024-09-10 15:16:00	2024-09-10 15:16:00
299	60	120	37	43.00	2590.00	2024-09-10 15:16:00	2024-09-10 15:16:00
300	61	416	33	68.00	1683.00	2024-09-03 15:17:00	2024-09-03 15:17:00
301	61	242	9	37.00	855.00	2024-09-03 15:17:00	2024-09-03 15:17:00
302	61	710	20	54.00	980.00	2024-09-03 15:17:00	2024-09-03 15:17:00
303	61	274	42	38.00	3066.00	2024-09-03 15:17:00	2024-09-03 15:17:00
304	61	550	7	33.00	630.00	2024-09-03 15:17:00	2024-09-03 15:17:00
305	62	31	19	46.00	1691.00	2024-09-12 13:02:00	2024-09-12 13:02:00
306	62	913	26	86.00	2236.00	2024-09-12 13:02:00	2024-09-12 13:02:00
307	62	108	28	93.00	2632.00	2024-09-12 13:02:00	2024-09-12 13:02:00
308	62	63	35	33.00	2555.00	2024-09-12 13:02:00	2024-09-12 13:02:00
309	62	99	1	24.00	94.00	2024-09-12 13:02:00	2024-09-12 13:02:00
310	63	352	32	56.00	3040.00	2024-09-21 08:25:00	2024-09-21 08:25:00
311	63	168	38	92.00	3230.00	2024-09-21 08:25:00	2024-09-21 08:25:00
312	63	913	17	99.00	1241.00	2024-09-21 08:25:00	2024-09-21 08:25:00
313	63	34	9	79.00	594.00	2024-09-21 08:25:00	2024-09-21 08:25:00
314	63	495	1	62.00	97.00	2024-09-21 08:25:00	2024-09-21 08:25:00
315	64	1	33	92.00	1518.00	2024-09-24 14:42:00	2024-09-24 14:42:00
316	64	2	14	87.00	336.00	2024-09-24 14:42:00	2024-09-24 14:42:00
317	64	48	26	75.00	1508.00	2024-09-24 14:42:00	2024-09-24 14:42:00
318	64	43	42	21.00	3696.00	2024-09-24 14:42:00	2024-09-24 14:42:00
319	64	575	31	45.00	806.00	2024-09-24 14:42:00	2024-09-24 14:42:00
320	65	222	3	50.00	201.00	2024-09-11 09:06:00	2024-09-11 09:06:00
321	65	781	3	41.00	270.00	2024-09-11 09:06:00	2024-09-11 09:06:00
322	65	707	3	70.00	162.00	2024-09-11 09:06:00	2024-09-11 09:06:00
323	65	223	18	31.00	576.00	2024-09-11 09:06:00	2024-09-11 09:06:00
324	65	710	12	56.00	540.00	2024-09-11 09:06:00	2024-09-11 09:06:00
325	66	41	36	89.00	3492.00	2024-09-07 11:40:00	2024-09-07 11:40:00
326	66	532	26	39.00	702.00	2024-09-07 11:40:00	2024-09-07 11:40:00
327	66	37	2	89.00	154.00	2024-09-07 11:40:00	2024-09-07 11:40:00
328	66	46	47	73.00	3807.00	2024-09-07 11:40:00	2024-09-07 11:40:00
329	66	3	29	83.00	1015.00	2024-09-07 11:40:00	2024-09-07 11:40:00
330	67	261	42	43.00	2436.00	2024-09-22 12:52:00	2024-09-22 12:52:00
331	67	202	34	67.00	2788.00	2024-09-22 12:52:00	2024-09-22 12:52:00
332	67	87	7	24.00	161.00	2024-09-22 12:52:00	2024-09-22 12:52:00
333	67	88	25	63.00	1625.00	2024-09-22 12:52:00	2024-09-22 12:52:00
334	67	320	6	51.00	492.00	2024-09-22 12:52:00	2024-09-22 12:52:00
335	68	636	25	21.00	1350.00	2024-09-17 16:57:00	2024-09-17 16:57:00
336	68	1092	8	88.00	448.00	2024-09-17 16:57:00	2024-09-17 16:57:00
337	68	27	41	44.00	1681.00	2024-09-17 16:57:00	2024-09-17 16:57:00
338	68	210	18	95.00	936.00	2024-09-17 16:57:00	2024-09-17 16:57:00
339	68	95	37	25.00	814.00	2024-09-17 16:57:00	2024-09-17 16:57:00
340	69	176	46	69.00	1886.00	2024-09-17 11:36:00	2024-09-17 11:36:00
341	69	252	5	82.00	365.00	2024-09-17 11:36:00	2024-09-17 11:36:00
342	69	414	40	92.00	3160.00	2024-09-17 11:36:00	2024-09-17 11:36:00
343	69	180	2	88.00	74.00	2024-09-17 11:36:00	2024-09-17 11:36:00
344	69	255	41	31.00	1476.00	2024-09-17 11:36:00	2024-09-17 11:36:00
345	70	679	29	44.00	1276.00	2024-09-19 14:57:00	2024-09-19 14:57:00
346	70	84	19	25.00	513.00	2024-09-19 14:57:00	2024-09-19 14:57:00
347	70	53	46	43.00	1564.00	2024-09-19 14:57:00	2024-09-19 14:57:00
348	70	85	23	54.00	1127.00	2024-09-19 14:57:00	2024-09-19 14:57:00
349	70	455	21	50.00	1512.00	2024-09-19 14:57:00	2024-09-19 14:57:00
350	71	651	3	56.00	78.00	2024-09-25 08:24:00	2024-09-25 08:24:00
351	71	22	36	28.00	3060.00	2024-09-25 08:24:00	2024-09-25 08:24:00
352	71	173	50	28.00	3800.00	2024-09-25 08:24:00	2024-09-25 08:24:00
353	71	42	33	79.00	1815.00	2024-09-25 08:24:00	2024-09-25 08:24:00
354	71	1264	16	84.00	720.00	2024-09-25 08:24:00	2024-09-25 08:24:00
355	72	133	46	20.00	3312.00	2024-09-29 12:36:00	2024-09-29 12:36:00
356	72	627	41	99.00	2050.00	2024-09-29 12:36:00	2024-09-29 12:36:00
357	72	253	5	70.00	435.00	2024-09-29 12:36:00	2024-09-29 12:36:00
358	72	435	30	40.00	1260.00	2024-09-29 12:36:00	2024-09-29 12:36:00
359	73	19	36	68.00	3024.00	2024-09-14 15:29:00	2024-09-14 15:29:00
360	73	237	16	44.00	1232.00	2024-09-14 15:29:00	2024-09-14 15:29:00
361	73	28	20	49.00	1180.00	2024-09-14 15:29:00	2024-09-14 15:29:00
362	73	668	26	41.00	650.00	2024-09-14 15:29:00	2024-09-14 15:29:00
363	73	240	15	90.00	1440.00	2024-09-14 15:29:00	2024-09-14 15:29:00
364	74	626	1	33.00	93.00	2024-09-02 10:34:00	2024-09-02 10:34:00
365	74	226	11	71.00	572.00	2024-09-02 10:34:00	2024-09-02 10:34:00
366	74	176	7	69.00	441.00	2024-09-02 10:34:00	2024-09-02 10:34:00
367	74	649	45	39.00	3960.00	2024-09-02 10:34:00	2024-09-02 10:34:00
368	75	136	20	70.00	440.00	2024-09-28 10:04:00	2024-09-28 10:04:00
369	75	167	21	52.00	1953.00	2024-09-28 10:04:00	2024-09-28 10:04:00
370	75	169	10	87.00	670.00	2024-09-28 10:04:00	2024-09-28 10:04:00
371	75	338	14	26.00	1232.00	2024-09-28 10:04:00	2024-09-28 10:04:00
372	75	99	31	54.00	3100.00	2024-09-28 10:04:00	2024-09-28 10:04:00
373	76	347	20	93.00	1000.00	2024-09-17 10:20:00	2024-09-17 10:20:00
374	76	496	17	79.00	1275.00	2024-09-17 10:20:00	2024-09-17 10:20:00
375	76	389	24	75.00	1008.00	2024-09-17 10:20:00	2024-09-17 10:20:00
376	76	234	7	42.00	385.00	2024-09-17 10:20:00	2024-09-17 10:20:00
377	76	235	30	78.00	1860.00	2024-09-17 10:20:00	2024-09-17 10:20:00
378	77	76	13	46.00	312.00	2024-09-13 13:19:00	2024-09-13 13:19:00
379	77	106	34	29.00	816.00	2024-09-13 13:19:00	2024-09-13 13:19:00
380	77	32	30	54.00	1770.00	2024-09-13 13:19:00	2024-09-13 13:19:00
381	77	96	3	62.00	180.00	2024-09-13 13:19:00	2024-09-13 13:19:00
382	77	64	13	81.00	676.00	2024-09-13 13:19:00	2024-09-13 13:19:00
383	78	321	18	82.00	630.00	2024-09-27 14:26:00	2024-09-27 14:26:00
384	78	693	25	60.00	1875.00	2024-09-27 14:26:00	2024-09-27 14:26:00
385	78	309	32	65.00	1728.00	2024-09-27 14:26:00	2024-09-27 14:26:00
386	78	74	8	24.00	744.00	2024-09-27 14:26:00	2024-09-27 14:26:00
387	78	120	5	76.00	165.00	2024-09-27 14:26:00	2024-09-27 14:26:00
388	79	86	4	23.00	328.00	2024-09-04 08:18:00	2024-09-04 08:18:00
389	79	204	36	84.00	3024.00	2024-09-04 08:18:00	2024-09-04 08:18:00
390	79	290	5	93.00	495.00	2024-09-04 08:18:00	2024-09-04 08:18:00
391	79	89	29	100.00	2146.00	2024-09-04 08:18:00	2024-09-04 08:18:00
392	79	540	48	24.00	2160.00	2024-09-04 08:18:00	2024-09-04 08:18:00
393	80	321	45	60.00	990.00	2024-09-08 15:30:00	2024-09-08 15:30:00
394	80	609	35	57.00	1820.00	2024-09-08 15:30:00	2024-09-08 15:30:00
395	80	294	26	76.00	2574.00	2024-09-08 15:30:00	2024-09-08 15:30:00
396	80	325	31	63.00	1767.00	2024-09-08 15:30:00	2024-09-08 15:30:00
397	80	9	25	34.00	1475.00	2024-09-08 15:30:00	2024-09-08 15:30:00
398	81	76	37	28.00	2775.00	2024-09-07 14:50:00	2024-09-07 14:50:00
399	81	913	18	91.00	1656.00	2024-09-07 14:50:00	2024-09-07 14:50:00
400	81	138	39	25.00	3627.00	2024-09-07 14:50:00	2024-09-07 14:50:00
401	81	200	36	93.00	1980.00	2024-09-07 14:50:00	2024-09-07 14:50:00
402	81	270	14	97.00	1078.00	2024-09-07 14:50:00	2024-09-07 14:50:00
403	82	341	44	67.00	1760.00	2024-09-02 08:00:00	2024-09-02 08:00:00
404	82	86	11	39.00	1045.00	2024-09-02 08:00:00	2024-09-02 08:00:00
405	82	427	38	85.00	3800.00	2024-09-02 08:00:00	2024-09-02 08:00:00
406	82	279	29	39.00	2117.00	2024-09-02 08:00:00	2024-09-02 08:00:00
407	82	305	14	60.00	770.00	2024-09-02 08:00:00	2024-09-02 08:00:00
408	83	71	11	64.00	297.00	2024-09-18 12:11:00	2024-09-18 12:11:00
409	83	321	15	89.00	1245.00	2024-09-18 12:11:00	2024-09-18 12:11:00
410	83	609	3	82.00	240.00	2024-09-18 12:11:00	2024-09-18 12:11:00
411	83	54	46	29.00	2392.00	2024-09-18 12:11:00	2024-09-18 12:11:00
412	83	10	9	34.00	774.00	2024-09-18 12:11:00	2024-09-18 12:11:00
413	84	91	6	83.00	588.00	2024-09-04 15:33:00	2024-09-04 15:33:00
414	84	17	14	57.00	980.00	2024-09-04 15:33:00	2024-09-04 15:33:00
415	84	582	1	35.00	26.00	2024-09-04 15:33:00	2024-09-04 15:33:00
416	84	314	4	61.00	228.00	2024-09-04 15:33:00	2024-09-04 15:33:00
417	84	130	49	53.00	4508.00	2024-09-04 15:33:00	2024-09-04 15:33:00
418	85	91	37	84.00	888.00	2024-09-18 12:48:00	2024-09-18 12:48:00
419	85	17	7	84.00	462.00	2024-09-18 12:48:00	2024-09-18 12:48:00
420	85	518	36	24.00	3132.00	2024-09-18 12:48:00	2024-09-18 12:48:00
421	85	237	40	78.00	2360.00	2024-09-18 12:48:00	2024-09-18 12:48:00
422	85	130	3	59.00	297.00	2024-09-18 12:48:00	2024-09-18 12:48:00
423	86	41	33	68.00	3102.00	2024-09-13 13:37:00	2024-09-13 13:37:00
424	86	591	11	65.00	330.00	2024-09-13 13:37:00	2024-09-13 13:37:00
425	86	38	43	36.00	4042.00	2024-09-13 13:37:00	2024-09-13 13:37:00
426	86	173	13	94.00	1053.00	2024-09-13 13:37:00	2024-09-13 13:37:00
427	86	43	14	74.00	1162.00	2024-09-13 13:37:00	2024-09-13 13:37:00
428	87	341	33	30.00	1980.00	2024-09-06 08:40:00	2024-09-06 08:40:00
429	87	278	20	70.00	420.00	2024-09-06 08:40:00	2024-09-06 08:40:00
430	87	427	41	73.00	1558.00	2024-09-06 08:40:00	2024-09-06 08:40:00
431	87	919	2	39.00	90.00	2024-09-06 08:40:00	2024-09-06 08:40:00
432	87	89	15	72.00	960.00	2024-09-06 08:40:00	2024-09-06 08:40:00
433	88	161	38	93.00	2888.00	2024-09-19 13:43:00	2024-09-19 13:43:00
434	88	12	11	71.00	385.00	2024-09-19 13:43:00	2024-09-19 13:43:00
435	88	14	13	75.00	1040.00	2024-09-19 13:43:00	2024-09-19 13:43:00
436	88	68	10	55.00	850.00	2024-09-19 13:43:00	2024-09-19 13:43:00
437	88	60	34	35.00	3332.00	2024-09-19 13:43:00	2024-09-19 13:43:00
438	89	168	36	36.00	2304.00	2024-09-28 11:10:00	2024-09-28 11:10:00
439	89	97	20	90.00	940.00	2024-09-28 11:10:00	2024-09-28 11:10:00
440	89	169	21	20.00	609.00	2024-09-28 11:10:00	2024-09-28 11:10:00
441	89	78	1	52.00	32.00	2024-09-28 11:10:00	2024-09-28 11:10:00
442	89	200	8	72.00	344.00	2024-09-28 11:10:00	2024-09-28 11:10:00
443	90	781	3	95.00	219.00	2024-09-13 15:29:00	2024-09-13 15:29:00
444	90	158	38	67.00	2508.00	2024-09-13 15:29:00	2024-09-13 15:29:00
445	90	779	23	23.00	1610.00	2024-09-13 15:29:00	2024-09-13 15:29:00
446	90	409	4	51.00	152.00	2024-09-13 15:29:00	2024-09-13 15:29:00
447	90	274	6	64.00	204.00	2024-09-13 15:29:00	2024-09-13 15:29:00
448	91	136	15	51.00	435.00	2024-09-28 08:19:00	2024-09-28 08:19:00
449	91	247	13	66.00	832.00	2024-09-28 08:19:00	2024-09-28 08:19:00
450	91	77	46	95.00	1242.00	2024-09-28 08:19:00	2024-09-28 08:19:00
451	91	443	23	65.00	1012.00	2024-09-28 08:19:00	2024-09-28 08:19:00
452	91	250	5	100.00	120.00	2024-09-28 08:19:00	2024-09-28 08:19:00
453	92	201	7	82.00	434.00	2024-09-16 10:18:00	2024-09-16 10:18:00
454	92	696	40	76.00	1560.00	2024-09-16 10:18:00	2024-09-16 10:18:00
455	92	658	6	77.00	270.00	2024-09-16 10:18:00	2024-09-16 10:18:00
456	92	317	47	55.00	4606.00	2024-09-16 10:18:00	2024-09-16 10:18:00
457	92	302	42	74.00	1932.00	2024-09-16 10:18:00	2024-09-16 10:18:00
458	93	222	12	76.00	504.00	2024-09-02 11:32:00	2024-09-02 11:32:00
459	93	707	3	59.00	156.00	2024-09-02 11:32:00	2024-09-02 11:32:00
460	93	245	15	57.00	1290.00	2024-09-02 11:32:00	2024-09-02 11:32:00
461	93	710	22	73.00	1452.00	2024-09-02 11:32:00	2024-09-02 11:32:00
462	93	275	1	72.00	25.00	2024-09-02 11:32:00	2024-09-02 11:32:00
463	94	716	6	88.00	558.00	2024-09-05 11:06:00	2024-09-05 11:06:00
464	94	581	15	78.00	375.00	2024-09-05 11:06:00	2024-09-05 11:06:00
465	94	19	24	98.00	1152.00	2024-09-05 11:06:00	2024-09-05 11:06:00
466	94	129	5	41.00	490.00	2024-09-05 11:06:00	2024-09-05 11:06:00
467	94	715	27	36.00	1674.00	2024-09-05 11:06:00	2024-09-05 11:06:00
468	95	347	4	65.00	244.00	2024-09-26 10:33:00	2024-09-26 10:33:00
469	95	767	18	50.00	1098.00	2024-09-26 10:33:00	2024-09-26 10:33:00
470	95	496	38	61.00	1406.00	2024-09-26 10:33:00	2024-09-26 10:33:00
471	95	499	26	96.00	1690.00	2024-09-26 10:33:00	2024-09-26 10:33:00
472	95	114	35	65.00	1085.00	2024-09-26 10:33:00	2024-09-26 10:33:00
473	96	626	17	87.00	1156.00	2024-09-01 09:32:00	2024-09-01 09:32:00
474	96	227	30	25.00	2760.00	2024-09-01 09:32:00	2024-09-01 09:32:00
475	96	134	24	47.00	1704.00	2024-09-01 09:32:00	2024-09-01 09:32:00
476	96	135	12	32.00	444.00	2024-09-01 09:32:00	2024-09-01 09:32:00
477	97	532	10	82.00	950.00	2024-09-24 09:25:00	2024-09-24 09:25:00
478	97	38	24	38.00	600.00	2024-09-24 09:25:00	2024-09-24 09:25:00
479	97	3	28	38.00	2604.00	2024-09-24 09:25:00	2024-09-24 09:25:00
480	97	40	45	76.00	3015.00	2024-09-24 09:25:00	2024-09-24 09:25:00
481	97	215	9	44.00	378.00	2024-09-24 09:25:00	2024-09-24 09:25:00
482	98	1221	39	56.00	3315.00	2024-09-23 16:53:00	2024-09-23 16:53:00
483	98	362	24	42.00	1056.00	2024-09-23 16:53:00	2024-09-23 16:53:00
484	98	232	41	64.00	2009.00	2024-09-23 16:53:00	2024-09-23 16:53:00
485	98	500	1	94.00	26.00	2024-09-23 16:53:00	2024-09-23 16:53:00
486	98	1310	12	75.00	1116.00	2024-09-23 16:53:00	2024-09-23 16:53:00
487	99	188	39	62.00	3705.00	2024-10-29 11:42:00	2024-10-29 11:42:00
488	99	118	11	69.00	517.00	2024-10-29 11:42:00	2024-10-29 11:42:00
489	99	53	20	99.00	460.00	2024-10-29 11:42:00	2024-10-29 11:42:00
490	99	454	28	55.00	1540.00	2024-10-29 11:42:00	2024-10-29 11:42:00
491	99	610	5	29.00	390.00	2024-10-29 11:42:00	2024-10-29 11:42:00
492	100	419	14	63.00	574.00	2024-10-18 10:19:00	2024-10-18 10:19:00
493	100	407	35	72.00	3045.00	2024-10-18 10:19:00	2024-10-18 10:19:00
494	100	448	36	63.00	1620.00	2024-10-18 10:19:00	2024-10-18 10:19:00
495	100	425	45	91.00	2835.00	2024-10-18 10:19:00	2024-10-18 10:19:00
496	100	160	37	49.00	2331.00	2024-10-18 10:19:00	2024-10-18 10:19:00
497	101	187	15	50.00	750.00	2024-10-28 12:17:00	2024-10-28 12:17:00
498	101	466	43	94.00	2150.00	2024-10-28 12:17:00	2024-10-28 12:17:00
499	101	814	9	24.00	675.00	2024-10-28 12:17:00	2024-10-28 12:17:00
500	101	190	17	52.00	867.00	2024-10-28 12:17:00	2024-10-28 12:17:00
501	101	55	30	54.00	1950.00	2024-10-28 12:17:00	2024-10-28 12:17:00
502	102	616	16	75.00	832.00	2024-10-30 09:21:00	2024-10-30 09:21:00
503	102	591	43	58.00	3526.00	2024-10-30 09:21:00	2024-10-30 09:21:00
504	102	358	33	39.00	1155.00	2024-10-30 09:21:00	2024-10-30 09:21:00
505	102	174	40	42.00	3640.00	2024-10-30 09:21:00	2024-10-30 09:21:00
506	102	215	1	52.00	32.00	2024-10-30 09:21:00	2024-10-30 09:21:00
507	103	168	6	46.00	336.00	2024-10-05 11:03:00	2024-10-05 11:03:00
508	103	330	3	99.00	213.00	2024-10-05 11:03:00	2024-10-05 11:03:00
509	103	61	44	58.00	1496.00	2024-10-05 11:03:00	2024-10-05 11:03:00
510	103	250	31	51.00	2542.00	2024-10-05 11:03:00	2024-10-05 11:03:00
511	103	65	13	57.00	1300.00	2024-10-05 11:03:00	2024-10-05 11:03:00
512	104	1157	11	85.00	429.00	2024-10-19 13:51:00	2024-10-19 13:51:00
513	104	349	48	71.00	3360.00	2024-10-19 13:51:00	2024-10-19 13:51:00
514	104	1224	29	86.00	812.00	2024-10-19 13:51:00	2024-10-19 13:51:00
515	104	113	8	44.00	168.00	2024-10-19 13:51:00	2024-10-19 13:51:00
516	104	514	34	35.00	1088.00	2024-10-19 13:51:00	2024-10-19 13:51:00
517	105	1141	15	98.00	1080.00	2024-10-03 14:32:00	2024-10-03 14:32:00
518	105	13	13	84.00	1274.00	2024-10-03 14:32:00	2024-10-03 14:32:00
519	105	58	38	78.00	2774.00	2024-10-03 14:32:00	2024-10-03 14:32:00
520	105	59	42	61.00	3906.00	2024-10-03 14:32:00	2024-10-03 14:32:00
521	105	149	17	97.00	697.00	2024-10-03 14:32:00	2024-10-03 14:32:00
522	106	166	42	44.00	882.00	2024-10-25 16:59:00	2024-10-25 16:59:00
523	106	106	21	41.00	1638.00	2024-10-25 16:59:00	2024-10-25 16:59:00
524	106	247	36	26.00	2916.00	2024-10-25 16:59:00	2024-10-25 16:59:00
525	106	96	15	52.00	300.00	2024-10-25 16:59:00	2024-10-25 16:59:00
526	106	80	11	30.00	286.00	2024-10-25 16:59:00	2024-10-25 16:59:00
527	107	486	18	77.00	666.00	2024-10-26 10:45:00	2024-10-26 10:45:00
528	107	712	20	30.00	1600.00	2024-10-26 10:45:00	2024-10-26 10:45:00
529	107	27	20	99.00	1020.00	2024-10-26 10:45:00	2024-10-26 10:45:00
530	107	240	48	56.00	2592.00	2024-10-26 10:45:00	2024-10-26 10:45:00
531	107	210	14	63.00	1064.00	2024-10-26 10:45:00	2024-10-26 10:45:00
532	108	326	32	71.00	2016.00	2024-10-04 08:21:00	2024-10-04 08:21:00
533	108	493	15	68.00	1335.00	2024-10-04 08:21:00	2024-10-04 08:21:00
534	108	80	5	45.00	250.00	2024-10-04 08:21:00	2024-10-04 08:21:00
535	108	495	38	41.00	2128.00	2024-10-04 08:21:00	2024-10-04 08:21:00
536	109	106	7	71.00	511.00	2024-10-05 09:54:00	2024-10-05 09:54:00
537	109	352	19	63.00	1368.00	2024-10-05 09:54:00	2024-10-05 09:54:00
538	109	250	21	54.00	1155.00	2024-10-05 09:54:00	2024-10-05 09:54:00
539	109	64	49	89.00	3822.00	2024-10-05 09:54:00	2024-10-05 09:54:00
540	109	339	12	91.00	696.00	2024-10-05 09:54:00	2024-10-05 09:54:00
541	110	201	6	27.00	162.00	2024-10-13 12:53:00	2024-10-13 12:53:00
542	110	277	50	20.00	1500.00	2024-10-13 12:53:00	2024-10-13 12:53:00
543	110	318	21	70.00	714.00	2024-10-13 12:53:00	2024-10-13 12:53:00
544	110	280	49	45.00	3675.00	2024-10-13 12:53:00	2024-10-13 12:53:00
545	110	319	38	71.00	3116.00	2024-10-13 12:53:00	2024-10-13 12:53:00
546	111	457	9	79.00	828.00	2024-10-22 11:06:00	2024-10-22 11:06:00
547	111	277	32	24.00	1664.00	2024-10-22 11:06:00	2024-10-22 11:06:00
548	111	205	7	76.00	161.00	2024-10-22 11:06:00	2024-10-22 11:06:00
549	111	280	3	61.00	255.00	2024-10-22 11:06:00	2024-10-22 11:06:00
550	111	90	15	92.00	1455.00	2024-10-22 11:06:00	2024-10-22 11:06:00
551	112	331	5	82.00	230.00	2024-10-19 15:14:00	2024-10-19 15:14:00
552	112	822	33	100.00	2178.00	2024-10-19 15:14:00	2024-10-19 15:14:00
553	112	651	26	35.00	1144.00	2024-10-19 15:14:00	2024-10-19 15:14:00
554	112	21	26	58.00	598.00	2024-10-19 15:14:00	2024-10-19 15:14:00
555	112	25	48	21.00	1968.00	2024-10-19 15:14:00	2024-10-19 15:14:00
556	113	731	48	93.00	2496.00	2024-10-21 09:27:00	2024-10-21 09:27:00
557	113	781	25	39.00	700.00	2024-10-21 09:27:00	2024-10-21 09:27:00
558	113	245	40	46.00	2960.00	2024-10-21 09:27:00	2024-10-21 09:27:00
559	113	424	8	37.00	712.00	2024-10-21 09:27:00	2024-10-21 09:27:00
560	113	550	2	59.00	56.00	2024-10-21 09:27:00	2024-10-21 09:27:00
561	114	501	17	83.00	1292.00	2024-10-31 10:16:00	2024-10-31 10:16:00
562	114	373	13	67.00	754.00	2024-10-31 10:16:00	2024-10-31 10:16:00
563	114	58	22	76.00	836.00	2024-10-31 10:16:00	2024-10-31 10:16:00
564	114	59	30	56.00	1080.00	2024-10-31 10:16:00	2024-10-31 10:16:00
565	114	145	34	93.00	816.00	2024-10-31 10:16:00	2024-10-31 10:16:00
566	115	394	29	97.00	2842.00	2024-10-22 15:19:00	2024-10-22 15:19:00
567	115	443	28	86.00	1036.00	2024-10-22 15:19:00	2024-10-22 15:19:00
568	115	250	3	43.00	228.00	2024-10-22 15:19:00	2024-10-22 15:19:00
569	115	338	23	74.00	897.00	2024-10-22 15:19:00	2024-10-22 15:19:00
570	115	64	14	76.00	994.00	2024-10-22 15:19:00	2024-10-22 15:19:00
571	116	1141	35	33.00	2380.00	2024-10-20 14:43:00	2024-10-20 14:43:00
572	116	144	40	34.00	880.00	2024-10-20 14:43:00	2024-10-20 14:43:00
573	116	15	7	75.00	469.00	2024-10-20 14:43:00	2024-10-20 14:43:00
574	116	125	16	56.00	320.00	2024-10-20 14:43:00	2024-10-20 14:43:00
575	116	438	10	38.00	900.00	2024-10-20 14:43:00	2024-10-20 14:43:00
576	117	426	19	60.00	1140.00	2024-10-26 08:22:00	2024-10-26 08:22:00
577	117	278	37	65.00	2627.00	2024-10-26 08:22:00	2024-10-26 08:22:00
578	117	343	48	52.00	2208.00	2024-10-26 08:22:00	2024-10-26 08:22:00
579	117	919	26	96.00	1092.00	2024-10-26 08:22:00	2024-10-26 08:22:00
580	117	603	23	61.00	1748.00	2024-10-26 08:22:00	2024-10-26 08:22:00
581	118	252	48	38.00	2208.00	2024-10-28 14:07:00	2024-10-28 14:07:00
582	118	647	17	100.00	1003.00	2024-10-28 14:07:00	2024-10-28 14:07:00
583	118	254	25	42.00	2350.00	2024-10-28 14:07:00	2024-10-28 14:07:00
584	118	1375	1	28.00	83.00	2024-10-28 14:07:00	2024-10-28 14:07:00
585	118	255	29	31.00	1943.00	2024-10-28 14:07:00	2024-10-28 14:07:00
586	119	847	3	91.00	60.00	2024-10-06 16:01:00	2024-10-06 16:01:00
587	119	591	23	73.00	920.00	2024-10-06 16:01:00	2024-10-06 16:01:00
588	119	358	6	43.00	390.00	2024-10-06 16:01:00	2024-10-06 16:01:00
589	119	175	42	70.00	4200.00	2024-10-06 16:01:00	2024-10-06 16:01:00
590	119	575	40	28.00	2080.00	2024-10-06 16:01:00	2024-10-06 16:01:00
591	120	521	20	87.00	1700.00	2024-10-06 08:23:00	2024-10-06 08:23:00
592	120	117	26	29.00	1300.00	2024-10-06 08:23:00	2024-10-06 08:23:00
593	120	467	42	65.00	3402.00	2024-10-06 08:23:00	2024-10-06 08:23:00
594	120	55	2	90.00	88.00	2024-10-06 08:23:00	2024-10-06 08:23:00
595	120	75	49	65.00	2352.00	2024-10-06 08:23:00	2024-10-06 08:23:00
596	121	751	39	37.00	2574.00	2024-10-26 12:31:00	2024-10-26 12:31:00
597	121	719	42	24.00	1134.00	2024-10-26 12:31:00	2024-10-26 12:31:00
598	121	29	7	27.00	672.00	2024-10-26 12:31:00	2024-10-26 12:31:00
599	121	154	27	94.00	1512.00	2024-10-26 12:31:00	2024-10-26 12:31:00
600	121	240	21	87.00	1260.00	2024-10-26 12:31:00	2024-10-26 12:31:00
601	122	92	10	100.00	680.00	2024-10-20 08:07:00	2024-10-20 08:07:00
602	122	517	27	32.00	756.00	2024-10-20 08:07:00	2024-10-20 08:07:00
603	122	128	34	84.00	1530.00	2024-10-20 08:07:00	2024-10-20 08:07:00
604	122	208	26	88.00	1534.00	2024-10-20 08:07:00	2024-10-20 08:07:00
605	122	28	25	61.00	1050.00	2024-10-20 08:07:00	2024-10-20 08:07:00
606	123	192	39	62.00	1131.00	2024-10-19 12:14:00	2024-10-19 12:14:00
607	123	501	49	89.00	2548.00	2024-10-19 12:14:00	2024-10-19 12:14:00
608	123	397	26	100.00	988.00	2024-10-19 12:14:00	2024-10-19 12:14:00
609	123	14	41	70.00	1107.00	2024-10-19 12:14:00	2024-10-19 12:14:00
610	123	150	32	33.00	3072.00	2024-10-19 12:14:00	2024-10-19 12:14:00
611	124	651	18	76.00	648.00	2024-10-21 16:03:00	2024-10-21 16:03:00
612	124	823	15	99.00	1215.00	2024-10-21 16:03:00	2024-10-21 16:03:00
613	124	42	20	20.00	660.00	2024-10-21 16:03:00	2024-10-21 16:03:00
614	124	654	10	70.00	990.00	2024-10-21 16:03:00	2024-10-21 16:03:00
615	124	215	21	63.00	1218.00	2024-10-21 16:03:00	2024-10-21 16:03:00
616	125	39	3	44.00	189.00	2024-10-28 14:28:00	2024-10-28 14:28:00
617	125	218	11	73.00	286.00	2024-10-28 14:28:00	2024-10-28 14:28:00
618	125	42	9	38.00	270.00	2024-10-28 14:28:00	2024-10-28 14:28:00
619	125	50	15	92.00	1065.00	2024-10-28 14:28:00	2024-10-28 14:28:00
620	125	654	26	48.00	598.00	2024-10-28 14:28:00	2024-10-28 14:28:00
621	126	486	11	64.00	682.00	2024-10-13 09:40:00	2024-10-13 09:40:00
622	126	1092	30	26.00	2490.00	2024-10-13 09:40:00	2024-10-13 09:40:00
623	126	666	31	42.00	1395.00	2024-10-13 09:40:00	2024-10-13 09:40:00
624	126	208	37	94.00	1073.00	2024-10-13 09:40:00	2024-10-13 09:40:00
625	126	94	41	21.00	2501.00	2024-10-13 09:40:00	2024-10-13 09:40:00
626	127	281	14	65.00	910.00	2024-10-03 14:22:00	2024-10-03 14:22:00
627	127	428	34	73.00	714.00	2024-10-03 14:22:00	2024-10-03 14:22:00
628	127	88	26	23.00	1196.00	2024-10-03 14:22:00	2024-10-03 14:22:00
629	127	265	16	90.00	1216.00	2024-10-03 14:22:00	2024-10-03 14:22:00
630	127	605	9	29.00	270.00	2024-10-03 14:22:00	2024-10-03 14:22:00
631	128	241	44	53.00	3300.00	2024-10-23 14:30:00	2024-10-23 14:30:00
632	128	156	6	45.00	492.00	2024-10-23 14:30:00	2024-10-23 14:30:00
633	128	779	17	20.00	748.00	2024-10-23 14:30:00	2024-10-23 14:30:00
634	128	407	1	93.00	32.00	2024-10-23 14:30:00	2024-10-23 14:30:00
635	128	550	33	87.00	3234.00	2024-10-23 14:30:00	2024-10-23 14:30:00
636	129	11	8	45.00	680.00	2024-10-11 15:35:00	2024-10-11 15:35:00
637	129	372	1	99.00	66.00	2024-10-11 15:35:00	2024-10-11 15:35:00
638	129	125	38	25.00	2850.00	2024-10-11 15:35:00	2024-10-11 15:35:00
639	129	195	45	96.00	4140.00	2024-10-11 15:35:00	2024-10-11 15:35:00
640	129	70	14	53.00	1190.00	2024-10-11 15:35:00	2024-10-11 15:35:00
641	130	277	3	73.00	294.00	2024-10-17 13:17:00	2024-10-17 13:17:00
642	130	262	20	93.00	1560.00	2024-10-17 13:17:00	2024-10-17 13:17:00
643	130	264	47	39.00	1551.00	2024-10-17 13:17:00	2024-10-17 13:17:00
644	130	345	33	31.00	2112.00	2024-10-17 13:17:00	2024-10-17 13:17:00
645	130	604	43	63.00	2236.00	2024-10-17 13:17:00	2024-10-17 13:17:00
646	131	1	24	63.00	2112.00	2024-10-28 12:55:00	2024-10-28 12:55:00
647	131	358	13	83.00	1157.00	2024-10-28 12:55:00	2024-10-28 12:55:00
648	131	46	18	93.00	1314.00	2024-10-28 12:55:00	2024-10-28 12:55:00
649	131	104	18	61.00	1116.00	2024-10-28 12:55:00	2024-10-28 12:55:00
650	131	23	10	75.00	650.00	2024-10-28 12:55:00	2024-10-28 12:55:00
651	132	201	2	82.00	140.00	2024-10-26 13:40:00	2024-10-26 13:40:00
652	132	658	22	55.00	1386.00	2024-10-26 13:40:00	2024-10-26 13:40:00
653	132	1404	46	85.00	3496.00	2024-10-26 13:40:00	2024-10-26 13:40:00
654	132	428	22	37.00	880.00	2024-10-26 13:40:00	2024-10-26 13:40:00
655	132	603	4	51.00	380.00	2024-10-26 13:40:00	2024-10-26 13:40:00
656	133	651	1	25.00	64.00	2024-10-28 15:53:00	2024-10-28 15:53:00
657	133	358	42	65.00	2184.00	2024-10-28 15:53:00	2024-10-28 15:53:00
658	133	39	46	59.00	3956.00	2024-10-28 15:53:00	2024-10-28 15:53:00
659	133	175	12	48.00	372.00	2024-10-28 15:53:00	2024-10-28 15:53:00
660	133	44	13	57.00	845.00	2024-10-28 15:53:00	2024-10-28 15:53:00
661	134	1141	28	93.00	644.00	2024-10-20 10:46:00	2024-10-20 10:46:00
662	134	164	4	54.00	208.00	2024-10-20 10:46:00	2024-10-20 10:46:00
663	134	56	18	24.00	486.00	2024-10-20 10:46:00	2024-10-20 10:46:00
664	134	145	10	48.00	260.00	2024-10-20 10:46:00	2024-10-20 10:46:00
665	134	195	1	72.00	55.00	2024-10-20 10:46:00	2024-10-20 10:46:00
666	135	276	7	56.00	175.00	2024-10-17 09:05:00	2024-10-17 09:05:00
667	135	287	18	91.00	540.00	2024-10-17 09:05:00	2024-10-17 09:05:00
668	135	86	17	50.00	544.00	2024-10-17 09:05:00	2024-10-17 09:05:00
669	135	319	30	51.00	2100.00	2024-10-17 09:05:00	2024-10-17 09:05:00
670	135	605	10	41.00	620.00	2024-10-17 09:05:00	2024-10-17 09:05:00
671	136	151	20	65.00	1000.00	2024-10-20 08:15:00	2024-10-20 08:15:00
672	136	207	15	40.00	555.00	2024-10-20 08:15:00	2024-10-20 08:15:00
673	136	712	21	69.00	567.00	2024-10-20 08:15:00	2024-10-20 08:15:00
674	136	668	18	95.00	828.00	2024-10-20 08:15:00	2024-10-20 08:15:00
675	136	580	49	97.00	2205.00	2024-10-20 08:15:00	2024-10-20 08:15:00
676	137	126	25	66.00	875.00	2024-10-06 08:33:00	2024-10-06 08:33:00
677	137	209	7	43.00	364.00	2024-10-06 08:33:00	2024-10-06 08:33:00
678	137	314	40	53.00	3720.00	2024-10-06 08:33:00	2024-10-06 08:33:00
679	137	129	37	78.00	3330.00	2024-10-06 08:33:00	2024-10-06 08:33:00
680	137	155	2	58.00	80.00	2024-10-06 08:33:00	2024-10-06 08:33:00
681	138	81	12	37.00	384.00	2024-10-21 11:42:00	2024-10-21 11:42:00
682	138	466	34	54.00	2856.00	2024-10-21 11:42:00	2024-10-21 11:42:00
683	138	322	14	44.00	1246.00	2024-10-21 11:42:00	2024-10-21 11:42:00
684	138	323	43	48.00	3784.00	2024-10-21 11:42:00	2024-10-21 11:42:00
685	138	610	18	31.00	612.00	2024-10-21 11:42:00	2024-10-21 11:42:00
686	139	551	22	20.00	1870.00	2024-10-11 09:46:00	2024-10-11 09:46:00
687	139	348	47	22.00	2961.00	2024-10-11 09:46:00	2024-10-11 09:46:00
688	139	363	12	49.00	972.00	2024-10-11 09:46:00	2024-10-11 09:46:00
689	139	513	12	46.00	504.00	2024-10-11 09:46:00	2024-10-11 09:46:00
690	139	115	10	36.00	470.00	2024-10-11 09:46:00	2024-10-11 09:46:00
691	140	834	16	86.00	976.00	2024-10-30 09:04:00	2024-10-30 09:04:00
692	140	978	4	65.00	348.00	2024-10-30 09:04:00	2024-10-30 09:04:00
693	140	514	3	90.00	228.00	2024-10-30 09:04:00	2024-10-30 09:04:00
694	140	1040	20	70.00	1680.00	2024-10-30 09:04:00	2024-10-30 09:04:00
695	141	126	10	37.00	440.00	2024-10-05 13:56:00	2024-10-05 13:56:00
696	141	207	21	84.00	1554.00	2024-10-05 13:56:00	2024-10-05 13:56:00
697	141	239	28	48.00	1092.00	2024-10-05 13:56:00	2024-10-05 13:56:00
698	141	155	39	81.00	3549.00	2024-10-05 13:56:00	2024-10-05 13:56:00
699	141	1025	49	88.00	2891.00	2024-10-05 13:56:00	2024-10-05 13:56:00
700	142	106	12	46.00	552.00	2024-10-31 09:42:00	2024-10-31 09:42:00
701	142	247	37	72.00	3663.00	2024-10-31 09:42:00	2024-10-31 09:42:00
702	142	493	36	72.00	2088.00	2024-10-31 09:42:00	2024-10-31 09:42:00
703	142	79	14	85.00	966.00	2024-10-31 09:42:00	2024-10-31 09:42:00
704	142	64	7	93.00	287.00	2024-10-31 09:42:00	2024-10-31 09:42:00
705	143	140	3	98.00	63.00	2024-10-28 12:51:00	2024-10-28 12:51:00
706	143	79	13	33.00	273.00	2024-10-28 12:51:00	2024-10-28 12:51:00
707	143	495	15	80.00	975.00	2024-10-28 12:51:00	2024-10-28 12:51:00
708	143	65	39	69.00	819.00	2024-10-28 12:51:00	2024-10-28 12:51:00
709	143	110	19	29.00	836.00	2024-10-28 12:51:00	2024-10-28 12:51:00
710	144	133	13	76.00	663.00	2024-10-20 12:29:00	2024-10-20 12:29:00
711	144	647	16	80.00	560.00	2024-10-20 12:29:00	2024-10-20 12:29:00
712	144	253	48	62.00	1344.00	2024-10-20 12:29:00	2024-10-20 12:29:00
713	144	254	40	49.00	3040.00	2024-10-20 12:29:00	2024-10-20 12:29:00
714	144	690	3	56.00	267.00	2024-10-20 12:29:00	2024-10-20 12:29:00
715	145	176	18	78.00	1512.00	2024-10-24 14:21:00	2024-10-24 14:21:00
716	145	178	20	25.00	820.00	2024-10-24 14:21:00	2024-10-24 14:21:00
717	145	628	8	33.00	224.00	2024-10-24 14:21:00	2024-10-24 14:21:00
718	145	383	12	49.00	396.00	2024-10-24 14:21:00	2024-10-24 14:21:00
719	145	180	28	46.00	1764.00	2024-10-24 14:21:00	2024-10-24 14:21:00
720	146	426	29	61.00	2552.00	2024-10-13 13:29:00	2024-10-13 13:29:00
721	146	343	27	99.00	1701.00	2024-10-13 13:29:00	2024-10-13 13:29:00
722	146	284	29	97.00	1537.00	2024-10-13 13:29:00	2024-10-13 13:29:00
723	146	280	3	28.00	237.00	2024-10-13 13:29:00	2024-10-13 13:29:00
724	146	603	25	98.00	2425.00	2024-10-13 13:29:00	2024-10-13 13:29:00
725	147	781	14	34.00	1050.00	2024-10-15 09:00:00	2024-10-15 09:00:00
726	147	157	6	26.00	240.00	2024-10-15 09:00:00	2024-10-15 09:00:00
727	147	273	7	53.00	259.00	2024-10-15 09:00:00	2024-10-15 09:00:00
728	147	550	31	43.00	1798.00	2024-10-15 09:00:00	2024-10-15 09:00:00
729	147	275	12	92.00	624.00	2024-10-15 09:00:00	2024-10-15 09:00:00
730	148	847	26	78.00	2366.00	2024-10-12 12:17:00	2024-10-12 12:17:00
731	148	823	19	26.00	1520.00	2024-10-12 12:17:00	2024-10-12 12:17:00
732	148	21	32	63.00	2624.00	2024-10-12 12:17:00	2024-10-12 12:17:00
733	148	258	30	31.00	660.00	2024-10-12 12:17:00	2024-10-12 12:17:00
734	148	48	4	25.00	356.00	2024-10-12 12:17:00	2024-10-12 12:17:00
735	149	394	11	42.00	792.00	2024-10-15 10:21:00	2024-10-15 10:21:00
736	149	395	37	88.00	2590.00	2024-10-15 10:21:00	2024-10-15 10:21:00
737	149	79	38	58.00	1672.00	2024-10-15 10:21:00	2024-10-15 10:21:00
738	149	35	11	42.00	1034.00	2024-10-15 10:21:00	2024-10-15 10:21:00
739	149	99	13	66.00	1261.00	2024-10-15 10:21:00	2024-10-15 10:21:00
740	150	746	43	90.00	1935.00	2024-10-17 13:30:00	2024-10-17 13:30:00
741	150	386	24	76.00	1488.00	2024-10-17 13:30:00	2024-10-17 13:30:00
742	150	231	17	100.00	1394.00	2024-10-17 13:30:00	2024-10-17 13:30:00
743	150	554	9	34.00	783.00	2024-10-17 13:30:00	2024-10-17 13:30:00
744	150	1040	13	25.00	364.00	2024-10-17 13:30:00	2024-10-17 13:30:00
745	151	671	3	40.00	201.00	2024-10-12 09:34:00	2024-10-12 09:34:00
746	151	331	34	66.00	1632.00	2024-10-12 09:34:00	2024-10-12 09:34:00
747	151	22	4	73.00	252.00	2024-10-12 09:34:00	2024-10-12 09:34:00
748	151	48	2	97.00	126.00	2024-10-12 09:34:00	2024-10-12 09:34:00
749	151	175	4	87.00	140.00	2024-10-12 09:34:00	2024-10-12 09:34:00
750	152	251	31	33.00	992.00	2024-10-30 10:01:00	2024-10-30 10:01:00
751	152	431	34	88.00	3332.00	2024-10-30 10:01:00	2024-10-30 10:01:00
752	152	413	4	97.00	280.00	2024-10-30 10:01:00	2024-10-30 10:01:00
753	152	650	29	97.00	2494.00	2024-10-30 10:01:00	2024-10-30 10:01:00
754	153	127	34	39.00	1666.00	2024-10-24 12:44:00	2024-10-24 12:44:00
755	153	518	12	63.00	612.00	2024-10-24 12:44:00	2024-10-24 12:44:00
756	153	238	21	29.00	2100.00	2024-10-24 12:44:00	2024-10-24 12:44:00
757	153	580	35	34.00	2415.00	2024-10-24 12:44:00	2024-10-24 12:44:00
758	153	210	17	41.00	459.00	2024-10-24 12:44:00	2024-10-24 12:44:00
759	154	11	3	90.00	177.00	2024-10-16 10:10:00	2024-10-16 10:10:00
760	154	121	26	43.00	1092.00	2024-10-16 10:10:00	2024-10-16 10:10:00
761	154	142	5	36.00	255.00	2024-10-16 10:10:00	2024-10-16 10:10:00
762	154	147	31	90.00	1922.00	2024-10-16 10:10:00	2024-10-16 10:10:00
763	154	195	29	41.00	609.00	2024-10-16 10:10:00	2024-10-16 10:10:00
764	155	1228	31	90.00	3100.00	2024-10-07 09:27:00	2024-10-07 09:27:00
765	155	162	9	23.00	711.00	2024-10-07 09:27:00	2024-10-07 09:27:00
766	155	501	8	20.00	464.00	2024-10-07 09:27:00	2024-10-07 09:27:00
767	155	57	39	52.00	2925.00	2024-10-07 09:27:00	2024-10-07 09:27:00
768	155	150	22	92.00	550.00	2024-10-07 09:27:00	2024-10-07 09:27:00
769	156	92	1	45.00	94.00	2024-10-17 08:53:00	2024-10-17 08:53:00
770	156	581	7	65.00	364.00	2024-10-17 08:53:00	2024-10-17 08:53:00
771	156	237	20	51.00	1420.00	2024-10-17 08:53:00	2024-10-17 08:53:00
772	156	238	10	62.00	380.00	2024-10-17 08:53:00	2024-10-17 08:53:00
773	156	210	4	56.00	196.00	2024-10-17 08:53:00	2024-10-17 08:53:00
774	157	751	3	88.00	231.00	2024-10-09 08:34:00	2024-10-09 08:34:00
775	157	487	22	25.00	1210.00	2024-10-09 08:34:00	2024-10-09 08:34:00
776	157	127	37	95.00	1221.00	2024-10-09 08:34:00	2024-10-09 08:34:00
777	157	666	9	43.00	540.00	2024-10-09 08:34:00	2024-10-09 08:34:00
778	157	1025	33	89.00	2442.00	2024-10-09 08:34:00	2024-10-09 08:34:00
779	158	287	33	24.00	3036.00	2024-10-23 11:20:00	2024-10-23 11:20:00
780	158	658	34	58.00	1326.00	2024-10-23 11:20:00	2024-10-23 11:20:00
781	158	301	6	85.00	528.00	2024-10-23 11:20:00	2024-10-23 11:20:00
782	158	602	46	81.00	3220.00	2024-10-23 11:20:00	2024-10-23 11:20:00
783	158	919	18	22.00	1728.00	2024-10-23 11:20:00	2024-10-23 11:20:00
784	159	752	20	63.00	1980.00	2024-10-24 15:22:00	2024-10-24 15:22:00
785	159	93	42	61.00	1428.00	2024-10-24 15:22:00	2024-10-24 15:22:00
786	159	720	50	69.00	3900.00	2024-10-24 15:22:00	2024-10-24 15:22:00
787	159	210	3	74.00	222.00	2024-10-24 15:22:00	2024-10-24 15:22:00
788	159	95	28	90.00	2632.00	2024-10-24 15:22:00	2024-10-24 15:22:00
789	160	348	14	67.00	1148.00	2024-10-19 16:24:00	2024-10-19 16:24:00
790	160	767	1	81.00	42.00	2024-10-19 16:24:00	2024-10-19 16:24:00
791	160	233	16	50.00	1344.00	2024-10-19 16:24:00	2024-10-19 16:24:00
792	160	554	39	79.00	1482.00	2024-10-19 16:24:00	2024-10-19 16:24:00
793	160	1040	16	60.00	720.00	2024-10-19 16:24:00	2024-10-19 16:24:00
794	161	426	14	79.00	322.00	2024-10-23 13:53:00	2024-10-23 13:53:00
795	161	696	11	57.00	253.00	2024-10-23 13:53:00	2024-10-23 13:53:00
796	161	86	22	31.00	572.00	2024-10-23 13:53:00	2024-10-23 13:53:00
797	161	279	27	40.00	783.00	2024-10-23 13:53:00	2024-10-23 13:53:00
798	161	280	9	87.00	567.00	2024-10-23 13:53:00	2024-10-23 13:53:00
799	162	1066	3	39.00	120.00	2024-10-14 12:56:00	2024-10-14 12:56:00
800	162	205	21	41.00	1197.00	2024-10-14 12:56:00	2024-10-14 12:56:00
801	162	280	1	37.00	41.00	2024-10-14 12:56:00	2024-10-14 12:56:00
802	162	265	33	92.00	1386.00	2024-10-14 12:56:00	2024-10-14 12:56:00
803	162	540	10	47.00	570.00	2024-10-14 12:56:00	2024-10-14 12:56:00
804	163	626	14	74.00	728.00	2024-10-01 11:01:00	2024-10-01 11:01:00
805	163	647	10	32.00	200.00	2024-10-01 11:01:00	2024-10-01 11:01:00
806	163	1275	11	100.00	528.00	2024-10-01 11:01:00	2024-10-01 11:01:00
807	163	254	20	68.00	1540.00	2024-10-01 11:01:00	2024-10-01 11:01:00
808	163	624	39	38.00	2340.00	2024-10-01 11:01:00	2024-10-01 11:01:00
809	164	141	11	40.00	1034.00	2024-10-10 14:46:00	2024-10-10 14:46:00
810	164	182	20	30.00	540.00	2024-10-10 14:46:00	2024-10-10 14:46:00
811	164	67	23	51.00	1311.00	2024-10-10 14:46:00	2024-10-10 14:46:00
812	164	372	28	96.00	2800.00	2024-10-10 14:46:00	2024-10-10 14:46:00
813	164	438	35	42.00	2940.00	2024-10-10 14:46:00	2024-10-10 14:46:00
814	165	781	5	56.00	370.00	2024-10-03 14:28:00	2024-10-03 14:28:00
815	165	244	16	54.00	656.00	2024-10-03 14:28:00	2024-10-03 14:28:00
816	165	819	22	100.00	1232.00	2024-10-03 14:28:00	2024-10-03 14:28:00
817	165	273	17	42.00	527.00	2024-10-03 14:28:00	2024-10-03 14:28:00
818	165	424	44	45.00	3828.00	2024-10-03 14:28:00	2024-10-03 14:28:00
819	166	457	24	30.00	1968.00	2024-10-22 08:53:00	2024-10-22 08:53:00
820	166	1243	21	85.00	1512.00	2024-10-22 08:53:00	2024-10-22 08:53:00
821	166	278	6	70.00	156.00	2024-10-22 08:53:00	2024-10-22 08:53:00
822	166	284	5	94.00	165.00	2024-10-22 08:53:00	2024-10-22 08:53:00
823	166	1300	4	80.00	200.00	2024-10-22 08:53:00	2024-10-22 08:53:00
824	167	132	24	61.00	768.00	2024-10-31 09:38:00	2024-10-31 09:38:00
825	167	627	13	100.00	650.00	2024-10-31 09:38:00	2024-10-31 09:38:00
826	167	230	26	27.00	1144.00	2024-10-31 09:38:00	2024-10-31 09:38:00
827	167	630	3	31.00	297.00	2024-10-31 09:38:00	2024-10-31 09:38:00
828	168	709	41	81.00	3936.00	2024-10-24 14:19:00	2024-10-24 14:19:00
829	168	448	27	94.00	1701.00	2024-10-24 14:19:00	2024-10-24 14:19:00
830	168	423	15	73.00	795.00	2024-10-24 14:19:00	2024-10-24 14:19:00
831	168	549	2	88.00	94.00	2024-10-24 14:19:00	2024-10-24 14:19:00
832	168	160	17	34.00	425.00	2024-10-24 14:19:00	2024-10-24 14:19:00
833	169	616	7	63.00	595.00	2024-10-12 12:17:00	2024-10-12 12:17:00
834	169	847	13	60.00	845.00	2024-10-12 12:17:00	2024-10-12 12:17:00
835	169	618	15	97.00	645.00	2024-10-12 12:17:00	2024-10-12 12:17:00
836	169	50	41	45.00	2788.00	2024-10-12 12:17:00	2024-10-12 12:17:00
837	169	654	3	39.00	246.00	2024-10-12 12:17:00	2024-10-12 12:17:00
838	170	616	1	38.00	95.00	2024-10-10 15:52:00	2024-10-10 15:52:00
839	170	37	14	59.00	742.00	2024-10-10 15:52:00	2024-10-10 15:52:00
840	170	651	31	92.00	2387.00	2024-10-10 15:52:00	2024-10-10 15:52:00
841	170	618	45	69.00	4050.00	2024-10-10 15:52:00	2024-10-10 15:52:00
842	170	47	29	85.00	2320.00	2024-10-10 15:52:00	2024-10-10 15:52:00
843	171	166	23	82.00	1058.00	2024-10-13 10:28:00	2024-10-13 10:28:00
844	171	167	47	62.00	3713.00	2024-10-13 10:28:00	2024-10-13 10:28:00
845	171	248	14	24.00	504.00	2024-10-13 10:28:00	2024-10-13 10:28:00
846	171	338	1	76.00	80.00	2024-10-13 10:28:00	2024-10-13 10:28:00
847	171	100	25	43.00	2275.00	2024-10-13 10:28:00	2024-10-13 10:28:00
848	172	891	48	100.00	1248.00	2024-10-03 13:51:00	2024-10-03 13:51:00
849	172	407	28	75.00	1652.00	2024-10-03 13:51:00	2024-10-03 13:51:00
850	172	860	34	64.00	1564.00	2024-10-03 13:51:00	2024-10-03 13:51:00
851	172	424	24	96.00	1464.00	2024-10-03 13:51:00	2024-10-03 13:51:00
852	172	550	19	34.00	1425.00	2024-10-03 13:51:00	2024-10-03 13:51:00
853	173	11	27	27.00	1377.00	2024-10-21 16:58:00	2024-10-21 16:58:00
854	173	501	9	52.00	342.00	2024-10-21 16:58:00	2024-10-21 16:58:00
855	173	14	11	71.00	462.00	2024-10-21 16:58:00	2024-10-21 16:58:00
856	173	124	31	44.00	1829.00	2024-10-21 16:58:00	2024-10-21 16:58:00
857	173	440	29	50.00	2407.00	2024-10-21 16:58:00	2024-10-21 16:58:00
858	174	331	16	95.00	592.00	2024-10-05 10:40:00	2024-10-05 10:40:00
859	174	21	10	41.00	730.00	2024-10-05 10:40:00	2024-10-05 10:40:00
860	174	172	43	93.00	2451.00	2024-10-05 10:40:00	2024-10-05 10:40:00
861	174	654	17	88.00	1700.00	2024-10-05 10:40:00	2024-10-05 10:40:00
862	174	215	7	77.00	665.00	2024-10-05 10:40:00	2024-10-05 10:40:00
863	175	706	32	49.00	1376.00	2024-10-24 11:44:00	2024-10-24 11:44:00
864	175	241	4	54.00	264.00	2024-10-24 11:44:00	2024-10-24 11:44:00
865	175	406	24	49.00	1968.00	2024-10-24 11:44:00	2024-10-24 11:44:00
866	175	446	42	51.00	4116.00	2024-10-24 11:44:00	2024-10-24 11:44:00
867	175	407	10	85.00	440.00	2024-10-24 11:44:00	2024-10-24 11:44:00
868	176	42	13	63.00	1001.00	2024-10-07 11:24:00	2024-10-07 11:24:00
869	176	258	41	35.00	1845.00	2024-10-07 11:24:00	2024-10-07 11:24:00
870	176	4	19	29.00	1102.00	2024-10-07 11:24:00	2024-10-07 11:24:00
871	176	884	7	93.00	511.00	2024-10-07 11:24:00	2024-10-07 11:24:00
872	176	654	25	27.00	1550.00	2024-10-07 11:24:00	2024-10-07 11:24:00
873	177	248	20	88.00	1120.00	2024-10-11 13:12:00	2024-10-11 13:12:00
874	177	97	49	99.00	2744.00	2024-10-11 13:12:00	2024-10-11 13:12:00
875	177	493	1	42.00	56.00	2024-10-11 13:12:00	2024-10-11 13:12:00
876	177	139	4	74.00	304.00	2024-10-11 13:12:00	2024-10-11 13:12:00
877	177	339	20	49.00	1600.00	2024-10-11 13:12:00	2024-10-11 13:12:00
878	178	144	38	89.00	1824.00	2024-10-03 15:09:00	2024-10-03 15:09:00
879	178	14	25	44.00	2400.00	2024-10-03 15:09:00	2024-10-03 15:09:00
880	178	149	50	64.00	2800.00	2024-10-03 15:09:00	2024-10-03 15:09:00
881	178	150	27	55.00	2268.00	2024-10-03 15:09:00	2024-10-03 15:09:00
882	178	165	37	77.00	2146.00	2024-10-03 15:09:00	2024-10-03 15:09:00
883	179	262	1	39.00	85.00	2024-10-19 10:00:00	2024-10-19 10:00:00
884	179	1066	40	78.00	3760.00	2024-10-19 10:00:00	2024-10-19 10:00:00
885	179	1243	42	77.00	2562.00	2024-10-19 10:00:00	2024-10-19 10:00:00
886	179	303	28	93.00	1232.00	2024-10-19 10:00:00	2024-10-19 10:00:00
887	179	1298	28	35.00	2212.00	2024-10-19 10:00:00	2024-10-19 10:00:00
888	180	126	10	79.00	810.00	2024-10-11 10:34:00	2024-10-11 10:34:00
889	180	752	31	83.00	1085.00	2024-10-11 10:34:00	2024-10-11 10:34:00
890	180	1092	3	69.00	192.00	2024-10-11 10:34:00	2024-10-11 10:34:00
891	180	92	21	75.00	966.00	2024-10-11 10:34:00	2024-10-11 10:34:00
892	180	208	12	95.00	360.00	2024-10-11 10:34:00	2024-10-11 10:34:00
893	181	426	2	21.00	92.00	2024-10-07 11:08:00	2024-10-07 11:08:00
894	181	457	37	80.00	2442.00	2024-10-07 11:08:00	2024-10-07 11:08:00
895	181	1086	21	83.00	693.00	2024-10-07 11:08:00	2024-10-07 11:08:00
896	181	202	17	32.00	1615.00	2024-10-07 11:08:00	2024-10-07 11:08:00
897	181	302	37	92.00	1295.00	2024-10-07 11:08:00	2024-10-07 11:08:00
898	182	716	24	25.00	2064.00	2024-10-28 13:22:00	2024-10-28 13:22:00
899	182	151	20	99.00	1460.00	2024-10-28 13:22:00	2024-10-28 13:22:00
900	182	152	42	29.00	3570.00	2024-10-28 13:22:00	2024-10-28 13:22:00
901	182	712	19	31.00	1083.00	2024-10-28 13:22:00	2024-10-28 13:22:00
902	182	1105	13	55.00	624.00	2024-10-28 13:22:00	2024-10-28 13:22:00
903	183	167	27	75.00	1539.00	2024-10-13 16:02:00	2024-10-13 16:02:00
904	183	77	4	93.00	132.00	2024-10-13 16:02:00	2024-10-13 16:02:00
905	183	169	15	48.00	810.00	2024-10-13 16:02:00	2024-10-13 16:02:00
906	183	61	9	99.00	369.00	2024-10-13 16:02:00	2024-10-13 16:02:00
907	183	338	32	97.00	1216.00	2024-10-13 16:02:00	2024-10-13 16:02:00
908	184	418	11	53.00	539.00	2024-10-21 14:29:00	2024-10-21 14:29:00
909	184	156	2	83.00	76.00	2024-10-21 14:29:00	2024-10-21 14:29:00
910	184	157	43	80.00	903.00	2024-10-21 14:29:00	2024-10-21 14:29:00
911	184	1154	9	75.00	450.00	2024-10-21 14:29:00	2024-10-21 14:29:00
912	184	864	24	95.00	864.00	2024-10-21 14:29:00	2024-10-21 14:29:00
913	185	251	17	48.00	884.00	2024-10-29 11:10:00	2024-10-29 11:10:00
914	185	177	43	26.00	903.00	2024-10-29 11:10:00	2024-10-29 11:10:00
915	185	253	21	69.00	1533.00	2024-10-29 11:10:00	2024-10-29 11:10:00
916	185	1375	38	23.00	3078.00	2024-10-29 11:10:00	2024-10-29 11:10:00
917	185	690	3	72.00	285.00	2024-10-29 11:10:00	2024-10-29 11:10:00
918	186	1382	24	59.00	528.00	2024-10-01 09:03:00	2024-10-01 09:03:00
919	186	12	40	74.00	2240.00	2024-10-01 09:03:00	2024-10-01 09:03:00
920	186	762	7	47.00	189.00	2024-10-01 09:03:00	2024-10-01 09:03:00
921	186	56	19	32.00	1615.00	2024-10-01 09:03:00	2024-10-01 09:03:00
922	186	124	1	29.00	98.00	2024-10-01 09:03:00	2024-10-01 09:03:00
923	187	1157	6	36.00	504.00	2024-10-27 12:37:00	2024-10-27 12:37:00
924	187	513	5	83.00	500.00	2024-10-27 12:37:00	2024-10-27 12:37:00
925	187	234	32	76.00	3008.00	2024-10-27 12:37:00	2024-10-27 12:37:00
926	187	554	24	69.00	1224.00	2024-10-27 12:37:00	2024-10-27 12:37:00
927	187	350	16	75.00	992.00	2024-10-27 12:37:00	2024-10-27 12:37:00
928	188	406	17	40.00	544.00	2024-10-13 09:51:00	2024-10-13 09:51:00
929	188	157	37	87.00	851.00	2024-10-13 09:51:00	2024-10-13 09:51:00
930	188	547	26	89.00	1248.00	2024-10-13 09:51:00	2024-10-13 09:51:00
931	188	1210	20	40.00	1800.00	2024-10-13 09:51:00	2024-10-13 09:51:00
932	188	448	12	45.00	276.00	2024-10-13 09:51:00	2024-10-13 09:51:00
933	189	245	5	70.00	375.00	2024-10-23 11:44:00	2024-10-23 11:44:00
934	189	1210	8	25.00	160.00	2024-10-23 11:44:00	2024-10-23 11:44:00
935	189	408	49	50.00	2450.00	2024-10-23 11:44:00	2024-10-23 11:44:00
936	189	870	31	48.00	1891.00	2024-10-23 11:44:00	2024-10-23 11:44:00
937	189	549	15	48.00	405.00	2024-10-23 11:44:00	2024-10-23 11:44:00
938	190	37	12	87.00	1056.00	2024-10-07 12:08:00	2024-10-07 12:08:00
939	190	360	42	47.00	1848.00	2024-10-07 12:08:00	2024-10-07 12:08:00
940	190	49	12	80.00	948.00	2024-10-07 12:08:00	2024-10-07 12:08:00
941	190	50	2	43.00	56.00	2024-10-07 12:08:00	2024-10-07 12:08:00
942	190	1264	17	74.00	663.00	2024-10-07 12:08:00	2024-10-07 12:08:00
943	191	671	22	94.00	2090.00	2024-10-24 10:04:00	2024-10-24 10:04:00
944	191	41	8	47.00	168.00	2024-10-24 10:04:00	2024-10-24 10:04:00
945	191	172	13	53.00	1183.00	2024-10-24 10:04:00	2024-10-24 10:04:00
946	191	104	13	44.00	1053.00	2024-10-24 10:04:00	2024-10-24 10:04:00
947	191	44	45	89.00	2385.00	2024-10-24 10:04:00	2024-10-24 10:04:00
948	192	166	8	83.00	176.00	2024-10-19 13:33:00	2024-10-19 13:33:00
949	192	247	3	22.00	219.00	2024-10-19 13:33:00	2024-10-19 13:33:00
950	192	369	12	69.00	948.00	2024-10-19 13:33:00	2024-10-19 13:33:00
951	192	570	42	32.00	4158.00	2024-10-19 13:33:00	2024-10-19 13:33:00
952	192	110	15	97.00	975.00	2024-10-19 13:33:00	2024-10-19 13:33:00
953	193	421	10	80.00	380.00	2024-10-11 14:38:00	2024-10-11 14:38:00
954	193	243	13	26.00	390.00	2024-10-11 14:38:00	2024-10-11 14:38:00
955	193	819	29	63.00	1160.00	2024-10-11 14:38:00	2024-10-11 14:38:00
956	193	423	11	83.00	671.00	2024-10-11 14:38:00	2024-10-11 14:38:00
957	193	425	21	72.00	1575.00	2024-10-11 14:38:00	2024-10-11 14:38:00
958	194	308	13	20.00	442.00	2024-10-10 10:06:00	2024-10-10 10:06:00
959	194	293	33	31.00	1122.00	2024-10-10 10:06:00	2024-10-10 10:06:00
960	194	453	46	91.00	1380.00	2024-10-10 10:06:00	2024-10-10 10:06:00
961	194	85	24	38.00	960.00	2024-10-10 10:06:00	2024-10-10 10:06:00
962	194	454	31	66.00	1271.00	2024-10-10 10:06:00	2024-10-10 10:06:00
963	195	327	37	51.00	777.00	2024-10-12 08:24:00	2024-10-12 08:24:00
964	195	248	1	54.00	49.00	2024-10-12 08:24:00	2024-10-12 08:24:00
965	195	77	19	20.00	1330.00	2024-10-12 08:24:00	2024-10-12 08:24:00
966	195	169	5	36.00	140.00	2024-10-12 08:24:00	2024-10-12 08:24:00
967	195	560	34	71.00	2856.00	2024-10-12 08:24:00	2024-10-12 08:24:00
968	196	716	26	77.00	2002.00	2024-10-16 13:19:00	2024-10-16 13:19:00
969	196	151	26	76.00	1742.00	2024-10-16 13:19:00	2024-10-16 13:19:00
970	196	581	28	65.00	1596.00	2024-10-16 13:19:00	2024-10-16 13:19:00
971	196	210	1	66.00	22.00	2024-10-16 13:19:00	2024-10-16 13:19:00
972	196	20	5	76.00	360.00	2024-10-16 13:19:00	2024-10-16 13:19:00
973	197	562	44	59.00	3916.00	2024-11-03 09:37:00	2024-11-03 09:37:00
974	197	182	16	37.00	656.00	2024-11-03 09:37:00	2024-11-03 09:37:00
975	197	124	21	49.00	1050.00	2024-11-03 09:37:00	2024-11-03 09:37:00
976	197	69	47	87.00	1974.00	2024-11-03 09:37:00	2024-11-03 09:37:00
977	197	440	27	28.00	864.00	2024-11-03 09:37:00	2024-11-03 09:37:00
978	198	346	33	26.00	1584.00	2024-11-23 13:12:00	2024-11-23 13:12:00
979	198	231	8	25.00	760.00	2024-11-23 13:12:00	2024-11-23 13:12:00
980	198	233	16	38.00	832.00	2024-11-23 13:12:00	2024-11-23 13:12:00
981	198	114	10	29.00	650.00	2024-11-23 13:12:00	2024-11-23 13:12:00
982	198	1098	42	76.00	3612.00	2024-11-23 13:12:00	2024-11-23 13:12:00
983	199	626	32	31.00	704.00	2024-11-13 09:07:00	2024-11-13 09:07:00
984	199	431	10	94.00	460.00	2024-11-13 09:07:00	2024-11-13 09:07:00
985	199	624	32	30.00	768.00	2024-11-13 09:07:00	2024-11-13 09:07:00
986	199	180	36	31.00	2556.00	2024-11-13 09:07:00	2024-11-13 09:07:00
987	200	1038	45	39.00	3825.00	2024-11-12 08:53:00	2024-11-12 08:53:00
988	200	513	29	60.00	2146.00	2024-11-12 08:53:00	2024-11-12 08:53:00
989	200	113	17	52.00	1700.00	2024-11-12 08:53:00	2024-11-12 08:53:00
990	200	555	49	25.00	2499.00	2024-11-12 08:53:00	2024-11-12 08:53:00
991	200	1040	26	97.00	2158.00	2024-11-12 08:53:00	2024-11-12 08:53:00
992	201	322	17	66.00	731.00	2024-11-20 09:43:00	2024-11-20 09:43:00
993	201	679	13	83.00	1144.00	2024-11-20 09:43:00	2024-11-20 09:43:00
994	201	609	42	92.00	2730.00	2024-11-20 09:43:00	2024-11-20 09:43:00
995	201	453	47	73.00	1363.00	2024-11-20 09:43:00	2024-11-20 09:43:00
996	201	73	28	87.00	1512.00	2024-11-20 09:43:00	2024-11-20 09:43:00
997	202	326	6	85.00	144.00	2024-11-14 12:50:00	2024-11-14 12:50:00
998	202	336	30	45.00	1290.00	2024-11-14 12:50:00	2024-11-14 12:50:00
999	202	200	7	98.00	455.00	2024-11-14 12:50:00	2024-11-14 12:50:00
1000	202	99	7	24.00	273.00	2024-11-14 12:50:00	2024-11-14 12:50:00
1001	202	570	25	62.00	2175.00	2024-11-14 12:50:00	2024-11-14 12:50:00
1002	203	117	44	32.00	3564.00	2024-11-02 15:20:00	2024-11-02 15:20:00
1003	203	85	36	96.00	2952.00	2024-11-02 15:20:00	2024-11-02 15:20:00
1004	203	610	4	34.00	192.00	2024-11-02 15:20:00	2024-11-02 15:20:00
1005	203	75	4	64.00	96.00	2024-11-02 15:20:00	2024-11-02 15:20:00
1006	204	746	35	88.00	2240.00	2024-11-27 08:14:00	2024-11-27 08:14:00
1007	204	1157	15	59.00	705.00	2024-11-27 08:14:00	2024-11-27 08:14:00
1008	204	766	16	45.00	1216.00	2024-11-27 08:14:00	2024-11-27 08:14:00
1009	204	552	31	33.00	1116.00	2024-11-27 08:14:00	2024-11-27 08:14:00
1010	204	363	3	46.00	69.00	2024-11-27 08:14:00	2024-11-27 08:14:00
1011	205	106	13	75.00	611.00	2024-11-04 11:02:00	2024-11-04 11:02:00
1012	205	169	3	23.00	99.00	2024-11-04 11:02:00	2024-11-04 11:02:00
1013	205	493	26	87.00	2132.00	2024-11-04 11:02:00	2024-11-04 11:02:00
1014	205	79	32	80.00	2976.00	2024-11-04 11:02:00	2024-11-04 11:02:00
1015	205	110	17	27.00	1700.00	2024-11-04 11:02:00	2024-11-04 11:02:00
1016	206	312	2	23.00	40.00	2024-11-27 10:27:00	2024-11-27 10:27:00
1017	206	517	34	46.00	2958.00	2024-11-27 10:27:00	2024-11-27 10:27:00
1018	206	93	5	32.00	205.00	2024-11-27 10:27:00	2024-11-27 10:27:00
1019	206	668	8	79.00	608.00	2024-11-27 10:27:00	2024-11-27 10:27:00
1020	206	30	9	35.00	801.00	2024-11-27 10:27:00	2024-11-27 10:27:00
1021	207	823	37	99.00	1332.00	2024-11-02 09:12:00	2024-11-02 09:12:00
1022	207	46	9	74.00	198.00	2024-11-02 09:12:00	2024-11-02 09:12:00
1023	207	257	4	82.00	296.00	2024-11-02 09:12:00	2024-11-02 09:12:00
1024	207	792	11	22.00	682.00	2024-11-02 09:12:00	2024-11-02 09:12:00
1025	207	215	19	23.00	437.00	2024-11-02 09:12:00	2024-11-02 09:12:00
1026	208	521	34	83.00	1428.00	2024-11-30 13:20:00	2024-11-30 13:20:00
1027	208	837	5	69.00	405.00	2024-11-30 13:20:00	2024-11-30 13:20:00
1028	208	324	35	69.00	2485.00	2024-11-30 13:20:00	2024-11-30 13:20:00
1029	208	85	13	41.00	351.00	2024-11-30 13:20:00	2024-11-30 13:20:00
1030	208	523	11	84.00	396.00	2024-11-30 13:20:00	2024-11-30 13:20:00
1031	209	978	43	99.00	4171.00	2024-11-11 15:55:00	2024-11-11 15:55:00
1032	209	1178	10	76.00	850.00	2024-11-11 15:55:00	2024-11-11 15:55:00
1033	209	113	16	50.00	1552.00	2024-11-11 15:55:00	2024-11-11 15:55:00
1034	209	234	27	46.00	1053.00	2024-11-11 15:55:00	2024-11-11 15:55:00
1035	209	554	15	61.00	810.00	2024-11-11 15:55:00	2024-11-11 15:55:00
1036	210	248	7	52.00	665.00	2024-11-12 12:07:00	2024-11-12 12:07:00
1037	210	402	2	99.00	78.00	2024-11-12 12:07:00	2024-11-12 12:07:00
1038	210	139	42	100.00	1890.00	2024-11-12 12:07:00	2024-11-12 12:07:00
1039	210	99	19	88.00	988.00	2024-11-12 12:07:00	2024-11-12 12:07:00
1040	211	6	13	46.00	1131.00	2024-11-03 15:48:00	2024-11-03 15:48:00
1041	211	187	19	79.00	551.00	2024-11-03 15:48:00	2024-11-03 15:48:00
1042	211	508	23	96.00	1242.00	2024-11-03 15:48:00	2024-11-03 15:48:00
1043	211	679	16	66.00	1056.00	2024-11-03 15:48:00	2024-11-03 15:48:00
1044	211	610	39	94.00	3276.00	2024-11-03 15:48:00	2024-11-03 15:48:00
1045	212	6	28	91.00	2464.00	2024-11-24 12:03:00	2024-11-24 12:03:00
1046	212	322	19	86.00	551.00	2024-11-24 12:03:00	2024-11-24 12:03:00
1047	212	679	30	77.00	2400.00	2024-11-24 12:03:00	2024-11-24 12:03:00
1048	212	294	27	74.00	621.00	2024-11-24 12:03:00	2024-11-24 12:03:00
1049	212	120	17	64.00	1428.00	2024-11-24 12:03:00	2024-11-24 12:03:00
1050	213	411	25	45.00	2325.00	2024-11-21 12:20:00	2024-11-21 12:20:00
1051	213	226	4	49.00	252.00	2024-11-21 12:20:00	2024-11-21 12:20:00
1052	213	381	24	41.00	1440.00	2024-11-21 12:20:00	2024-11-21 12:20:00
1053	213	254	5	86.00	365.00	2024-11-21 12:20:00	2024-11-21 12:20:00
1054	213	649	17	37.00	1037.00	2024-11-21 12:20:00	2024-11-21 12:20:00
1055	214	1	22	67.00	990.00	2024-11-21 16:01:00	2024-11-21 16:01:00
1056	214	618	4	69.00	128.00	2024-11-21 16:01:00	2024-11-21 16:01:00
1057	214	573	7	80.00	329.00	2024-11-21 16:01:00	2024-11-21 16:01:00
1058	214	174	46	30.00	2162.00	2024-11-21 16:01:00	2024-11-21 16:01:00
1059	214	905	15	44.00	1365.00	2024-11-21 16:01:00	2024-11-21 16:01:00
1060	215	626	14	35.00	966.00	2024-11-04 09:00:00	2024-11-04 09:00:00
1061	215	131	37	56.00	1258.00	2024-11-04 09:00:00	2024-11-04 09:00:00
1062	215	433	24	87.00	816.00	2024-11-04 09:00:00	2024-11-04 09:00:00
1063	215	650	42	22.00	3864.00	2024-11-04 09:00:00	2024-11-04 09:00:00
1064	216	131	34	76.00	3332.00	2024-11-27 11:31:00	2024-11-27 11:31:00
1065	216	227	5	26.00	390.00	2024-11-27 11:31:00	2024-11-27 11:31:00
1066	216	412	46	95.00	920.00	2024-11-27 11:31:00	2024-11-27 11:31:00
1067	216	413	43	50.00	1505.00	2024-11-27 11:31:00	2024-11-27 11:31:00
1068	216	650	7	40.00	259.00	2024-11-27 11:31:00	2024-11-27 11:31:00
1069	217	411	39	74.00	2691.00	2024-11-16 09:23:00	2024-11-16 09:23:00
1070	217	228	17	87.00	1564.00	2024-11-16 09:23:00	2024-11-16 09:23:00
1071	217	252	24	79.00	1296.00	2024-11-16 09:23:00	2024-11-16 09:23:00
1072	217	178	5	90.00	495.00	2024-11-16 09:23:00	2024-11-16 09:23:00
1073	217	1275	14	69.00	1162.00	2024-11-16 09:23:00	2024-11-16 09:23:00
1074	218	336	25	81.00	900.00	2024-11-02 08:17:00	2024-11-02 08:17:00
1075	218	248	16	29.00	1216.00	2024-11-02 08:17:00	2024-11-02 08:17:00
1076	218	198	47	60.00	2350.00	2024-11-02 08:17:00	2024-11-02 08:17:00
1077	218	108	33	84.00	924.00	2024-11-02 08:17:00	2024-11-02 08:17:00
1078	218	99	1	78.00	20.00	2024-11-02 08:17:00	2024-11-02 08:17:00
1079	219	11	30	42.00	780.00	2024-11-25 12:33:00	2024-11-25 12:33:00
1080	219	161	3	92.00	261.00	2024-11-25 12:33:00	2024-11-25 12:33:00
1081	219	67	48	44.00	2400.00	2024-11-25 12:33:00	2024-11-25 12:33:00
1082	219	149	7	82.00	651.00	2024-11-25 12:33:00	2024-11-25 12:33:00
1083	219	438	15	72.00	855.00	2024-11-25 12:33:00	2024-11-25 12:33:00
1084	220	326	28	45.00	2716.00	2024-11-08 13:24:00	2024-11-08 13:24:00
1085	220	248	3	54.00	99.00	2024-11-08 13:24:00	2024-11-08 13:24:00
1086	220	170	42	39.00	3318.00	2024-11-08 13:24:00	2024-11-08 13:24:00
1087	220	480	8	49.00	176.00	2024-11-08 13:24:00	2024-11-08 13:24:00
1088	220	880	29	79.00	2117.00	2024-11-08 13:24:00	2024-11-08 13:24:00
1089	221	687	7	38.00	343.00	2024-11-05 14:45:00	2024-11-05 14:45:00
1090	221	228	8	96.00	416.00	2024-11-05 14:45:00	2024-11-05 14:45:00
1091	221	622	50	64.00	2300.00	2024-11-05 14:45:00	2024-11-05 14:45:00
1092	221	132	10	73.00	240.00	2024-11-05 14:45:00	2024-11-05 14:45:00
1093	221	178	49	92.00	1862.00	2024-11-05 14:45:00	2024-11-05 14:45:00
1094	222	752	21	51.00	1764.00	2024-11-25 11:27:00	2024-11-25 11:27:00
1095	222	489	33	81.00	2739.00	2024-11-25 11:27:00	2024-11-25 11:27:00
1096	222	313	30	92.00	2670.00	2024-11-25 11:27:00	2024-11-25 11:27:00
1097	222	713	29	45.00	1305.00	2024-11-25 11:27:00	2024-11-25 11:27:00
1098	222	1105	9	59.00	738.00	2024-11-25 11:27:00	2024-11-25 11:27:00
1099	223	156	7	33.00	245.00	2024-11-04 13:14:00	2024-11-04 13:14:00
1100	223	244	41	57.00	3567.00	2024-11-04 13:14:00	2024-11-04 13:14:00
1101	223	419	32	84.00	2624.00	2024-11-04 13:14:00	2024-11-04 13:14:00
1102	223	424	12	34.00	936.00	2024-11-04 13:14:00	2024-11-04 13:14:00
1103	223	549	12	76.00	288.00	2024-11-04 13:14:00	2024-11-04 13:14:00
1104	224	731	16	31.00	1104.00	2024-11-17 09:36:00	2024-11-17 09:36:00
1105	224	222	22	98.00	1606.00	2024-11-17 09:36:00	2024-11-17 09:36:00
1106	224	244	6	64.00	558.00	2024-11-17 09:36:00	2024-11-17 09:36:00
1107	224	423	28	95.00	2408.00	2024-11-17 09:36:00	2024-11-17 09:36:00
1108	224	820	37	30.00	925.00	2024-11-17 09:36:00	2024-11-17 09:36:00
1109	225	411	17	38.00	527.00	2024-11-29 13:16:00	2024-11-29 13:16:00
1110	225	229	39	21.00	3315.00	2024-11-29 13:16:00	2024-11-29 13:16:00
1111	225	135	44	20.00	1584.00	2024-11-29 13:16:00	2024-11-29 13:16:00
1112	225	1019	34	31.00	1258.00	2024-11-29 13:16:00	2024-11-29 13:16:00
1113	225	690	23	27.00	2277.00	2024-11-29 13:16:00	2024-11-29 13:16:00
1114	226	1157	12	33.00	444.00	2024-11-27 13:03:00	2024-11-27 13:03:00
1115	226	387	16	82.00	320.00	2024-11-27 13:03:00	2024-11-27 13:03:00
1116	226	498	10	25.00	890.00	2024-11-27 13:03:00	2024-11-27 13:03:00
1117	226	233	25	52.00	1175.00	2024-11-27 13:03:00	2024-11-27 13:03:00
1118	226	788	14	83.00	490.00	2024-11-27 13:03:00	2024-11-27 13:03:00
1119	227	161	12	25.00	252.00	2024-11-27 12:04:00	2024-11-27 12:04:00
1120	227	67	22	45.00	990.00	2024-11-27 12:04:00	2024-11-27 12:04:00
1121	227	373	15	84.00	1095.00	2024-11-27 12:04:00	2024-11-27 12:04:00
1122	227	145	36	91.00	864.00	2024-11-27 12:04:00	2024-11-27 12:04:00
1123	227	69	5	83.00	160.00	2024-11-27 12:04:00	2024-11-27 12:04:00
1124	228	363	33	66.00	2838.00	2024-11-28 13:52:00	2024-11-28 13:52:00
1125	228	349	18	33.00	1062.00	2024-11-28 13:52:00	2024-11-28 13:52:00
1126	228	1038	43	23.00	2623.00	2024-11-28 13:52:00	2024-11-28 13:52:00
1127	228	978	19	23.00	1064.00	2024-11-28 13:52:00	2024-11-28 13:52:00
1128	228	1100	1	36.00	77.00	2024-11-28 13:52:00	2024-11-28 13:52:00
1129	229	205	40	91.00	2160.00	2024-11-10 14:43:00	2024-11-10 14:43:00
1130	229	318	30	74.00	750.00	2024-11-10 14:43:00	2024-11-10 14:43:00
1131	229	1298	36	71.00	1044.00	2024-11-10 14:43:00	2024-11-10 14:43:00
1132	229	345	34	67.00	3400.00	2024-11-10 14:43:00	2024-11-10 14:43:00
1133	229	430	40	52.00	2480.00	2024-11-10 14:43:00	2024-11-10 14:43:00
1134	230	21	31	40.00	930.00	2024-11-25 15:08:00	2024-11-25 15:08:00
1135	230	257	32	76.00	2144.00	2024-11-25 15:08:00	2024-11-25 15:08:00
1136	230	213	27	90.00	540.00	2024-11-25 15:08:00	2024-11-25 15:08:00
1137	230	104	31	21.00	1736.00	2024-11-25 15:08:00	2024-11-25 15:08:00
1138	230	260	17	66.00	1683.00	2024-11-25 15:08:00	2024-11-25 15:08:00
1139	231	516	15	29.00	750.00	2024-11-12 09:19:00	2024-11-12 09:19:00
1140	231	581	12	34.00	660.00	2024-11-12 09:19:00	2024-11-12 09:19:00
1141	231	545	41	93.00	3444.00	2024-11-12 09:19:00	2024-11-12 09:19:00
1142	231	95	16	77.00	720.00	2024-11-12 09:19:00	2024-11-12 09:19:00
1143	232	552	25	42.00	1650.00	2024-11-08 14:57:00	2024-11-08 14:57:00
1144	232	232	18	41.00	990.00	2024-11-08 14:57:00	2024-11-08 14:57:00
1145	232	553	18	79.00	900.00	2024-11-08 14:57:00	2024-11-08 14:57:00
1146	232	513	2	34.00	58.00	2024-11-08 14:57:00	2024-11-08 14:57:00
1147	232	234	14	45.00	476.00	2024-11-08 14:57:00	2024-11-08 14:57:00
1148	233	31	5	85.00	125.00	2024-11-15 16:48:00	2024-11-15 16:48:00
1149	233	268	23	98.00	506.00	2024-11-15 16:48:00	2024-11-15 16:48:00
1150	233	198	12	26.00	264.00	2024-11-15 16:48:00	2024-11-15 16:48:00
1151	233	369	43	75.00	4128.00	2024-11-15 16:48:00	2024-11-15 16:48:00
1152	233	140	31	39.00	2108.00	2024-11-15 16:48:00	2024-11-15 16:48:00
1153	234	292	4	32.00	160.00	2024-11-16 09:26:00	2024-11-16 09:26:00
1154	234	306	25	39.00	800.00	2024-11-16 09:26:00	2024-11-16 09:26:00
1155	234	889	3	81.00	108.00	2024-11-16 09:26:00	2024-11-16 09:26:00
1156	234	693	7	84.00	385.00	2024-11-16 09:26:00	2024-11-16 09:26:00
1157	234	294	7	68.00	490.00	2024-11-16 09:26:00	2024-11-16 09:26:00
1158	235	296	39	82.00	1209.00	2024-11-06 08:20:00	2024-11-06 08:20:00
1159	235	96	7	38.00	462.00	2024-11-06 08:20:00	2024-11-06 08:20:00
1160	235	395	19	81.00	1178.00	2024-11-06 08:20:00	2024-11-06 08:20:00
1161	235	880	4	88.00	264.00	2024-11-06 08:20:00	2024-11-06 08:20:00
1162	236	181	15	65.00	555.00	2024-11-09 11:14:00	2024-11-09 11:14:00
1163	236	1382	12	55.00	648.00	2024-11-09 11:14:00	2024-11-09 11:14:00
1164	236	762	31	45.00	3007.00	2024-11-09 11:14:00	2024-11-09 11:14:00
1165	236	56	41	56.00	2378.00	2024-11-09 11:14:00	2024-11-09 11:14:00
1166	236	438	19	58.00	1235.00	2024-11-09 11:14:00	2024-11-09 11:14:00
1167	237	671	14	97.00	448.00	2024-11-26 16:13:00	2024-11-26 16:13:00
1168	237	823	2	61.00	178.00	2024-11-26 16:13:00	2024-11-26 16:13:00
1169	237	792	27	85.00	756.00	2024-11-26 16:13:00	2024-11-26 16:13:00
1170	237	1344	20	32.00	1440.00	2024-11-26 16:13:00	2024-11-26 16:13:00
1171	237	620	16	83.00	1568.00	2024-11-26 16:13:00	2024-11-26 16:13:00
1172	238	562	9	35.00	189.00	2024-11-02 14:33:00	2024-11-02 14:33:00
1173	238	372	9	75.00	603.00	2024-11-02 14:33:00	2024-11-02 14:33:00
1174	238	373	27	80.00	891.00	2024-11-02 14:33:00	2024-11-02 14:33:00
1175	238	123	29	80.00	2291.00	2024-11-02 14:33:00	2024-11-02 14:33:00
1176	238	764	36	87.00	2376.00	2024-11-02 14:33:00	2024-11-02 14:33:00
1177	239	751	18	94.00	360.00	2024-11-13 11:12:00	2024-11-13 11:12:00
1178	239	576	49	84.00	2842.00	2024-11-13 11:12:00	2024-11-13 11:12:00
1179	239	487	30	23.00	1860.00	2024-11-13 11:12:00	2024-11-13 11:12:00
1180	239	713	7	47.00	441.00	2024-11-13 11:12:00	2024-11-13 11:12:00
1181	239	155	1	74.00	25.00	2024-11-13 11:12:00	2024-11-13 11:12:00
1182	240	467	12	80.00	732.00	2024-11-02 11:50:00	2024-11-02 11:50:00
1183	240	962	26	68.00	1222.00	2024-11-02 11:50:00	2024-11-02 11:50:00
1184	240	609	5	23.00	375.00	2024-11-02 11:50:00	2024-11-02 11:50:00
1185	240	74	13	33.00	1235.00	2024-11-02 11:50:00	2024-11-02 11:50:00
1186	240	610	7	29.00	420.00	2024-11-02 11:50:00	2024-11-02 11:50:00
1187	241	767	21	75.00	1617.00	2024-11-08 12:21:00	2024-11-08 12:21:00
1188	241	552	25	26.00	1425.00	2024-11-08 12:21:00	2024-11-08 12:21:00
1189	241	232	25	20.00	550.00	2024-11-08 12:21:00	2024-11-08 12:21:00
1190	241	553	37	65.00	1665.00	2024-11-08 12:21:00	2024-11-08 12:21:00
1191	241	500	31	29.00	2573.00	2024-11-08 12:21:00	2024-11-08 12:21:00
1192	242	687	17	52.00	493.00	2024-11-15 14:23:00	2024-11-15 14:23:00
1193	242	432	19	34.00	931.00	2024-11-15 14:23:00	2024-11-15 14:23:00
1194	242	647	36	57.00	2952.00	2024-11-15 14:23:00	2024-11-15 14:23:00
1195	242	135	2	33.00	84.00	2024-11-15 14:23:00	2024-11-15 14:23:00
1196	242	649	8	44.00	440.00	2024-11-15 14:23:00	2024-11-15 14:23:00
1197	243	773	46	74.00	2116.00	2024-11-20 15:25:00	2024-11-20 15:25:00
1198	243	294	2	90.00	74.00	2024-11-20 15:25:00	2024-11-20 15:25:00
1199	243	85	4	71.00	300.00	2024-11-20 15:25:00	2024-11-20 15:25:00
1200	243	54	11	91.00	495.00	2024-11-20 15:25:00	2024-11-20 15:25:00
1201	243	10	47	34.00	3854.00	2024-11-20 15:25:00	2024-11-20 15:25:00
1202	244	716	6	99.00	582.00	2024-11-04 16:09:00	2024-11-04 16:09:00
1203	244	1356	25	37.00	500.00	2024-11-04 16:09:00	2024-11-04 16:09:00
1204	244	518	7	73.00	525.00	2024-11-04 16:09:00	2024-11-04 16:09:00
1205	244	668	19	69.00	1064.00	2024-11-04 16:09:00	2024-11-04 16:09:00
1206	245	141	16	29.00	576.00	2024-11-30 16:51:00	2024-11-30 16:51:00
1207	245	192	41	36.00	2911.00	2024-11-30 16:51:00	2024-11-30 16:51:00
1208	245	143	32	96.00	1696.00	2024-11-30 16:51:00	2024-11-30 16:51:00
1209	245	373	26	50.00	2340.00	2024-11-30 16:51:00	2024-11-30 16:51:00
1210	245	184	30	65.00	2220.00	2024-11-30 16:51:00	2024-11-30 16:51:00
1211	246	326	25	51.00	525.00	2024-11-02 10:47:00	2024-11-02 10:47:00
1212	246	196	27	83.00	648.00	2024-11-02 10:47:00	2024-11-02 10:47:00
1213	246	246	18	45.00	666.00	2024-11-02 10:47:00	2024-11-02 10:47:00
1214	246	369	9	79.00	783.00	2024-11-02 10:47:00	2024-11-02 10:47:00
1215	246	65	2	81.00	142.00	2024-11-02 10:47:00	2024-11-02 10:47:00
1216	247	822	4	89.00	288.00	2024-11-11 10:58:00	2024-11-11 10:58:00
1217	247	217	32	86.00	2944.00	2024-11-11 10:58:00	2024-11-11 10:58:00
1218	247	24	22	92.00	814.00	2024-11-11 10:58:00	2024-11-11 10:58:00
1219	247	260	7	94.00	343.00	2024-11-11 10:58:00	2024-11-11 10:58:00
1220	247	1344	23	45.00	1334.00	2024-11-11 10:58:00	2024-11-11 10:58:00
1221	248	416	23	62.00	1909.00	2024-11-21 13:07:00	2024-11-21 13:07:00
1222	248	446	6	85.00	312.00	2024-11-21 13:07:00	2024-11-21 13:07:00
1223	248	156	34	29.00	2686.00	2024-11-21 13:07:00	2024-11-21 13:07:00
1224	248	865	16	39.00	1040.00	2024-11-21 13:07:00	2024-11-21 13:07:00
1225	248	410	7	42.00	434.00	2024-11-21 13:07:00	2024-11-21 13:07:00
1226	249	399	22	90.00	1078.00	2024-11-06 12:47:00	2024-11-06 12:47:00
1227	249	184	36	66.00	972.00	2024-11-06 12:47:00	2024-11-06 12:47:00
1228	249	934	36	26.00	3132.00	2024-11-06 12:47:00	2024-11-06 12:47:00
1229	249	505	45	21.00	900.00	2024-11-06 12:47:00	2024-11-06 12:47:00
1230	249	1235	18	100.00	666.00	2024-11-06 12:47:00	2024-11-06 12:47:00
1231	250	487	11	51.00	726.00	2024-11-20 15:52:00	2024-11-20 15:52:00
1232	250	312	7	97.00	532.00	2024-11-20 15:52:00	2024-11-20 15:52:00
1233	250	128	33	87.00	2475.00	2024-11-20 15:52:00	2024-11-20 15:52:00
1234	250	209	48	50.00	3264.00	2024-11-20 15:52:00	2024-11-20 15:52:00
1235	250	129	15	55.00	495.00	2024-11-20 15:52:00	2024-11-20 15:52:00
1236	251	682	44	89.00	2156.00	2024-11-12 14:02:00	2024-11-12 14:02:00
1237	251	308	4	23.00	144.00	2024-11-12 14:02:00	2024-11-12 14:02:00
1238	251	323	21	28.00	483.00	2024-11-12 14:02:00	2024-11-12 14:02:00
1239	251	190	9	26.00	396.00	2024-11-12 14:02:00	2024-11-12 14:02:00
1240	251	74	19	65.00	1710.00	2024-11-12 14:02:00	2024-11-12 14:02:00
1241	252	1066	15	44.00	375.00	2024-11-24 14:07:00	2024-11-24 14:07:00
1242	252	602	9	96.00	261.00	2024-11-24 14:07:00	2024-11-24 14:07:00
1243	252	279	16	43.00	1424.00	2024-11-24 14:07:00	2024-11-24 14:07:00
1244	252	303	22	89.00	1628.00	2024-11-24 14:07:00	2024-11-24 14:07:00
1245	252	604	16	94.00	1536.00	2024-11-24 14:07:00	2024-11-24 14:07:00
1246	253	222	16	97.00	1088.00	2024-11-14 09:20:00	2024-11-14 09:20:00
1247	253	860	25	72.00	1300.00	2024-11-14 09:20:00	2024-11-14 09:20:00
1248	253	423	14	69.00	882.00	2024-11-14 09:20:00	2024-11-14 09:20:00
1249	253	410	7	56.00	497.00	2024-11-14 09:20:00	2024-11-14 09:20:00
1250	253	275	5	31.00	205.00	2024-11-14 09:20:00	2024-11-14 09:20:00
1251	254	363	21	58.00	462.00	2024-11-10 16:27:00	2024-11-10 16:27:00
1252	254	1178	10	70.00	970.00	2024-11-10 16:27:00	2024-11-10 16:27:00
1253	254	1098	38	45.00	1596.00	2024-11-10 16:27:00	2024-11-10 16:27:00
1254	254	350	1	85.00	76.00	2024-11-10 16:27:00	2024-11-10 16:27:00
1255	254	1100	41	56.00	1886.00	2024-11-10 16:27:00	2024-11-10 16:27:00
1256	255	766	8	25.00	776.00	2024-11-06 11:51:00	2024-11-06 11:51:00
1257	255	499	22	63.00	726.00	2024-11-06 11:51:00	2024-11-06 11:51:00
1258	255	1178	44	74.00	2728.00	2024-11-06 11:51:00	2024-11-06 11:51:00
1259	255	788	8	24.00	344.00	2024-11-06 11:51:00	2024-11-06 11:51:00
1260	255	350	35	35.00	910.00	2024-11-06 11:51:00	2024-11-06 11:51:00
1261	256	201	12	97.00	864.00	2024-11-21 15:34:00	2024-11-21 15:34:00
1262	256	1404	41	83.00	3321.00	2024-11-21 15:34:00	2024-11-21 15:34:00
1263	256	264	5	84.00	235.00	2024-11-21 15:34:00	2024-11-21 15:34:00
1264	256	699	35	62.00	1050.00	2024-11-21 15:34:00	2024-11-21 15:34:00
1265	256	430	12	68.00	540.00	2024-11-21 15:34:00	2024-11-21 15:34:00
1266	257	391	38	100.00	2318.00	2024-11-26 16:23:00	2024-11-26 16:23:00
1267	257	31	29	29.00	2842.00	2024-11-26 16:23:00	2024-11-26 16:23:00
1268	257	337	20	38.00	1440.00	2024-11-26 16:23:00	2024-11-26 16:23:00
1269	257	140	33	79.00	3036.00	2024-11-26 16:23:00	2024-11-26 16:23:00
1270	257	570	13	86.00	1287.00	2024-11-26 16:23:00	2024-11-26 16:23:00
1271	258	381	26	80.00	884.00	2024-11-15 10:22:00	2024-11-15 10:22:00
1272	258	383	19	27.00	1843.00	2024-11-15 10:22:00	2024-11-15 10:22:00
1273	258	634	45	25.00	2520.00	2024-11-15 10:22:00	2024-11-15 10:22:00
1274	258	385	13	48.00	728.00	2024-11-15 10:22:00	2024-11-15 10:22:00
1275	259	1066	23	35.00	1127.00	2024-11-24 16:53:00	2024-11-24 16:53:00
1276	259	203	49	97.00	4557.00	2024-11-24 16:53:00	2024-11-24 16:53:00
1277	259	317	38	40.00	3610.00	2024-11-24 16:53:00	2024-11-24 16:53:00
1278	259	343	9	92.00	369.00	2024-11-24 16:53:00	2024-11-24 16:53:00
1279	260	337	37	37.00	1369.00	2024-11-28 11:59:00	2024-11-28 11:59:00
1280	260	329	37	48.00	777.00	2024-11-28 11:59:00	2024-11-28 11:59:00
1281	260	108	26	60.00	546.00	2024-11-28 11:59:00	2024-11-28 11:59:00
1282	260	758	23	24.00	713.00	2024-11-28 11:59:00	2024-11-28 11:59:00
1283	260	339	30	90.00	2730.00	2024-11-28 11:59:00	2024-11-28 11:59:00
1284	261	196	40	92.00	2720.00	2024-11-07 12:42:00	2024-11-07 12:42:00
1285	261	198	40	88.00	1080.00	2024-11-07 12:42:00	2024-11-07 12:42:00
1286	261	78	39	35.00	3744.00	2024-11-07 12:42:00	2024-11-07 12:42:00
1287	261	339	24	31.00	2064.00	2024-11-07 12:42:00	2024-11-07 12:42:00
1288	261	880	32	36.00	672.00	2024-11-07 12:42:00	2024-11-07 12:42:00
1289	262	372	13	94.00	702.00	2024-11-24 10:02:00	2024-11-24 10:02:00
1290	262	194	48	86.00	3312.00	2024-11-24 10:02:00	2024-11-24 10:02:00
1291	262	399	7	46.00	567.00	2024-11-24 10:02:00	2024-11-24 10:02:00
1292	262	505	17	55.00	1088.00	2024-11-24 10:02:00	2024-11-24 10:02:00
1293	262	60	20	89.00	420.00	2024-11-24 10:02:00	2024-11-24 10:02:00
1294	263	142	19	34.00	1558.00	2024-11-21 08:47:00	2024-11-21 08:47:00
1295	263	503	27	83.00	2160.00	2024-11-21 08:47:00	2024-11-21 08:47:00
1296	263	125	34	54.00	2040.00	2024-11-21 08:47:00	2024-11-21 08:47:00
1297	263	934	18	42.00	630.00	2024-11-21 08:47:00	2024-11-21 08:47:00
1298	264	766	23	56.00	1058.00	2024-11-07 12:05:00	2024-11-07 12:05:00
1299	264	661	20	64.00	1640.00	2024-11-07 12:05:00	2024-11-07 12:05:00
1300	264	512	47	29.00	1927.00	2024-11-07 12:05:00	2024-11-07 12:05:00
1301	264	234	16	40.00	416.00	2024-11-07 12:05:00	2024-11-07 12:05:00
1302	264	515	7	63.00	378.00	2024-11-07 12:05:00	2024-11-07 12:05:00
1303	265	898	49	29.00	2793.00	2024-11-15 12:49:00	2024-11-15 12:49:00
1304	265	1146	43	57.00	1892.00	2024-11-15 12:49:00	2024-11-15 12:49:00
1305	265	713	1	99.00	52.00	2024-11-15 12:49:00	2024-11-15 12:49:00
1306	265	314	34	96.00	1020.00	2024-11-15 12:49:00	2024-11-15 12:49:00
1307	265	315	42	55.00	1890.00	2024-11-15 12:49:00	2024-11-15 12:49:00
1308	266	394	32	40.00	1792.00	2024-11-14 10:48:00	2024-11-14 10:48:00
1309	266	367	24	73.00	2112.00	2024-11-14 10:48:00	2024-11-14 10:48:00
1310	266	97	15	64.00	1395.00	2024-11-14 10:48:00	2024-11-14 10:48:00
1311	266	725	21	93.00	1344.00	2024-11-14 10:48:00	2024-11-14 10:48:00
1312	267	516	22	51.00	968.00	2024-11-01 13:01:00	2024-11-01 13:01:00
1313	267	1356	38	75.00	912.00	2024-11-01 13:01:00	2024-11-01 13:01:00
1314	267	238	32	48.00	1696.00	2024-11-01 13:01:00	2024-11-01 13:01:00
1315	267	239	6	62.00	240.00	2024-11-01 13:01:00	2024-11-01 13:01:00
1316	267	1105	35	95.00	1785.00	2024-11-01 13:01:00	2024-11-01 13:01:00
1317	268	661	22	70.00	1298.00	2024-11-23 11:28:00	2024-11-23 11:28:00
1318	268	364	22	65.00	858.00	2024-11-23 11:28:00	2024-11-23 11:28:00
1319	268	1178	22	33.00	1210.00	2024-11-23 11:28:00	2024-11-23 11:28:00
1320	268	500	18	82.00	432.00	2024-11-23 11:28:00	2024-11-23 11:28:00
1321	268	789	16	87.00	848.00	2024-11-23 11:28:00	2024-11-23 11:28:00
1322	269	466	12	23.00	1128.00	2024-11-29 16:44:00	2024-11-29 16:44:00
1323	269	324	17	67.00	1241.00	2024-11-29 16:44:00	2024-11-29 16:44:00
1324	269	814	21	59.00	777.00	2024-11-29 16:44:00	2024-11-29 16:44:00
1325	269	119	47	43.00	2256.00	2024-11-29 16:44:00	2024-11-29 16:44:00
1326	269	775	41	42.00	3854.00	2024-11-29 16:44:00	2024-11-29 16:44:00
1327	270	446	4	69.00	108.00	2024-11-27 13:58:00	2024-11-27 13:58:00
1328	270	156	16	58.00	1344.00	2024-11-27 13:58:00	2024-11-27 13:58:00
1329	270	272	28	99.00	2548.00	2024-11-27 13:58:00	2024-11-27 13:58:00
1330	270	419	14	49.00	504.00	2024-11-27 13:58:00	2024-11-27 13:58:00
1331	270	425	10	41.00	870.00	2024-11-27 13:58:00	2024-11-27 13:58:00
1332	271	728	34	43.00	2176.00	2024-11-26 14:55:00	2024-11-26 14:55:00
1333	271	732	40	43.00	2520.00	2024-11-26 14:55:00	2024-11-26 14:55:00
1334	271	708	47	73.00	4324.00	2024-11-26 14:55:00	2024-11-26 14:55:00
1335	271	450	16	55.00	976.00	2024-11-26 14:55:00	2024-11-26 14:55:00
1336	271	865	23	55.00	1817.00	2024-11-26 14:55:00	2024-11-26 14:55:00
1337	272	421	3	74.00	84.00	2024-11-09 10:01:00	2024-11-09 10:01:00
1338	272	158	20	34.00	680.00	2024-11-09 10:01:00	2024-11-09 10:01:00
1339	272	972	2	64.00	96.00	2024-11-09 10:01:00	2024-11-09 10:01:00
1340	272	729	1	54.00	26.00	2024-11-09 10:01:00	2024-11-09 10:01:00
1341	272	865	26	93.00	598.00	2024-11-09 10:01:00	2024-11-09 10:01:00
1342	273	1382	31	23.00	806.00	2024-11-14 16:33:00	2024-11-14 16:33:00
1343	273	162	14	48.00	1344.00	2024-11-14 16:33:00	2024-11-14 16:33:00
1344	273	143	18	36.00	1116.00	2024-11-14 16:33:00	2024-11-14 16:33:00
1345	273	399	21	55.00	714.00	2024-11-14 16:33:00	2024-11-14 16:33:00
1346	273	764	4	51.00	264.00	2024-11-14 16:33:00	2024-11-14 16:33:00
1347	274	376	9	33.00	855.00	2024-11-05 15:51:00	2024-11-05 15:51:00
1348	274	1382	25	23.00	1175.00	2024-11-05 15:51:00	2024-11-05 15:51:00
1349	274	143	6	25.00	312.00	2024-11-05 15:51:00	2024-11-05 15:51:00
1350	274	145	7	52.00	616.00	2024-11-05 15:51:00	2024-11-05 15:51:00
1351	274	564	8	57.00	752.00	2024-11-05 15:51:00	2024-11-05 15:51:00
1352	275	226	7	96.00	217.00	2024-11-27 11:52:00	2024-11-27 11:52:00
1353	275	228	30	26.00	1710.00	2024-11-27 11:52:00	2024-11-27 11:52:00
1354	275	135	3	40.00	222.00	2024-11-27 11:52:00	2024-11-27 11:52:00
1355	275	1019	9	93.00	369.00	2024-11-27 11:52:00	2024-11-27 11:52:00
1356	275	635	1	38.00	81.00	2024-11-27 11:52:00	2024-11-27 11:52:00
1357	276	827	22	25.00	1980.00	2024-11-06 16:22:00	2024-11-06 16:22:00
1358	276	203	25	27.00	650.00	2024-11-06 16:22:00	2024-11-06 16:22:00
1359	276	464	24	51.00	2040.00	2024-11-06 16:22:00	2024-11-06 16:22:00
1360	276	284	6	83.00	306.00	2024-11-06 16:22:00	2024-11-06 16:22:00
1361	277	11	8	65.00	448.00	2024-11-06 12:56:00	2024-11-06 12:56:00
1362	277	143	2	31.00	134.00	2024-11-06 12:56:00	2024-11-06 12:56:00
1363	277	13	32	53.00	960.00	2024-11-06 12:56:00	2024-11-06 12:56:00
1364	277	145	9	99.00	630.00	2024-11-06 12:56:00	2024-11-06 12:56:00
1365	277	125	8	25.00	480.00	2024-11-06 12:56:00	2024-11-06 12:56:00
1366	278	421	36	70.00	1692.00	2024-11-18 13:27:00	2024-11-18 13:27:00
1367	278	706	20	70.00	560.00	2024-11-18 13:27:00	2024-11-18 13:27:00
1368	278	726	26	42.00	2184.00	2024-11-18 13:27:00	2024-11-18 13:27:00
1369	278	734	41	28.00	1558.00	2024-11-18 13:27:00	2024-11-18 13:27:00
1370	278	865	16	62.00	752.00	2024-11-18 13:27:00	2024-11-18 13:27:00
1371	279	246	13	44.00	832.00	2024-11-19 11:23:00	2024-11-19 11:23:00
1372	279	31	10	90.00	550.00	2024-11-19 11:23:00	2024-11-19 11:23:00
1373	279	327	16	38.00	1488.00	2024-11-19 11:23:00	2024-11-19 11:23:00
1374	279	527	14	42.00	518.00	2024-11-19 11:23:00	2024-11-19 11:23:00
1375	279	329	5	30.00	460.00	2024-11-19 11:23:00	2024-11-19 11:23:00
1376	280	312	2	39.00	76.00	2024-11-17 11:09:00	2024-11-17 11:09:00
1377	280	1052	19	45.00	1007.00	2024-11-17 11:09:00	2024-11-17 11:09:00
1378	280	719	32	38.00	704.00	2024-11-17 11:09:00	2024-11-17 11:09:00
1379	280	315	26	45.00	1690.00	2024-11-17 11:09:00	2024-11-17 11:09:00
1380	280	155	3	58.00	87.00	2024-11-17 11:09:00	2024-11-17 11:09:00
1381	281	622	13	25.00	975.00	2024-11-17 15:49:00	2024-11-17 15:49:00
1382	281	647	5	52.00	265.00	2024-11-17 15:49:00	2024-11-17 15:49:00
1383	281	1275	39	98.00	1053.00	2024-11-17 15:49:00	2024-11-17 15:49:00
1384	281	383	10	73.00	520.00	2024-11-17 15:49:00	2024-11-17 15:49:00
1385	281	634	9	28.00	855.00	2024-11-17 15:49:00	2024-11-17 15:49:00
1386	282	286	22	28.00	1078.00	2024-11-09 16:42:00	2024-11-09 16:42:00
1387	282	287	3	78.00	141.00	2024-11-09 16:42:00	2024-11-09 16:42:00
1388	282	1086	1	29.00	67.00	2024-11-09 16:42:00	2024-11-09 16:42:00
1389	282	1388	11	54.00	737.00	2024-11-09 16:42:00	2024-11-09 16:42:00
1390	282	304	15	68.00	405.00	2024-11-09 16:42:00	2024-11-09 16:42:00
1391	283	621	33	78.00	1188.00	2024-11-23 16:30:00	2024-11-23 16:30:00
1392	283	631	33	48.00	2970.00	2024-11-23 16:30:00	2024-11-23 16:30:00
1393	283	433	9	94.00	603.00	2024-11-23 16:30:00	2024-11-23 16:30:00
1394	283	230	16	43.00	432.00	2024-11-23 16:30:00	2024-11-23 16:30:00
1395	283	1375	27	43.00	2187.00	2024-11-23 16:30:00	2024-11-23 16:30:00
1396	284	678	49	67.00	4753.00	2024-11-05 10:10:00	2024-11-05 10:10:00
1397	284	775	9	66.00	891.00	2024-11-05 10:10:00	2024-11-05 10:10:00
1398	284	10	15	51.00	585.00	2024-11-05 10:10:00	2024-11-05 10:10:00
1399	284	855	2	25.00	190.00	2024-11-05 10:10:00	2024-11-05 10:10:00
1400	285	292	35	85.00	2520.00	2024-11-12 16:30:00	2024-11-12 16:30:00
1401	285	117	22	64.00	990.00	2024-11-12 16:30:00	2024-11-12 16:30:00
1402	285	467	1	91.00	56.00	2024-11-12 16:30:00	2024-11-12 16:30:00
1403	285	773	25	53.00	1250.00	2024-11-12 16:30:00	2024-11-12 16:30:00
1404	285	469	36	36.00	1008.00	2024-11-12 16:30:00	2024-11-12 16:30:00
1405	286	142	33	39.00	2607.00	2024-11-02 08:48:00	2024-11-02 08:48:00
1406	286	182	29	86.00	2378.00	2024-11-02 08:48:00	2024-11-02 08:48:00
1407	286	564	17	90.00	1224.00	2024-11-02 08:48:00	2024-11-02 08:48:00
1408	286	69	10	80.00	230.00	2024-11-02 08:48:00	2024-11-02 08:48:00
1409	286	934	2	61.00	170.00	2024-11-02 08:48:00	2024-11-02 08:48:00
1410	287	32	20	39.00	760.00	2024-11-07 08:03:00	2024-11-07 08:03:00
1411	287	96	11	91.00	341.00	2024-11-07 08:03:00	2024-11-07 08:03:00
1412	287	199	34	63.00	2380.00	2024-11-07 08:03:00	2024-11-07 08:03:00
1413	287	170	28	99.00	1680.00	2024-11-07 08:03:00	2024-11-07 08:03:00
1414	287	370	43	50.00	2881.00	2024-11-07 08:03:00	2024-11-07 08:03:00
1415	288	766	7	44.00	693.00	2024-11-12 14:18:00	2024-11-12 14:18:00
1416	288	512	16	79.00	336.00	2024-11-12 14:18:00	2024-11-12 14:18:00
1417	288	1159	41	69.00	3936.00	2024-11-12 14:18:00	2024-11-12 14:18:00
1418	288	788	7	23.00	651.00	2024-11-12 14:18:00	2024-11-12 14:18:00
1419	288	1100	40	43.00	3800.00	2024-11-12 14:18:00	2024-11-12 14:18:00
1420	289	617	4	47.00	232.00	2024-11-16 14:42:00	2024-11-16 14:42:00
1421	289	21	1	48.00	58.00	2024-11-16 14:42:00	2024-11-16 14:42:00
1422	289	332	35	86.00	805.00	2024-11-16 14:42:00	2024-11-16 14:42:00
1423	289	673	6	60.00	456.00	2024-11-16 14:42:00	2024-11-16 14:42:00
1424	289	674	39	51.00	1794.00	2024-11-16 14:42:00	2024-11-16 14:42:00
1425	290	1272	29	79.00	2436.00	2024-11-21 10:17:00	2024-11-21 10:17:00
1426	290	687	4	84.00	340.00	2024-11-21 10:17:00	2024-11-21 10:17:00
1427	290	1016	43	95.00	3397.00	2024-11-21 10:17:00	2024-11-21 10:17:00
1428	290	432	12	54.00	312.00	2024-11-21 10:17:00	2024-11-21 10:17:00
1429	291	797	1	53.00	36.00	2024-11-01 11:53:00	2024-11-01 11:53:00
1430	291	661	29	95.00	1740.00	2024-11-01 11:53:00	2024-11-01 11:53:00
1431	291	1160	4	23.00	356.00	2024-11-01 11:53:00	2024-11-01 11:53:00
1432	291	513	22	32.00	1298.00	2024-11-01 11:53:00	2024-11-01 11:53:00
1433	292	216	46	58.00	2392.00	2024-11-18 16:54:00	2024-11-18 16:54:00
1434	292	957	5	55.00	345.00	2024-11-18 16:54:00	2024-11-18 16:54:00
1435	292	792	13	53.00	754.00	2024-11-18 16:54:00	2024-11-18 16:54:00
1436	292	219	38	38.00	2128.00	2024-11-18 16:54:00	2024-11-18 16:54:00
1437	292	654	19	81.00	1235.00	2024-11-18 16:54:00	2024-11-18 16:54:00
1438	293	516	13	79.00	364.00	2024-11-14 15:27:00	2024-11-14 15:27:00
1439	293	92	22	73.00	1386.00	2024-11-14 15:27:00	2024-11-14 15:27:00
1440	293	128	21	22.00	546.00	2024-11-14 15:27:00	2024-11-14 15:27:00
1441	293	541	30	29.00	810.00	2024-11-14 15:27:00	2024-11-14 15:27:00
1442	293	314	4	50.00	388.00	2024-11-14 15:27:00	2024-11-14 15:27:00
1443	294	329	12	67.00	768.00	2024-11-23 11:42:00	2024-11-23 11:42:00
1444	294	96	5	95.00	455.00	2024-11-23 11:42:00	2024-11-23 11:42:00
1445	294	367	30	83.00	930.00	2024-11-23 11:42:00	2024-11-23 11:42:00
1446	294	65	23	20.00	1610.00	2024-11-23 11:42:00	2024-11-23 11:42:00
\.


--
-- Data for Name: sales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sales (id, customer_id, warehouse_id, seller_id, bank_account_id, payment_receipt_id, type_document, payment_receipt_code, igv, exchange_rate, payment_condition, status, days, currency_type, observation, sale_value, total_igv, exonerated, total, created_at, updated_at) FROM stdin;
1	17	9	11	5	353	Boleta	PR5979	18.00	3.50	Contado	Pagado	0	Soles	\N	9334.00	1680.12	0.00	11014.12	2024-09-15 12:13:00	2024-09-15 12:13:00
2	34	3	1	4	354	Factura	PR3164	18.00	3.50	Contado	Pagado	0	Soles	\N	3338.00	600.84	0.00	3938.84	2024-09-18 13:15:00	2024-09-18 13:15:00
3	36	7	3	1	355	Factura	PR7234	18.00	3.50	Contado	Pagado	0	Soles	\N	8708.00	1567.44	0.00	10275.44	2024-09-30 15:47:00	2024-09-30 15:47:00
4	11	4	1	5	356	Boleta	PR8615	18.00	3.50	Contado	Pagado	0	Soles	\N	6470.00	1164.60	0.00	7634.60	2024-09-16 08:25:00	2024-09-16 08:25:00
5	16	2	1	4	357	Boleta	PR8656	18.00	3.50	Contado	Pagado	0	Soles	\N	10954.00	1971.72	0.00	12925.72	2024-09-15 12:58:00	2024-09-15 12:58:00
6	7	2	1	2	358	Factura	PR1890	18.00	3.50	Contado	Pagado	0	Soles	\N	9409.00	1693.62	0.00	11102.62	2024-09-01 08:53:00	2024-09-01 08:53:00
7	35	8	13	2	359	Factura	PR1410	18.00	3.50	Contado	Pagado	0	Soles	\N	6306.00	1135.08	0.00	7441.08	2024-09-05 13:14:00	2024-09-05 13:14:00
8	18	4	11	1	360	Boleta	PR6388	18.00	3.50	Contado	Pagado	0	Soles	\N	9081.00	1634.58	0.00	10715.58	2024-09-23 14:42:00	2024-09-23 14:42:00
9	12	3	3	3	361	Factura	PR4102	18.00	3.50	Contado	Pagado	0	Soles	\N	7673.00	1381.14	0.00	9054.14	2024-09-02 14:29:00	2024-09-02 14:29:00
10	39	2	7	3	362	Boleta	PR8617	18.00	3.50	Contado	Pagado	0	Soles	\N	5434.00	978.12	0.00	6412.12	2024-09-05 14:07:00	2024-09-05 14:07:00
11	9	4	4	5	363	Factura	PR8341	18.00	3.50	Contado	Pagado	0	Soles	\N	7454.00	1341.72	0.00	8795.72	2024-09-29 15:44:00	2024-09-29 15:44:00
12	31	7	1	5	364	Factura	PR4081	18.00	3.50	Contado	Pagado	0	Soles	\N	8975.00	1615.50	0.00	10590.50	2024-09-07 13:58:00	2024-09-07 13:58:00
13	31	5	2	3	365	Boleta	PR1114	18.00	3.50	Contado	Pagado	0	Soles	\N	8170.00	1470.60	0.00	9640.60	2024-09-01 14:05:00	2024-09-01 14:05:00
14	28	4	9	5	366	Factura	PR5996	18.00	3.50	Contado	Pagado	0	Soles	\N	10416.00	1874.88	0.00	12290.88	2024-09-12 11:15:00	2024-09-12 11:15:00
15	34	8	5	3	367	Boleta	PR5875	18.00	3.50	Contado	Pagado	0	Soles	\N	5526.00	994.68	0.00	6520.68	2024-09-17 08:06:00	2024-09-17 08:06:00
16	23	5	4	5	368	Factura	PR8927	18.00	3.50	Contado	Pagado	0	Soles	\N	4135.00	744.30	0.00	4879.30	2024-09-15 11:42:00	2024-09-15 11:42:00
17	24	7	7	4	369	Factura	PR2985	18.00	3.50	Contado	Pagado	0	Soles	\N	7682.00	1382.76	0.00	9064.76	2024-09-08 14:09:00	2024-09-08 14:09:00
18	12	6	6	5	370	Boleta	PR4147	18.00	3.50	Contado	Pagado	0	Soles	\N	4890.00	880.20	0.00	5770.20	2024-09-07 13:14:00	2024-09-07 13:14:00
19	17	8	12	3	371	Boleta	PR4245	18.00	3.50	Contado	Pagado	0	Soles	\N	6142.00	1105.56	0.00	7247.56	2024-09-27 16:21:00	2024-09-27 16:21:00
20	5	5	10	3	372	Factura	PR5282	18.00	3.50	Contado	Pagado	0	Soles	\N	11434.00	2058.12	0.00	13492.12	2024-09-24 12:14:00	2024-09-24 12:14:00
21	27	5	1	3	373	Factura	PR4858	18.00	3.50	Contado	Pagado	0	Soles	\N	4952.00	891.36	0.00	5843.36	2024-09-25 09:29:00	2024-09-25 09:29:00
22	31	5	8	2	374	Factura	PR3020	18.00	3.50	Contado	Pagado	0	Soles	\N	8333.00	1499.94	0.00	9832.94	2024-09-01 14:50:00	2024-09-01 14:50:00
23	30	7	9	5	375	Boleta	PR7207	18.00	3.50	Contado	Pagado	0	Soles	\N	6309.00	1135.62	0.00	7444.62	2024-09-27 16:57:00	2024-09-27 16:57:00
24	4	1	2	1	376	Factura	PR9518	18.00	3.50	Contado	Pagado	0	Soles	\N	8624.00	1552.32	0.00	10176.32	2024-09-10 16:52:00	2024-09-10 16:52:00
25	23	2	5	1	377	Boleta	PR4356	18.00	3.50	Contado	Pagado	0	Soles	\N	10084.00	1815.12	0.00	11899.12	2024-09-26 09:44:00	2024-09-26 09:44:00
26	3	1	3	3	378	Factura	PR4208	18.00	3.50	Contado	Pagado	0	Soles	\N	11403.00	2052.54	0.00	13455.54	2024-09-06 16:54:00	2024-09-06 16:54:00
27	29	6	1	5	379	Boleta	PR9313	18.00	3.50	Contado	Pagado	0	Soles	\N	9680.00	1742.40	0.00	11422.40	2024-09-07 09:29:00	2024-09-07 09:29:00
28	4	4	3	2	380	Factura	PR7272	18.00	3.50	Contado	Pagado	0	Soles	\N	5313.00	956.34	0.00	6269.34	2024-09-25 08:26:00	2024-09-25 08:26:00
29	14	2	12	5	381	Boleta	PR5374	18.00	3.50	Contado	Pagado	0	Soles	\N	8838.00	1590.84	0.00	10428.84	2024-09-10 13:38:00	2024-09-10 13:38:00
30	16	5	10	1	382	Factura	PR2544	18.00	3.50	Contado	Pagado	0	Soles	\N	4538.00	816.84	0.00	5354.84	2024-09-21 11:35:00	2024-09-21 11:35:00
31	9	2	6	2	383	Factura	PR8444	18.00	3.50	Contado	Pagado	0	Soles	\N	5796.00	1043.28	0.00	6839.28	2024-09-26 16:25:00	2024-09-26 16:25:00
32	28	2	6	1	384	Factura	PR4769	18.00	3.50	Contado	Pagado	0	Soles	\N	13449.00	2420.82	0.00	15869.82	2024-09-12 13:48:00	2024-09-12 13:48:00
33	28	7	6	3	385	Boleta	PR1922	18.00	3.50	Contado	Pagado	0	Soles	\N	2434.00	438.12	0.00	2872.12	2024-09-29 10:42:00	2024-09-29 10:42:00
34	4	9	10	4	386	Factura	PR1819	18.00	3.50	Contado	Pagado	0	Soles	\N	6722.00	1209.96	0.00	7931.96	2024-09-08 13:33:00	2024-09-08 13:33:00
35	24	8	1	2	387	Boleta	PR6705	18.00	3.50	Contado	Pagado	0	Soles	\N	7579.00	1364.22	0.00	8943.22	2024-09-06 11:11:00	2024-09-06 11:11:00
36	30	6	5	1	388	Boleta	PR6460	18.00	3.50	Contado	Pagado	0	Soles	\N	7414.00	1334.52	0.00	8748.52	2024-09-02 13:55:00	2024-09-02 13:55:00
37	1	5	10	2	389	Boleta	PR9679	18.00	3.50	Contado	Pagado	0	Soles	\N	7600.00	1368.00	0.00	8968.00	2024-09-29 11:56:00	2024-09-29 11:56:00
38	19	5	12	3	390	Boleta	PR8107	18.00	3.50	Contado	Pagado	0	Soles	\N	7147.00	1286.46	0.00	8433.46	2024-09-13 12:01:00	2024-09-13 12:01:00
39	9	7	10	5	391	Factura	PR8806	18.00	3.50	Contado	Pagado	0	Soles	\N	6541.00	1177.38	0.00	7718.38	2024-09-27 13:35:00	2024-09-27 13:35:00
40	27	8	4	1	392	Factura	PR3098	18.00	3.50	Contado	Pagado	0	Soles	\N	4027.00	724.86	0.00	4751.86	2024-09-17 12:29:00	2024-09-17 12:29:00
41	39	1	1	1	393	Boleta	PR8260	18.00	3.50	Contado	Pagado	0	Soles	\N	8933.00	1607.94	0.00	10540.94	2024-09-25 14:44:00	2024-09-25 14:44:00
42	8	5	4	2	394	Boleta	PR5202	18.00	3.50	Contado	Pagado	0	Soles	\N	7672.00	1380.96	0.00	9052.96	2024-09-25 12:41:00	2024-09-25 12:41:00
43	17	3	10	4	395	Boleta	PR8143	18.00	3.50	Contado	Pagado	0	Soles	\N	8478.00	1526.04	0.00	10004.04	2024-09-02 14:53:00	2024-09-02 14:53:00
44	32	1	6	2	396	Factura	PR4596	18.00	3.50	Contado	Pagado	0	Soles	\N	5106.00	919.08	0.00	6025.08	2024-09-14 12:57:00	2024-09-14 12:57:00
45	36	1	5	2	397	Boleta	PR2343	18.00	3.50	Contado	Pagado	0	Soles	\N	3597.00	647.46	0.00	4244.46	2024-09-27 16:35:00	2024-09-27 16:35:00
46	28	9	3	4	398	Boleta	PR9050	18.00	3.50	Contado	Pagado	0	Soles	\N	8322.00	1497.96	0.00	9819.96	2024-09-21 08:29:00	2024-09-21 08:29:00
47	18	3	4	4	399	Factura	PR1279	18.00	3.50	Contado	Pagado	0	Soles	\N	7696.00	1385.28	0.00	9081.28	2024-09-06 15:02:00	2024-09-06 15:02:00
48	4	1	10	5	400	Boleta	PR8803	18.00	3.50	Contado	Pagado	0	Soles	\N	7637.00	1374.66	0.00	9011.66	2024-09-12 15:50:00	2024-09-12 15:50:00
49	14	9	3	3	401	Factura	PR5608	18.00	3.50	Contado	Pagado	0	Soles	\N	8018.00	1443.24	0.00	9461.24	2024-09-10 16:34:00	2024-09-10 16:34:00
50	22	5	12	5	402	Factura	PR3426	18.00	3.50	Contado	Pagado	0	Soles	\N	10499.00	1889.82	0.00	12388.82	2024-09-15 08:27:00	2024-09-15 08:27:00
51	39	3	12	5	403	Boleta	PR2709	18.00	3.50	Contado	Pagado	0	Soles	\N	11589.00	2086.02	0.00	13675.02	2024-09-07 11:29:00	2024-09-07 11:29:00
52	19	6	10	1	404	Boleta	PR1869	18.00	3.50	Contado	Pagado	0	Soles	\N	9336.00	1680.48	0.00	11016.48	2024-09-09 10:07:00	2024-09-09 10:07:00
53	11	9	13	2	405	Boleta	PR8216	18.00	3.50	Contado	Pagado	0	Soles	\N	5344.00	961.92	0.00	6305.92	2024-09-06 14:42:00	2024-09-06 14:42:00
54	25	9	10	2	406	Factura	PR9575	18.00	3.50	Contado	Pagado	0	Soles	\N	7001.00	1260.18	0.00	8261.18	2024-09-18 14:01:00	2024-09-18 14:01:00
55	38	6	11	2	407	Boleta	PR2469	18.00	3.50	Contado	Pagado	0	Soles	\N	8024.00	1444.32	0.00	9468.32	2024-09-12 12:33:00	2024-09-12 12:33:00
56	37	9	7	3	408	Factura	PR1698	18.00	3.50	Contado	Pagado	0	Soles	\N	8272.00	1488.96	0.00	9760.96	2024-09-06 15:58:00	2024-09-06 15:58:00
57	5	4	6	2	409	Factura	PR5503	18.00	3.50	Contado	Pagado	0	Soles	\N	6560.00	1180.80	0.00	7740.80	2024-09-14 10:50:00	2024-09-14 10:50:00
58	29	4	7	2	410	Factura	PR6037	18.00	3.50	Contado	Pagado	0	Soles	\N	9146.00	1646.28	0.00	10792.28	2024-09-26 12:52:00	2024-09-26 12:52:00
59	7	3	11	3	411	Factura	PR8589	18.00	3.50	Contado	Pagado	0	Soles	\N	5778.00	1040.04	0.00	6818.04	2024-09-04 16:53:00	2024-09-04 16:53:00
60	25	2	10	2	412	Factura	PR7934	18.00	3.50	Contado	Pagado	0	Soles	\N	6939.00	1249.02	0.00	8188.02	2024-09-10 15:16:00	2024-09-10 15:16:00
61	24	4	12	3	413	Boleta	PR9513	18.00	3.50	Contado	Pagado	0	Soles	\N	7024.00	1264.32	0.00	8288.32	2024-09-03 15:17:00	2024-09-03 15:17:00
62	16	1	3	3	414	Factura	PR8673	18.00	3.50	Contado	Pagado	0	Soles	\N	7102.00	1278.36	0.00	8380.36	2024-09-12 13:02:00	2024-09-12 13:02:00
63	33	1	12	2	415	Boleta	PR8377	18.00	3.50	Contado	Pagado	0	Soles	\N	6335.00	1140.30	0.00	7475.30	2024-09-21 08:25:00	2024-09-21 08:25:00
64	5	7	5	2	416	Factura	PR6632	18.00	3.50	Contado	Pagado	0	Soles	\N	7782.00	1400.76	0.00	9182.76	2024-09-24 14:42:00	2024-09-24 14:42:00
65	3	4	11	2	417	Factura	PR7602	18.00	3.50	Contado	Pagado	0	Soles	\N	2757.00	496.26	0.00	3253.26	2024-09-11 09:06:00	2024-09-11 09:06:00
66	29	7	12	5	418	Factura	PR6459	18.00	3.50	Contado	Pagado	0	Soles	\N	9659.00	1738.62	0.00	11397.62	2024-09-07 11:40:00	2024-09-07 11:40:00
67	36	9	5	5	419	Boleta	PR6508	18.00	3.50	Contado	Pagado	0	Soles	\N	5606.00	1009.08	0.00	6615.08	2024-09-22 12:52:00	2024-09-22 12:52:00
68	22	5	1	1	420	Factura	PR4633	18.00	3.50	Contado	Pagado	0	Soles	\N	6191.00	1114.38	0.00	7305.38	2024-09-17 16:57:00	2024-09-17 16:57:00
69	39	6	7	1	421	Factura	PR6616	18.00	3.50	Contado	Pagado	0	Soles	\N	10708.00	1927.44	0.00	12635.44	2024-09-17 11:36:00	2024-09-17 11:36:00
70	38	2	9	1	422	Factura	PR4533	18.00	3.50	Contado	Pagado	0	Soles	\N	7033.00	1265.94	0.00	8298.94	2024-09-19 14:57:00	2024-09-19 14:57:00
71	39	7	4	1	423	Factura	PR4617	18.00	3.50	Contado	Pagado	0	Soles	\N	9281.00	1670.58	0.00	10951.58	2024-09-25 08:24:00	2024-09-25 08:24:00
72	6	6	1	3	424	Factura	PR6423	18.00	3.50	Contado	Pagado	0	Soles	\N	8192.00	1474.56	0.00	9666.56	2024-09-29 12:36:00	2024-09-29 12:36:00
73	31	5	6	2	425	Factura	PR9069	18.00	3.50	Contado	Pagado	0	Soles	\N	5182.00	932.76	0.00	6114.76	2024-09-14 15:29:00	2024-09-14 15:29:00
74	30	6	4	2	426	Boleta	PR7140	18.00	3.50	Contado	Pagado	0	Soles	\N	4672.00	840.96	0.00	5512.96	2024-09-02 10:34:00	2024-09-02 10:34:00
75	31	1	2	2	427	Boleta	PR5256	18.00	3.50	Contado	Pagado	0	Soles	\N	4775.00	859.50	0.00	5634.50	2024-09-28 10:04:00	2024-09-28 10:04:00
76	38	3	11	1	428	Factura	PR5142	18.00	3.50	Contado	Pagado	0	Soles	\N	7009.00	1261.62	0.00	8270.62	2024-09-17 10:20:00	2024-09-17 10:20:00
77	28	1	10	2	429	Boleta	PR2318	18.00	3.50	Contado	Pagado	0	Soles	\N	6391.00	1150.38	0.00	7541.38	2024-09-13 13:19:00	2024-09-13 13:19:00
78	3	2	10	5	430	Factura	PR6826	18.00	3.50	Contado	Pagado	0	Soles	\N	5657.00	1018.26	0.00	6675.26	2024-09-27 14:26:00	2024-09-27 14:26:00
79	19	9	11	4	431	Factura	PR5729	18.00	3.50	Contado	Pagado	0	Soles	\N	5993.00	1078.74	0.00	7071.74	2024-09-04 08:18:00	2024-09-04 08:18:00
80	6	2	4	1	432	Boleta	PR3085	18.00	3.50	Contado	Pagado	0	Soles	\N	12177.00	2191.86	0.00	14368.86	2024-09-08 15:30:00	2024-09-08 15:30:00
81	19	1	8	4	433	Boleta	PR9178	18.00	3.50	Contado	Pagado	0	Soles	\N	6307.00	1135.26	0.00	7442.26	2024-09-07 14:50:00	2024-09-07 14:50:00
82	25	9	1	4	434	Boleta	PR9314	18.00	3.50	Contado	Pagado	0	Soles	\N	8001.00	1440.18	0.00	9441.18	2024-09-02 08:00:00	2024-09-02 08:00:00
83	16	2	13	1	435	Factura	PR6727	18.00	3.50	Contado	Pagado	0	Soles	\N	3600.00	648.00	0.00	4248.00	2024-09-18 12:11:00	2024-09-18 12:11:00
84	6	5	11	4	436	Boleta	PR4506	18.00	3.50	Contado	Pagado	0	Soles	\N	2886.00	519.48	0.00	3405.48	2024-09-04 15:33:00	2024-09-04 15:33:00
85	13	5	5	4	437	Factura	PR3685	18.00	3.50	Contado	Pagado	0	Soles	\N	8231.00	1481.58	0.00	9712.58	2024-09-18 12:48:00	2024-09-18 12:48:00
86	33	7	3	1	438	Boleta	PR1703	18.00	3.50	Contado	Pagado	0	Soles	\N	6635.00	1194.30	0.00	7829.30	2024-09-13 13:37:00	2024-09-13 13:37:00
87	31	9	10	3	439	Factura	PR2600	18.00	3.50	Contado	Pagado	0	Soles	\N	3558.00	640.44	0.00	4198.44	2024-09-06 08:40:00	2024-09-06 08:40:00
88	33	8	8	3	440	Boleta	PR3597	18.00	3.50	Contado	Pagado	0	Soles	\N	5533.00	995.94	0.00	6528.94	2024-09-19 13:43:00	2024-09-19 13:43:00
89	8	1	1	3	441	Factura	PR3115	18.00	3.50	Contado	Pagado	0	Soles	\N	4472.00	804.96	0.00	5276.96	2024-09-28 11:10:00	2024-09-28 11:10:00
90	11	4	11	5	442	Factura	PR9619	18.00	3.50	Contado	Pagado	0	Soles	\N	3123.00	562.14	0.00	3685.14	2024-09-13 15:29:00	2024-09-13 15:29:00
91	10	1	10	3	443	Boleta	PR8486	18.00	3.50	Contado	Pagado	0	Soles	\N	6110.00	1099.80	0.00	7209.80	2024-09-28 08:19:00	2024-09-28 08:19:00
92	15	9	3	3	444	Factura	PR6380	18.00	3.50	Contado	Pagado	0	Soles	\N	8952.00	1611.36	0.00	10563.36	2024-09-16 10:18:00	2024-09-16 10:18:00
93	13	4	3	2	445	Factura	PR9663	18.00	3.50	Contado	Pagado	0	Soles	\N	2579.00	464.22	0.00	3043.22	2024-09-02 11:32:00	2024-09-02 11:32:00
94	8	5	2	1	446	Boleta	PR7944	18.00	3.50	Contado	Pagado	0	Soles	\N	5394.00	970.92	0.00	6364.92	2024-09-05 11:06:00	2024-09-05 11:06:00
95	39	3	3	5	447	Boleta	PR6642	18.00	3.50	Contado	Pagado	0	Soles	\N	7122.00	1281.96	0.00	8403.96	2024-09-26 10:33:00	2024-09-26 10:33:00
96	26	6	9	2	448	Factura	PR9680	18.00	3.50	Contado	Pagado	0	Soles	\N	3516.00	632.88	0.00	4148.88	2024-09-01 09:32:00	2024-09-01 09:32:00
97	15	7	4	4	449	Factura	PR9105	18.00	3.50	Contado	Pagado	0	Soles	\N	9089.00	1636.02	0.00	10725.02	2024-09-24 09:25:00	2024-09-24 09:25:00
98	40	3	10	2	450	Factura	PR2482	18.00	3.50	Contado	Pagado	0	Soles	\N	5799.00	1043.82	0.00	6842.82	2024-09-23 16:53:00	2024-09-23 16:53:00
99	26	2	5	4	451	Boleta	PR1223	18.00	3.50	Contado	Pagado	0	Soles	\N	7550.00	1359.00	0.00	8909.00	2024-10-29 11:42:00	2024-10-29 11:42:00
100	39	4	7	4	452	Factura	PR8398	18.00	3.50	Contado	Pagado	0	Soles	\N	11331.00	2039.58	0.00	13370.58	2024-10-18 10:19:00	2024-10-18 10:19:00
101	15	2	3	2	453	Boleta	PR8997	18.00	3.50	Contado	Pagado	0	Soles	\N	4813.00	866.34	0.00	5679.34	2024-10-28 12:17:00	2024-10-28 12:17:00
102	28	7	8	4	454	Factura	PR2382	18.00	3.50	Contado	Pagado	0	Soles	\N	6814.00	1226.52	0.00	8040.52	2024-10-30 09:21:00	2024-10-30 09:21:00
103	12	1	8	1	455	Boleta	PR2411	18.00	3.50	Contado	Pagado	0	Soles	\N	6238.00	1122.84	0.00	7360.84	2024-10-05 11:03:00	2024-10-05 11:03:00
104	22	3	5	1	456	Factura	PR7276	18.00	3.50	Contado	Pagado	0	Soles	\N	7866.00	1415.88	0.00	9281.88	2024-10-19 13:51:00	2024-10-19 13:51:00
105	1	8	4	3	457	Factura	PR7946	18.00	3.50	Contado	Pagado	0	Soles	\N	7743.00	1393.74	0.00	9136.74	2024-10-03 14:32:00	2024-10-03 14:32:00
106	38	1	11	3	458	Factura	PR5475	18.00	3.50	Contado	Pagado	0	Soles	\N	7220.00	1299.60	0.00	8519.60	2024-10-25 16:59:00	2024-10-25 16:59:00
107	32	5	11	2	459	Boleta	PR5811	18.00	3.50	Contado	Pagado	0	Soles	\N	6394.00	1150.92	0.00	7544.92	2024-10-26 10:45:00	2024-10-26 10:45:00
108	12	1	9	1	460	Boleta	PR8915	18.00	3.50	Contado	Pagado	0	Soles	\N	4777.00	859.86	0.00	5636.86	2024-10-04 08:21:00	2024-10-04 08:21:00
109	7	1	12	2	461	Factura	PR4499	18.00	3.50	Contado	Pagado	0	Soles	\N	3949.00	710.82	0.00	4659.82	2024-10-05 09:54:00	2024-10-05 09:54:00
110	16	9	13	1	462	Boleta	PR7110	18.00	3.50	Contado	Pagado	0	Soles	\N	6715.00	1208.70	0.00	7923.70	2024-10-13 12:53:00	2024-10-13 12:53:00
111	17	9	3	1	463	Factura	PR7169	18.00	3.50	Contado	Pagado	0	Soles	\N	3545.00	638.10	0.00	4183.10	2024-10-22 11:06:00	2024-10-22 11:06:00
112	8	7	1	4	464	Boleta	PR6976	18.00	3.50	Contado	Pagado	0	Soles	\N	8431.00	1517.58	0.00	9948.58	2024-10-19 15:14:00	2024-10-19 15:14:00
113	2	4	13	4	465	Factura	PR5578	18.00	3.50	Contado	Pagado	0	Soles	\N	9629.00	1733.22	0.00	11362.22	2024-10-21 09:27:00	2024-10-21 09:27:00
114	13	8	4	1	466	Factura	PR6243	18.00	3.50	Contado	Pagado	0	Soles	\N	8440.00	1519.20	0.00	9959.20	2024-10-31 10:16:00	2024-10-31 10:16:00
115	23	1	4	2	467	Factura	PR7660	18.00	3.50	Contado	Pagado	0	Soles	\N	3251.00	585.18	0.00	3836.18	2024-10-22 15:19:00	2024-10-22 15:19:00
116	39	8	11	3	468	Boleta	PR2775	18.00	3.50	Contado	Pagado	0	Soles	\N	7562.00	1361.16	0.00	8923.16	2024-10-20 14:43:00	2024-10-20 14:43:00
117	33	9	8	5	469	Boleta	PR4928	18.00	3.50	Contado	Pagado	0	Soles	\N	8059.00	1450.62	0.00	9509.62	2024-10-26 08:22:00	2024-10-26 08:22:00
118	11	6	1	1	470	Boleta	PR7307	18.00	3.50	Contado	Pagado	0	Soles	\N	6415.00	1154.70	0.00	7569.70	2024-10-28 14:07:00	2024-10-28 14:07:00
119	39	7	7	5	471	Factura	PR4815	18.00	3.50	Contado	Pagado	0	Soles	\N	5842.00	1051.56	0.00	6893.56	2024-10-06 16:01:00	2024-10-06 16:01:00
120	6	2	8	4	472	Factura	PR4138	18.00	3.50	Contado	Pagado	0	Soles	\N	9851.00	1773.18	0.00	11624.18	2024-10-06 08:23:00	2024-10-06 08:23:00
121	26	5	2	1	473	Factura	PR1221	18.00	3.50	Contado	Pagado	0	Soles	\N	7515.00	1352.70	0.00	8867.70	2024-10-26 12:31:00	2024-10-26 12:31:00
122	13	5	12	4	474	Boleta	PR5840	18.00	3.50	Contado	Pagado	0	Soles	\N	8843.00	1591.74	0.00	10434.74	2024-10-20 08:07:00	2024-10-20 08:07:00
123	34	8	5	2	475	Boleta	PR1393	18.00	3.50	Contado	Pagado	0	Soles	\N	10815.00	1946.70	0.00	12761.70	2024-10-19 12:14:00	2024-10-19 12:14:00
124	7	7	6	3	476	Boleta	PR7420	18.00	3.50	Contado	Pagado	0	Soles	\N	4186.00	753.48	0.00	4939.48	2024-10-21 16:03:00	2024-10-21 16:03:00
125	35	7	10	4	477	Factura	PR6891	18.00	3.50	Contado	Pagado	0	Soles	\N	5247.00	944.46	0.00	6191.46	2024-10-28 14:28:00	2024-10-28 14:28:00
126	27	5	4	2	478	Factura	PR6909	18.00	3.50	Contado	Pagado	0	Soles	\N	10172.00	1830.96	0.00	12002.96	2024-10-13 09:40:00	2024-10-13 09:40:00
127	14	9	10	5	479	Factura	PR9021	18.00	3.50	Contado	Pagado	0	Soles	\N	4003.00	720.54	0.00	4723.54	2024-10-03 14:22:00	2024-10-03 14:22:00
128	11	4	9	5	480	Factura	PR4080	18.00	3.50	Contado	Pagado	0	Soles	\N	4677.00	841.86	0.00	5518.86	2024-10-23 14:30:00	2024-10-23 14:30:00
129	10	8	3	3	481	Factura	PR2025	18.00	3.50	Contado	Pagado	0	Soles	\N	3694.00	664.92	0.00	4358.92	2024-10-11 15:35:00	2024-10-11 15:35:00
130	20	9	6	3	482	Factura	PR1845	18.00	3.50	Contado	Pagado	0	Soles	\N	9026.00	1624.68	0.00	10650.68	2024-10-17 13:17:00	2024-10-17 13:17:00
131	39	7	2	2	483	Factura	PR3205	18.00	3.50	Contado	Pagado	0	Soles	\N	5464.00	983.52	0.00	6447.52	2024-10-28 12:55:00	2024-10-28 12:55:00
132	2	9	1	2	484	Boleta	PR7646	18.00	3.50	Contado	Pagado	0	Soles	\N	6400.00	1152.00	0.00	7552.00	2024-10-26 13:40:00	2024-10-26 13:40:00
133	23	7	11	5	485	Factura	PR3235	18.00	3.50	Contado	Pagado	0	Soles	\N	6237.00	1122.66	0.00	7359.66	2024-10-28 15:53:00	2024-10-28 15:53:00
134	1	8	4	2	486	Factura	PR5061	18.00	3.50	Contado	Pagado	0	Soles	\N	4805.00	864.90	0.00	5669.90	2024-10-20 10:46:00	2024-10-20 10:46:00
135	2	9	5	4	487	Factura	PR9550	18.00	3.50	Contado	Pagado	0	Soles	\N	3905.00	702.90	0.00	4607.90	2024-10-17 09:05:00	2024-10-17 09:05:00
136	34	5	5	4	488	Factura	PR6456	18.00	3.50	Contado	Pagado	0	Soles	\N	8017.00	1443.06	0.00	9460.06	2024-10-20 08:15:00	2024-10-20 08:15:00
137	36	5	7	5	489	Factura	PR1183	18.00	3.50	Contado	Pagado	0	Soles	\N	7957.00	1432.26	0.00	9389.26	2024-10-06 08:33:00	2024-10-06 08:33:00
138	36	2	3	3	490	Boleta	PR1541	18.00	3.50	Contado	Pagado	0	Soles	\N	8816.00	1586.88	0.00	10402.88	2024-10-21 11:42:00	2024-10-21 11:42:00
139	4	3	8	3	491	Boleta	PR1778	18.00	3.50	Contado	Pagado	0	Soles	\N	5679.00	1022.22	0.00	6701.22	2024-10-11 09:46:00	2024-10-11 09:46:00
140	15	3	5	1	492	Boleta	PR8409	18.00	3.50	Contado	Pagado	0	Soles	\N	2261.00	406.98	0.00	2667.98	2024-10-30 09:04:00	2024-10-30 09:04:00
141	26	5	11	2	493	Factura	PR7010	18.00	3.50	Contado	Pagado	0	Soles	\N	10365.00	1865.70	0.00	12230.70	2024-10-05 13:56:00	2024-10-05 13:56:00
142	28	1	6	4	494	Factura	PR4362	18.00	3.50	Contado	Pagado	0	Soles	\N	6042.00	1087.56	0.00	7129.56	2024-10-31 09:42:00	2024-10-31 09:42:00
143	23	1	1	5	495	Boleta	PR1374	18.00	3.50	Contado	Pagado	0	Soles	\N	8224.00	1480.32	0.00	9704.32	2024-10-28 12:51:00	2024-10-28 12:51:00
144	20	6	2	2	496	Factura	PR8743	18.00	3.50	Contado	Pagado	0	Soles	\N	9846.00	1772.28	0.00	11618.28	2024-10-20 12:29:00	2024-10-20 12:29:00
145	18	6	13	3	497	Factura	PR9610	18.00	3.50	Contado	Pagado	0	Soles	\N	6912.00	1244.16	0.00	8156.16	2024-10-24 14:21:00	2024-10-24 14:21:00
146	12	9	7	3	498	Factura	PR9501	18.00	3.50	Contado	Pagado	0	Soles	\N	4814.00	866.52	0.00	5680.52	2024-10-13 13:29:00	2024-10-13 13:29:00
147	13	4	8	2	499	Factura	PR1408	18.00	3.50	Contado	Pagado	0	Soles	\N	3856.00	694.08	0.00	4550.08	2024-10-15 09:00:00	2024-10-15 09:00:00
148	17	7	5	3	500	Boleta	PR4921	18.00	3.50	Contado	Pagado	0	Soles	\N	9310.00	1675.80	0.00	10985.80	2024-10-12 12:17:00	2024-10-12 12:17:00
149	25	1	7	5	501	Factura	PR3917	18.00	3.50	Contado	Pagado	0	Soles	\N	7552.00	1359.36	0.00	8911.36	2024-10-15 10:21:00	2024-10-15 10:21:00
150	30	3	4	2	502	Factura	PR8514	18.00	3.50	Contado	Pagado	0	Soles	\N	6847.00	1232.46	0.00	8079.46	2024-10-17 13:30:00	2024-10-17 13:30:00
151	34	7	7	5	503	Factura	PR4866	18.00	3.50	Contado	Pagado	0	Soles	\N	2769.00	498.42	0.00	3267.42	2024-10-12 09:34:00	2024-10-12 09:34:00
152	14	6	11	3	504	Boleta	PR1078	18.00	3.50	Contado	Pagado	0	Soles	\N	4719.00	849.42	0.00	5568.42	2024-10-30 10:01:00	2024-10-30 10:01:00
153	30	5	12	4	505	Factura	PR7962	18.00	3.50	Contado	Pagado	0	Soles	\N	8866.00	1595.88	0.00	10461.88	2024-10-24 12:44:00	2024-10-24 12:44:00
154	13	8	4	4	506	Boleta	PR5424	18.00	3.50	Contado	Pagado	0	Soles	\N	4448.00	800.64	0.00	5248.64	2024-10-16 10:10:00	2024-10-16 10:10:00
155	8	8	13	5	507	Boleta	PR6927	18.00	3.50	Contado	Pagado	0	Soles	\N	4262.00	767.16	0.00	5029.16	2024-10-07 09:27:00	2024-10-07 09:27:00
156	31	5	13	3	508	Factura	PR8505	18.00	3.50	Contado	Pagado	0	Soles	\N	2695.00	485.10	0.00	3180.10	2024-10-17 08:53:00	2024-10-17 08:53:00
157	29	5	1	2	509	Boleta	PR6426	18.00	3.50	Contado	Pagado	0	Soles	\N	4764.00	857.52	0.00	5621.52	2024-10-09 08:34:00	2024-10-09 08:34:00
158	3	9	5	1	510	Factura	PR4498	18.00	3.50	Contado	Pagado	0	Soles	\N	9524.00	1714.32	0.00	11238.32	2024-10-23 11:20:00	2024-10-23 11:20:00
159	21	5	10	4	511	Factura	PR8912	18.00	3.50	Contado	Pagado	0	Soles	\N	9314.00	1676.52	0.00	10990.52	2024-10-24 15:22:00	2024-10-24 15:22:00
160	8	3	7	1	512	Factura	PR1588	18.00	3.50	Contado	Pagado	0	Soles	\N	4258.00	766.44	0.00	5024.44	2024-10-19 16:24:00	2024-10-19 16:24:00
161	38	9	11	3	513	Factura	PR8670	18.00	3.50	Contado	Pagado	0	Soles	\N	5781.00	1040.58	0.00	6821.58	2024-10-23 13:53:00	2024-10-23 13:53:00
162	33	9	5	3	514	Factura	PR1066	18.00	3.50	Contado	Pagado	0	Soles	\N	4389.00	790.02	0.00	5179.02	2024-10-14 12:56:00	2024-10-14 12:56:00
163	23	6	2	3	515	Boleta	PR2595	18.00	3.50	Contado	Pagado	0	Soles	\N	4968.00	894.24	0.00	5862.24	2024-10-01 11:01:00	2024-10-01 11:01:00
164	24	8	2	5	516	Boleta	PR6672	18.00	3.50	Contado	Pagado	0	Soles	\N	6438.00	1158.84	0.00	7596.84	2024-10-10 14:46:00	2024-10-10 14:46:00
165	1	4	10	2	517	Factura	PR9121	18.00	3.50	Contado	Pagado	0	Soles	\N	7515.00	1352.70	0.00	8867.70	2024-10-03 14:28:00	2024-10-03 14:28:00
166	21	9	3	3	518	Boleta	PR2577	18.00	3.50	Contado	Pagado	0	Soles	\N	4184.00	753.12	0.00	4937.12	2024-10-22 08:53:00	2024-10-22 08:53:00
167	7	6	11	1	519	Factura	PR8930	18.00	3.50	Contado	Pagado	0	Soles	\N	3840.00	691.20	0.00	4531.20	2024-10-31 09:38:00	2024-10-31 09:38:00
168	18	4	4	4	520	Boleta	PR3536	18.00	3.50	Contado	Pagado	0	Soles	\N	4232.00	761.76	0.00	4993.76	2024-10-24 14:19:00	2024-10-24 14:19:00
169	40	7	9	3	521	Factura	PR1227	18.00	3.50	Contado	Pagado	0	Soles	\N	5516.00	992.88	0.00	6508.88	2024-10-12 12:17:00	2024-10-12 12:17:00
170	8	7	1	1	522	Factura	PR6313	18.00	3.50	Contado	Pagado	0	Soles	\N	8127.00	1462.86	0.00	9589.86	2024-10-10 15:52:00	2024-10-10 15:52:00
171	8	1	10	1	523	Factura	PR9515	18.00	3.50	Contado	Pagado	0	Soles	\N	8119.00	1461.42	0.00	9580.42	2024-10-13 10:28:00	2024-10-13 10:28:00
172	6	4	3	5	524	Boleta	PR9312	18.00	3.50	Contado	Pagado	0	Soles	\N	10550.00	1899.00	0.00	12449.00	2024-10-03 13:51:00	2024-10-03 13:51:00
173	9	8	5	5	525	Boleta	PR5246	18.00	3.50	Contado	Pagado	0	Soles	\N	7224.00	1300.32	0.00	8524.32	2024-10-21 16:58:00	2024-10-21 16:58:00
174	16	7	1	2	526	Factura	PR6436	18.00	3.50	Contado	Pagado	0	Soles	\N	4963.00	893.34	0.00	5856.34	2024-10-05 10:40:00	2024-10-05 10:40:00
175	34	4	8	5	527	Boleta	PR2919	18.00	3.50	Contado	Pagado	0	Soles	\N	5196.00	935.28	0.00	6131.28	2024-10-24 11:44:00	2024-10-24 11:44:00
176	31	7	4	1	528	Factura	PR3449	18.00	3.50	Contado	Pagado	0	Soles	\N	6483.00	1166.94	0.00	7649.94	2024-10-07 11:24:00	2024-10-07 11:24:00
177	9	1	10	1	529	Boleta	PR8532	18.00	3.50	Contado	Pagado	0	Soles	\N	4998.00	899.64	0.00	5897.64	2024-10-11 13:12:00	2024-10-11 13:12:00
178	34	8	7	4	530	Factura	PR7305	18.00	3.50	Contado	Pagado	0	Soles	\N	9540.00	1717.20	0.00	11257.20	2024-10-03 15:09:00	2024-10-03 15:09:00
179	38	9	7	1	531	Boleta	PR3931	18.00	3.50	Contado	Pagado	0	Soles	\N	10236.00	1842.48	0.00	12078.48	2024-10-19 10:00:00	2024-10-19 10:00:00
180	18	5	9	5	532	Boleta	PR1063	18.00	3.50	Contado	Pagado	0	Soles	\N	5223.00	940.14	0.00	6163.14	2024-10-11 10:34:00	2024-10-11 10:34:00
181	17	9	9	2	533	Boleta	PR4666	18.00	3.50	Contado	Pagado	0	Soles	\N	5519.00	993.42	0.00	6512.42	2024-10-07 11:08:00	2024-10-07 11:08:00
182	22	5	6	2	534	Boleta	PR2408	18.00	3.50	Contado	Pagado	0	Soles	\N	7183.00	1292.94	0.00	8475.94	2024-10-28 13:22:00	2024-10-28 13:22:00
183	36	1	2	4	535	Factura	PR2713	18.00	3.50	Contado	Pagado	0	Soles	\N	6441.00	1159.38	0.00	7600.38	2024-10-13 16:02:00	2024-10-13 16:02:00
184	5	4	6	2	536	Factura	PR6074	18.00	3.50	Contado	Pagado	0	Soles	\N	4571.00	822.78	0.00	5393.78	2024-10-21 14:29:00	2024-10-21 14:29:00
185	4	6	10	3	537	Factura	PR2610	18.00	3.50	Contado	Pagado	0	Soles	\N	8662.00	1559.16	0.00	10221.16	2024-10-29 11:10:00	2024-10-29 11:10:00
186	12	8	13	3	538	Boleta	PR7454	18.00	3.50	Contado	Pagado	0	Soles	\N	4077.00	733.86	0.00	4810.86	2024-10-01 09:03:00	2024-10-01 09:03:00
187	1	3	11	1	539	Boleta	PR5285	18.00	3.50	Contado	Pagado	0	Soles	\N	5281.00	950.58	0.00	6231.58	2024-10-27 12:37:00	2024-10-27 12:37:00
188	25	4	11	2	540	Factura	PR6959	18.00	3.50	Contado	Pagado	0	Soles	\N	7395.00	1331.10	0.00	8726.10	2024-10-13 09:51:00	2024-10-13 09:51:00
189	12	4	5	1	541	Boleta	PR4500	18.00	3.50	Contado	Pagado	0	Soles	\N	7042.00	1267.56	0.00	8309.56	2024-10-23 11:44:00	2024-10-23 11:44:00
190	37	7	9	4	542	Factura	PR2562	18.00	3.50	Contado	Pagado	0	Soles	\N	4660.00	838.80	0.00	5498.80	2024-10-07 12:08:00	2024-10-07 12:08:00
191	13	7	8	1	543	Boleta	PR5920	18.00	3.50	Contado	Pagado	0	Soles	\N	6879.00	1238.22	0.00	8117.22	2024-10-24 10:04:00	2024-10-24 10:04:00
192	1	1	11	2	544	Boleta	PR1086	18.00	3.50	Contado	Pagado	0	Soles	\N	3656.00	658.08	0.00	4314.08	2024-10-19 13:33:00	2024-10-19 13:33:00
193	13	4	13	1	545	Boleta	PR4634	18.00	3.50	Contado	Pagado	0	Soles	\N	5015.00	902.70	0.00	5917.70	2024-10-11 14:38:00	2024-10-11 14:38:00
194	27	2	1	3	546	Factura	PR8871	18.00	3.50	Contado	Pagado	0	Soles	\N	10286.00	1851.48	0.00	12137.48	2024-10-10 10:06:00	2024-10-10 10:06:00
195	38	1	3	2	547	Factura	PR8729	18.00	3.50	Contado	Pagado	0	Soles	\N	4363.00	785.34	0.00	5148.34	2024-10-12 08:24:00	2024-10-12 08:24:00
196	29	5	5	2	548	Factura	PR6562	18.00	3.50	Contado	Pagado	0	Soles	\N	4499.00	809.82	0.00	5308.82	2024-10-16 13:19:00	2024-10-16 13:19:00
197	10	8	3	3	549	Factura	PR1516	18.00	3.50	Contado	Pagado	0	Soles	\N	10461.00	1882.98	0.00	12343.98	2024-11-03 09:37:00	2024-11-03 09:37:00
198	31	3	9	3	550	Factura	PR8473	18.00	3.50	Contado	Pagado	0	Soles	\N	6935.00	1248.30	0.00	8183.30	2024-11-23 13:12:00	2024-11-23 13:12:00
199	1	6	3	5	551	Boleta	PR3628	18.00	3.50	Contado	Pagado	0	Soles	\N	6016.00	1082.88	0.00	7098.88	2024-11-13 09:07:00	2024-11-13 09:07:00
200	26	3	7	4	552	Boleta	PR4280	18.00	3.50	Contado	Pagado	0	Soles	\N	11938.00	2148.84	0.00	14086.84	2024-11-12 08:53:00	2024-11-12 08:53:00
201	34	2	1	3	553	Factura	PR2235	18.00	3.50	Contado	Pagado	0	Soles	\N	8781.00	1580.58	0.00	10361.58	2024-11-20 09:43:00	2024-11-20 09:43:00
202	13	1	3	3	554	Factura	PR8672	18.00	3.50	Contado	Pagado	0	Soles	\N	4823.00	868.14	0.00	5691.14	2024-11-14 12:50:00	2024-11-14 12:50:00
203	7	2	2	3	555	Boleta	PR2261	18.00	3.50	Contado	Pagado	0	Soles	\N	6100.00	1098.00	0.00	7198.00	2024-11-02 15:20:00	2024-11-02 15:20:00
204	34	3	5	3	556	Factura	PR4351	18.00	3.50	Contado	Pagado	0	Soles	\N	6609.00	1189.62	0.00	7798.62	2024-11-27 08:14:00	2024-11-27 08:14:00
205	17	1	13	5	557	Factura	PR1481	18.00	3.50	Contado	Pagado	0	Soles	\N	4278.00	770.04	0.00	5048.04	2024-11-04 11:02:00	2024-11-04 11:02:00
206	37	5	2	5	558	Factura	PR4758	18.00	3.50	Contado	Pagado	0	Soles	\N	2231.00	401.58	0.00	2632.58	2024-11-27 10:27:00	2024-11-27 10:27:00
207	28	7	13	3	559	Boleta	PR3869	18.00	3.50	Contado	Pagado	0	Soles	\N	6869.00	1236.42	0.00	8105.42	2024-11-02 09:12:00	2024-11-02 09:12:00
208	3	2	10	1	560	Factura	PR9933	18.00	3.50	Contado	Pagado	0	Soles	\N	5372.00	966.96	0.00	6338.96	2024-11-30 13:20:00	2024-11-30 13:20:00
209	32	3	5	4	561	Factura	PR3499	18.00	3.50	Contado	Pagado	0	Soles	\N	7120.00	1281.60	0.00	8401.60	2024-11-11 15:55:00	2024-11-11 15:55:00
210	2	1	5	3	562	Boleta	PR7416	18.00	3.50	Contado	Pagado	0	Soles	\N	4810.00	865.80	0.00	5675.80	2024-11-12 12:07:00	2024-11-12 12:07:00
211	7	2	3	2	563	Boleta	PR4841	18.00	3.50	Contado	Pagado	0	Soles	\N	6763.00	1217.34	0.00	7980.34	2024-11-03 15:48:00	2024-11-03 15:48:00
212	13	2	2	4	564	Factura	PR8638	18.00	3.50	Contado	Pagado	0	Soles	\N	6229.00	1121.22	0.00	7350.22	2024-11-24 12:03:00	2024-11-24 12:03:00
213	36	6	6	5	565	Boleta	PR1781	18.00	3.50	Contado	Pagado	0	Soles	\N	2900.00	522.00	0.00	3422.00	2024-11-21 12:20:00	2024-11-21 12:20:00
214	33	7	5	2	566	Boleta	PR5163	18.00	3.50	Contado	Pagado	0	Soles	\N	6044.00	1087.92	0.00	7131.92	2024-11-21 16:01:00	2024-11-21 16:01:00
215	10	6	13	4	567	Factura	PR8771	18.00	3.50	Contado	Pagado	0	Soles	\N	4802.00	864.36	0.00	5666.36	2024-11-04 09:00:00	2024-11-04 09:00:00
216	1	6	8	2	568	Factura	PR1619	18.00	3.50	Contado	Pagado	0	Soles	\N	7986.00	1437.48	0.00	9423.48	2024-11-27 11:31:00	2024-11-27 11:31:00
217	35	6	5	1	569	Boleta	PR1343	18.00	3.50	Contado	Pagado	0	Soles	\N	4557.00	820.26	0.00	5377.26	2024-11-16 09:23:00	2024-11-16 09:23:00
218	8	1	4	1	570	Boleta	PR6610	18.00	3.50	Contado	Pagado	0	Soles	\N	8799.00	1583.82	0.00	10382.82	2024-11-02 08:17:00	2024-11-02 08:17:00
219	30	8	10	4	571	Factura	PR3422	18.00	3.50	Contado	Pagado	0	Soles	\N	7090.00	1276.20	0.00	8366.20	2024-11-25 12:33:00	2024-11-25 12:33:00
220	13	1	12	4	572	Boleta	PR2467	18.00	3.50	Contado	Pagado	0	Soles	\N	5829.00	1049.22	0.00	6878.22	2024-11-08 13:24:00	2024-11-08 13:24:00
221	26	6	4	4	573	Boleta	PR5968	18.00	3.50	Contado	Pagado	0	Soles	\N	7092.00	1276.56	0.00	8368.56	2024-11-05 14:45:00	2024-11-05 14:45:00
222	7	5	7	1	574	Factura	PR1941	18.00	3.50	Contado	Pagado	0	Soles	\N	9822.00	1767.96	0.00	11589.96	2024-11-25 11:27:00	2024-11-25 11:27:00
223	25	4	4	3	575	Factura	PR4468	18.00	3.50	Contado	Pagado	0	Soles	\N	7486.00	1347.48	0.00	8833.48	2024-11-04 13:14:00	2024-11-04 13:14:00
224	29	4	5	4	576	Factura	PR6012	18.00	3.50	Contado	Pagado	0	Soles	\N	5702.00	1026.36	0.00	6728.36	2024-11-17 09:36:00	2024-11-17 09:36:00
225	40	6	8	3	577	Factura	PR8270	18.00	3.50	Contado	Pagado	0	Soles	\N	8985.00	1617.30	0.00	10602.30	2024-11-29 13:16:00	2024-11-29 13:16:00
226	21	3	11	3	578	Factura	PR6541	18.00	3.50	Contado	Pagado	0	Soles	\N	4523.00	814.14	0.00	5337.14	2024-11-27 13:03:00	2024-11-27 13:03:00
227	18	8	8	4	579	Boleta	PR4832	18.00	3.50	Contado	Pagado	0	Soles	\N	6424.00	1156.32	0.00	7580.32	2024-11-27 12:04:00	2024-11-27 12:04:00
228	10	3	9	1	580	Factura	PR1334	18.00	3.50	Contado	Pagado	0	Soles	\N	5091.00	916.38	0.00	6007.38	2024-11-28 13:52:00	2024-11-28 13:52:00
229	7	9	11	2	581	Factura	PR4005	18.00	3.50	Contado	Pagado	0	Soles	\N	11952.00	2151.36	0.00	14103.36	2024-11-10 14:43:00	2024-11-10 14:43:00
230	12	7	4	5	582	Boleta	PR6782	18.00	3.50	Contado	Pagado	0	Soles	\N	8042.00	1447.56	0.00	9489.56	2024-11-25 15:08:00	2024-11-25 15:08:00
231	4	5	5	1	583	Factura	PR5168	18.00	3.50	Contado	Pagado	0	Soles	\N	5531.00	995.58	0.00	6526.58	2024-11-12 09:19:00	2024-11-12 09:19:00
232	25	3	5	5	584	Boleta	PR5741	18.00	3.50	Contado	Pagado	0	Soles	\N	5096.00	917.28	0.00	6013.28	2024-11-08 14:57:00	2024-11-08 14:57:00
233	4	1	5	1	585	Boleta	PR9505	18.00	3.50	Contado	Pagado	0	Soles	\N	7555.00	1359.90	0.00	8914.90	2024-11-15 16:48:00	2024-11-15 16:48:00
234	34	2	5	2	586	Factura	PR7921	18.00	3.50	Contado	Pagado	0	Soles	\N	2825.00	508.50	0.00	3333.50	2024-11-16 09:26:00	2024-11-16 09:26:00
235	2	1	9	1	587	Factura	PR2498	18.00	3.50	Contado	Pagado	0	Soles	\N	4841.00	871.38	0.00	5712.38	2024-11-06 08:20:00	2024-11-06 08:20:00
236	31	8	10	1	588	Boleta	PR8868	18.00	3.50	Contado	Pagado	0	Soles	\N	9995.00	1799.10	0.00	11794.10	2024-11-09 11:14:00	2024-11-09 11:14:00
237	29	7	2	3	589	Factura	PR2961	18.00	3.50	Contado	Pagado	0	Soles	\N	5656.00	1018.08	0.00	6674.08	2024-11-26 16:13:00	2024-11-26 16:13:00
238	2	8	4	4	590	Factura	PR8502	18.00	3.50	Contado	Pagado	0	Soles	\N	7429.00	1337.22	0.00	8766.22	2024-11-02 14:33:00	2024-11-02 14:33:00
239	6	5	5	4	591	Boleta	PR1079	18.00	3.50	Contado	Pagado	0	Soles	\N	5742.00	1033.56	0.00	6775.56	2024-11-13 11:12:00	2024-11-13 11:12:00
240	32	2	6	5	592	Boleta	PR2868	18.00	3.50	Contado	Pagado	0	Soles	\N	4202.00	756.36	0.00	4958.36	2024-11-02 11:50:00	2024-11-02 11:50:00
241	3	3	4	3	593	Boleta	PR4174	18.00	3.50	Contado	Pagado	0	Soles	\N	9025.00	1624.50	0.00	10649.50	2024-11-08 12:21:00	2024-11-08 12:21:00
242	14	6	3	5	594	Factura	PR7555	18.00	3.50	Contado	Pagado	0	Soles	\N	5576.00	1003.68	0.00	6579.68	2024-11-15 14:23:00	2024-11-15 14:23:00
243	13	2	6	4	595	Factura	PR7001	18.00	3.50	Contado	Pagado	0	Soles	\N	5500.00	990.00	0.00	6490.00	2024-11-20 15:25:00	2024-11-20 15:25:00
244	33	5	8	4	596	Factura	PR4805	18.00	3.50	Contado	Pagado	0	Soles	\N	3577.00	643.86	0.00	4220.86	2024-11-04 16:09:00	2024-11-04 16:09:00
245	35	8	9	1	597	Boleta	PR4527	18.00	3.50	Contado	Pagado	0	Soles	\N	7367.00	1326.06	0.00	8693.06	2024-11-30 16:51:00	2024-11-30 16:51:00
246	6	1	5	2	598	Boleta	PR5905	18.00	3.50	Contado	Pagado	0	Soles	\N	4957.00	892.26	0.00	5849.26	2024-11-02 10:47:00	2024-11-02 10:47:00
247	5	7	13	5	599	Boleta	PR3097	18.00	3.50	Contado	Pagado	0	Soles	\N	7052.00	1269.36	0.00	8321.36	2024-11-11 10:58:00	2024-11-11 10:58:00
248	39	4	5	4	600	Factura	PR7155	18.00	3.50	Contado	Pagado	0	Soles	\N	4663.00	839.34	0.00	5502.34	2024-11-21 13:07:00	2024-11-21 13:07:00
249	28	8	9	1	601	Factura	PR5767	18.00	3.50	Contado	Pagado	0	Soles	\N	9928.00	1787.04	0.00	11715.04	2024-11-06 12:47:00	2024-11-06 12:47:00
250	30	5	6	3	602	Factura	PR3925	18.00	3.50	Contado	Pagado	0	Soles	\N	3679.00	662.22	0.00	4341.22	2024-11-20 15:52:00	2024-11-20 15:52:00
251	2	2	13	3	603	Boleta	PR4530	18.00	3.50	Contado	Pagado	0	Soles	\N	8723.00	1570.14	0.00	10293.14	2024-11-12 14:02:00	2024-11-12 14:02:00
252	40	9	12	4	604	Boleta	PR8839	18.00	3.50	Contado	Pagado	0	Soles	\N	4663.00	839.34	0.00	5502.34	2024-11-24 14:07:00	2024-11-24 14:07:00
253	29	4	3	4	605	Boleta	PR4762	18.00	3.50	Contado	Pagado	0	Soles	\N	2809.00	505.62	0.00	3314.62	2024-11-14 09:20:00	2024-11-14 09:20:00
254	36	3	9	1	606	Boleta	PR8325	18.00	3.50	Contado	Pagado	0	Soles	\N	4767.00	858.06	0.00	5625.06	2024-11-10 16:27:00	2024-11-10 16:27:00
255	10	3	6	1	607	Boleta	PR3217	18.00	3.50	Contado	Pagado	0	Soles	\N	4579.00	824.22	0.00	5403.22	2024-11-06 11:51:00	2024-11-06 11:51:00
256	36	9	11	3	608	Factura	PR1482	18.00	3.50	Contado	Pagado	0	Soles	\N	8611.00	1549.98	0.00	10160.98	2024-11-21 15:34:00	2024-11-21 15:34:00
257	25	1	12	3	609	Factura	PR5583	18.00	3.50	Contado	Pagado	0	Soles	\N	11621.00	2091.78	0.00	13712.78	2024-11-26 16:23:00	2024-11-26 16:23:00
258	32	6	1	3	610	Boleta	PR8546	18.00	3.50	Contado	Pagado	0	Soles	\N	6285.00	1131.30	0.00	7416.30	2024-11-15 10:22:00	2024-11-15 10:22:00
259	16	9	7	4	611	Factura	PR9034	18.00	3.50	Contado	Pagado	0	Soles	\N	6065.00	1091.70	0.00	7156.70	2024-11-24 16:53:00	2024-11-24 16:53:00
260	32	1	5	5	612	Boleta	PR6632	18.00	3.50	Contado	Pagado	0	Soles	\N	9220.00	1659.60	0.00	10879.60	2024-11-28 11:59:00	2024-11-28 11:59:00
261	23	1	3	3	613	Boleta	PR6758	18.00	3.50	Contado	Pagado	0	Soles	\N	10781.00	1940.58	0.00	12721.58	2024-11-07 12:42:00	2024-11-07 12:42:00
262	34	8	5	4	614	Factura	PR9289	18.00	3.50	Contado	Pagado	0	Soles	\N	6515.00	1172.70	0.00	7687.70	2024-11-24 10:02:00	2024-11-24 10:02:00
263	9	8	10	1	615	Factura	PR9341	18.00	3.50	Contado	Pagado	0	Soles	\N	5877.00	1057.86	0.00	6934.86	2024-11-21 08:47:00	2024-11-21 08:47:00
264	3	3	7	4	616	Boleta	PR6742	18.00	3.50	Contado	Pagado	0	Soles	\N	6461.00	1162.98	0.00	7623.98	2024-11-07 12:05:00	2024-11-07 12:05:00
265	17	5	4	3	617	Boleta	PR5490	18.00	3.50	Contado	Pagado	0	Soles	\N	11946.00	2150.28	0.00	14096.28	2024-11-15 12:49:00	2024-11-15 12:49:00
266	33	1	6	4	618	Boleta	PR2830	18.00	3.50	Contado	Pagado	0	Soles	\N	5022.00	903.96	0.00	5925.96	2024-11-14 10:48:00	2024-11-14 10:48:00
267	23	5	1	2	619	Factura	PR9524	18.00	3.50	Contado	Pagado	0	Soles	\N	8171.00	1470.78	0.00	9641.78	2024-11-01 13:01:00	2024-11-01 13:01:00
268	17	3	10	3	620	Boleta	PR9948	18.00	3.50	Contado	Pagado	0	Soles	\N	6286.00	1131.48	0.00	7417.48	2024-11-23 11:28:00	2024-11-23 11:28:00
269	31	2	3	3	621	Boleta	PR6180	18.00	3.50	Contado	Pagado	0	Soles	\N	7301.00	1314.18	0.00	8615.18	2024-11-29 16:44:00	2024-11-29 16:44:00
270	38	4	8	4	622	Factura	PR2369	18.00	3.50	Contado	Pagado	0	Soles	\N	4728.00	851.04	0.00	5579.04	2024-11-27 13:58:00	2024-11-27 13:58:00
271	27	4	10	3	623	Factura	PR8388	18.00	3.50	Contado	Pagado	0	Soles	\N	10754.00	1935.72	0.00	12689.72	2024-11-26 14:55:00	2024-11-26 14:55:00
272	3	4	7	3	624	Factura	PR8644	18.00	3.50	Contado	Pagado	0	Soles	\N	2614.00	470.52	0.00	3084.52	2024-11-09 10:01:00	2024-11-09 10:01:00
273	37	8	11	4	625	Factura	PR6626	18.00	3.50	Contado	Pagado	0	Soles	\N	6576.00	1183.68	0.00	7759.68	2024-11-14 16:33:00	2024-11-14 16:33:00
274	1	8	2	2	626	Factura	PR6638	18.00	3.50	Contado	Pagado	0	Soles	\N	4339.00	781.02	0.00	5120.02	2024-11-05 15:51:00	2024-11-05 15:51:00
275	14	6	7	5	627	Boleta	PR9634	18.00	3.50	Contado	Pagado	0	Soles	\N	4213.00	758.34	0.00	4971.34	2024-11-27 11:52:00	2024-11-27 11:52:00
276	1	9	9	2	628	Boleta	PR1906	18.00	3.50	Contado	Pagado	0	Soles	\N	2919.00	525.42	0.00	3444.42	2024-11-06 16:22:00	2024-11-06 16:22:00
277	40	8	11	1	629	Boleta	PR2368	18.00	3.50	Contado	Pagado	0	Soles	\N	3653.00	657.54	0.00	4310.54	2024-11-06 12:56:00	2024-11-06 12:56:00
278	8	4	1	4	630	Boleta	PR2509	18.00	3.50	Contado	Pagado	0	Soles	\N	6502.00	1170.36	0.00	7672.36	2024-11-18 13:27:00	2024-11-18 13:27:00
279	39	1	1	3	631	Factura	PR1506	18.00	3.50	Contado	Pagado	0	Soles	\N	3855.00	693.90	0.00	4548.90	2024-11-19 11:23:00	2024-11-19 11:23:00
280	21	5	10	1	632	Factura	PR5625	18.00	3.50	Contado	Pagado	0	Soles	\N	6106.00	1099.08	0.00	7205.08	2024-11-17 11:09:00	2024-11-17 11:09:00
281	26	6	2	2	633	Boleta	PR7484	18.00	3.50	Contado	Pagado	0	Soles	\N	4309.00	775.62	0.00	5084.62	2024-11-17 15:49:00	2024-11-17 15:49:00
282	33	9	11	5	634	Boleta	PR1265	18.00	3.50	Contado	Pagado	0	Soles	\N	2314.00	416.52	0.00	2730.52	2024-11-09 16:42:00	2024-11-09 16:42:00
283	38	6	2	1	635	Boleta	PR9442	18.00	3.50	Contado	Pagado	0	Soles	\N	7483.00	1346.94	0.00	8829.94	2024-11-23 16:30:00	2024-11-23 16:30:00
284	34	2	11	5	636	Boleta	PR8161	18.00	3.50	Contado	Pagado	0	Soles	\N	4382.00	788.76	0.00	5170.76	2024-11-05 10:10:00	2024-11-05 10:10:00
285	4	2	11	2	637	Boleta	PR6342	18.00	3.50	Contado	Pagado	0	Soles	\N	7600.00	1368.00	0.00	8968.00	2024-11-12 16:30:00	2024-11-12 16:30:00
286	8	8	10	1	638	Factura	PR4239	18.00	3.50	Contado	Pagado	0	Soles	\N	5600.00	1008.00	0.00	6608.00	2024-11-02 08:48:00	2024-11-02 08:48:00
287	33	1	3	3	639	Factura	PR2514	18.00	3.50	Contado	Pagado	0	Soles	\N	8133.00	1463.94	0.00	9596.94	2024-11-07 08:03:00	2024-11-07 08:03:00
288	22	3	8	2	640	Factura	PR6316	18.00	3.50	Contado	Pagado	0	Soles	\N	5540.00	997.20	0.00	6537.20	2024-11-12 14:18:00	2024-11-12 14:18:00
289	28	7	1	3	641	Boleta	PR3475	18.00	3.50	Contado	Pagado	0	Soles	\N	3898.00	701.64	0.00	4599.64	2024-11-16 14:42:00	2024-11-16 14:42:00
290	6	6	2	1	642	Factura	PR1924	18.00	3.50	Contado	Pagado	0	Soles	\N	5331.00	959.58	0.00	6290.58	2024-11-21 10:17:00	2024-11-21 10:17:00
291	13	3	2	2	643	Boleta	PR1567	18.00	3.50	Contado	Pagado	0	Soles	\N	4917.00	885.06	0.00	5802.06	2024-11-01 11:53:00	2024-11-01 11:53:00
292	39	7	2	3	644	Factura	PR4525	18.00	3.50	Contado	Pagado	0	Soles	\N	8338.00	1500.84	0.00	9838.84	2024-11-18 16:54:00	2024-11-18 16:54:00
293	34	5	12	3	645	Boleta	PR8378	18.00	3.50	Contado	Pagado	0	Soles	\N	4653.00	837.54	0.00	5490.54	2024-11-14 15:27:00	2024-11-14 15:27:00
294	11	1	13	4	646	Factura	PR3947	18.00	3.50	Contado	Pagado	0	Soles	\N	4023.00	724.14	0.00	4747.14	2024-11-23 11:42:00	2024-11-23 11:42:00
\.


--
-- Data for Name: sellers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sellers (id, name, document_number, address, phone, ubigeo_id, created_at, updated_at) FROM stdin;
1	Miguel Honorio Puyol	74759621	Jr. Tacna 143, Chepen	951414223	3817	\N	\N
2	Jos├® Luis Quispe	74859632	Av. Los H├®roes 456, Trujillo	951678123	3789	\N	\N
3	Ana Mar├¡a Flores	75841236	Jr. Independencia 321, Chiclayo	981456789	3885	\N	\N
4	Juan Carlos P├®rez	76812345	Calle Los Robles 789, Piura	911234567	4236	\N	\N
5	Mar├¡a del Carmen Rojas	77451236	Jr. Las Gardenias 654, Arequipa	921345678	2900	\N	\N
6	Luis Alberto Huam├ín	78459621	Av. Am├®rica Sur 567, Cusco	931456789	3292	\N	\N
7	Diana Katherine Vargas	79481236	Jr. La Merced 123, Cajamarca	941234567	3143	\N	\N
8	Pedro Mart├¡n S├ínchez	70451236	Av. Los Olivos 876, Hu├ínuco	951456789	3518	\N	\N
9	Rosa Elizabeth Guti├®rrez	71485692	Jr. Ayacucho 654, Cusco	961234567	3292	\N	\N
10	Jorge Antonio Castillo	72459836	Calle Los Pinos 432, Tarapoto	971456789	4499	\N	\N
11	Carla Vanessa Chac├│n	73412958	Av. Aviaci├│n 345, Lima	981234567	3926	\N	\N
12	Miguel ├üngel Vilca	74456821	Jr. Los Nogales 234, Huancayo	991456789	3656	\N	\N
13	Luc├¡a Fernanda Yupanqui	75412368	Av. Larco 654, Trujillo	901234567	3789	\N	\N
\.


--
-- Data for Name: sessions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.sessions (id, user_id, ip_address, user_agent, payload, last_activity) FROM stdin;
r5OgrwTnizsbIuX78mkogFxQtyaz0OFvUx9Z2BOK	1	127.0.0.1	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36	YTo4OntzOjY6Il90b2tlbiI7czo0MDoiM3ZOWXpLOGNKQ2FrOGdDZFVQWjdEcExSbjdob1U4Mnh5REJ4NHk0cSI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjI3OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkMTVCS1NURE9RLmZmVFhvY1pGTGFGZUFWQ2ptaVNCNlQ3dHJwL09uakhMTUcyYjVIYTZpVkciO3M6NjoidGFibGVzIjthOjI6e3M6Mjk6Ikxpc3RQdXJjaGFzZXNfdG9nZ2xlZF9jb2x1bW5zIjthOjI6e3M6MTA6ImNyZWF0ZWRfYXQiO2I6MTtzOjEwOiJ1cGRhdGVkX2F0IjtiOjA7fXM6MjU6Ikxpc3RTYWxlc190b2dnbGVkX2NvbHVtbnMiO2E6Mjp7czoxMDoiY3JlYXRlZF9hdCI7YjoxO3M6MTA6InVwZGF0ZWRfYXQiO2I6MDt9fXM6MTc6IkRhc2hib2FyZF9maWx0ZXJzIjtOO30=	1734309385
\.


--
-- Data for Name: suppliers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.suppliers (id, company_name, type_document, document_number, address, phone, ubigeo_id, created_at, updated_at) FROM stdin;
1	Comercializadora El Sol S.A.C.	RUC	20145678912	Av. Los Pr├│ceres 456, Trujillo	987654321	3789	\N	\N
2	Distribuidora Per├║ EIRL	RUC	20158794321	Jr. Independencia 321, Chiclayo	956741852	3885	\N	\N
3	Agroinsumos del Norte S.A.C.	RUC	20123456789	Calle Los Olivos 789, Piura	923654789	4236	\N	\N
4	Inversiones y Servicios Andinos S.R.L.	RUC	20459876321	Av. La Marina 654, Arequipa	912345678	2900	\N	\N
5	Maquinaria del Sur S.A.C.	RUC	20598765432	Av. Am├®rica Sur 567, Cusco	965478123	3292	\N	\N
6	Proveedora Industrial del Centro S.R.L.	RUC	20347895621	Av. La Merced 123, Cajamarca	974561238	3143	\N	\N
7	Distribuciones Globales EIRL	RUC	20654321789	Av. Los Olivos 876, Hu├ínuco	986745123	3518	\N	\N
8	Transportes del Pac├¡fico S.A.C.	RUC	20765438912	Jr. Tacna 143, Chep├®n	977654321	3817	\N	\N
9	Almacenes y Dep├│sitos del Norte S.A.C.	RUC	20876543219	Av. Los Cedros 432, Tarapoto	934567812	4499	\N	\N
10	Importadora Global S.A.	RUC	20987654321	Av. Aviaci├│n 345, Lima	921347856	3292	\N	\N
11	Industrias Alimenticias Los Andes S.A.C.	RUC	20111234567	Jr. Los Nogales 234, Huancayo	914785632	3656	\N	\N
12	F├íbrica de Envases del Sur EIRL	RUC	20233456789	Av. Larco 654, Trujillo	998765412	3789	\N	\N
13	Servicios Log├¡sticos Integrales S.A.	RUC	20355678912	Av. Grau 890, Piura	945672813	4236	\N	\N
14	Comercializadora Mixtura S.A.C.	RUC	20467891234	Calle Principal 345, Arequipa	965487123	2900	\N	\N
15	Insumos Agr├¡colas del Sur EIRL	RUC	20578912345	Av. Del Agricultor 876, Cusco	921478536	3292	\N	\N
16	Exportadora de Frutas Andinas S.A.C.	RUC	20689123456	Av. La Explanada 123, Cajamarca	987562341	3143	\N	\N
17	Proveedores Mineros del Per├║ S.R.L.	RUC	20791234567	Av. Miner├¡a 567, Puno	953761248	4309	\N	\N
18	Agroexportaciones del Norte S.A.C.	RUC	20813456789	Jr. Exportaci├│n 678, Tarapoto	976543218	4499	\N	\N
19	Equipos y Herramientas Industriales EIRL	RUC	20915678901	Av. El Comercio 321, Lima	961235874	3926	\N	\N
20	Distribuidora de Abarrotes S.A.C.	RUC	20816789432	Av. La Cultura 789, Cusco	918274563	3292	\N	\N
\.


--
-- Data for Name: taking_times; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.taking_times (id, type_document, initial_date, final_date, time_in_seconds) FROM stdin;
1	Compra	2024-09-06 10:50:08	2024-09-06 10:52:00	112
2	Compra	2024-09-14 11:44:48	2024-09-14 11:48:00	192
3	Compra	2024-09-13 15:56:16	2024-09-13 15:58:00	104
4	Compra	2024-09-27 08:33:29	2024-09-27 08:36:00	151
5	Compra	2024-09-11 14:20:34	2024-09-11 14:23:00	146
6	Compra	2024-09-09 14:38:03	2024-09-09 14:41:00	177
7	Compra	2024-09-14 14:38:21	2024-09-14 14:41:00	159
8	Compra	2024-09-18 12:20:18	2024-09-18 12:22:00	102
9	Compra	2024-09-30 09:51:27	2024-09-30 09:55:00	213
10	Compra	2024-09-10 08:57:45	2024-09-10 09:01:00	195
11	Compra	2024-09-07 15:25:47	2024-09-07 15:28:00	133
12	Compra	2024-09-24 15:00:18	2024-09-24 15:02:00	102
13	Compra	2024-09-07 14:26:53	2024-09-07 14:30:00	187
14	Compra	2024-09-13 13:34:09	2024-09-13 13:37:00	171
15	Compra	2024-09-20 09:33:50	2024-09-20 09:36:00	130
16	Compra	2024-09-09 15:22:36	2024-09-09 15:25:00	144
17	Compra	2024-09-22 10:08:55	2024-09-22 10:11:00	125
18	Compra	2024-09-05 14:26:25	2024-09-05 14:29:00	155
19	Compra	2024-09-13 12:22:17	2024-09-13 12:24:00	103
20	Compra	2024-09-04 09:36:31	2024-09-04 09:40:00	209
21	Compra	2024-09-16 10:29:53	2024-09-16 10:33:00	187
22	Compra	2024-09-21 15:47:22	2024-09-21 15:49:00	98
23	Compra	2024-09-25 15:49:26	2024-09-25 15:52:00	154
24	Compra	2024-09-02 12:48:01	2024-09-02 12:50:00	119
25	Compra	2024-09-29 14:52:27	2024-09-29 14:56:00	213
26	Compra	2024-09-18 10:54:24	2024-09-18 10:56:00	96
27	Compra	2024-09-27 08:54:40	2024-09-27 08:58:00	200
28	Compra	2024-09-25 13:20:01	2024-09-25 13:22:00	119
29	Compra	2024-09-03 10:16:04	2024-09-03 10:18:00	116
30	Compra	2024-09-02 13:38:39	2024-09-02 13:42:00	201
31	Compra	2024-09-21 11:03:48	2024-09-21 11:06:00	132
32	Compra	2024-09-18 16:01:31	2024-09-18 16:05:00	209
33	Compra	2024-09-05 13:35:50	2024-09-05 13:39:00	190
34	Compra	2024-09-11 10:30:58	2024-09-11 10:33:00	122
35	Compra	2024-09-10 08:16:24	2024-09-10 08:19:00	156
36	Compra	2024-09-08 16:49:41	2024-09-08 16:53:00	199
37	Compra	2024-09-17 10:22:15	2024-09-17 10:24:00	105
38	Compra	2024-09-21 16:12:40	2024-09-21 16:16:00	200
39	Compra	2024-09-09 09:12:09	2024-09-09 09:15:00	171
40	Compra	2024-09-20 16:18:39	2024-09-20 16:22:00	201
41	Compra	2024-09-28 10:50:56	2024-09-28 10:54:00	184
42	Compra	2024-09-02 13:11:00	2024-09-02 13:13:00	120
43	Compra	2024-09-14 10:14:09	2024-09-14 10:16:00	111
44	Compra	2024-09-15 09:08:06	2024-09-15 09:11:00	174
45	Compra	2024-09-10 08:54:51	2024-09-10 08:58:00	189
46	Compra	2024-09-02 13:19:14	2024-09-02 13:22:00	166
47	Compra	2024-09-22 15:51:15	2024-09-22 15:53:00	105
48	Compra	2024-09-16 10:40:44	2024-09-16 10:43:00	136
49	Compra	2024-09-02 15:42:56	2024-09-02 15:46:00	184
50	Compra	2024-09-18 08:52:26	2024-09-18 08:55:00	154
51	Compra	2024-09-23 09:48:19	2024-09-23 09:50:00	101
52	Compra	2024-09-11 13:23:54	2024-09-11 13:27:00	186
53	Compra	2024-09-10 10:15:49	2024-09-10 10:18:00	131
54	Compra	2024-09-01 14:57:41	2024-09-01 15:00:00	139
55	Compra	2024-09-13 16:46:16	2024-09-13 16:49:00	164
56	Compra	2024-09-16 11:43:25	2024-09-16 11:47:00	215
57	Compra	2024-09-20 16:42:02	2024-09-20 16:45:00	178
58	Compra	2024-09-17 14:43:33	2024-09-17 14:47:00	207
59	Compra	2024-09-19 10:56:52	2024-09-19 10:59:00	128
60	Compra	2024-09-14 09:16:55	2024-09-14 09:20:00	185
61	Compra	2024-09-03 10:18:32	2024-09-03 10:21:00	148
62	Compra	2024-09-10 13:44:37	2024-09-10 13:47:00	143
63	Compra	2024-09-24 16:02:20	2024-09-24 16:04:00	100
64	Compra	2024-09-04 16:05:56	2024-09-04 16:08:00	124
65	Compra	2024-09-27 10:09:25	2024-09-27 10:12:00	155
66	Compra	2024-09-15 10:02:06	2024-09-15 10:05:00	174
67	Compra	2024-09-04 13:29:06	2024-09-04 13:31:00	114
68	Compra	2024-09-18 14:59:59	2024-09-18 15:03:00	181
69	Compra	2024-09-02 13:06:12	2024-09-02 13:08:00	108
70	Compra	2024-09-08 11:59:45	2024-09-08 12:03:00	195
71	Compra	2024-09-01 09:15:01	2024-09-01 09:17:00	119
72	Compra	2024-09-18 11:14:01	2024-09-18 11:17:00	179
73	Compra	2024-09-23 10:57:37	2024-09-23 11:00:00	143
74	Compra	2024-09-14 10:54:53	2024-09-14 10:58:00	187
75	Compra	2024-09-25 10:19:23	2024-09-25 10:22:00	157
76	Compra	2024-09-29 16:06:29	2024-09-29 16:10:00	211
77	Compra	2024-09-29 14:51:49	2024-09-29 14:55:00	191
78	Compra	2024-09-08 13:13:54	2024-09-08 13:16:00	126
79	Compra	2024-09-03 08:42:04	2024-09-03 08:45:00	176
80	Compra	2024-09-24 13:45:05	2024-09-24 13:48:00	175
81	Compra	2024-09-01 09:00:42	2024-09-01 09:04:00	198
82	Compra	2024-09-26 13:12:26	2024-09-26 13:16:00	214
83	Compra	2024-09-21 16:48:27	2024-09-21 16:52:00	213
84	Compra	2024-09-04 16:14:07	2024-09-04 16:17:00	173
85	Compra	2024-09-13 16:22:44	2024-09-13 16:26:00	196
86	Compra	2024-09-25 10:30:31	2024-09-25 10:34:00	209
87	Compra	2024-09-03 12:24:17	2024-09-03 12:26:00	103
88	Compra	2024-09-06 14:59:46	2024-09-06 15:03:00	194
89	Compra	2024-09-12 16:53:33	2024-09-12 16:56:00	147
90	Compra	2024-09-09 10:52:14	2024-09-09 10:54:00	106
91	Compra	2024-09-29 11:35:16	2024-09-29 11:38:00	164
92	Compra	2024-09-12 11:18:10	2024-09-12 11:21:00	170
93	Compra	2024-09-23 09:49:41	2024-09-23 09:53:00	199
94	Compra	2024-09-08 11:39:19	2024-09-08 11:42:00	161
95	Compra	2024-10-02 10:01:19	2024-10-02 10:04:00	161
96	Compra	2024-10-06 12:51:05	2024-10-06 12:54:00	175
97	Compra	2024-10-29 13:29:51	2024-10-29 13:32:00	129
98	Compra	2024-10-24 11:48:19	2024-10-24 11:51:00	161
99	Compra	2024-10-24 11:04:11	2024-10-24 11:07:00	169
100	Compra	2024-10-02 11:13:44	2024-10-02 11:17:00	196
101	Compra	2024-10-11 12:47:41	2024-10-11 12:51:00	199
102	Compra	2024-10-13 07:58:29	2024-10-13 08:01:00	151
103	Compra	2024-10-29 12:08:46	2024-10-29 12:12:00	194
104	Compra	2024-10-04 11:20:12	2024-10-04 11:23:00	168
105	Compra	2024-10-17 09:40:17	2024-10-17 09:42:00	103
106	Compra	2024-10-11 10:15:13	2024-10-11 10:17:00	107
107	Compra	2024-10-16 12:17:21	2024-10-16 12:20:00	159
108	Compra	2024-10-17 14:39:29	2024-10-17 14:43:00	211
109	Compra	2024-10-20 13:15:20	2024-10-20 13:18:00	160
110	Compra	2024-10-30 14:22:59	2024-10-30 14:26:00	181
111	Compra	2024-10-28 08:16:48	2024-10-28 08:20:00	192
112	Compra	2024-10-09 15:33:30	2024-10-09 15:37:00	210
113	Compra	2024-10-21 16:06:29	2024-10-21 16:10:00	211
114	Compra	2024-10-07 11:57:44	2024-10-07 12:01:00	196
115	Compra	2024-10-08 13:50:57	2024-10-08 13:53:00	123
116	Compra	2024-10-20 16:26:52	2024-10-20 16:30:00	188
117	Compra	2024-10-20 16:13:22	2024-10-20 16:16:00	158
118	Compra	2024-10-23 11:52:31	2024-10-23 11:55:00	149
119	Compra	2024-10-26 13:17:26	2024-10-26 13:21:00	214
120	Compra	2024-10-22 08:29:49	2024-10-22 08:32:00	131
121	Compra	2024-10-25 12:38:01	2024-10-25 12:41:00	179
122	Compra	2024-10-17 09:41:40	2024-10-17 09:45:00	200
123	Compra	2024-10-26 14:24:07	2024-10-26 14:26:00	113
124	Compra	2024-10-08 13:11:23	2024-10-08 13:14:00	157
125	Compra	2024-10-16 14:52:24	2024-10-16 14:54:00	96
126	Compra	2024-10-08 16:35:39	2024-10-08 16:38:00	141
127	Compra	2024-10-05 08:27:16	2024-10-05 08:29:00	104
128	Compra	2024-10-09 14:02:14	2024-10-09 14:05:00	166
129	Compra	2024-10-21 08:21:46	2024-10-21 08:25:00	194
130	Compra	2024-10-18 16:51:23	2024-10-18 16:54:00	157
131	Compra	2024-10-14 16:43:41	2024-10-14 16:47:00	199
132	Compra	2024-10-24 16:03:18	2024-10-24 16:06:00	162
133	Compra	2024-10-19 14:21:40	2024-10-19 14:24:00	140
134	Compra	2024-10-26 16:12:46	2024-10-26 16:15:00	134
135	Compra	2024-10-22 14:33:08	2024-10-22 14:36:00	172
136	Compra	2024-10-13 12:42:49	2024-10-13 12:45:00	131
137	Compra	2024-10-24 16:16:05	2024-10-24 16:18:00	115
138	Compra	2024-10-26 16:19:18	2024-10-26 16:21:00	102
139	Compra	2024-10-08 11:27:50	2024-10-08 11:31:00	190
140	Compra	2024-10-28 13:02:54	2024-10-28 13:05:00	126
141	Compra	2024-10-23 15:37:24	2024-10-23 15:39:00	96
142	Compra	2024-10-24 12:21:20	2024-10-24 12:23:00	100
143	Compra	2024-10-13 10:07:53	2024-10-13 10:10:00	127
144	Compra	2024-10-16 12:24:14	2024-10-16 12:27:00	166
145	Compra	2024-10-13 14:58:06	2024-10-13 15:00:00	114
146	Compra	2024-10-11 13:58:22	2024-10-11 14:00:00	98
147	Compra	2024-10-17 09:36:25	2024-10-17 09:39:00	155
148	Compra	2024-10-11 13:31:01	2024-10-11 13:34:00	179
149	Compra	2024-10-05 09:54:36	2024-10-05 09:57:00	144
150	Compra	2024-10-05 15:45:05	2024-10-05 15:47:00	115
151	Compra	2024-10-23 08:24:06	2024-10-23 08:26:00	114
152	Compra	2024-10-22 09:53:12	2024-10-22 09:56:00	168
153	Compra	2024-10-22 10:03:04	2024-10-22 10:05:00	116
154	Compra	2024-10-25 09:20:18	2024-10-25 09:23:00	162
155	Compra	2024-10-23 09:34:01	2024-10-23 09:37:00	179
156	Compra	2024-10-26 09:42:01	2024-10-26 09:45:00	179
157	Compra	2024-10-22 08:18:39	2024-10-22 08:21:00	141
158	Compra	2024-10-26 08:58:45	2024-10-26 09:02:00	195
159	Compra	2024-10-13 14:16:30	2024-10-13 14:20:00	210
160	Compra	2024-10-01 08:32:03	2024-10-01 08:35:00	177
161	Compra	2024-10-10 11:29:32	2024-10-10 11:32:00	148
162	Compra	2024-10-13 13:43:41	2024-10-13 13:46:00	139
163	Compra	2024-10-20 15:49:28	2024-10-20 15:52:00	152
164	Compra	2024-10-04 13:15:18	2024-10-04 13:17:00	102
165	Compra	2024-10-25 14:38:58	2024-10-25 14:41:00	122
166	Compra	2024-10-27 12:55:53	2024-10-27 12:59:00	187
167	Compra	2024-10-23 11:19:20	2024-10-23 11:21:00	100
168	Compra	2024-10-28 08:51:19	2024-10-28 08:53:00	101
169	Compra	2024-10-29 13:54:05	2024-10-29 13:57:00	175
170	Compra	2024-10-10 10:47:29	2024-10-10 10:51:00	211
171	Compra	2024-10-05 14:59:38	2024-10-05 15:02:00	142
172	Compra	2024-10-11 15:37:23	2024-10-11 15:39:00	97
173	Compra	2024-10-05 11:51:13	2024-10-05 11:53:00	107
174	Compra	2024-10-11 16:13:02	2024-10-11 16:15:00	118
175	Compra	2024-10-01 08:24:40	2024-10-01 08:27:00	140
176	Compra	2024-10-30 12:15:06	2024-10-30 12:18:00	174
177	Compra	2024-10-05 09:15:49	2024-10-05 09:18:00	131
178	Compra	2024-10-13 10:24:03	2024-10-13 10:26:00	117
179	Compra	2024-10-03 10:30:19	2024-10-03 10:32:00	101
180	Compra	2024-10-18 11:30:52	2024-10-18 11:33:00	128
181	Compra	2024-10-26 08:08:28	2024-10-26 08:11:00	152
182	Compra	2024-10-08 10:04:40	2024-10-08 10:07:00	140
183	Compra	2024-10-01 13:34:12	2024-10-01 13:36:00	108
184	Compra	2024-10-10 11:28:40	2024-10-10 11:31:00	140
185	Compra	2024-10-17 16:07:44	2024-10-17 16:11:00	196
186	Compra	2024-10-26 09:38:46	2024-10-26 09:42:00	194
187	Compra	2024-10-05 15:43:22	2024-10-05 15:45:00	98
188	Compra	2024-10-30 08:42:10	2024-10-30 08:45:00	170
189	Compra	2024-11-24 08:55:37	2024-11-24 08:59:00	203
190	Compra	2024-11-01 16:45:34	2024-11-01 16:48:00	146
191	Compra	2024-11-02 10:57:47	2024-11-02 11:00:00	133
192	Compra	2024-11-27 15:42:15	2024-11-27 15:45:00	165
193	Compra	2024-11-18 11:00:00	2024-11-18 11:03:00	180
194	Compra	2024-11-20 16:07:48	2024-11-20 16:10:00	132
195	Compra	2024-11-29 14:19:41	2024-11-29 14:23:00	199
196	Compra	2024-11-27 12:55:13	2024-11-27 12:57:00	107
197	Compra	2024-11-30 15:44:38	2024-11-30 15:47:00	142
198	Compra	2024-11-12 10:31:09	2024-11-12 10:34:00	171
199	Compra	2024-11-15 09:11:24	2024-11-15 09:13:00	96
200	Compra	2024-11-22 14:41:34	2024-11-22 14:45:00	206
201	Compra	2024-11-05 13:55:10	2024-11-05 13:57:00	110
202	Compra	2024-11-24 11:00:56	2024-11-24 11:04:00	184
203	Compra	2024-11-26 15:56:04	2024-11-26 15:59:00	176
204	Compra	2024-11-12 10:23:21	2024-11-12 10:25:00	99
205	Compra	2024-11-14 11:53:22	2024-11-14 11:55:00	98
206	Compra	2024-11-19 10:57:46	2024-11-19 11:00:00	134
207	Compra	2024-11-11 10:22:24	2024-11-11 10:25:00	156
208	Compra	2024-11-06 08:29:05	2024-11-06 08:31:00	115
209	Compra	2024-11-26 10:02:19	2024-11-26 10:05:00	161
210	Compra	2024-11-29 09:40:12	2024-11-29 09:43:00	168
211	Compra	2024-11-04 08:57:03	2024-11-04 08:59:00	117
212	Compra	2024-11-24 16:54:41	2024-11-24 16:57:00	139
213	Compra	2024-11-14 09:42:46	2024-11-14 09:46:00	194
214	Compra	2024-11-29 13:41:11	2024-11-29 13:44:00	169
215	Compra	2024-11-25 16:43:19	2024-11-25 16:45:00	101
216	Compra	2024-11-19 16:23:58	2024-11-19 16:27:00	182
217	Compra	2024-11-21 13:31:01	2024-11-21 13:33:00	119
218	Compra	2024-11-08 10:27:41	2024-11-08 10:31:00	199
219	Compra	2024-11-24 08:49:12	2024-11-24 08:51:00	108
220	Compra	2024-11-07 09:20:28	2024-11-07 09:23:00	152
221	Compra	2024-11-24 12:23:25	2024-11-24 12:26:00	155
222	Compra	2024-11-15 08:10:15	2024-11-15 08:13:00	165
223	Compra	2024-11-12 14:51:18	2024-11-12 14:53:00	102
224	Compra	2024-11-08 13:32:17	2024-11-08 13:34:00	103
225	Compra	2024-11-12 08:53:44	2024-11-12 08:56:00	136
226	Compra	2024-11-06 14:12:49	2024-11-06 14:15:00	131
227	Compra	2024-11-25 09:55:49	2024-11-25 09:58:00	131
228	Compra	2024-11-17 11:31:14	2024-11-17 11:34:00	166
229	Compra	2024-11-01 08:56:34	2024-11-01 08:59:00	146
230	Compra	2024-11-16 11:38:14	2024-11-16 11:40:00	106
231	Compra	2024-11-06 14:41:53	2024-11-06 14:45:00	187
232	Compra	2024-11-25 10:15:08	2024-11-25 10:18:00	172
233	Compra	2024-11-24 12:39:29	2024-11-24 12:42:00	151
234	Compra	2024-11-27 14:31:54	2024-11-27 14:35:00	186
235	Compra	2024-11-27 14:43:53	2024-11-27 14:46:00	127
236	Compra	2024-11-11 12:24:42	2024-11-11 12:27:00	138
237	Compra	2024-11-12 16:18:22	2024-11-12 16:20:00	98
238	Compra	2024-11-17 11:23:40	2024-11-17 11:26:00	140
239	Compra	2024-11-07 16:42:28	2024-11-07 16:45:00	152
240	Compra	2024-11-17 10:41:06	2024-11-17 10:43:00	114
241	Compra	2024-11-18 11:51:42	2024-11-18 11:55:00	198
242	Compra	2024-11-26 15:45:05	2024-11-26 15:48:00	175
243	Compra	2024-11-13 10:24:15	2024-11-13 10:27:00	165
244	Compra	2024-11-19 08:01:19	2024-11-19 08:04:00	161
245	Compra	2024-11-11 08:21:50	2024-11-11 08:25:00	190
246	Compra	2024-11-15 08:56:01	2024-11-15 08:59:00	179
247	Compra	2024-11-25 14:33:44	2024-11-25 14:36:00	136
248	Compra	2024-11-10 11:29:27	2024-11-10 11:32:00	153
249	Compra	2024-11-28 12:46:58	2024-11-28 12:49:00	122
250	Compra	2024-11-26 12:11:57	2024-11-26 12:14:00	123
251	Compra	2024-11-23 16:14:02	2024-11-23 16:16:00	118
252	Compra	2024-11-16 15:34:46	2024-11-16 15:37:00	134
253	Compra	2024-11-27 12:41:44	2024-11-27 12:45:00	196
254	Compra	2024-11-30 14:39:32	2024-11-30 14:42:00	148
255	Compra	2024-11-02 08:54:33	2024-11-02 08:58:00	207
256	Compra	2024-11-19 13:45:29	2024-11-19 13:48:00	151
257	Compra	2024-11-19 13:07:42	2024-11-19 13:11:00	198
258	Compra	2024-11-22 10:29:41	2024-11-22 10:33:00	199
259	Compra	2024-11-14 12:33:48	2024-11-14 12:37:00	192
260	Compra	2024-11-12 15:43:11	2024-11-12 15:46:00	169
261	Compra	2024-11-09 13:55:38	2024-11-09 13:59:00	202
262	Compra	2024-11-25 10:23:49	2024-11-25 10:26:00	131
263	Compra	2024-11-23 15:35:43	2024-11-23 15:39:00	197
264	Compra	2024-11-20 08:54:34	2024-11-20 08:58:00	206
265	Compra	2024-11-22 10:34:12	2024-11-22 10:36:00	108
266	Compra	2024-11-14 07:59:14	2024-11-14 08:02:00	166
267	Compra	2024-11-12 15:06:04	2024-11-12 15:08:00	116
268	Compra	2024-11-24 08:42:07	2024-11-24 08:45:00	173
269	Compra	2024-11-30 15:15:51	2024-11-30 15:19:00	189
270	Compra	2024-11-21 11:06:34	2024-11-21 11:10:00	206
271	Compra	2024-11-22 12:55:22	2024-11-22 12:57:00	98
272	Compra	2024-11-01 15:07:27	2024-11-01 15:10:00	153
273	Compra	2024-11-19 10:26:58	2024-11-19 10:30:00	182
274	Compra	2024-11-20 12:26:35	2024-11-20 12:29:00	145
275	Compra	2024-11-15 11:02:37	2024-11-15 11:05:00	143
276	Compra	2024-11-26 12:38:46	2024-11-26 12:42:00	194
277	Compra	2024-11-26 13:41:58	2024-11-26 13:44:00	122
278	Compra	2024-11-19 14:05:59	2024-11-19 14:08:00	121
279	Compra	2024-11-17 15:09:52	2024-11-17 15:12:00	128
280	Compra	2024-11-24 12:01:29	2024-11-24 12:04:00	151
281	Compra	2024-11-04 12:20:38	2024-11-04 12:24:00	202
282	Compra	2024-11-22 09:16:19	2024-11-22 09:19:00	161
283	Venta	2024-09-15 12:10:08	2024-09-15 12:13:00	172
284	Venta	2024-09-18 13:10:02	2024-09-18 13:15:00	298
285	Venta	2024-09-30 15:43:08	2024-09-30 15:47:00	232
286	Venta	2024-09-16 08:20:04	2024-09-16 08:25:00	296
287	Venta	2024-09-15 12:53:46	2024-09-15 12:58:00	254
288	Venta	2024-09-01 08:49:20	2024-09-01 08:53:00	220
289	Venta	2024-09-05 13:10:37	2024-09-05 13:14:00	203
290	Venta	2024-09-23 14:39:07	2024-09-23 14:42:00	173
291	Venta	2024-09-02 14:24:17	2024-09-02 14:29:00	283
292	Venta	2024-09-05 14:04:57	2024-09-05 14:07:00	123
293	Venta	2024-09-29 15:40:22	2024-09-29 15:44:00	218
294	Venta	2024-09-07 13:53:31	2024-09-07 13:58:00	269
295	Venta	2024-09-01 14:00:03	2024-09-01 14:05:00	297
296	Venta	2024-09-12 11:11:47	2024-09-12 11:15:00	193
297	Venta	2024-09-17 08:02:14	2024-09-17 08:06:00	226
298	Venta	2024-09-15 11:38:45	2024-09-15 11:42:00	195
299	Venta	2024-09-08 14:05:44	2024-09-08 14:09:00	196
300	Venta	2024-09-07 13:10:27	2024-09-07 13:14:00	213
301	Venta	2024-09-27 16:18:56	2024-09-27 16:21:00	124
302	Venta	2024-09-24 12:10:26	2024-09-24 12:14:00	214
303	Venta	2024-09-25 09:24:09	2024-09-25 09:29:00	291
304	Venta	2024-09-01 14:47:54	2024-09-01 14:50:00	126
305	Venta	2024-09-27 16:54:30	2024-09-27 16:57:00	150
306	Venta	2024-09-10 16:47:25	2024-09-10 16:52:00	275
307	Venta	2024-09-26 09:39:32	2024-09-26 09:44:00	268
308	Venta	2024-09-06 16:51:08	2024-09-06 16:54:00	172
309	Venta	2024-09-07 09:25:21	2024-09-07 09:29:00	219
310	Venta	2024-09-25 08:21:44	2024-09-25 08:26:00	256
311	Venta	2024-09-10 13:33:30	2024-09-10 13:38:00	270
312	Venta	2024-09-21 11:32:59	2024-09-21 11:35:00	121
313	Venta	2024-09-26 16:20:38	2024-09-26 16:25:00	262
314	Venta	2024-09-12 13:43:02	2024-09-12 13:48:00	298
315	Venta	2024-09-29 10:38:41	2024-09-29 10:42:00	199
316	Venta	2024-09-08 13:30:04	2024-09-08 13:33:00	176
317	Venta	2024-09-06 11:06:23	2024-09-06 11:11:00	277
318	Venta	2024-09-02 13:52:52	2024-09-02 13:55:00	128
319	Venta	2024-09-29 11:52:00	2024-09-29 11:56:00	240
320	Venta	2024-09-13 11:58:58	2024-09-13 12:01:00	122
321	Venta	2024-09-27 13:30:46	2024-09-27 13:35:00	254
322	Venta	2024-09-17 12:24:27	2024-09-17 12:29:00	273
323	Venta	2024-09-25 14:39:07	2024-09-25 14:44:00	293
324	Venta	2024-09-25 12:39:03	2024-09-25 12:41:00	117
325	Venta	2024-09-02 14:50:05	2024-09-02 14:53:00	175
326	Venta	2024-09-14 12:54:58	2024-09-14 12:57:00	122
327	Venta	2024-09-27 16:31:05	2024-09-27 16:35:00	235
328	Venta	2024-09-21 08:26:29	2024-09-21 08:29:00	151
329	Venta	2024-09-06 14:59:59	2024-09-06 15:02:00	121
330	Venta	2024-09-12 15:46:09	2024-09-12 15:50:00	231
331	Venta	2024-09-10 16:31:27	2024-09-10 16:34:00	153
332	Venta	2024-09-15 08:23:53	2024-09-15 08:27:00	187
333	Venta	2024-09-07 11:24:32	2024-09-07 11:29:00	268
334	Venta	2024-09-09 10:04:28	2024-09-09 10:07:00	152
335	Venta	2024-09-06 14:37:06	2024-09-06 14:42:00	294
336	Venta	2024-09-18 13:57:59	2024-09-18 14:01:00	181
337	Venta	2024-09-12 12:30:23	2024-09-12 12:33:00	157
338	Venta	2024-09-06 15:54:53	2024-09-06 15:58:00	187
339	Venta	2024-09-14 10:47:24	2024-09-14 10:50:00	156
340	Venta	2024-09-26 12:49:15	2024-09-26 12:52:00	165
341	Venta	2024-09-04 16:48:21	2024-09-04 16:53:00	279
342	Venta	2024-09-10 15:12:20	2024-09-10 15:16:00	220
343	Venta	2024-09-03 15:12:50	2024-09-03 15:17:00	250
344	Venta	2024-09-12 12:59:27	2024-09-12 13:02:00	153
345	Venta	2024-09-21 08:20:48	2024-09-21 08:25:00	252
346	Venta	2024-09-24 14:38:14	2024-09-24 14:42:00	226
347	Venta	2024-09-11 09:01:15	2024-09-11 09:06:00	285
348	Venta	2024-09-07 11:36:25	2024-09-07 11:40:00	215
349	Venta	2024-09-22 12:49:09	2024-09-22 12:52:00	171
350	Venta	2024-09-17 16:52:24	2024-09-17 16:57:00	276
351	Venta	2024-09-17 11:31:40	2024-09-17 11:36:00	260
352	Venta	2024-09-19 14:55:00	2024-09-19 14:57:00	120
353	Venta	2024-09-25 08:20:08	2024-09-25 08:24:00	232
354	Venta	2024-09-29 12:31:19	2024-09-29 12:36:00	281
355	Venta	2024-09-14 15:25:57	2024-09-14 15:29:00	183
356	Venta	2024-09-02 10:30:25	2024-09-02 10:34:00	215
357	Venta	2024-09-28 09:59:46	2024-09-28 10:04:00	254
358	Venta	2024-09-17 10:15:20	2024-09-17 10:20:00	280
359	Venta	2024-09-13 13:15:13	2024-09-13 13:19:00	227
360	Venta	2024-09-27 14:24:07	2024-09-27 14:26:00	113
361	Venta	2024-09-04 08:15:50	2024-09-04 08:18:00	130
362	Venta	2024-09-08 15:25:59	2024-09-08 15:30:00	241
363	Venta	2024-09-07 14:47:45	2024-09-07 14:50:00	135
364	Venta	2024-09-02 07:57:29	2024-09-02 08:00:00	151
365	Venta	2024-09-18 12:08:53	2024-09-18 12:11:00	127
366	Venta	2024-09-04 15:28:35	2024-09-04 15:33:00	265
367	Venta	2024-09-18 12:43:45	2024-09-18 12:48:00	255
368	Venta	2024-09-13 13:32:50	2024-09-13 13:37:00	250
369	Venta	2024-09-06 08:37:24	2024-09-06 08:40:00	156
370	Venta	2024-09-19 13:40:39	2024-09-19 13:43:00	141
371	Venta	2024-09-28 11:05:47	2024-09-28 11:10:00	253
372	Venta	2024-09-13 15:24:05	2024-09-13 15:29:00	295
373	Venta	2024-09-28 08:15:43	2024-09-28 08:19:00	197
374	Venta	2024-09-16 10:14:46	2024-09-16 10:18:00	194
375	Venta	2024-09-02 11:29:01	2024-09-02 11:32:00	179
376	Venta	2024-09-05 11:03:53	2024-09-05 11:06:00	127
377	Venta	2024-09-26 10:30:19	2024-09-26 10:33:00	161
378	Venta	2024-09-01 09:28:53	2024-09-01 09:32:00	187
379	Venta	2024-09-24 09:21:57	2024-09-24 09:25:00	183
380	Venta	2024-09-23 16:50:07	2024-09-23 16:53:00	173
381	Venta	2024-10-29 11:39:32	2024-10-29 11:42:00	148
382	Venta	2024-10-18 10:14:45	2024-10-18 10:19:00	255
383	Venta	2024-10-28 12:15:09	2024-10-28 12:17:00	111
384	Venta	2024-10-30 09:16:41	2024-10-30 09:21:00	259
385	Venta	2024-10-05 10:59:42	2024-10-05 11:03:00	198
386	Venta	2024-10-19 13:48:08	2024-10-19 13:51:00	172
387	Venta	2024-10-03 14:28:11	2024-10-03 14:32:00	229
388	Venta	2024-10-25 16:55:10	2024-10-25 16:59:00	230
389	Venta	2024-10-26 10:43:00	2024-10-26 10:45:00	120
390	Venta	2024-10-04 08:19:03	2024-10-04 08:21:00	117
391	Venta	2024-10-05 09:49:31	2024-10-05 09:54:00	269
392	Venta	2024-10-13 12:50:57	2024-10-13 12:53:00	123
393	Venta	2024-10-22 11:03:28	2024-10-22 11:06:00	152
394	Venta	2024-10-19 15:12:09	2024-10-19 15:14:00	111
395	Venta	2024-10-21 09:22:22	2024-10-21 09:27:00	278
396	Venta	2024-10-31 10:13:49	2024-10-31 10:16:00	131
397	Venta	2024-10-22 15:16:38	2024-10-22 15:19:00	142
398	Venta	2024-10-20 14:39:45	2024-10-20 14:43:00	195
399	Venta	2024-10-26 08:19:40	2024-10-26 08:22:00	140
400	Venta	2024-10-28 14:02:05	2024-10-28 14:07:00	295
401	Venta	2024-10-06 15:58:23	2024-10-06 16:01:00	157
402	Venta	2024-10-06 08:19:31	2024-10-06 08:23:00	209
403	Venta	2024-10-26 12:28:51	2024-10-26 12:31:00	129
404	Venta	2024-10-20 08:03:39	2024-10-20 08:07:00	201
405	Venta	2024-10-19 12:11:25	2024-10-19 12:14:00	155
406	Venta	2024-10-21 16:00:49	2024-10-21 16:03:00	131
407	Venta	2024-10-28 14:26:03	2024-10-28 14:28:00	117
408	Venta	2024-10-13 09:36:06	2024-10-13 09:40:00	234
409	Venta	2024-10-03 14:19:56	2024-10-03 14:22:00	124
410	Venta	2024-10-23 14:25:34	2024-10-23 14:30:00	266
411	Venta	2024-10-11 15:30:02	2024-10-11 15:35:00	298
412	Venta	2024-10-17 13:14:12	2024-10-17 13:17:00	168
413	Venta	2024-10-28 12:52:08	2024-10-28 12:55:00	172
414	Venta	2024-10-26 13:35:44	2024-10-26 13:40:00	256
415	Venta	2024-10-28 15:48:56	2024-10-28 15:53:00	244
416	Venta	2024-10-20 10:41:45	2024-10-20 10:46:00	255
417	Venta	2024-10-17 09:01:29	2024-10-17 09:05:00	211
418	Venta	2024-10-20 08:11:03	2024-10-20 08:15:00	237
419	Venta	2024-10-06 08:28:38	2024-10-06 08:33:00	262
420	Venta	2024-10-21 11:37:51	2024-10-21 11:42:00	249
421	Venta	2024-10-11 09:41:44	2024-10-11 09:46:00	256
422	Venta	2024-10-30 09:00:20	2024-10-30 09:04:00	220
423	Venta	2024-10-05 13:51:03	2024-10-05 13:56:00	297
424	Venta	2024-10-31 09:39:49	2024-10-31 09:42:00	131
425	Venta	2024-10-28 12:46:57	2024-10-28 12:51:00	243
426	Venta	2024-10-20 12:26:42	2024-10-20 12:29:00	138
427	Venta	2024-10-24 14:17:04	2024-10-24 14:21:00	236
428	Venta	2024-10-13 13:25:10	2024-10-13 13:29:00	230
429	Venta	2024-10-15 08:55:09	2024-10-15 09:00:00	291
430	Venta	2024-10-12 12:12:26	2024-10-12 12:17:00	274
431	Venta	2024-10-15 10:18:28	2024-10-15 10:21:00	152
432	Venta	2024-10-17 13:27:46	2024-10-17 13:30:00	134
433	Venta	2024-10-12 09:32:05	2024-10-12 09:34:00	115
434	Venta	2024-10-30 09:56:34	2024-10-30 10:01:00	266
435	Venta	2024-10-24 12:41:37	2024-10-24 12:44:00	143
436	Venta	2024-10-16 10:07:02	2024-10-16 10:10:00	178
437	Venta	2024-10-07 09:22:44	2024-10-07 09:27:00	256
438	Venta	2024-10-17 08:50:57	2024-10-17 08:53:00	123
439	Venta	2024-10-09 08:31:15	2024-10-09 08:34:00	165
440	Venta	2024-10-23 11:15:07	2024-10-23 11:20:00	293
441	Venta	2024-10-24 15:19:58	2024-10-24 15:22:00	122
442	Venta	2024-10-19 16:20:38	2024-10-19 16:24:00	202
443	Venta	2024-10-23 13:48:51	2024-10-23 13:53:00	249
444	Venta	2024-10-14 12:54:08	2024-10-14 12:56:00	112
445	Venta	2024-10-01 10:56:30	2024-10-01 11:01:00	270
446	Venta	2024-10-10 14:42:32	2024-10-10 14:46:00	208
447	Venta	2024-10-03 14:26:06	2024-10-03 14:28:00	114
448	Venta	2024-10-22 08:50:32	2024-10-22 08:53:00	148
449	Venta	2024-10-31 09:34:39	2024-10-31 09:38:00	201
450	Venta	2024-10-24 14:14:22	2024-10-24 14:19:00	278
451	Venta	2024-10-12 12:12:15	2024-10-12 12:17:00	285
452	Venta	2024-10-10 15:49:27	2024-10-10 15:52:00	153
453	Venta	2024-10-13 10:26:13	2024-10-13 10:28:00	107
454	Venta	2024-10-03 13:47:54	2024-10-03 13:51:00	186
455	Venta	2024-10-21 16:54:29	2024-10-21 16:58:00	211
456	Venta	2024-10-05 10:35:17	2024-10-05 10:40:00	283
457	Venta	2024-10-24 11:41:57	2024-10-24 11:44:00	123
458	Venta	2024-10-07 11:20:11	2024-10-07 11:24:00	229
459	Venta	2024-10-11 13:07:21	2024-10-11 13:12:00	279
460	Venta	2024-10-03 15:05:19	2024-10-03 15:09:00	221
461	Venta	2024-10-19 09:55:13	2024-10-19 10:00:00	287
462	Venta	2024-10-11 10:31:28	2024-10-11 10:34:00	152
463	Venta	2024-10-07 11:05:03	2024-10-07 11:08:00	177
464	Venta	2024-10-28 13:17:09	2024-10-28 13:22:00	291
465	Venta	2024-10-13 15:57:09	2024-10-13 16:02:00	291
466	Venta	2024-10-21 14:26:23	2024-10-21 14:29:00	157
467	Venta	2024-10-29 11:07:52	2024-10-29 11:10:00	128
468	Venta	2024-10-01 09:00:22	2024-10-01 09:03:00	158
469	Venta	2024-10-27 12:33:45	2024-10-27 12:37:00	195
470	Venta	2024-10-13 09:46:47	2024-10-13 09:51:00	253
471	Venta	2024-10-23 11:41:00	2024-10-23 11:44:00	180
472	Venta	2024-10-07 12:04:25	2024-10-07 12:08:00	215
473	Venta	2024-10-24 09:59:33	2024-10-24 10:04:00	267
474	Venta	2024-10-19 13:31:03	2024-10-19 13:33:00	117
475	Venta	2024-10-11 14:33:10	2024-10-11 14:38:00	290
476	Venta	2024-10-10 10:03:21	2024-10-10 10:06:00	159
477	Venta	2024-10-12 08:22:08	2024-10-12 08:24:00	112
478	Venta	2024-10-16 13:16:20	2024-10-16 13:19:00	160
479	Venta	2024-11-03 09:33:32	2024-11-03 09:37:00	208
480	Venta	2024-11-23 13:07:40	2024-11-23 13:12:00	260
481	Venta	2024-11-13 09:03:54	2024-11-13 09:07:00	186
482	Venta	2024-11-12 08:50:15	2024-11-12 08:53:00	165
483	Venta	2024-11-20 09:39:23	2024-11-20 09:43:00	217
484	Venta	2024-11-14 12:46:47	2024-11-14 12:50:00	193
485	Venta	2024-11-02 15:16:47	2024-11-02 15:20:00	193
486	Venta	2024-11-27 08:09:25	2024-11-27 08:14:00	275
487	Venta	2024-11-04 10:58:54	2024-11-04 11:02:00	186
488	Venta	2024-11-27 10:23:50	2024-11-27 10:27:00	190
489	Venta	2024-11-02 09:09:33	2024-11-02 09:12:00	147
490	Venta	2024-11-30 13:15:18	2024-11-30 13:20:00	282
491	Venta	2024-11-11 15:52:01	2024-11-11 15:55:00	179
492	Venta	2024-11-12 12:04:45	2024-11-12 12:07:00	135
493	Venta	2024-11-03 15:45:16	2024-11-03 15:48:00	164
494	Venta	2024-11-24 12:00:50	2024-11-24 12:03:00	130
495	Venta	2024-11-21 12:18:04	2024-11-21 12:20:00	116
496	Venta	2024-11-21 15:57:30	2024-11-21 16:01:00	210
497	Venta	2024-11-04 08:55:07	2024-11-04 09:00:00	293
498	Venta	2024-11-27 11:27:57	2024-11-27 11:31:00	183
499	Venta	2024-11-16 09:18:13	2024-11-16 09:23:00	287
500	Venta	2024-11-02 08:14:26	2024-11-02 08:17:00	154
501	Venta	2024-11-25 12:28:18	2024-11-25 12:33:00	282
502	Venta	2024-11-08 13:20:36	2024-11-08 13:24:00	204
503	Venta	2024-11-05 14:40:35	2024-11-05 14:45:00	265
504	Venta	2024-11-25 11:24:44	2024-11-25 11:27:00	136
505	Venta	2024-11-04 13:11:51	2024-11-04 13:14:00	129
506	Venta	2024-11-17 09:33:16	2024-11-17 09:36:00	164
507	Venta	2024-11-29 13:13:18	2024-11-29 13:16:00	162
508	Venta	2024-11-27 12:58:40	2024-11-27 13:03:00	260
509	Venta	2024-11-27 12:00:39	2024-11-27 12:04:00	201
510	Venta	2024-11-28 13:48:30	2024-11-28 13:52:00	210
511	Venta	2024-11-10 14:38:45	2024-11-10 14:43:00	255
512	Venta	2024-11-25 15:03:32	2024-11-25 15:08:00	268
513	Venta	2024-11-12 09:14:14	2024-11-12 09:19:00	286
514	Venta	2024-11-08 14:54:13	2024-11-08 14:57:00	167
515	Venta	2024-11-15 16:45:20	2024-11-15 16:48:00	160
516	Venta	2024-11-16 09:21:18	2024-11-16 09:26:00	282
517	Venta	2024-11-06 08:16:11	2024-11-06 08:20:00	229
518	Venta	2024-11-09 11:10:04	2024-11-09 11:14:00	236
519	Venta	2024-11-26 16:10:35	2024-11-26 16:13:00	145
520	Venta	2024-11-02 14:28:40	2024-11-02 14:33:00	260
521	Venta	2024-11-13 11:07:18	2024-11-13 11:12:00	282
522	Venta	2024-11-02 11:46:29	2024-11-02 11:50:00	211
523	Venta	2024-11-08 12:18:17	2024-11-08 12:21:00	163
524	Venta	2024-11-15 14:18:09	2024-11-15 14:23:00	291
525	Venta	2024-11-20 15:20:26	2024-11-20 15:25:00	274
526	Venta	2024-11-04 16:05:37	2024-11-04 16:09:00	203
527	Venta	2024-11-30 16:47:52	2024-11-30 16:51:00	188
528	Venta	2024-11-02 10:43:02	2024-11-02 10:47:00	238
529	Venta	2024-11-11 10:54:47	2024-11-11 10:58:00	193
530	Venta	2024-11-21 13:04:02	2024-11-21 13:07:00	178
531	Venta	2024-11-06 12:42:51	2024-11-06 12:47:00	249
532	Venta	2024-11-20 15:47:35	2024-11-20 15:52:00	265
533	Venta	2024-11-12 13:57:40	2024-11-12 14:02:00	260
534	Venta	2024-11-24 14:02:15	2024-11-24 14:07:00	285
535	Venta	2024-11-14 09:16:07	2024-11-14 09:20:00	233
536	Venta	2024-11-10 16:25:11	2024-11-10 16:27:00	109
537	Venta	2024-11-06 11:48:57	2024-11-06 11:51:00	123
538	Venta	2024-11-21 15:31:09	2024-11-21 15:34:00	171
539	Venta	2024-11-26 16:19:22	2024-11-26 16:23:00	218
540	Venta	2024-11-15 10:17:34	2024-11-15 10:22:00	266
541	Venta	2024-11-24 16:49:26	2024-11-24 16:53:00	214
542	Venta	2024-11-28 11:56:20	2024-11-28 11:59:00	160
543	Venta	2024-11-07 12:38:23	2024-11-07 12:42:00	217
544	Venta	2024-11-24 09:59:30	2024-11-24 10:02:00	150
545	Venta	2024-11-21 08:42:58	2024-11-21 08:47:00	242
546	Venta	2024-11-07 12:01:26	2024-11-07 12:05:00	214
547	Venta	2024-11-15 12:45:23	2024-11-15 12:49:00	217
548	Venta	2024-11-14 10:45:02	2024-11-14 10:48:00	178
549	Venta	2024-11-01 12:57:39	2024-11-01 13:01:00	201
550	Venta	2024-11-23 11:25:55	2024-11-23 11:28:00	125
551	Venta	2024-11-29 16:39:55	2024-11-29 16:44:00	245
552	Venta	2024-11-27 13:53:31	2024-11-27 13:58:00	269
553	Venta	2024-11-26 14:50:58	2024-11-26 14:55:00	242
554	Venta	2024-11-09 09:56:19	2024-11-09 10:01:00	281
555	Venta	2024-11-14 16:29:40	2024-11-14 16:33:00	200
556	Venta	2024-11-05 15:48:30	2024-11-05 15:51:00	150
557	Venta	2024-11-27 11:48:25	2024-11-27 11:52:00	215
558	Venta	2024-11-06 16:19:20	2024-11-06 16:22:00	160
559	Venta	2024-11-06 12:51:44	2024-11-06 12:56:00	256
560	Venta	2024-11-18 13:22:04	2024-11-18 13:27:00	296
561	Venta	2024-11-19 11:20:32	2024-11-19 11:23:00	148
562	Venta	2024-11-17 11:04:54	2024-11-17 11:09:00	246
563	Venta	2024-11-17 15:46:42	2024-11-17 15:49:00	138
564	Venta	2024-11-09 16:39:50	2024-11-09 16:42:00	130
565	Venta	2024-11-23 16:27:45	2024-11-23 16:30:00	135
566	Venta	2024-11-05 10:07:43	2024-11-05 10:10:00	137
567	Venta	2024-11-12 16:25:37	2024-11-12 16:30:00	263
568	Venta	2024-11-02 08:44:09	2024-11-02 08:48:00	231
569	Venta	2024-11-07 07:58:34	2024-11-07 08:03:00	266
570	Venta	2024-11-12 14:13:55	2024-11-12 14:18:00	245
571	Venta	2024-11-16 14:38:59	2024-11-16 14:42:00	181
572	Venta	2024-11-21 10:12:19	2024-11-21 10:17:00	281
573	Venta	2024-11-01 11:48:30	2024-11-01 11:53:00	270
574	Venta	2024-11-18 16:50:31	2024-11-18 16:54:00	209
575	Venta	2024-11-14 15:24:47	2024-11-14 15:27:00	133
576	Venta	2024-11-23 11:38:49	2024-11-23 11:42:00	191
\.


--
-- Data for Name: type_of_customers; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.type_of_customers (id, name, created_at, updated_at) FROM stdin;
1	Cartera Pesada	\N	\N
2	Tiendas	\N	\N
3	Agricultores	\N	\N
4	Mayoristas	\N	\N
\.


--
-- Data for Name: ubigeos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.ubigeos (id, name, code, tag, search_engine, number_of_children, level, parent_code, created_at, updated_at) FROM stdin;
2533	Per├║		Per├║	per├║	25	0	0	\N	\N
2534	Amazonas	01	Amazonas, Per├║	amazonas per├║	7	1	2533	\N	\N
2535	Chachapoyas	01	Chachapoyas, Amazonas	chachapoyas amazonas	21	2	2534	\N	\N
2536	Chachapoyas	01	Chachapoyas, Chachapoyas	chachapoyas chachapoyas	0	3	2535	\N	\N
2537	Asuncion	02	Asuncion, Chachapoyas	asuncion chachapoyas	0	3	2535	\N	\N
2538	Balsas	03	Balsas, Chachapoyas	balsas chachapoyas	0	3	2535	\N	\N
2539	Cheto	04	Cheto, Chachapoyas	cheto chachapoyas	0	3	2535	\N	\N
2540	Chiliquin	05	Chiliquin, Chachapoyas	chiliquin chachapoyas	0	3	2535	\N	\N
2541	Chuquibamba	06	Chuquibamba, Chachapoyas	chuquibamba chachapoyas	0	3	2535	\N	\N
2542	Granada	07	Granada, Chachapoyas	granada chachapoyas	0	3	2535	\N	\N
2543	Huancas	08	Huancas, Chachapoyas	huancas chachapoyas	0	3	2535	\N	\N
2544	La Jalca	09	La Jalca, Chachapoyas	la jalca chachapoyas	0	3	2535	\N	\N
2545	Leimebamba	10	Leimebamba, Chachapoyas	leimebamba chachapoyas	0	3	2535	\N	\N
2546	Levanto	11	Levanto, Chachapoyas	levanto chachapoyas	0	3	2535	\N	\N
2547	Magdalena	12	Magdalena, Chachapoyas	magdalena chachapoyas	0	3	2535	\N	\N
2548	Mariscal Castilla	13	Mariscal Castilla, Chachapoyas	mariscal castilla chachapoyas	0	3	2535	\N	\N
2549	Molinopampa	14	Molinopampa, Chachapoyas	molinopampa chachapoyas	0	3	2535	\N	\N
2550	Montevideo	15	Montevideo, Chachapoyas	montevideo chachapoyas	0	3	2535	\N	\N
2551	Olleros	16	Olleros, Chachapoyas	olleros chachapoyas	0	3	2535	\N	\N
2552	Quinjalca	17	Quinjalca, Chachapoyas	quinjalca chachapoyas	0	3	2535	\N	\N
2553	San Francisco de Daguas	18	San Francisco de Daguas, Chachapoyas	san francisco de daguas chachapoyas	0	3	2535	\N	\N
2554	San Isidro de Maino	19	San Isidro de Maino, Chachapoyas	san isidro de maino chachapoyas	0	3	2535	\N	\N
2555	Soloco	20	Soloco, Chachapoyas	soloco chachapoyas	0	3	2535	\N	\N
2556	Sonche	21	Sonche, Chachapoyas	sonche chachapoyas	0	3	2535	\N	\N
2557	Bagua	02	Bagua, Amazonas	bagua amazonas	5	2	2534	\N	\N
2558	La Peca	01	La Peca, Bagua	la peca bagua	0	3	2557	\N	\N
2559	Aramango	02	Aramango, Bagua	aramango bagua	0	3	2557	\N	\N
2560	Copallin	03	Copallin, Bagua	copallin bagua	0	3	2557	\N	\N
2561	El Parco	04	El Parco, Bagua	el parco bagua	0	3	2557	\N	\N
2562	Imaza	05	Imaza, Bagua	imaza bagua	0	3	2557	\N	\N
2563	Bongara	03	Bongara, Amazonas	bongara amazonas	12	2	2534	\N	\N
2564	Jumbilla	01	Jumbilla, Bongara	jumbilla bongara	0	3	2563	\N	\N
2565	Corosha	02	Corosha, Bongara	corosha bongara	0	3	2563	\N	\N
2566	Cuispes	03	Cuispes, Bongara	cuispes bongara	0	3	2563	\N	\N
2567	Chisquilla	04	Chisquilla, Bongara	chisquilla bongara	0	3	2563	\N	\N
2568	Churuja	05	Churuja, Bongara	churuja bongara	0	3	2563	\N	\N
2569	Florida	06	Florida, Bongara	florida bongara	0	3	2563	\N	\N
2570	Recta	07	Recta, Bongara	recta bongara	0	3	2563	\N	\N
2571	San Carlos	08	San Carlos, Bongara	san carlos bongara	0	3	2563	\N	\N
2572	Shipasbamba	09	Shipasbamba, Bongara	shipasbamba bongara	0	3	2563	\N	\N
2573	Valera	10	Valera, Bongara	valera bongara	0	3	2563	\N	\N
2574	Yambrasbamba	11	Yambrasbamba, Bongara	yambrasbamba bongara	0	3	2563	\N	\N
2575	Jazan	12	Jazan, Bongara	jazan bongara	0	3	2563	\N	\N
2576	Condorcanqui	04	Condorcanqui, Amazonas	condorcanqui amazonas	3	2	2534	\N	\N
2577	Nieva	01	Nieva, Condorcanqui	nieva condorcanqui	0	3	2576	\N	\N
2578	El Cenepa	02	El Cenepa, Condorcanqui	el cenepa condorcanqui	0	3	2576	\N	\N
2579	Rio Santiago	03	Rio Santiago, Condorcanqui	rio santiago condorcanqui	0	3	2576	\N	\N
2580	Luya	05	Luya, Amazonas	luya amazonas	23	2	2534	\N	\N
2581	Lamud	01	Lamud, Luya	lamud luya	0	3	2580	\N	\N
2582	Camporredondo	02	Camporredondo, Luya	camporredondo luya	0	3	2580	\N	\N
2583	Cocabamba	03	Cocabamba, Luya	cocabamba luya	0	3	2580	\N	\N
2584	Colcamar	04	Colcamar, Luya	colcamar luya	0	3	2580	\N	\N
2585	Conila	05	Conila, Luya	conila luya	0	3	2580	\N	\N
2586	Inguilpata	06	Inguilpata, Luya	inguilpata luya	0	3	2580	\N	\N
2587	Longuita	07	Longuita, Luya	longuita luya	0	3	2580	\N	\N
2588	Lonya Chico	08	Lonya Chico, Luya	lonya chico luya	0	3	2580	\N	\N
2589	Luya	09	Luya, Luya	luya luya	0	3	2580	\N	\N
2590	Luya Viejo	10	Luya Viejo, Luya	luya viejo luya	0	3	2580	\N	\N
2591	Maria	11	Maria, Luya	maria luya	0	3	2580	\N	\N
2592	Ocalli	12	Ocalli, Luya	ocalli luya	0	3	2580	\N	\N
2593	Ocumal	13	Ocumal, Luya	ocumal luya	0	3	2580	\N	\N
2594	Pisuquia	14	Pisuquia, Luya	pisuquia luya	0	3	2580	\N	\N
2595	Providencia	15	Providencia, Luya	providencia luya	0	3	2580	\N	\N
2596	San Cristobal	16	San Cristobal, Luya	san cristobal luya	0	3	2580	\N	\N
2597	San Francisco del Yeso	17	San Francisco del Yeso, Luya	san francisco del yeso luya	0	3	2580	\N	\N
2598	San Jeronimo	18	San Jeronimo, Luya	san jeronimo luya	0	3	2580	\N	\N
2599	San Juan de Lopecancha	19	San Juan de Lopecancha, Luya	san juan de lopecancha luya	0	3	2580	\N	\N
2600	Santa Catalina	20	Santa Catalina, Luya	santa catalina luya	0	3	2580	\N	\N
2601	Santo Tomas	21	Santo Tomas, Luya	santo tomas luya	0	3	2580	\N	\N
2602	Tingo	22	Tingo, Luya	tingo luya	0	3	2580	\N	\N
2603	Trita	23	Trita, Luya	trita luya	0	3	2580	\N	\N
2604	Rodriguez de Mendoza	06	Rodriguez de Mendoza, Amazonas	rodriguez de mendoza amazonas	12	2	2534	\N	\N
2605	San Nicolas	01	San Nicolas, Rodriguez de Mendoza	san nicolas rodriguez de mendoza	0	3	2604	\N	\N
2606	Chirimoto	02	Chirimoto, Rodriguez de Mendoza	chirimoto rodriguez de mendoza	0	3	2604	\N	\N
2607	Cochamal	03	Cochamal, Rodriguez de Mendoza	cochamal rodriguez de mendoza	0	3	2604	\N	\N
2608	Huambo	04	Huambo, Rodriguez de Mendoza	huambo rodriguez de mendoza	0	3	2604	\N	\N
2609	Limabamba	05	Limabamba, Rodriguez de Mendoza	limabamba rodriguez de mendoza	0	3	2604	\N	\N
2610	Longar	06	Longar, Rodriguez de Mendoza	longar rodriguez de mendoza	0	3	2604	\N	\N
2611	Mariscal Benavides	07	Mariscal Benavides, Rodriguez de Mendoza	mariscal benavides rodriguez de mendoza	0	3	2604	\N	\N
2612	Milpuc	08	Milpuc, Rodriguez de Mendoza	milpuc rodriguez de mendoza	0	3	2604	\N	\N
2613	Omia	09	Omia, Rodriguez de Mendoza	omia rodriguez de mendoza	0	3	2604	\N	\N
2614	Santa Rosa	10	Santa Rosa, Rodriguez de Mendoza	santa rosa rodriguez de mendoza	0	3	2604	\N	\N
2615	Totora	11	Totora, Rodriguez de Mendoza	totora rodriguez de mendoza	0	3	2604	\N	\N
2616	Vista Alegre	12	Vista Alegre, Rodriguez de Mendoza	vista alegre rodriguez de mendoza	0	3	2604	\N	\N
2617	Utcubamba	07	Utcubamba, Amazonas	utcubamba amazonas	7	2	2534	\N	\N
2618	Bagua Grande	01	Bagua Grande, Utcubamba	bagua grande utcubamba	0	3	2617	\N	\N
2619	Cajaruro	02	Cajaruro, Utcubamba	cajaruro utcubamba	0	3	2617	\N	\N
2620	Cumba	03	Cumba, Utcubamba	cumba utcubamba	0	3	2617	\N	\N
2621	El Milagro	04	El Milagro, Utcubamba	el milagro utcubamba	0	3	2617	\N	\N
2622	Jamalca	05	Jamalca, Utcubamba	jamalca utcubamba	0	3	2617	\N	\N
2623	Lonya Grande	06	Lonya Grande, Utcubamba	lonya grande utcubamba	0	3	2617	\N	\N
2624	Yamon	07	Yamon, Utcubamba	yamon utcubamba	0	3	2617	\N	\N
2625	Ancash	02	Ancash, Per├║	ancash per├║	20	1	2533	\N	\N
2626	Huaraz	01	Huaraz, Ancash	huaraz ancash	12	2	2625	\N	\N
2627	Huaraz	01	Huaraz, Huaraz	huaraz huaraz	0	3	2626	\N	\N
2628	Cochabamba	02	Cochabamba, Huaraz	cochabamba huaraz	0	3	2626	\N	\N
2629	Colcabamba	03	Colcabamba, Huaraz	colcabamba huaraz	0	3	2626	\N	\N
2630	Huanchay	04	Huanchay, Huaraz	huanchay huaraz	0	3	2626	\N	\N
2631	Independencia	05	Independencia, Huaraz	independencia huaraz	0	3	2626	\N	\N
2632	Jangas	06	Jangas, Huaraz	jangas huaraz	0	3	2626	\N	\N
2633	La Libertad	07	La Libertad, Huaraz	la libertad huaraz	0	3	2626	\N	\N
2634	Olleros	08	Olleros, Huaraz	olleros huaraz	0	3	2626	\N	\N
2635	Pampas	09	Pampas, Huaraz	pampas huaraz	0	3	2626	\N	\N
2636	Pariacoto	10	Pariacoto, Huaraz	pariacoto huaraz	0	3	2626	\N	\N
2637	Pira	11	Pira, Huaraz	pira huaraz	0	3	2626	\N	\N
2638	Tarica	12	Tarica, Huaraz	tarica huaraz	0	3	2626	\N	\N
2639	Aija	02	Aija, Ancash	aija ancash	5	2	2625	\N	\N
2640	Aija	01	Aija, Aija	aija aija	0	3	2639	\N	\N
2641	Coris	02	Coris, Aija	coris aija	0	3	2639	\N	\N
2642	Huacllan	03	Huacllan, Aija	huacllan aija	0	3	2639	\N	\N
2643	La Merced	04	La Merced, Aija	la merced aija	0	3	2639	\N	\N
2644	Succha	05	Succha, Aija	succha aija	0	3	2639	\N	\N
2645	Antonio Raymondi	03	Antonio Raymondi, Ancash	antonio raymondi ancash	6	2	2625	\N	\N
2646	Llamellin	01	Llamellin, Antonio Raymondi	llamellin antonio raymondi	0	3	2645	\N	\N
2647	Aczo	02	Aczo, Antonio Raymondi	aczo antonio raymondi	0	3	2645	\N	\N
2648	Chaccho	03	Chaccho, Antonio Raymondi	chaccho antonio raymondi	0	3	2645	\N	\N
2649	Chingas	04	Chingas, Antonio Raymondi	chingas antonio raymondi	0	3	2645	\N	\N
2650	Mirgas	05	Mirgas, Antonio Raymondi	mirgas antonio raymondi	0	3	2645	\N	\N
2651	San Juan de Rontoy	06	San Juan de Rontoy, Antonio Raymondi	san juan de rontoy antonio raymondi	0	3	2645	\N	\N
2652	Asuncion	04	Asuncion, Ancash	asuncion ancash	2	2	2625	\N	\N
2653	Chacas	01	Chacas, Asuncion	chacas asuncion	0	3	2652	\N	\N
2654	Acochaca	02	Acochaca, Asuncion	acochaca asuncion	0	3	2652	\N	\N
2655	Bolognesi	05	Bolognesi, Ancash	bolognesi ancash	15	2	2625	\N	\N
2656	Chiquian	01	Chiquian, Bolognesi	chiquian bolognesi	0	3	2655	\N	\N
2657	Abelardo Pardo Lezameta	02	Abelardo Pardo Lezameta, Bolognesi	abelardo pardo lezameta bolognesi	0	3	2655	\N	\N
2658	Antonio Raymondi	03	Antonio Raymondi, Bolognesi	antonio raymondi bolognesi	0	3	2655	\N	\N
2659	Aquia	04	Aquia, Bolognesi	aquia bolognesi	0	3	2655	\N	\N
2660	Cajacay	05	Cajacay, Bolognesi	cajacay bolognesi	0	3	2655	\N	\N
2661	Canis	06	Canis, Bolognesi	canis bolognesi	0	3	2655	\N	\N
2662	Colquioc	07	Colquioc, Bolognesi	colquioc bolognesi	0	3	2655	\N	\N
2663	Huallanca	08	Huallanca, Bolognesi	huallanca bolognesi	0	3	2655	\N	\N
2664	Huasta	09	Huasta, Bolognesi	huasta bolognesi	0	3	2655	\N	\N
2665	Huayllacayan	10	Huayllacayan, Bolognesi	huayllacayan bolognesi	0	3	2655	\N	\N
2666	La Primavera	11	La Primavera, Bolognesi	la primavera bolognesi	0	3	2655	\N	\N
2667	Mangas	12	Mangas, Bolognesi	mangas bolognesi	0	3	2655	\N	\N
2668	Pacllon	13	Pacllon, Bolognesi	pacllon bolognesi	0	3	2655	\N	\N
2669	San Miguel de Corpanqui	14	San Miguel de Corpanqui, Bolognesi	san miguel de corpanqui bolognesi	0	3	2655	\N	\N
2670	Ticllos	15	Ticllos, Bolognesi	ticllos bolognesi	0	3	2655	\N	\N
2671	Carhuaz	06	Carhuaz, Ancash	carhuaz ancash	11	2	2625	\N	\N
2672	Carhuaz	01	Carhuaz, Carhuaz	carhuaz carhuaz	0	3	2671	\N	\N
2673	Acopampa	02	Acopampa, Carhuaz	acopampa carhuaz	0	3	2671	\N	\N
2674	Amashca	03	Amashca, Carhuaz	amashca carhuaz	0	3	2671	\N	\N
2675	Anta	04	Anta, Carhuaz	anta carhuaz	0	3	2671	\N	\N
2676	Ataquero	05	Ataquero, Carhuaz	ataquero carhuaz	0	3	2671	\N	\N
2677	Marcara	06	Marcara, Carhuaz	marcara carhuaz	0	3	2671	\N	\N
2678	Pariahuanca	07	Pariahuanca, Carhuaz	pariahuanca carhuaz	0	3	2671	\N	\N
2679	San Miguel de Aco	08	San Miguel de Aco, Carhuaz	san miguel de aco carhuaz	0	3	2671	\N	\N
2680	Shilla	09	Shilla, Carhuaz	shilla carhuaz	0	3	2671	\N	\N
2681	Tinco	10	Tinco, Carhuaz	tinco carhuaz	0	3	2671	\N	\N
2682	Yungar	11	Yungar, Carhuaz	yungar carhuaz	0	3	2671	\N	\N
2683	Carlos Fermin Fitzcarrald	07	Carlos Fermin Fitzcarrald, Ancash	carlos fermin fitzcarrald ancash	3	2	2625	\N	\N
2684	San Luis	01	San Luis, Carlos Fermin Fitzcarrald	san luis carlos fermin fitzcarrald	0	3	2683	\N	\N
2685	San Nicolas	02	San Nicolas, Carlos Fermin Fitzcarrald	san nicolas carlos fermin fitzcarrald	0	3	2683	\N	\N
2686	Yauya	03	Yauya, Carlos Fermin Fitzcarrald	yauya carlos fermin fitzcarrald	0	3	2683	\N	\N
2687	Casma	08	Casma, Ancash	casma ancash	4	2	2625	\N	\N
2688	Casma	01	Casma, Casma	casma casma	0	3	2687	\N	\N
2689	Buena Vista Alta	02	Buena Vista Alta, Casma	buena vista alta casma	0	3	2687	\N	\N
2690	Comandante Noel	03	Comandante Noel, Casma	comandante noel casma	0	3	2687	\N	\N
2691	Yautan	04	Yautan, Casma	yautan casma	0	3	2687	\N	\N
2692	Corongo	09	Corongo, Ancash	corongo ancash	7	2	2625	\N	\N
2693	Corongo	01	Corongo, Corongo	corongo corongo	0	3	2692	\N	\N
2694	Aco	02	Aco, Corongo	aco corongo	0	3	2692	\N	\N
2695	Bambas	03	Bambas, Corongo	bambas corongo	0	3	2692	\N	\N
2696	Cusca	04	Cusca, Corongo	cusca corongo	0	3	2692	\N	\N
2697	La Pampa	05	La Pampa, Corongo	la pampa corongo	0	3	2692	\N	\N
2698	Yanac	06	Yanac, Corongo	yanac corongo	0	3	2692	\N	\N
2699	Yupan	07	Yupan, Corongo	yupan corongo	0	3	2692	\N	\N
2700	Huari	10	Huari, Ancash	huari ancash	16	2	2625	\N	\N
2701	Huari	01	Huari, Huari	huari huari	0	3	2700	\N	\N
2702	Anra	02	Anra, Huari	anra huari	0	3	2700	\N	\N
2703	Cajay	03	Cajay, Huari	cajay huari	0	3	2700	\N	\N
2704	Chavin de Huantar	04	Chavin de Huantar, Huari	chavin de huantar huari	0	3	2700	\N	\N
2705	Huacachi	05	Huacachi, Huari	huacachi huari	0	3	2700	\N	\N
2706	Huacchis	06	Huacchis, Huari	huacchis huari	0	3	2700	\N	\N
2707	Huachis	07	Huachis, Huari	huachis huari	0	3	2700	\N	\N
2708	Huantar	08	Huantar, Huari	huantar huari	0	3	2700	\N	\N
2709	Masin	09	Masin, Huari	masin huari	0	3	2700	\N	\N
2710	Paucas	10	Paucas, Huari	paucas huari	0	3	2700	\N	\N
2711	Ponto	11	Ponto, Huari	ponto huari	0	3	2700	\N	\N
2712	Rahuapampa	12	Rahuapampa, Huari	rahuapampa huari	0	3	2700	\N	\N
2713	Rapayan	13	Rapayan, Huari	rapayan huari	0	3	2700	\N	\N
2714	San Marcos	14	San Marcos, Huari	san marcos huari	0	3	2700	\N	\N
2715	San Pedro de Chana	15	San Pedro de Chana, Huari	san pedro de chana huari	0	3	2700	\N	\N
2716	Uco	16	Uco, Huari	uco huari	0	3	2700	\N	\N
2717	Huarmey	11	Huarmey, Ancash	huarmey ancash	5	2	2625	\N	\N
2718	Huarmey	01	Huarmey, Huarmey	huarmey huarmey	0	3	2717	\N	\N
2719	Cochapeti	02	Cochapeti, Huarmey	cochapeti huarmey	0	3	2717	\N	\N
2720	Culebras	03	Culebras, Huarmey	culebras huarmey	0	3	2717	\N	\N
2721	Huayan	04	Huayan, Huarmey	huayan huarmey	0	3	2717	\N	\N
2722	Malvas	05	Malvas, Huarmey	malvas huarmey	0	3	2717	\N	\N
2723	Huaylas	12	Huaylas, Ancash	huaylas ancash	10	2	2625	\N	\N
2724	Caraz	01	Caraz, Huaylas	caraz huaylas	0	3	2723	\N	\N
2725	Huallanca	02	Huallanca, Huaylas	huallanca huaylas	0	3	2723	\N	\N
2726	Huata	03	Huata, Huaylas	huata huaylas	0	3	2723	\N	\N
2727	Huaylas	04	Huaylas, Huaylas	huaylas huaylas	0	3	2723	\N	\N
2728	Mato	05	Mato, Huaylas	mato huaylas	0	3	2723	\N	\N
2729	Pamparomas	06	Pamparomas, Huaylas	pamparomas huaylas	0	3	2723	\N	\N
2730	Pueblo Libre	07	Pueblo Libre, Huaylas	pueblo libre huaylas	0	3	2723	\N	\N
2731	Santa Cruz	08	Santa Cruz, Huaylas	santa cruz huaylas	0	3	2723	\N	\N
2732	Santo Toribio	09	Santo Toribio, Huaylas	santo toribio huaylas	0	3	2723	\N	\N
2733	Yuracmarca	10	Yuracmarca, Huaylas	yuracmarca huaylas	0	3	2723	\N	\N
2734	Mariscal Luzuriaga	13	Mariscal Luzuriaga, Ancash	mariscal luzuriaga ancash	8	2	2625	\N	\N
2735	Piscobamba	01	Piscobamba, Mariscal Luzuriaga	piscobamba mariscal luzuriaga	0	3	2734	\N	\N
2736	Casca	02	Casca, Mariscal Luzuriaga	casca mariscal luzuriaga	0	3	2734	\N	\N
2737	Eleazar Guzman Barron	03	Eleazar Guzman Barron, Mariscal Luzuriaga	eleazar guzman barron mariscal luzuriaga	0	3	2734	\N	\N
2738	Fidel Olivas Escudero	04	Fidel Olivas Escudero, Mariscal Luzuriaga	fidel olivas escudero mariscal luzuriaga	0	3	2734	\N	\N
2739	Llama	05	Llama, Mariscal Luzuriaga	llama mariscal luzuriaga	0	3	2734	\N	\N
2740	Llumpa	06	Llumpa, Mariscal Luzuriaga	llumpa mariscal luzuriaga	0	3	2734	\N	\N
2741	Lucma	07	Lucma, Mariscal Luzuriaga	lucma mariscal luzuriaga	0	3	2734	\N	\N
2742	Musga	08	Musga, Mariscal Luzuriaga	musga mariscal luzuriaga	0	3	2734	\N	\N
2743	Ocros	14	Ocros, Ancash	ocros ancash	10	2	2625	\N	\N
2744	Ocros	01	Ocros, Ocros	ocros ocros	0	3	2743	\N	\N
2745	Acas	02	Acas, Ocros	acas ocros	0	3	2743	\N	\N
2746	Cajamarquilla	03	Cajamarquilla, Ocros	cajamarquilla ocros	0	3	2743	\N	\N
2747	Carhuapampa	04	Carhuapampa, Ocros	carhuapampa ocros	0	3	2743	\N	\N
2748	Cochas	05	Cochas, Ocros	cochas ocros	0	3	2743	\N	\N
2749	Congas	06	Congas, Ocros	congas ocros	0	3	2743	\N	\N
2750	Llipa	07	Llipa, Ocros	llipa ocros	0	3	2743	\N	\N
2751	San Cristobal de Rajan	08	San Cristobal de Rajan, Ocros	san cristobal de rajan ocros	0	3	2743	\N	\N
2752	San Pedro	09	San Pedro, Ocros	san pedro ocros	0	3	2743	\N	\N
2753	Santiago de Chilcas	10	Santiago de Chilcas, Ocros	santiago de chilcas ocros	0	3	2743	\N	\N
2754	Pallasca	15	Pallasca, Ancash	pallasca ancash	11	2	2625	\N	\N
2755	Cabana	01	Cabana, Pallasca	cabana pallasca	0	3	2754	\N	\N
2756	Bolognesi	02	Bolognesi, Pallasca	bolognesi pallasca	0	3	2754	\N	\N
2757	Conchucos	03	Conchucos, Pallasca	conchucos pallasca	0	3	2754	\N	\N
2758	Huacaschuque	04	Huacaschuque, Pallasca	huacaschuque pallasca	0	3	2754	\N	\N
2759	Huandoval	05	Huandoval, Pallasca	huandoval pallasca	0	3	2754	\N	\N
2760	Lacabamba	06	Lacabamba, Pallasca	lacabamba pallasca	0	3	2754	\N	\N
2761	Llapo	07	Llapo, Pallasca	llapo pallasca	0	3	2754	\N	\N
2762	Pallasca	08	Pallasca, Pallasca	pallasca pallasca	0	3	2754	\N	\N
2763	Pampas	09	Pampas, Pallasca	pampas pallasca	0	3	2754	\N	\N
2764	Santa Rosa	10	Santa Rosa, Pallasca	santa rosa pallasca	0	3	2754	\N	\N
2765	Tauca	11	Tauca, Pallasca	tauca pallasca	0	3	2754	\N	\N
2766	Pomabamba	16	Pomabamba, Ancash	pomabamba ancash	4	2	2625	\N	\N
2767	Pomabamba	01	Pomabamba, Pomabamba	pomabamba pomabamba	0	3	2766	\N	\N
2768	Huayllan	02	Huayllan, Pomabamba	huayllan pomabamba	0	3	2766	\N	\N
2769	Parobamba	03	Parobamba, Pomabamba	parobamba pomabamba	0	3	2766	\N	\N
2770	Quinuabamba	04	Quinuabamba, Pomabamba	quinuabamba pomabamba	0	3	2766	\N	\N
2771	Recuay	17	Recuay, Ancash	recuay ancash	10	2	2625	\N	\N
2772	Recuay	01	Recuay, Recuay	recuay recuay	0	3	2771	\N	\N
2773	Catac	02	Catac, Recuay	catac recuay	0	3	2771	\N	\N
2774	Cotaparaco	03	Cotaparaco, Recuay	cotaparaco recuay	0	3	2771	\N	\N
2775	Huayllapampa	04	Huayllapampa, Recuay	huayllapampa recuay	0	3	2771	\N	\N
2776	Llacllin	05	Llacllin, Recuay	llacllin recuay	0	3	2771	\N	\N
2777	Marca	06	Marca, Recuay	marca recuay	0	3	2771	\N	\N
2778	Pampas Chico	07	Pampas Chico, Recuay	pampas chico recuay	0	3	2771	\N	\N
2779	Pararin	08	Pararin, Recuay	pararin recuay	0	3	2771	\N	\N
2780	Tapacocha	09	Tapacocha, Recuay	tapacocha recuay	0	3	2771	\N	\N
2781	Ticapampa	10	Ticapampa, Recuay	ticapampa recuay	0	3	2771	\N	\N
2782	Santa	18	Santa, Ancash	santa ancash	9	2	2625	\N	\N
2783	Chimbote	01	Chimbote, Santa	chimbote santa	0	3	2782	\N	\N
2784	Caceres del Peru	02	Caceres del Peru, Santa	caceres del peru santa	0	3	2782	\N	\N
2785	Coishco	03	Coishco, Santa	coishco santa	0	3	2782	\N	\N
2786	Macate	04	Macate, Santa	macate santa	0	3	2782	\N	\N
2787	Moro	05	Moro, Santa	moro santa	0	3	2782	\N	\N
2788	Nepeqa	06	Nepeqa, Santa	nepeqa santa	0	3	2782	\N	\N
2789	Samanco	07	Samanco, Santa	samanco santa	0	3	2782	\N	\N
2790	Santa	08	Santa, Santa	santa santa	0	3	2782	\N	\N
2791	Nuevo Chimbote	09	Nuevo Chimbote, Santa	nuevo chimbote santa	0	3	2782	\N	\N
2792	Sihuas	19	Sihuas, Ancash	sihuas ancash	10	2	2625	\N	\N
2793	Sihuas	01	Sihuas, Sihuas	sihuas sihuas	0	3	2792	\N	\N
2794	Acobamba	02	Acobamba, Sihuas	acobamba sihuas	0	3	2792	\N	\N
2795	Alfonso Ugarte	03	Alfonso Ugarte, Sihuas	alfonso ugarte sihuas	0	3	2792	\N	\N
2796	Cashapampa	04	Cashapampa, Sihuas	cashapampa sihuas	0	3	2792	\N	\N
2797	Chingalpo	05	Chingalpo, Sihuas	chingalpo sihuas	0	3	2792	\N	\N
2798	Huayllabamba	06	Huayllabamba, Sihuas	huayllabamba sihuas	0	3	2792	\N	\N
2799	Quiches	07	Quiches, Sihuas	quiches sihuas	0	3	2792	\N	\N
2800	Ragash	08	Ragash, Sihuas	ragash sihuas	0	3	2792	\N	\N
2801	San Juan	09	San Juan, Sihuas	san juan sihuas	0	3	2792	\N	\N
2802	Sicsibamba	10	Sicsibamba, Sihuas	sicsibamba sihuas	0	3	2792	\N	\N
2803	Yungay	20	Yungay, Ancash	yungay ancash	8	2	2625	\N	\N
2804	Yungay	01	Yungay, Yungay	yungay yungay	0	3	2803	\N	\N
2805	Cascapara	02	Cascapara, Yungay	cascapara yungay	0	3	2803	\N	\N
2806	Mancos	03	Mancos, Yungay	mancos yungay	0	3	2803	\N	\N
2807	Matacoto	04	Matacoto, Yungay	matacoto yungay	0	3	2803	\N	\N
2808	Quillo	05	Quillo, Yungay	quillo yungay	0	3	2803	\N	\N
2809	Ranrahirca	06	Ranrahirca, Yungay	ranrahirca yungay	0	3	2803	\N	\N
2810	Shupluy	07	Shupluy, Yungay	shupluy yungay	0	3	2803	\N	\N
2811	Yanama	08	Yanama, Yungay	yanama yungay	0	3	2803	\N	\N
2812	Apurimac	03	Apurimac, Per├║	apurimac per├║	7	1	2533	\N	\N
2813	Abancay	01	Abancay, Apurimac	abancay apurimac	9	2	2812	\N	\N
2814	Abancay	01	Abancay, Abancay	abancay abancay	0	3	2813	\N	\N
2815	Chacoche	02	Chacoche, Abancay	chacoche abancay	0	3	2813	\N	\N
2816	Circa	03	Circa, Abancay	circa abancay	0	3	2813	\N	\N
2817	Curahuasi	04	Curahuasi, Abancay	curahuasi abancay	0	3	2813	\N	\N
2818	Huanipaca	05	Huanipaca, Abancay	huanipaca abancay	0	3	2813	\N	\N
2819	Lambrama	06	Lambrama, Abancay	lambrama abancay	0	3	2813	\N	\N
2820	Pichirhua	07	Pichirhua, Abancay	pichirhua abancay	0	3	2813	\N	\N
2889	Huayllati	04	Huayllati, Grau	huayllati grau	0	3	2885	\N	\N
2821	San Pedro de Cachora	08	San Pedro de Cachora, Abancay	san pedro de cachora abancay	0	3	2813	\N	\N
2822	Tamburco	09	Tamburco, Abancay	tamburco abancay	0	3	2813	\N	\N
2823	Andahuaylas	02	Andahuaylas, Apurimac	andahuaylas apurimac	19	2	2812	\N	\N
2824	Andahuaylas	01	Andahuaylas, Andahuaylas	andahuaylas andahuaylas	0	3	2823	\N	\N
2825	Andarapa	02	Andarapa, Andahuaylas	andarapa andahuaylas	0	3	2823	\N	\N
2826	Chiara	03	Chiara, Andahuaylas	chiara andahuaylas	0	3	2823	\N	\N
2827	Huancarama	04	Huancarama, Andahuaylas	huancarama andahuaylas	0	3	2823	\N	\N
2828	Huancaray	05	Huancaray, Andahuaylas	huancaray andahuaylas	0	3	2823	\N	\N
2829	Huayana	06	Huayana, Andahuaylas	huayana andahuaylas	0	3	2823	\N	\N
2830	Kishuara	07	Kishuara, Andahuaylas	kishuara andahuaylas	0	3	2823	\N	\N
2831	Pacobamba	08	Pacobamba, Andahuaylas	pacobamba andahuaylas	0	3	2823	\N	\N
2832	Pacucha	09	Pacucha, Andahuaylas	pacucha andahuaylas	0	3	2823	\N	\N
2833	Pampachiri	10	Pampachiri, Andahuaylas	pampachiri andahuaylas	0	3	2823	\N	\N
2834	Pomacocha	11	Pomacocha, Andahuaylas	pomacocha andahuaylas	0	3	2823	\N	\N
2835	San Antonio de Cachi	12	San Antonio de Cachi, Andahuaylas	san antonio de cachi andahuaylas	0	3	2823	\N	\N
2836	San Jeronimo	13	San Jeronimo, Andahuaylas	san jeronimo andahuaylas	0	3	2823	\N	\N
2837	San Miguel de Chaccrampa	14	San Miguel de Chaccrampa, Andahuaylas	san miguel de chaccrampa andahuaylas	0	3	2823	\N	\N
2838	Santa Maria de Chicmo	15	Santa Maria de Chicmo, Andahuaylas	santa maria de chicmo andahuaylas	0	3	2823	\N	\N
2839	Talavera	16	Talavera, Andahuaylas	talavera andahuaylas	0	3	2823	\N	\N
2840	Tumay Huaraca	17	Tumay Huaraca, Andahuaylas	tumay huaraca andahuaylas	0	3	2823	\N	\N
2841	Turpo	18	Turpo, Andahuaylas	turpo andahuaylas	0	3	2823	\N	\N
2842	Kaquiabamba	19	Kaquiabamba, Andahuaylas	kaquiabamba andahuaylas	0	3	2823	\N	\N
2843	Antabamba	03	Antabamba, Apurimac	antabamba apurimac	7	2	2812	\N	\N
2844	Antabamba	01	Antabamba, Antabamba	antabamba antabamba	0	3	2843	\N	\N
2845	El Oro	02	El Oro, Antabamba	el oro antabamba	0	3	2843	\N	\N
2846	Huaquirca	03	Huaquirca, Antabamba	huaquirca antabamba	0	3	2843	\N	\N
2847	Juan Espinoza Medrano	04	Juan Espinoza Medrano, Antabamba	juan espinoza medrano antabamba	0	3	2843	\N	\N
2848	Oropesa	05	Oropesa, Antabamba	oropesa antabamba	0	3	2843	\N	\N
2849	Pachaconas	06	Pachaconas, Antabamba	pachaconas antabamba	0	3	2843	\N	\N
2850	Sabaino	07	Sabaino, Antabamba	sabaino antabamba	0	3	2843	\N	\N
2851	Aymaraes	04	Aymaraes, Apurimac	aymaraes apurimac	17	2	2812	\N	\N
2852	Chalhuanca	01	Chalhuanca, Aymaraes	chalhuanca aymaraes	0	3	2851	\N	\N
2853	Capaya	02	Capaya, Aymaraes	capaya aymaraes	0	3	2851	\N	\N
2854	Caraybamba	03	Caraybamba, Aymaraes	caraybamba aymaraes	0	3	2851	\N	\N
2855	Chapimarca	04	Chapimarca, Aymaraes	chapimarca aymaraes	0	3	2851	\N	\N
2856	Colcabamba	05	Colcabamba, Aymaraes	colcabamba aymaraes	0	3	2851	\N	\N
2857	Cotaruse	06	Cotaruse, Aymaraes	cotaruse aymaraes	0	3	2851	\N	\N
2858	Huayllo	07	Huayllo, Aymaraes	huayllo aymaraes	0	3	2851	\N	\N
2859	Justo Apu Sahuaraura	08	Justo Apu Sahuaraura, Aymaraes	justo apu sahuaraura aymaraes	0	3	2851	\N	\N
2860	Lucre	09	Lucre, Aymaraes	lucre aymaraes	0	3	2851	\N	\N
2861	Pocohuanca	10	Pocohuanca, Aymaraes	pocohuanca aymaraes	0	3	2851	\N	\N
2862	San Juan de Chacqa	11	San Juan de Chacqa, Aymaraes	san juan de chacqa aymaraes	0	3	2851	\N	\N
2863	Saqayca	12	Saqayca, Aymaraes	saqayca aymaraes	0	3	2851	\N	\N
2864	Soraya	13	Soraya, Aymaraes	soraya aymaraes	0	3	2851	\N	\N
2865	Tapairihua	14	Tapairihua, Aymaraes	tapairihua aymaraes	0	3	2851	\N	\N
2866	Tintay	15	Tintay, Aymaraes	tintay aymaraes	0	3	2851	\N	\N
2867	Toraya	16	Toraya, Aymaraes	toraya aymaraes	0	3	2851	\N	\N
2868	Yanaca	17	Yanaca, Aymaraes	yanaca aymaraes	0	3	2851	\N	\N
2869	Cotabambas	05	Cotabambas, Apurimac	cotabambas apurimac	6	2	2812	\N	\N
2870	Tambobamba	01	Tambobamba, Cotabambas	tambobamba cotabambas	0	3	2869	\N	\N
2871	Cotabambas	02	Cotabambas, Cotabambas	cotabambas cotabambas	0	3	2869	\N	\N
2872	Coyllurqui	03	Coyllurqui, Cotabambas	coyllurqui cotabambas	0	3	2869	\N	\N
2873	Haquira	04	Haquira, Cotabambas	haquira cotabambas	0	3	2869	\N	\N
2874	Mara	05	Mara, Cotabambas	mara cotabambas	0	3	2869	\N	\N
2875	Challhuahuacho	06	Challhuahuacho, Cotabambas	challhuahuacho cotabambas	0	3	2869	\N	\N
2876	Chincheros	06	Chincheros, Apurimac	chincheros apurimac	8	2	2812	\N	\N
2877	Chincheros	01	Chincheros, Chincheros	chincheros chincheros	0	3	2876	\N	\N
2878	Anco-Huallo	02	Anco-Huallo, Chincheros	anco-huallo chincheros	0	3	2876	\N	\N
2879	Cocharcas	03	Cocharcas, Chincheros	cocharcas chincheros	0	3	2876	\N	\N
2880	Huaccana	04	Huaccana, Chincheros	huaccana chincheros	0	3	2876	\N	\N
2881	Ocobamba	05	Ocobamba, Chincheros	ocobamba chincheros	0	3	2876	\N	\N
2882	Ongoy	06	Ongoy, Chincheros	ongoy chincheros	0	3	2876	\N	\N
2883	Uranmarca	07	Uranmarca, Chincheros	uranmarca chincheros	0	3	2876	\N	\N
2884	Ranracancha	08	Ranracancha, Chincheros	ranracancha chincheros	0	3	2876	\N	\N
2885	Grau	07	Grau, Apurimac	grau apurimac	14	2	2812	\N	\N
2886	Chuquibambilla	01	Chuquibambilla, Grau	chuquibambilla grau	0	3	2885	\N	\N
2887	Curpahuasi	02	Curpahuasi, Grau	curpahuasi grau	0	3	2885	\N	\N
2888	Gamarra	03	Gamarra, Grau	gamarra grau	0	3	2885	\N	\N
2890	Mamara	05	Mamara, Grau	mamara grau	0	3	2885	\N	\N
2891	Micaela Bastidas	06	Micaela Bastidas, Grau	micaela bastidas grau	0	3	2885	\N	\N
2892	Pataypampa	07	Pataypampa, Grau	pataypampa grau	0	3	2885	\N	\N
2893	Progreso	08	Progreso, Grau	progreso grau	0	3	2885	\N	\N
2894	San Antonio	09	San Antonio, Grau	san antonio grau	0	3	2885	\N	\N
2895	Santa Rosa	10	Santa Rosa, Grau	santa rosa grau	0	3	2885	\N	\N
2896	Turpay	11	Turpay, Grau	turpay grau	0	3	2885	\N	\N
2897	Vilcabamba	12	Vilcabamba, Grau	vilcabamba grau	0	3	2885	\N	\N
2898	Virundo	13	Virundo, Grau	virundo grau	0	3	2885	\N	\N
2899	Curasco	14	Curasco, Grau	curasco grau	0	3	2885	\N	\N
2900	Arequipa	04	Arequipa, Per├║	arequipa per├║	8	1	2533	\N	\N
2901	Arequipa	01	Arequipa, Arequipa, Arequipa	arequipa arequipa arequipa	29	2	2900	\N	\N
2902	Arequipa	01	Arequipa, Arequipa	arequipa arequipa	0	3	2901	\N	\N
2903	Alto Selva Alegre	02	Alto Selva Alegre, Arequipa	alto selva alegre arequipa	0	3	2901	\N	\N
2904	Cayma	03	Cayma, Arequipa	cayma arequipa	0	3	2901	\N	\N
2905	Cerro Colorado	04	Cerro Colorado, Arequipa	cerro colorado arequipa	0	3	2901	\N	\N
2906	Characato	05	Characato, Arequipa	characato arequipa	0	3	2901	\N	\N
2907	Chiguata	06	Chiguata, Arequipa	chiguata arequipa	0	3	2901	\N	\N
2908	Jacobo Hunter	07	Jacobo Hunter, Arequipa	jacobo hunter arequipa	0	3	2901	\N	\N
2909	La Joya	08	La Joya, Arequipa	la joya arequipa	0	3	2901	\N	\N
2910	Mariano Melgar	09	Mariano Melgar, Arequipa	mariano melgar arequipa	0	3	2901	\N	\N
2911	Miraflores	10	Miraflores, Arequipa	miraflores arequipa	0	3	2901	\N	\N
2912	Mollebaya	11	Mollebaya, Arequipa	mollebaya arequipa	0	3	2901	\N	\N
2913	Paucarpata	12	Paucarpata, Arequipa	paucarpata arequipa	0	3	2901	\N	\N
2914	Pocsi	13	Pocsi, Arequipa	pocsi arequipa	0	3	2901	\N	\N
2915	Polobaya	14	Polobaya, Arequipa	polobaya arequipa	0	3	2901	\N	\N
2916	Quequeqa	15	Quequeqa, Arequipa	quequeqa arequipa	0	3	2901	\N	\N
2917	Sabandia	16	Sabandia, Arequipa	sabandia arequipa	0	3	2901	\N	\N
2918	Sachaca	17	Sachaca, Arequipa	sachaca arequipa	0	3	2901	\N	\N
2919	San Juan de Siguas	18	San Juan de Siguas, Arequipa	san juan de siguas arequipa	0	3	2901	\N	\N
2920	San Juan de Tarucani	19	San Juan de Tarucani, Arequipa	san juan de tarucani arequipa	0	3	2901	\N	\N
2921	Santa Isabel de Siguas	20	Santa Isabel de Siguas, Arequipa	santa isabel de siguas arequipa	0	3	2901	\N	\N
2922	Santa Rita de Siguas	21	Santa Rita de Siguas, Arequipa	santa rita de siguas arequipa	0	3	2901	\N	\N
2923	Socabaya	22	Socabaya, Arequipa	socabaya arequipa	0	3	2901	\N	\N
2924	Tiabaya	23	Tiabaya, Arequipa	tiabaya arequipa	0	3	2901	\N	\N
2925	Uchumayo	24	Uchumayo, Arequipa	uchumayo arequipa	0	3	2901	\N	\N
2926	Vitor	25	Vitor, Arequipa	vitor arequipa	0	3	2901	\N	\N
2927	Yanahuara	26	Yanahuara, Arequipa	yanahuara arequipa	0	3	2901	\N	\N
2928	Yarabamba	27	Yarabamba, Arequipa	yarabamba arequipa	0	3	2901	\N	\N
2929	Yura	28	Yura, Arequipa	yura arequipa	0	3	2901	\N	\N
2930	Jose Luis Bustamante y Rivero	29	Jose Luis Bustamante y Rivero, Arequipa	jose luis bustamante y rivero arequipa	0	3	2901	\N	\N
2931	Camana	02	Camana, Arequipa	camana arequipa	8	2	2900	\N	\N
2932	Camana	01	Camana, Camana	camana camana	0	3	2931	\N	\N
2933	Jose Maria Quimper	02	Jose Maria Quimper, Camana	jose maria quimper camana	0	3	2931	\N	\N
2934	Mariano Nicolas Valcarcel	03	Mariano Nicolas Valcarcel, Camana	mariano nicolas valcarcel camana	0	3	2931	\N	\N
2935	Mariscal Caceres	04	Mariscal Caceres, Camana	mariscal caceres camana	0	3	2931	\N	\N
2936	Nicolas de Pierola	05	Nicolas de Pierola, Camana	nicolas de pierola camana	0	3	2931	\N	\N
2937	Ocoqa	06	Ocoqa, Camana	ocoqa camana	0	3	2931	\N	\N
2938	Quilca	07	Quilca, Camana	quilca camana	0	3	2931	\N	\N
2939	Samuel Pastor	08	Samuel Pastor, Camana	samuel pastor camana	0	3	2931	\N	\N
2940	Caraveli	03	Caraveli, Arequipa	caraveli arequipa	13	2	2900	\N	\N
2941	Caraveli	01	Caraveli, Caraveli	caraveli caraveli	0	3	2940	\N	\N
2942	Acari	02	Acari, Caraveli	acari caraveli	0	3	2940	\N	\N
2943	Atico	03	Atico, Caraveli	atico caraveli	0	3	2940	\N	\N
2944	Atiquipa	04	Atiquipa, Caraveli	atiquipa caraveli	0	3	2940	\N	\N
2945	Bella Union	05	Bella Union, Caraveli	bella union caraveli	0	3	2940	\N	\N
2946	Cahuacho	06	Cahuacho, Caraveli	cahuacho caraveli	0	3	2940	\N	\N
2947	Chala	07	Chala, Caraveli	chala caraveli	0	3	2940	\N	\N
2948	Chaparra	08	Chaparra, Caraveli	chaparra caraveli	0	3	2940	\N	\N
2949	Huanuhuanu	09	Huanuhuanu, Caraveli	huanuhuanu caraveli	0	3	2940	\N	\N
2950	Jaqui	10	Jaqui, Caraveli	jaqui caraveli	0	3	2940	\N	\N
2951	Lomas	11	Lomas, Caraveli	lomas caraveli	0	3	2940	\N	\N
2952	Quicacha	12	Quicacha, Caraveli	quicacha caraveli	0	3	2940	\N	\N
2953	Yauca	13	Yauca, Caraveli	yauca caraveli	0	3	2940	\N	\N
2954	Castilla	04	Castilla, Arequipa	castilla arequipa	16	2	2900	\N	\N
2955	Aplao	01	Aplao, Castilla	aplao castilla	0	3	2954	\N	\N
2956	Andagua	02	Andagua, Castilla	andagua castilla	0	3	2954	\N	\N
2957	Ayo	03	Ayo, Castilla	ayo castilla	0	3	2954	\N	\N
2958	Chachas	04	Chachas, Castilla	chachas castilla	0	3	2954	\N	\N
2959	Chilcaymarca	05	Chilcaymarca, Castilla	chilcaymarca castilla	0	3	2954	\N	\N
2960	Choco	06	Choco, Castilla	choco castilla	0	3	2954	\N	\N
2961	Huancarqui	07	Huancarqui, Castilla	huancarqui castilla	0	3	2954	\N	\N
2962	Machaguay	08	Machaguay, Castilla	machaguay castilla	0	3	2954	\N	\N
2963	Orcopampa	09	Orcopampa, Castilla	orcopampa castilla	0	3	2954	\N	\N
2964	Pampacolca	10	Pampacolca, Castilla	pampacolca castilla	0	3	2954	\N	\N
2965	Tipan	11	Tipan, Castilla	tipan castilla	0	3	2954	\N	\N
2966	Uqon	12	Uqon, Castilla	uqon castilla	0	3	2954	\N	\N
2967	Uraca	13	Uraca, Castilla	uraca castilla	0	3	2954	\N	\N
2968	Viraco	14	Viraco, Castilla	viraco castilla	0	3	2954	\N	\N
2969	Yanque	19	Yanque, Castilla	yanque castilla	0	3	2954	\N	\N
2970	Majes	20	Majes, Castilla	majes castilla	0	3	2954	\N	\N
2971	Caylloma	05	Caylloma, Arequipa	caylloma arequipa	20	2	2900	\N	\N
2972	Chivay	01	Chivay, Caylloma	chivay caylloma	0	3	2971	\N	\N
2973	Achoma	02	Achoma, Caylloma	achoma caylloma	0	3	2971	\N	\N
2974	Cabanaconde	03	Cabanaconde, Caylloma	cabanaconde caylloma	0	3	2971	\N	\N
2975	Callalli	04	Callalli, Caylloma	callalli caylloma	0	3	2971	\N	\N
2976	Caylloma	05	Caylloma, Caylloma	caylloma caylloma	0	3	2971	\N	\N
2977	Coporaque	06	Coporaque, Caylloma	coporaque caylloma	0	3	2971	\N	\N
2978	Huambo	07	Huambo, Caylloma	huambo caylloma	0	3	2971	\N	\N
2979	Huanca	08	Huanca, Caylloma	huanca caylloma	0	3	2971	\N	\N
2980	Ichupampa	09	Ichupampa, Caylloma	ichupampa caylloma	0	3	2971	\N	\N
2981	Lari	10	Lari, Caylloma	lari caylloma	0	3	2971	\N	\N
2982	Lluta	11	Lluta, Caylloma	lluta caylloma	0	3	2971	\N	\N
2983	Maca	12	Maca, Caylloma	maca caylloma	0	3	2971	\N	\N
2984	Madrigal	13	Madrigal, Caylloma	madrigal caylloma	0	3	2971	\N	\N
2985	San Antonio de Chuca	14	San Antonio de Chuca, Caylloma	san antonio de chuca caylloma	0	3	2971	\N	\N
2986	Sibayo	15	Sibayo, Caylloma	sibayo caylloma	0	3	2971	\N	\N
2987	Tapay	16	Tapay, Caylloma	tapay caylloma	0	3	2971	\N	\N
2988	Tisco	17	Tisco, Caylloma	tisco caylloma	0	3	2971	\N	\N
2989	Tuti	18	Tuti, Caylloma	tuti caylloma	0	3	2971	\N	\N
2990	Yanque	19	Yanque, Caylloma	yanque caylloma	0	3	2971	\N	\N
2991	Majes	20	Majes, Caylloma	majes caylloma	0	3	2971	\N	\N
2992	Condesuyos	06	Condesuyos, Arequipa	condesuyos arequipa	8	2	2900	\N	\N
2993	Chuquibamba	01	Chuquibamba, Condesuyos	chuquibamba condesuyos	0	3	2992	\N	\N
2994	Andaray	02	Andaray, Condesuyos	andaray condesuyos	0	3	2992	\N	\N
2995	Cayarani	03	Cayarani, Condesuyos	cayarani condesuyos	0	3	2992	\N	\N
2996	Chichas	04	Chichas, Condesuyos	chichas condesuyos	0	3	2992	\N	\N
2997	Iray	05	Iray, Condesuyos	iray condesuyos	0	3	2992	\N	\N
2998	Rio Grande	06	Rio Grande, Condesuyos	rio grande condesuyos	0	3	2992	\N	\N
2999	Salamanca	07	Salamanca, Condesuyos	salamanca condesuyos	0	3	2992	\N	\N
3000	Yanaquihua	08	Yanaquihua, Condesuyos	yanaquihua condesuyos	0	3	2992	\N	\N
3001	Islay	07	Islay, Arequipa	islay arequipa	6	2	2900	\N	\N
3002	Mollendo	01	Mollendo, Islay	mollendo islay	0	3	3001	\N	\N
3003	Cocachacra	02	Cocachacra, Islay	cocachacra islay	0	3	3001	\N	\N
3004	Dean Valdivia	03	Dean Valdivia, Islay	dean valdivia islay	0	3	3001	\N	\N
3005	Islay	04	Islay, Islay	islay islay	0	3	3001	\N	\N
3006	Mejia	05	Mejia, Islay	mejia islay	0	3	3001	\N	\N
3007	Punta de Bombon	06	Punta de Bombon, Islay	punta de bombon islay	0	3	3001	\N	\N
3008	La Union	08	La Union, Arequipa	la union arequipa	11	2	2900	\N	\N
3009	Cotahuasi	01	Cotahuasi, La Union	cotahuasi la union	0	3	3008	\N	\N
3010	Alca	02	Alca, La Union	alca la union	0	3	3008	\N	\N
3011	Charcana	03	Charcana, La Union	charcana la union	0	3	3008	\N	\N
3012	Huaynacotas	04	Huaynacotas, La Union	huaynacotas la union	0	3	3008	\N	\N
3013	Pampamarca	05	Pampamarca, La Union	pampamarca la union	0	3	3008	\N	\N
3014	Puyca	06	Puyca, La Union	puyca la union	0	3	3008	\N	\N
3015	Quechualla	07	Quechualla, La Union	quechualla la union	0	3	3008	\N	\N
3016	Sayla	08	Sayla, La Union	sayla la union	0	3	3008	\N	\N
3017	Tauria	09	Tauria, La Union	tauria la union	0	3	3008	\N	\N
3018	Tomepampa	10	Tomepampa, La Union	tomepampa la union	0	3	3008	\N	\N
3019	Toro	11	Toro, La Union	toro la union	0	3	3008	\N	\N
3020	Ayacucho	05	Ayacucho, Per├║	ayacucho per├║	11	1	2533	\N	\N
3021	Huamanga	01	Huamanga, Ayacucho	huamanga ayacucho	15	2	3020	\N	\N
3022	Ayacucho	01	Ayacucho, Huamanga	ayacucho huamanga	0	3	3021	\N	\N
3023	Acocro	02	Acocro, Huamanga	acocro huamanga	0	3	3021	\N	\N
3024	Acos Vinchos	03	Acos Vinchos, Huamanga	acos vinchos huamanga	0	3	3021	\N	\N
3025	Carmen Alto	04	Carmen Alto, Huamanga	carmen alto huamanga	0	3	3021	\N	\N
3026	Chiara	05	Chiara, Huamanga	chiara huamanga	0	3	3021	\N	\N
3027	Ocros	06	Ocros, Huamanga	ocros huamanga	0	3	3021	\N	\N
3028	Pacaycasa	07	Pacaycasa, Huamanga	pacaycasa huamanga	0	3	3021	\N	\N
3029	Quinua	08	Quinua, Huamanga	quinua huamanga	0	3	3021	\N	\N
3030	San Jose de Ticllas	09	San Jose de Ticllas, Huamanga	san jose de ticllas huamanga	0	3	3021	\N	\N
3031	San Juan Bautista	10	San Juan Bautista, Huamanga	san juan bautista huamanga	0	3	3021	\N	\N
3032	Santiago de Pischa	11	Santiago de Pischa, Huamanga	santiago de pischa huamanga	0	3	3021	\N	\N
3033	Socos	12	Socos, Huamanga	socos huamanga	0	3	3021	\N	\N
3034	Tambillo	13	Tambillo, Huamanga	tambillo huamanga	0	3	3021	\N	\N
3035	Vinchos	14	Vinchos, Huamanga	vinchos huamanga	0	3	3021	\N	\N
3036	Jes├║s Nazareno	15	Jes├║s Nazareno, Huamanga	jes├║s nazareno huamanga	0	3	3021	\N	\N
3037	Cangallo	02	Cangallo, Ayacucho	cangallo ayacucho	6	2	3020	\N	\N
3038	Cangallo	01	Cangallo, Cangallo	cangallo cangallo	0	3	3037	\N	\N
3039	Chuschi	02	Chuschi, Cangallo	chuschi cangallo	0	3	3037	\N	\N
3040	Los Morochucos	03	Los Morochucos, Cangallo	los morochucos cangallo	0	3	3037	\N	\N
3041	Maria Parado de Bellido	04	Maria Parado de Bellido, Cangallo	maria parado de bellido cangallo	0	3	3037	\N	\N
3042	Paras	05	Paras, Cangallo	paras cangallo	0	3	3037	\N	\N
3043	Totos	06	Totos, Cangallo	totos cangallo	0	3	3037	\N	\N
3044	Huanca Sancos	03	Huanca Sancos, Ayacucho	huanca sancos ayacucho	4	2	3020	\N	\N
3045	Sancos	01	Sancos, Huanca Sancos	sancos huanca sancos	0	3	3044	\N	\N
3046	Carapo	02	Carapo, Huanca Sancos	carapo huanca sancos	0	3	3044	\N	\N
3047	Sacsamarca	03	Sacsamarca, Huanca Sancos	sacsamarca huanca sancos	0	3	3044	\N	\N
3048	Santiago de Lucanamarca	04	Santiago de Lucanamarca, Huanca Sancos	santiago de lucanamarca huanca sancos	0	3	3044	\N	\N
3049	Huanta	04	Huanta, Ayacucho	huanta ayacucho	8	2	3020	\N	\N
3050	Huanta	01	Huanta, Huanta	huanta huanta	0	3	3049	\N	\N
3051	Ayahuanco	02	Ayahuanco, Huanta	ayahuanco huanta	0	3	3049	\N	\N
3052	Huamanguilla	03	Huamanguilla, Huanta	huamanguilla huanta	0	3	3049	\N	\N
3053	Iguain	04	Iguain, Huanta	iguain huanta	0	3	3049	\N	\N
3054	Luricocha	05	Luricocha, Huanta	luricocha huanta	0	3	3049	\N	\N
3055	Santillana	06	Santillana, Huanta	santillana huanta	0	3	3049	\N	\N
3056	Sivia	07	Sivia, Huanta	sivia huanta	0	3	3049	\N	\N
3057	Llochegua	08	Llochegua, Huanta	llochegua huanta	0	3	3049	\N	\N
3058	La Mar	05	La Mar, Ayacucho	la mar ayacucho	8	2	3020	\N	\N
3059	San Miguel	01	San Miguel, La Mar	san miguel la mar	0	3	3058	\N	\N
3060	Anco	02	Anco, La Mar	anco la mar	0	3	3058	\N	\N
3061	Ayna	03	Ayna, La Mar	ayna la mar	0	3	3058	\N	\N
3062	Chilcas	04	Chilcas, La Mar	chilcas la mar	0	3	3058	\N	\N
3063	Chungui	05	Chungui, La Mar	chungui la mar	0	3	3058	\N	\N
3064	Luis Carranza	06	Luis Carranza, La Mar	luis carranza la mar	0	3	3058	\N	\N
3065	Santa Rosa	07	Santa Rosa, La Mar	santa rosa la mar	0	3	3058	\N	\N
3066	Tambo	08	Tambo, La Mar	tambo la mar	0	3	3058	\N	\N
3067	Lucanas	06	Lucanas, Ayacucho	lucanas ayacucho	21	2	3020	\N	\N
3068	Puquio	01	Puquio, Lucanas	puquio lucanas	0	3	3067	\N	\N
3069	Aucara	02	Aucara, Lucanas	aucara lucanas	0	3	3067	\N	\N
3070	Cabana	03	Cabana, Lucanas	cabana lucanas	0	3	3067	\N	\N
3071	Carmen Salcedo	04	Carmen Salcedo, Lucanas	carmen salcedo lucanas	0	3	3067	\N	\N
3072	Chaviqa	05	Chaviqa, Lucanas	chaviqa lucanas	0	3	3067	\N	\N
3073	Chipao	06	Chipao, Lucanas	chipao lucanas	0	3	3067	\N	\N
3074	Huac-Huas	07	Huac-Huas, Lucanas	huac-huas lucanas	0	3	3067	\N	\N
3075	Laramate	08	Laramate, Lucanas	laramate lucanas	0	3	3067	\N	\N
3076	Leoncio Prado	09	Leoncio Prado, Lucanas	leoncio prado lucanas	0	3	3067	\N	\N
3077	Llauta	10	Llauta, Lucanas	llauta lucanas	0	3	3067	\N	\N
3078	Lucanas	11	Lucanas, Lucanas	lucanas lucanas	0	3	3067	\N	\N
3079	Ocaqa	12	Ocaqa, Lucanas	ocaqa lucanas	0	3	3067	\N	\N
3080	Otoca	13	Otoca, Lucanas	otoca lucanas	0	3	3067	\N	\N
3081	Saisa	14	Saisa, Lucanas	saisa lucanas	0	3	3067	\N	\N
3082	San Cristobal	15	San Cristobal, Lucanas	san cristobal lucanas	0	3	3067	\N	\N
3083	San Juan	16	San Juan, Lucanas	san juan lucanas	0	3	3067	\N	\N
3084	San Pedro	17	San Pedro, Lucanas	san pedro lucanas	0	3	3067	\N	\N
3085	San Pedro de Palco	18	San Pedro de Palco, Lucanas	san pedro de palco lucanas	0	3	3067	\N	\N
3086	Sancos	19	Sancos, Lucanas	sancos lucanas	0	3	3067	\N	\N
3087	Santa Ana de Huaycahuacho	20	Santa Ana de Huaycahuacho, Lucanas	santa ana de huaycahuacho lucanas	0	3	3067	\N	\N
3088	Santa Lucia	21	Santa Lucia, Lucanas	santa lucia lucanas	0	3	3067	\N	\N
3089	Parinacochas	07	Parinacochas, Ayacucho	parinacochas ayacucho	8	2	3020	\N	\N
3090	Coracora	01	Coracora, Parinacochas	coracora parinacochas	0	3	3089	\N	\N
3091	Chumpi	02	Chumpi, Parinacochas	chumpi parinacochas	0	3	3089	\N	\N
3092	Coronel Castaqeda	03	Coronel Castaqeda, Parinacochas	coronel castaqeda parinacochas	0	3	3089	\N	\N
3093	Pacapausa	04	Pacapausa, Parinacochas	pacapausa parinacochas	0	3	3089	\N	\N
3094	Pullo	05	Pullo, Parinacochas	pullo parinacochas	0	3	3089	\N	\N
3095	Puyusca	06	Puyusca, Parinacochas	puyusca parinacochas	0	3	3089	\N	\N
3096	San Francisco de Ravacayco	07	San Francisco de Ravacayco, Parinacochas	san francisco de ravacayco parinacochas	0	3	3089	\N	\N
3097	Upahuacho	08	Upahuacho, Parinacochas	upahuacho parinacochas	0	3	3089	\N	\N
3098	Paucar del Sara Sara	08	Paucar del Sara Sara, Ayacucho	paucar del sara sara ayacucho	10	2	3020	\N	\N
3099	Pausa	01	Pausa, Paucar del Sara Sara	pausa paucar del sara sara	0	3	3098	\N	\N
3100	Colta	02	Colta, Paucar del Sara Sara	colta paucar del sara sara	0	3	3098	\N	\N
3101	Corculla	03	Corculla, Paucar del Sara Sara	corculla paucar del sara sara	0	3	3098	\N	\N
3102	Lampa	04	Lampa, Paucar del Sara Sara	lampa paucar del sara sara	0	3	3098	\N	\N
3103	Marcabamba	05	Marcabamba, Paucar del Sara Sara	marcabamba paucar del sara sara	0	3	3098	\N	\N
3104	Oyolo	06	Oyolo, Paucar del Sara Sara	oyolo paucar del sara sara	0	3	3098	\N	\N
3105	Pararca	07	Pararca, Paucar del Sara Sara	pararca paucar del sara sara	0	3	3098	\N	\N
3106	San Javier de Alpabamba	08	San Javier de Alpabamba, Paucar del Sara Sara	san javier de alpabamba paucar del sara sara	0	3	3098	\N	\N
3107	San Jose de Ushua	09	San Jose de Ushua, Paucar del Sara Sara	san jose de ushua paucar del sara sara	0	3	3098	\N	\N
3108	Sara Sara	10	Sara Sara, Paucar del Sara Sara	sara sara paucar del sara sara	0	3	3098	\N	\N
3109	Sucre	09	Sucre, Ayacucho	sucre ayacucho	11	2	3020	\N	\N
3110	Querobamba	01	Querobamba, Sucre	querobamba sucre	0	3	3109	\N	\N
3111	Belen	02	Belen, Sucre	belen sucre	0	3	3109	\N	\N
3112	Chalcos	03	Chalcos, Sucre	chalcos sucre	0	3	3109	\N	\N
3113	Chilcayoc	04	Chilcayoc, Sucre	chilcayoc sucre	0	3	3109	\N	\N
3114	Huacaqa	05	Huacaqa, Sucre	huacaqa sucre	0	3	3109	\N	\N
3115	Morcolla	06	Morcolla, Sucre	morcolla sucre	0	3	3109	\N	\N
3116	Paico	07	Paico, Sucre	paico sucre	0	3	3109	\N	\N
3117	San Pedro de Larcay	08	San Pedro de Larcay, Sucre	san pedro de larcay sucre	0	3	3109	\N	\N
3118	San Salvador de Quije	09	San Salvador de Quije, Sucre	san salvador de quije sucre	0	3	3109	\N	\N
3119	Santiago de Paucaray	10	Santiago de Paucaray, Sucre	santiago de paucaray sucre	0	3	3109	\N	\N
3120	Soras	11	Soras, Sucre	soras sucre	0	3	3109	\N	\N
3121	Victor Fajardo	10	Victor Fajardo, Ayacucho	victor fajardo ayacucho	12	2	3020	\N	\N
3122	Huancapi	01	Huancapi, Victor Fajardo	huancapi victor fajardo	0	3	3121	\N	\N
3123	Alcamenca	02	Alcamenca, Victor Fajardo	alcamenca victor fajardo	0	3	3121	\N	\N
3124	Apongo	03	Apongo, Victor Fajardo	apongo victor fajardo	0	3	3121	\N	\N
3125	Asquipata	04	Asquipata, Victor Fajardo	asquipata victor fajardo	0	3	3121	\N	\N
3126	Canaria	05	Canaria, Victor Fajardo	canaria victor fajardo	0	3	3121	\N	\N
3127	Cayara	06	Cayara, Victor Fajardo	cayara victor fajardo	0	3	3121	\N	\N
3128	Colca	07	Colca, Victor Fajardo	colca victor fajardo	0	3	3121	\N	\N
3129	Huamanquiquia	08	Huamanquiquia, Victor Fajardo	huamanquiquia victor fajardo	0	3	3121	\N	\N
3130	Huancaraylla	09	Huancaraylla, Victor Fajardo	huancaraylla victor fajardo	0	3	3121	\N	\N
3131	Huaya	10	Huaya, Victor Fajardo	huaya victor fajardo	0	3	3121	\N	\N
3132	Sarhua	11	Sarhua, Victor Fajardo	sarhua victor fajardo	0	3	3121	\N	\N
3133	Vilcanchos	12	Vilcanchos, Victor Fajardo	vilcanchos victor fajardo	0	3	3121	\N	\N
3134	Vilcas Huaman	11	Vilcas Huaman, Ayacucho	vilcas huaman ayacucho	8	2	3020	\N	\N
3135	Vilcas Huaman	01	Vilcas Huaman, Vilcas Huaman	vilcas huaman vilcas huaman	0	3	3134	\N	\N
3136	Accomarca	02	Accomarca, Vilcas Huaman	accomarca vilcas huaman	0	3	3134	\N	\N
3137	Carhuanca	03	Carhuanca, Vilcas Huaman	carhuanca vilcas huaman	0	3	3134	\N	\N
3138	Concepcion	04	Concepcion, Vilcas Huaman	concepcion vilcas huaman	0	3	3134	\N	\N
3139	Huambalpa	05	Huambalpa, Vilcas Huaman	huambalpa vilcas huaman	0	3	3134	\N	\N
3140	Independencia	06	Independencia, Vilcas Huaman	independencia vilcas huaman	0	3	3134	\N	\N
3141	Saurama	07	Saurama, Vilcas Huaman	saurama vilcas huaman	0	3	3134	\N	\N
3142	Vischongo	08	Vischongo, Vilcas Huaman	vischongo vilcas huaman	0	3	3134	\N	\N
3143	Cajamarca	06	Cajamarca, Per├║	cajamarca per├║	13	1	2533	\N	\N
3144	Cajamarca	01	Cajamarca, Cajamarca, Cajamarca	cajamarca cajamarca cajamarca	12	2	3143	\N	\N
3145	Cajamarca	01	Cajamarca, Cajamarca	cajamarca cajamarca	0	3	3144	\N	\N
3146	Asuncion	02	Asuncion, Cajamarca	asuncion cajamarca	0	3	3144	\N	\N
3147	Chetilla	03	Chetilla, Cajamarca	chetilla cajamarca	0	3	3144	\N	\N
3148	Cospan	04	Cospan, Cajamarca	cospan cajamarca	0	3	3144	\N	\N
3149	Encaqada	05	Encaqada, Cajamarca	encaqada cajamarca	0	3	3144	\N	\N
3150	Jesus	06	Jesus, Cajamarca	jesus cajamarca	0	3	3144	\N	\N
3151	Llacanora	07	Llacanora, Cajamarca	llacanora cajamarca	0	3	3144	\N	\N
3152	Los Baqos del Inca	08	Los Baqos del Inca, Cajamarca	los baqos del inca cajamarca	0	3	3144	\N	\N
3153	Magdalena	09	Magdalena, Cajamarca	magdalena cajamarca	0	3	3144	\N	\N
3154	Matara	10	Matara, Cajamarca	matara cajamarca	0	3	3144	\N	\N
3155	Namora	11	Namora, Cajamarca	namora cajamarca	0	3	3144	\N	\N
3156	San Juan	12	San Juan, Cajamarca	san juan cajamarca	0	3	3144	\N	\N
3157	Cajabamba	02	Cajabamba, Cajamarca	cajabamba cajamarca	4	2	3143	\N	\N
3158	Cajabamba	01	Cajabamba, Cajabamba	cajabamba cajabamba	0	3	3157	\N	\N
3159	Cachachi	02	Cachachi, Cajabamba	cachachi cajabamba	0	3	3157	\N	\N
3160	Condebamba	03	Condebamba, Cajabamba	condebamba cajabamba	0	3	3157	\N	\N
3161	Sitacocha	04	Sitacocha, Cajabamba	sitacocha cajabamba	0	3	3157	\N	\N
3162	Celendin	03	Celendin, Cajamarca	celendin cajamarca	12	2	3143	\N	\N
3163	Celendin	01	Celendin, Celendin	celendin celendin	0	3	3162	\N	\N
3164	Chumuch	02	Chumuch, Celendin	chumuch celendin	0	3	3162	\N	\N
3165	Cortegana	03	Cortegana, Celendin	cortegana celendin	0	3	3162	\N	\N
3166	Huasmin	04	Huasmin, Celendin	huasmin celendin	0	3	3162	\N	\N
3167	Jorge Chavez	05	Jorge Chavez, Celendin	jorge chavez celendin	0	3	3162	\N	\N
3168	Jose Galvez	06	Jose Galvez, Celendin	jose galvez celendin	0	3	3162	\N	\N
3169	Miguel Iglesias	07	Miguel Iglesias, Celendin	miguel iglesias celendin	0	3	3162	\N	\N
3170	Oxamarca	08	Oxamarca, Celendin	oxamarca celendin	0	3	3162	\N	\N
3171	Sorochuco	09	Sorochuco, Celendin	sorochuco celendin	0	3	3162	\N	\N
3172	Sucre	10	Sucre, Celendin	sucre celendin	0	3	3162	\N	\N
3173	Utco	11	Utco, Celendin	utco celendin	0	3	3162	\N	\N
3174	La Libertad de Pallan	12	La Libertad de Pallan, Celendin	la libertad de pallan celendin	0	3	3162	\N	\N
3175	Chota	04	Chota, Cajamarca	chota cajamarca	19	2	3143	\N	\N
3176	Chota	01	Chota, Chota	chota chota	0	3	3175	\N	\N
3177	Anguia	02	Anguia, Chota	anguia chota	0	3	3175	\N	\N
3178	Chadin	03	Chadin, Chota	chadin chota	0	3	3175	\N	\N
3179	Chiguirip	04	Chiguirip, Chota	chiguirip chota	0	3	3175	\N	\N
3180	Chimban	05	Chimban, Chota	chimban chota	0	3	3175	\N	\N
3181	Choropampa	06	Choropampa, Chota	choropampa chota	0	3	3175	\N	\N
3182	Cochabamba	07	Cochabamba, Chota	cochabamba chota	0	3	3175	\N	\N
3183	Conchan	08	Conchan, Chota	conchan chota	0	3	3175	\N	\N
3184	Huambos	09	Huambos, Chota	huambos chota	0	3	3175	\N	\N
3185	Lajas	10	Lajas, Chota	lajas chota	0	3	3175	\N	\N
3186	Llama	11	Llama, Chota	llama chota	0	3	3175	\N	\N
3187	Miracosta	12	Miracosta, Chota	miracosta chota	0	3	3175	\N	\N
3188	Paccha	13	Paccha, Chota	paccha chota	0	3	3175	\N	\N
3189	Pion	14	Pion, Chota	pion chota	0	3	3175	\N	\N
3190	Querocoto	15	Querocoto, Chota	querocoto chota	0	3	3175	\N	\N
3191	San Juan de Licupis	16	San Juan de Licupis, Chota	san juan de licupis chota	0	3	3175	\N	\N
3192	Tacabamba	17	Tacabamba, Chota	tacabamba chota	0	3	3175	\N	\N
3193	Tocmoche	18	Tocmoche, Chota	tocmoche chota	0	3	3175	\N	\N
3194	Chalamarca	19	Chalamarca, Chota	chalamarca chota	0	3	3175	\N	\N
3195	Contumaza	05	Contumaza, Cajamarca	contumaza cajamarca	8	2	3143	\N	\N
3196	Contumaza	01	Contumaza, Contumaza	contumaza contumaza	0	3	3195	\N	\N
3197	Chilete	02	Chilete, Contumaza	chilete contumaza	0	3	3195	\N	\N
3198	Cupisnique	03	Cupisnique, Contumaza	cupisnique contumaza	0	3	3195	\N	\N
3199	Guzmango	04	Guzmango, Contumaza	guzmango contumaza	0	3	3195	\N	\N
3200	San Benito	05	San Benito, Contumaza	san benito contumaza	0	3	3195	\N	\N
3201	Santa Cruz de Toled	06	Santa Cruz de Toled, Contumaza	santa cruz de toled contumaza	0	3	3195	\N	\N
3202	Tantarica	07	Tantarica, Contumaza	tantarica contumaza	0	3	3195	\N	\N
3203	Yonan	08	Yonan, Contumaza	yonan contumaza	0	3	3195	\N	\N
3204	Cutervo	06	Cutervo, Cajamarca	cutervo cajamarca	15	2	3143	\N	\N
3205	Cutervo	01	Cutervo, Cutervo	cutervo cutervo	0	3	3204	\N	\N
3206	Callayuc	02	Callayuc, Cutervo	callayuc cutervo	0	3	3204	\N	\N
3207	Choros	03	Choros, Cutervo	choros cutervo	0	3	3204	\N	\N
3208	Cujillo	04	Cujillo, Cutervo	cujillo cutervo	0	3	3204	\N	\N
3209	La Ramada	05	La Ramada, Cutervo	la ramada cutervo	0	3	3204	\N	\N
3210	Pimpingos	06	Pimpingos, Cutervo	pimpingos cutervo	0	3	3204	\N	\N
3211	Querocotillo	07	Querocotillo, Cutervo	querocotillo cutervo	0	3	3204	\N	\N
3212	San Andres de Cutervo	08	San Andres de Cutervo, Cutervo	san andres de cutervo cutervo	0	3	3204	\N	\N
3213	San Juan de Cutervo	09	San Juan de Cutervo, Cutervo	san juan de cutervo cutervo	0	3	3204	\N	\N
3214	San Luis de Lucma	10	San Luis de Lucma, Cutervo	san luis de lucma cutervo	0	3	3204	\N	\N
3215	Santa Cruz	11	Santa Cruz, Cutervo	santa cruz cutervo	0	3	3204	\N	\N
3216	Santo Domingo de la Capilla	12	Santo Domingo de la Capilla, Cutervo	santo domingo de la capilla cutervo	0	3	3204	\N	\N
3217	Santo Tomas	13	Santo Tomas, Cutervo	santo tomas cutervo	0	3	3204	\N	\N
3218	Socota	14	Socota, Cutervo	socota cutervo	0	3	3204	\N	\N
3219	Toribio Casanova	15	Toribio Casanova, Cutervo	toribio casanova cutervo	0	3	3204	\N	\N
3220	Hualgayoc	07	Hualgayoc, Cajamarca	hualgayoc cajamarca	3	2	3143	\N	\N
3221	Bambamarca	01	Bambamarca, Hualgayoc	bambamarca hualgayoc	0	3	3220	\N	\N
3222	Chugur	02	Chugur, Hualgayoc	chugur hualgayoc	0	3	3220	\N	\N
3223	Hualgayoc	03	Hualgayoc, Hualgayoc	hualgayoc hualgayoc	0	3	3220	\N	\N
3224	Jaen	08	Jaen, Cajamarca	jaen cajamarca	12	2	3143	\N	\N
3225	Jaen	01	Jaen, Jaen	jaen jaen	0	3	3224	\N	\N
3226	Bellavista	02	Bellavista, Jaen	bellavista jaen	0	3	3224	\N	\N
3227	Chontali	03	Chontali, Jaen	chontali jaen	0	3	3224	\N	\N
3228	Colasay	04	Colasay, Jaen	colasay jaen	0	3	3224	\N	\N
3229	Huabal	05	Huabal, Jaen	huabal jaen	0	3	3224	\N	\N
3230	Las Pirias	06	Las Pirias, Jaen	las pirias jaen	0	3	3224	\N	\N
3231	Pomahuaca	07	Pomahuaca, Jaen	pomahuaca jaen	0	3	3224	\N	\N
3232	Pucara	08	Pucara, Jaen	pucara jaen	0	3	3224	\N	\N
3233	Sallique	09	Sallique, Jaen	sallique jaen	0	3	3224	\N	\N
3234	San Felipe	10	San Felipe, Jaen	san felipe jaen	0	3	3224	\N	\N
3235	San Jose del Alto	11	San Jose del Alto, Jaen	san jose del alto jaen	0	3	3224	\N	\N
3236	Santa Rosa	12	Santa Rosa, Jaen	santa rosa jaen	0	3	3224	\N	\N
3237	San Ignacio	09	San Ignacio, Cajamarca	san ignacio cajamarca	7	2	3143	\N	\N
3238	San Ignacio	01	San Ignacio, San Ignacio	san ignacio san ignacio	0	3	3237	\N	\N
3239	Chirinos	02	Chirinos, San Ignacio	chirinos san ignacio	0	3	3237	\N	\N
3240	Huarango	03	Huarango, San Ignacio	huarango san ignacio	0	3	3237	\N	\N
3241	La Coipa	04	La Coipa, San Ignacio	la coipa san ignacio	0	3	3237	\N	\N
3242	Namballe	05	Namballe, San Ignacio	namballe san ignacio	0	3	3237	\N	\N
3243	San Jose de Lourdes	06	San Jose de Lourdes, San Ignacio	san jose de lourdes san ignacio	0	3	3237	\N	\N
3244	Tabaconas	07	Tabaconas, San Ignacio	tabaconas san ignacio	0	3	3237	\N	\N
3245	San Marcos	10	San Marcos, Cajamarca	san marcos cajamarca	7	2	3143	\N	\N
3246	Pedro Galvez	01	Pedro Galvez, San Marcos	pedro galvez san marcos	0	3	3245	\N	\N
3247	Chancay	02	Chancay, San Marcos	chancay san marcos	0	3	3245	\N	\N
3248	Eduardo Villanueva	03	Eduardo Villanueva, San Marcos	eduardo villanueva san marcos	0	3	3245	\N	\N
3249	Gregorio Pita	04	Gregorio Pita, San Marcos	gregorio pita san marcos	0	3	3245	\N	\N
3250	Ichocan	05	Ichocan, San Marcos	ichocan san marcos	0	3	3245	\N	\N
3251	Jose Manuel Quiroz	06	Jose Manuel Quiroz, San Marcos	jose manuel quiroz san marcos	0	3	3245	\N	\N
3252	Jose Sabogal	07	Jose Sabogal, San Marcos	jose sabogal san marcos	0	3	3245	\N	\N
3253	San Miguel	11	San Miguel, Cajamarca	san miguel cajamarca	13	2	3143	\N	\N
3254	San Miguel	01	San Miguel, San Miguel	san miguel san miguel	0	3	3253	\N	\N
3255	Bolivar	02	Bolivar, San Miguel	bolivar san miguel	0	3	3253	\N	\N
3256	Calquis	03	Calquis, San Miguel	calquis san miguel	0	3	3253	\N	\N
3257	Catilluc	04	Catilluc, San Miguel	catilluc san miguel	0	3	3253	\N	\N
3258	El Prado	05	El Prado, San Miguel	el prado san miguel	0	3	3253	\N	\N
3259	La Florida	06	La Florida, San Miguel	la florida san miguel	0	3	3253	\N	\N
3260	Llapa	07	Llapa, San Miguel	llapa san miguel	0	3	3253	\N	\N
3261	Nanchoc	08	Nanchoc, San Miguel	nanchoc san miguel	0	3	3253	\N	\N
3262	Niepos	09	Niepos, San Miguel	niepos san miguel	0	3	3253	\N	\N
3263	San Gregorio	10	San Gregorio, San Miguel	san gregorio san miguel	0	3	3253	\N	\N
3264	San Silvestre de Cochan	11	San Silvestre de Cochan, San Miguel	san silvestre de cochan san miguel	0	3	3253	\N	\N
3265	Tongod	12	Tongod, San Miguel	tongod san miguel	0	3	3253	\N	\N
3266	Union Agua Blanca	13	Union Agua Blanca, San Miguel	union agua blanca san miguel	0	3	3253	\N	\N
3267	San Pablo	12	San Pablo, Cajamarca	san pablo cajamarca	4	2	3143	\N	\N
3268	San Pablo	01	San Pablo, San Pablo	san pablo san pablo	0	3	3267	\N	\N
3269	San Bernardino	02	San Bernardino, San Pablo	san bernardino san pablo	0	3	3267	\N	\N
3270	San Luis	03	San Luis, San Pablo	san luis san pablo	0	3	3267	\N	\N
3271	Tumbaden	04	Tumbaden, San Pablo	tumbaden san pablo	0	3	3267	\N	\N
3272	Santa Cruz	13	Santa Cruz, Cajamarca	santa cruz cajamarca	11	2	3143	\N	\N
3273	Santa Cruz	01	Santa Cruz, Santa Cruz	santa cruz santa cruz	0	3	3272	\N	\N
3274	Andabamba	02	Andabamba, Santa Cruz	andabamba santa cruz	0	3	3272	\N	\N
3275	Catache	03	Catache, Santa Cruz	catache santa cruz	0	3	3272	\N	\N
3276	Chancaybaqos	04	Chancaybaqos, Santa Cruz	chancaybaqos santa cruz	0	3	3272	\N	\N
3277	La Esperanza	05	La Esperanza, Santa Cruz	la esperanza santa cruz	0	3	3272	\N	\N
3278	Ninabamba	06	Ninabamba, Santa Cruz	ninabamba santa cruz	0	3	3272	\N	\N
3279	Pulan	07	Pulan, Santa Cruz	pulan santa cruz	0	3	3272	\N	\N
3280	Saucepampa	08	Saucepampa, Santa Cruz	saucepampa santa cruz	0	3	3272	\N	\N
3281	Sexi	09	Sexi, Santa Cruz	sexi santa cruz	0	3	3272	\N	\N
3282	Uticyacu	10	Uticyacu, Santa Cruz	uticyacu santa cruz	0	3	3272	\N	\N
3283	Yauyucan	11	Yauyucan, Santa Cruz	yauyucan santa cruz	0	3	3272	\N	\N
3285	Callao	01	Callao, Callao, Lima	callao callao lima	6	2	3926	\N	\N
3286	Callao	01	Callao, Callao	callao callao	0	3	3285	\N	\N
3287	Bellavista	02	Bellavista, Callao	bellavista callao	0	3	3285	\N	\N
3288	Carmen de la Legua Reynoso	03	Carmen de la Legua Reynoso, Callao	carmen de la legua reynoso callao	0	3	3285	\N	\N
3289	La Perla	04	La Perla, Callao	la perla callao	0	3	3285	\N	\N
3290	La Punta	05	La Punta, Callao	la punta callao	0	3	3285	\N	\N
3291	Ventanilla	06	Ventanilla, Callao	ventanilla callao	0	3	3285	\N	\N
3292	Cusco	08	Cusco, Per├║	cusco per├║	13	1	2533	\N	\N
3293	Cusco	01	Cusco, Cusco, Cusco	cusco cusco cusco	8	2	3292	\N	\N
3294	Cusco	01	Cusco, Cusco	cusco cusco	0	3	3293	\N	\N
3295	Ccorca	02	Ccorca, Cusco	ccorca cusco	0	3	3293	\N	\N
3296	Poroy	03	Poroy, Cusco	poroy cusco	0	3	3293	\N	\N
3297	San Jeronimo	04	San Jeronimo, Cusco	san jeronimo cusco	0	3	3293	\N	\N
3298	San Sebastian	05	San Sebastian, Cusco	san sebastian cusco	0	3	3293	\N	\N
3299	Santiago	06	Santiago, Cusco	santiago cusco	0	3	3293	\N	\N
3300	Saylla	07	Saylla, Cusco	saylla cusco	0	3	3293	\N	\N
3301	Wanchaq	08	Wanchaq, Cusco	wanchaq cusco	0	3	3293	\N	\N
3302	Acomayo	02	Acomayo, Cusco	acomayo cusco	7	2	3292	\N	\N
3303	Acomayo	01	Acomayo, Acomayo	acomayo acomayo	0	3	3302	\N	\N
3304	Acopia	02	Acopia, Acomayo	acopia acomayo	0	3	3302	\N	\N
3305	Acos	03	Acos, Acomayo	acos acomayo	0	3	3302	\N	\N
3306	Mosoc Llacta	04	Mosoc Llacta, Acomayo	mosoc llacta acomayo	0	3	3302	\N	\N
3307	Pomacanchi	05	Pomacanchi, Acomayo	pomacanchi acomayo	0	3	3302	\N	\N
3308	Rondocan	06	Rondocan, Acomayo	rondocan acomayo	0	3	3302	\N	\N
3309	Sangarara	07	Sangarara, Acomayo	sangarara acomayo	0	3	3302	\N	\N
3310	Anta	03	Anta, Cusco	anta cusco	9	2	3292	\N	\N
3311	Anta	01	Anta, Anta	anta anta	0	3	3310	\N	\N
3312	Ancahuasi	02	Ancahuasi, Anta	ancahuasi anta	0	3	3310	\N	\N
3313	Cachimayo	03	Cachimayo, Anta	cachimayo anta	0	3	3310	\N	\N
3314	Chinchaypujio	04	Chinchaypujio, Anta	chinchaypujio anta	0	3	3310	\N	\N
3315	Huarocondo	05	Huarocondo, Anta	huarocondo anta	0	3	3310	\N	\N
3316	Limatambo	06	Limatambo, Anta	limatambo anta	0	3	3310	\N	\N
3317	Mollepata	07	Mollepata, Anta	mollepata anta	0	3	3310	\N	\N
3318	Pucyura	08	Pucyura, Anta	pucyura anta	0	3	3310	\N	\N
3319	Zurite	09	Zurite, Anta	zurite anta	0	3	3310	\N	\N
3320	Calca	04	Calca, Cusco	calca cusco	8	2	3292	\N	\N
3321	Calca	01	Calca, Calca	calca calca	0	3	3320	\N	\N
3322	Coya	02	Coya, Calca	coya calca	0	3	3320	\N	\N
3323	Lamay	03	Lamay, Calca	lamay calca	0	3	3320	\N	\N
3324	Lares	04	Lares, Calca	lares calca	0	3	3320	\N	\N
3325	Pisac	05	Pisac, Calca	pisac calca	0	3	3320	\N	\N
3326	San Salvador	06	San Salvador, Calca	san salvador calca	0	3	3320	\N	\N
3327	Taray	07	Taray, Calca	taray calca	0	3	3320	\N	\N
3328	Yanatile	08	Yanatile, Calca	yanatile calca	0	3	3320	\N	\N
3329	Canas	05	Canas, Cusco	canas cusco	8	2	3292	\N	\N
3330	Yanaoca	01	Yanaoca, Canas	yanaoca canas	0	3	3329	\N	\N
3331	Checca	02	Checca, Canas	checca canas	0	3	3329	\N	\N
3332	Kunturkanki	03	Kunturkanki, Canas	kunturkanki canas	0	3	3329	\N	\N
3333	Langui	04	Langui, Canas	langui canas	0	3	3329	\N	\N
3334	Layo	05	Layo, Canas	layo canas	0	3	3329	\N	\N
3335	Pampamarca	06	Pampamarca, Canas	pampamarca canas	0	3	3329	\N	\N
3336	Quehue	07	Quehue, Canas	quehue canas	0	3	3329	\N	\N
3337	Tupac Amaru	08	Tupac Amaru, Canas	tupac amaru canas	0	3	3329	\N	\N
3338	Canchis	06	Canchis, Cusco	canchis cusco	8	2	3292	\N	\N
3339	Sicuani	01	Sicuani, Canchis	sicuani canchis	0	3	3338	\N	\N
3340	Checacupe	02	Checacupe, Canchis	checacupe canchis	0	3	3338	\N	\N
3341	Combapata	03	Combapata, Canchis	combapata canchis	0	3	3338	\N	\N
3342	Marangani	04	Marangani, Canchis	marangani canchis	0	3	3338	\N	\N
3343	Pitumarca	05	Pitumarca, Canchis	pitumarca canchis	0	3	3338	\N	\N
3344	San Pablo	06	San Pablo, Canchis	san pablo canchis	0	3	3338	\N	\N
3345	San Pedro	07	San Pedro, Canchis	san pedro canchis	0	3	3338	\N	\N
3346	Tinta	08	Tinta, Canchis	tinta canchis	0	3	3338	\N	\N
3347	Chumbivilcas	07	Chumbivilcas, Cusco	chumbivilcas cusco	8	2	3292	\N	\N
3348	Santo Tomas	01	Santo Tomas, Chumbivilcas	santo tomas chumbivilcas	0	3	3347	\N	\N
3349	Capacmarca	02	Capacmarca, Chumbivilcas	capacmarca chumbivilcas	0	3	3347	\N	\N
3350	Chamaca	03	Chamaca, Chumbivilcas	chamaca chumbivilcas	0	3	3347	\N	\N
3351	Colquemarca	04	Colquemarca, Chumbivilcas	colquemarca chumbivilcas	0	3	3347	\N	\N
3352	Livitaca	05	Livitaca, Chumbivilcas	livitaca chumbivilcas	0	3	3347	\N	\N
3353	Llusco	06	Llusco, Chumbivilcas	llusco chumbivilcas	0	3	3347	\N	\N
3354	Quiqota	07	Quiqota, Chumbivilcas	quiqota chumbivilcas	0	3	3347	\N	\N
3355	Velille	08	Velille, Chumbivilcas	velille chumbivilcas	0	3	3347	\N	\N
3356	Espinar	08	Espinar, Cusco	espinar cusco	8	2	3292	\N	\N
3357	Espinar	01	Espinar, Espinar	espinar espinar	0	3	3356	\N	\N
3358	Condoroma	02	Condoroma, Espinar	condoroma espinar	0	3	3356	\N	\N
3359	Coporaque	03	Coporaque, Espinar	coporaque espinar	0	3	3356	\N	\N
3360	Ocoruro	04	Ocoruro, Espinar	ocoruro espinar	0	3	3356	\N	\N
3361	Pallpata	05	Pallpata, Espinar	pallpata espinar	0	3	3356	\N	\N
3362	Pichigua	06	Pichigua, Espinar	pichigua espinar	0	3	3356	\N	\N
3363	Suyckutambo	07	Suyckutambo, Espinar	suyckutambo espinar	0	3	3356	\N	\N
3364	Alto Pichigua	08	Alto Pichigua, Espinar	alto pichigua espinar	0	3	3356	\N	\N
3365	La Convencion	09	La Convencion, Cusco	la convencion cusco	10	2	3292	\N	\N
3366	Santa Ana	01	Santa Ana, La Convencion	santa ana la convencion	0	3	3365	\N	\N
3367	Echarate	02	Echarate, La Convencion	echarate la convencion	0	3	3365	\N	\N
3368	Huayopata	03	Huayopata, La Convencion	huayopata la convencion	0	3	3365	\N	\N
3369	Maranura	04	Maranura, La Convencion	maranura la convencion	0	3	3365	\N	\N
3370	Ocobamba	05	Ocobamba, La Convencion	ocobamba la convencion	0	3	3365	\N	\N
3371	Quellouno	06	Quellouno, La Convencion	quellouno la convencion	0	3	3365	\N	\N
3372	Quimbiri	07	Quimbiri, La Convencion	quimbiri la convencion	0	3	3365	\N	\N
3373	Santa Teresa	08	Santa Teresa, La Convencion	santa teresa la convencion	0	3	3365	\N	\N
3374	Vilcabamba	09	Vilcabamba, La Convencion	vilcabamba la convencion	0	3	3365	\N	\N
3375	Pichari	10	Pichari, La Convencion	pichari la convencion	0	3	3365	\N	\N
3376	Paruro	10	Paruro, Cusco	paruro cusco	9	2	3292	\N	\N
3377	Paruro	01	Paruro, Paruro	paruro paruro	0	3	3376	\N	\N
3378	Accha	02	Accha, Paruro	accha paruro	0	3	3376	\N	\N
3379	Ccapi	03	Ccapi, Paruro	ccapi paruro	0	3	3376	\N	\N
3380	Colcha	04	Colcha, Paruro	colcha paruro	0	3	3376	\N	\N
3381	Huanoquite	05	Huanoquite, Paruro	huanoquite paruro	0	3	3376	\N	\N
3382	Omacha	06	Omacha, Paruro	omacha paruro	0	3	3376	\N	\N
3383	Paccaritambo	07	Paccaritambo, Paruro	paccaritambo paruro	0	3	3376	\N	\N
3384	Pillpinto	08	Pillpinto, Paruro	pillpinto paruro	0	3	3376	\N	\N
3385	Yaurisque	09	Yaurisque, Paruro	yaurisque paruro	0	3	3376	\N	\N
3386	Paucartambo	11	Paucartambo, Cusco	paucartambo cusco	6	2	3292	\N	\N
3387	Paucartambo	01	Paucartambo, Paucartambo	paucartambo paucartambo	0	3	3386	\N	\N
3388	Caicay	02	Caicay, Paucartambo	caicay paucartambo	0	3	3386	\N	\N
3389	Challabamba	03	Challabamba, Paucartambo	challabamba paucartambo	0	3	3386	\N	\N
3390	Colquepata	04	Colquepata, Paucartambo	colquepata paucartambo	0	3	3386	\N	\N
3391	Huancarani	05	Huancarani, Paucartambo	huancarani paucartambo	0	3	3386	\N	\N
3392	Kosqipata	06	Kosqipata, Paucartambo	kosqipata paucartambo	0	3	3386	\N	\N
3393	Quispicanchi	12	Quispicanchi, Cusco	quispicanchi cusco	12	2	3292	\N	\N
3394	Urcos	01	Urcos, Quispicanchi	urcos quispicanchi	0	3	3393	\N	\N
3395	Andahuaylillas	02	Andahuaylillas, Quispicanchi	andahuaylillas quispicanchi	0	3	3393	\N	\N
3396	Camanti	03	Camanti, Quispicanchi	camanti quispicanchi	0	3	3393	\N	\N
3397	Ccarhuayo	04	Ccarhuayo, Quispicanchi	ccarhuayo quispicanchi	0	3	3393	\N	\N
3398	Ccatca	05	Ccatca, Quispicanchi	ccatca quispicanchi	0	3	3393	\N	\N
3399	Cusipata	06	Cusipata, Quispicanchi	cusipata quispicanchi	0	3	3393	\N	\N
3400	Huaro	07	Huaro, Quispicanchi	huaro quispicanchi	0	3	3393	\N	\N
3401	Lucre	08	Lucre, Quispicanchi	lucre quispicanchi	0	3	3393	\N	\N
3402	Marcapata	09	Marcapata, Quispicanchi	marcapata quispicanchi	0	3	3393	\N	\N
3403	Ocongate	10	Ocongate, Quispicanchi	ocongate quispicanchi	0	3	3393	\N	\N
3404	Oropesa	11	Oropesa, Quispicanchi	oropesa quispicanchi	0	3	3393	\N	\N
3405	Quiquijana	12	Quiquijana, Quispicanchi	quiquijana quispicanchi	0	3	3393	\N	\N
3406	Urubamba	13	Urubamba, Cusco	urubamba cusco	7	2	3292	\N	\N
3407	Urubamba	01	Urubamba, Urubamba	urubamba urubamba	0	3	3406	\N	\N
3408	Chinchero	02	Chinchero, Urubamba	chinchero urubamba	0	3	3406	\N	\N
3409	Huayllabamba	03	Huayllabamba, Urubamba	huayllabamba urubamba	0	3	3406	\N	\N
3410	Machupicchu	04	Machupicchu, Urubamba	machupicchu urubamba	0	3	3406	\N	\N
3411	Maras	05	Maras, Urubamba	maras urubamba	0	3	3406	\N	\N
3412	Ollantaytambo	06	Ollantaytambo, Urubamba	ollantaytambo urubamba	0	3	3406	\N	\N
3413	Yucay	07	Yucay, Urubamba	yucay urubamba	0	3	3406	\N	\N
3414	Huancavelica	09	Huancavelica, Per├║	huancavelica per├║	7	1	2533	\N	\N
3415	Huancavelica	01	Huancavelica, Huancavelica, Huancavelica	huancavelica huancavelica huancavelica	19	2	3414	\N	\N
3416	Huancavelica	01	Huancavelica, Huancavelica	huancavelica huancavelica	0	3	3415	\N	\N
3417	Acobambilla	02	Acobambilla, Huancavelica	acobambilla huancavelica	0	3	3415	\N	\N
3418	Acoria	03	Acoria, Huancavelica	acoria huancavelica	0	3	3415	\N	\N
3419	Conayca	04	Conayca, Huancavelica	conayca huancavelica	0	3	3415	\N	\N
3420	Cuenca	05	Cuenca, Huancavelica	cuenca huancavelica	0	3	3415	\N	\N
3421	Huachocolpa	06	Huachocolpa, Huancavelica	huachocolpa huancavelica	0	3	3415	\N	\N
3422	Huayllahuara	07	Huayllahuara, Huancavelica	huayllahuara huancavelica	0	3	3415	\N	\N
3423	Izcuchaca	08	Izcuchaca, Huancavelica	izcuchaca huancavelica	0	3	3415	\N	\N
3424	Laria	09	Laria, Huancavelica	laria huancavelica	0	3	3415	\N	\N
3425	Manta	10	Manta, Huancavelica	manta huancavelica	0	3	3415	\N	\N
3426	Mariscal Caceres	11	Mariscal Caceres, Huancavelica	mariscal caceres huancavelica	0	3	3415	\N	\N
3427	Moya	12	Moya, Huancavelica	moya huancavelica	0	3	3415	\N	\N
3428	Nuevo Occoro	13	Nuevo Occoro, Huancavelica	nuevo occoro huancavelica	0	3	3415	\N	\N
3429	Palca	14	Palca, Huancavelica	palca huancavelica	0	3	3415	\N	\N
3430	Pilchaca	15	Pilchaca, Huancavelica	pilchaca huancavelica	0	3	3415	\N	\N
3431	Vilca	16	Vilca, Huancavelica	vilca huancavelica	0	3	3415	\N	\N
3432	Yauli	17	Yauli, Huancavelica	yauli huancavelica	0	3	3415	\N	\N
3433	Ascensi├│n	18	Ascensi├│n, Huancavelica	ascensi├│n huancavelica	0	3	3415	\N	\N
3434	Huando	19	Huando, Huancavelica	huando huancavelica	0	3	3415	\N	\N
3435	Acobamba	02	Acobamba, Huancavelica	acobamba huancavelica	8	2	3414	\N	\N
3436	Acobamba	01	Acobamba, Acobamba	acobamba acobamba	0	3	3435	\N	\N
3437	Andabamba	02	Andabamba, Acobamba	andabamba acobamba	0	3	3435	\N	\N
3438	Anta	03	Anta, Acobamba	anta acobamba	0	3	3435	\N	\N
3439	Caja	04	Caja, Acobamba	caja acobamba	0	3	3435	\N	\N
3440	Marcas	05	Marcas, Acobamba	marcas acobamba	0	3	3435	\N	\N
3441	Paucara	06	Paucara, Acobamba	paucara acobamba	0	3	3435	\N	\N
3442	Pomacocha	07	Pomacocha, Acobamba	pomacocha acobamba	0	3	3435	\N	\N
3443	Rosario	08	Rosario, Acobamba	rosario acobamba	0	3	3435	\N	\N
3444	Angaraes	03	Angaraes, Huancavelica	angaraes huancavelica	12	2	3414	\N	\N
3445	Lircay	01	Lircay, Angaraes	lircay angaraes	0	3	3444	\N	\N
3446	Anchonga	02	Anchonga, Angaraes	anchonga angaraes	0	3	3444	\N	\N
3447	Callanmarca	03	Callanmarca, Angaraes	callanmarca angaraes	0	3	3444	\N	\N
3448	Ccochaccasa	04	Ccochaccasa, Angaraes	ccochaccasa angaraes	0	3	3444	\N	\N
3449	Chincho	05	Chincho, Angaraes	chincho angaraes	0	3	3444	\N	\N
3450	Congalla	06	Congalla, Angaraes	congalla angaraes	0	3	3444	\N	\N
3451	Huanca-Huanca	07	Huanca-Huanca, Angaraes	huanca-huanca angaraes	0	3	3444	\N	\N
3452	Huayllay Grande	08	Huayllay Grande, Angaraes	huayllay grande angaraes	0	3	3444	\N	\N
3453	Julcamarca	09	Julcamarca, Angaraes	julcamarca angaraes	0	3	3444	\N	\N
3454	San Antonio de Antaparco	10	San Antonio de Antaparco, Angaraes	san antonio de antaparco angaraes	0	3	3444	\N	\N
3455	Santo Tomas de Pata	11	Santo Tomas de Pata, Angaraes	santo tomas de pata angaraes	0	3	3444	\N	\N
3456	Secclla	12	Secclla, Angaraes	secclla angaraes	0	3	3444	\N	\N
3457	Castrovirreyna	04	Castrovirreyna, Huancavelica	castrovirreyna huancavelica	13	2	3414	\N	\N
3458	Castrovirreyna	01	Castrovirreyna, Castrovirreyna	castrovirreyna castrovirreyna	0	3	3457	\N	\N
3459	Arma	02	Arma, Castrovirreyna	arma castrovirreyna	0	3	3457	\N	\N
3460	Aurahua	03	Aurahua, Castrovirreyna	aurahua castrovirreyna	0	3	3457	\N	\N
3461	Capillas	04	Capillas, Castrovirreyna	capillas castrovirreyna	0	3	3457	\N	\N
3462	Chupamarca	05	Chupamarca, Castrovirreyna	chupamarca castrovirreyna	0	3	3457	\N	\N
3463	Cocas	06	Cocas, Castrovirreyna	cocas castrovirreyna	0	3	3457	\N	\N
3464	Huachos	07	Huachos, Castrovirreyna	huachos castrovirreyna	0	3	3457	\N	\N
3465	Huamatambo	08	Huamatambo, Castrovirreyna	huamatambo castrovirreyna	0	3	3457	\N	\N
3466	Mollepampa	09	Mollepampa, Castrovirreyna	mollepampa castrovirreyna	0	3	3457	\N	\N
3467	San Juan	10	San Juan, Castrovirreyna	san juan castrovirreyna	0	3	3457	\N	\N
3468	Santa Ana	11	Santa Ana, Castrovirreyna	santa ana castrovirreyna	0	3	3457	\N	\N
3469	Tantara	12	Tantara, Castrovirreyna	tantara castrovirreyna	0	3	3457	\N	\N
3470	Ticrapo	13	Ticrapo, Castrovirreyna	ticrapo castrovirreyna	0	3	3457	\N	\N
3471	Churcampa	05	Churcampa, Huancavelica	churcampa huancavelica	10	2	3414	\N	\N
3472	Churcampa	01	Churcampa, Churcampa	churcampa churcampa	0	3	3471	\N	\N
3473	Anco	02	Anco, Churcampa	anco churcampa	0	3	3471	\N	\N
3474	Chinchihuasi	03	Chinchihuasi, Churcampa	chinchihuasi churcampa	0	3	3471	\N	\N
3475	El Carmen	04	El Carmen, Churcampa	el carmen churcampa	0	3	3471	\N	\N
3476	La Merced	05	La Merced, Churcampa	la merced churcampa	0	3	3471	\N	\N
3477	Locroja	06	Locroja, Churcampa	locroja churcampa	0	3	3471	\N	\N
3478	Paucarbamba	07	Paucarbamba, Churcampa	paucarbamba churcampa	0	3	3471	\N	\N
3479	San Miguel de Mayocc	08	San Miguel de Mayocc, Churcampa	san miguel de mayocc churcampa	0	3	3471	\N	\N
3480	San Pedro de Coris	09	San Pedro de Coris, Churcampa	san pedro de coris churcampa	0	3	3471	\N	\N
3481	Pachamarca	10	Pachamarca, Churcampa	pachamarca churcampa	0	3	3471	\N	\N
3482	Huaytara	06	Huaytara, Huancavelica	huaytara huancavelica	16	2	3414	\N	\N
3483	Huaytara	01	Huaytara, Huaytara	huaytara huaytara	0	3	3482	\N	\N
3484	Ayavi	02	Ayavi, Huaytara	ayavi huaytara	0	3	3482	\N	\N
3485	Cordova	03	Cordova, Huaytara	cordova huaytara	0	3	3482	\N	\N
3486	Huayacundo Arma	04	Huayacundo Arma, Huaytara	huayacundo arma huaytara	0	3	3482	\N	\N
3487	Laramarca	05	Laramarca, Huaytara	laramarca huaytara	0	3	3482	\N	\N
3488	Ocoyo	06	Ocoyo, Huaytara	ocoyo huaytara	0	3	3482	\N	\N
3489	Pilpichaca	07	Pilpichaca, Huaytara	pilpichaca huaytara	0	3	3482	\N	\N
3490	Querco	08	Querco, Huaytara	querco huaytara	0	3	3482	\N	\N
3491	Quito-Arma	09	Quito-Arma, Huaytara	quito-arma huaytara	0	3	3482	\N	\N
3492	San Antonio de Cusicancha	10	San Antonio de Cusicancha, Huaytara	san antonio de cusicancha huaytara	0	3	3482	\N	\N
3493	San Francisco de Sangayaico	11	San Francisco de Sangayaico, Huaytara	san francisco de sangayaico huaytara	0	3	3482	\N	\N
3494	San Isidro	12	San Isidro, Huaytara	san isidro huaytara	0	3	3482	\N	\N
3495	Santiago de Chocorvos	13	Santiago de Chocorvos, Huaytara	santiago de chocorvos huaytara	0	3	3482	\N	\N
3496	Santiago de Quirahuara	14	Santiago de Quirahuara, Huaytara	santiago de quirahuara huaytara	0	3	3482	\N	\N
3497	Santo Domingo de Capillas	15	Santo Domingo de Capillas, Huaytara	santo domingo de capillas huaytara	0	3	3482	\N	\N
3498	Tambo	16	Tambo, Huaytara	tambo huaytara	0	3	3482	\N	\N
3499	Tayacaja	07	Tayacaja, Huancavelica	tayacaja huancavelica	18	2	3414	\N	\N
3500	Pampas	01	Pampas, Tayacaja	pampas tayacaja	0	3	3499	\N	\N
3501	Acostambo	02	Acostambo, Tayacaja	acostambo tayacaja	0	3	3499	\N	\N
3502	Acraquia	03	Acraquia, Tayacaja	acraquia tayacaja	0	3	3499	\N	\N
3503	Ahuaycha	04	Ahuaycha, Tayacaja	ahuaycha tayacaja	0	3	3499	\N	\N
3504	Colcabamba	05	Colcabamba, Tayacaja	colcabamba tayacaja	0	3	3499	\N	\N
3505	Daniel Hernandez	06	Daniel Hernandez, Tayacaja	daniel hernandez tayacaja	0	3	3499	\N	\N
3506	Huachocolpa	07	Huachocolpa, Tayacaja	huachocolpa tayacaja	0	3	3499	\N	\N
3507	Huando	08	Huando, Tayacaja	huando tayacaja	0	3	3499	\N	\N
3508	Huaribamba	09	Huaribamba, Tayacaja	huaribamba tayacaja	0	3	3499	\N	\N
3509	Qahuimpuquio	10	Qahuimpuquio, Tayacaja	qahuimpuquio tayacaja	0	3	3499	\N	\N
3510	Pazos	11	Pazos, Tayacaja	pazos tayacaja	0	3	3499	\N	\N
3511	Pachamarca	12	Pachamarca, Tayacaja	pachamarca tayacaja	0	3	3499	\N	\N
3512	Quishuar	13	Quishuar, Tayacaja	quishuar tayacaja	0	3	3499	\N	\N
3513	Salcabamba	14	Salcabamba, Tayacaja	salcabamba tayacaja	0	3	3499	\N	\N
3514	Salcahuasi	15	Salcahuasi, Tayacaja	salcahuasi tayacaja	0	3	3499	\N	\N
3515	San Marcos de Rocchac	16	San Marcos de Rocchac, Tayacaja	san marcos de rocchac tayacaja	0	3	3499	\N	\N
3516	Surcubamba	17	Surcubamba, Tayacaja	surcubamba tayacaja	0	3	3499	\N	\N
3517	Tintay Puncu	18	Tintay Puncu, Tayacaja	tintay puncu tayacaja	0	3	3499	\N	\N
3518	Huanuco	10	Huanuco, Per├║	huanuco per├║	11	1	2533	\N	\N
3519	Huanuco	01	Huanuco, Huanuco, Huanuco	huanuco huanuco huanuco	11	2	3518	\N	\N
3520	Huanuco	01	Huanuco, Huanuco	huanuco huanuco	0	3	3519	\N	\N
3521	Amarilis	02	Amarilis, Huanuco	amarilis huanuco	0	3	3519	\N	\N
3522	Chinchao	03	Chinchao, Huanuco	chinchao huanuco	0	3	3519	\N	\N
3523	Churubamba	04	Churubamba, Huanuco	churubamba huanuco	0	3	3519	\N	\N
3524	Margos	05	Margos, Huanuco	margos huanuco	0	3	3519	\N	\N
3525	Quisqui	06	Quisqui, Huanuco	quisqui huanuco	0	3	3519	\N	\N
3526	San Francisco de Cayran	07	San Francisco de Cayran, Huanuco	san francisco de cayran huanuco	0	3	3519	\N	\N
4102	Tanta	28	Tanta, Yauyos	tanta yauyos	0	3	4074	\N	\N
3527	San Pedro de Chaulan	08	San Pedro de Chaulan, Huanuco	san pedro de chaulan huanuco	0	3	3519	\N	\N
3528	Santa Maria del Valle	09	Santa Maria del Valle, Huanuco	santa maria del valle huanuco	0	3	3519	\N	\N
3529	Yarumayo	10	Yarumayo, Huanuco	yarumayo huanuco	0	3	3519	\N	\N
3530	Pillcomarca	11	Pillcomarca, Huanuco	pillcomarca huanuco	0	3	3519	\N	\N
3531	Ambo	02	Ambo, Huanuco	ambo huanuco	8	2	3518	\N	\N
3532	Ambo	01	Ambo, Ambo	ambo ambo	0	3	3531	\N	\N
3533	Cayna	02	Cayna, Ambo	cayna ambo	0	3	3531	\N	\N
3534	Colpas	03	Colpas, Ambo	colpas ambo	0	3	3531	\N	\N
3535	Conchamarca	04	Conchamarca, Ambo	conchamarca ambo	0	3	3531	\N	\N
3536	Huacar	05	Huacar, Ambo	huacar ambo	0	3	3531	\N	\N
3537	San Francisco	06	San Francisco, Ambo	san francisco ambo	0	3	3531	\N	\N
3538	San Rafael	07	San Rafael, Ambo	san rafael ambo	0	3	3531	\N	\N
3539	Tomay Kichwa	08	Tomay Kichwa, Ambo	tomay kichwa ambo	0	3	3531	\N	\N
3540	Dos de Mayo	03	Dos de Mayo, Huanuco	dos de mayo huanuco	9	2	3518	\N	\N
3541	La Union	01	La Union, Dos de Mayo	la union dos de mayo	0	3	3540	\N	\N
3542	Chuquis	07	Chuquis, Dos de Mayo	chuquis dos de mayo	0	3	3540	\N	\N
3543	Marias	11	Marias, Dos de Mayo	marias dos de mayo	0	3	3540	\N	\N
3544	Pachas	13	Pachas, Dos de Mayo	pachas dos de mayo	0	3	3540	\N	\N
3545	Quivilla	16	Quivilla, Dos de Mayo	quivilla dos de mayo	0	3	3540	\N	\N
3546	Ripan	17	Ripan, Dos de Mayo	ripan dos de mayo	0	3	3540	\N	\N
3547	Shunqui	21	Shunqui, Dos de Mayo	shunqui dos de mayo	0	3	3540	\N	\N
3548	Sillapata	22	Sillapata, Dos de Mayo	sillapata dos de mayo	0	3	3540	\N	\N
3549	Yanas	23	Yanas, Dos de Mayo	yanas dos de mayo	0	3	3540	\N	\N
3550	Huacaybamba	04	Huacaybamba, Huanuco	huacaybamba huanuco	4	2	3518	\N	\N
3551	Huacaybamba	01	Huacaybamba, Huacaybamba	huacaybamba huacaybamba	0	3	3550	\N	\N
3552	Canchabamba	02	Canchabamba, Huacaybamba	canchabamba huacaybamba	0	3	3550	\N	\N
3553	Cochabamba	03	Cochabamba, Huacaybamba	cochabamba huacaybamba	0	3	3550	\N	\N
3554	Pinra	04	Pinra, Huacaybamba	pinra huacaybamba	0	3	3550	\N	\N
3555	Huamalies	05	Huamalies, Huanuco	huamalies huanuco	11	2	3518	\N	\N
3556	Llata	01	Llata, Huamalies	llata huamalies	0	3	3555	\N	\N
3557	Arancay	02	Arancay, Huamalies	arancay huamalies	0	3	3555	\N	\N
3558	Chavin de Pariarca	03	Chavin de Pariarca, Huamalies	chavin de pariarca huamalies	0	3	3555	\N	\N
3559	Jacas Grande	04	Jacas Grande, Huamalies	jacas grande huamalies	0	3	3555	\N	\N
3560	Jircan	05	Jircan, Huamalies	jircan huamalies	0	3	3555	\N	\N
3561	Miraflores	06	Miraflores, Huamalies	miraflores huamalies	0	3	3555	\N	\N
3562	Monzon	07	Monzon, Huamalies	monzon huamalies	0	3	3555	\N	\N
3563	Punchao	08	Punchao, Huamalies	punchao huamalies	0	3	3555	\N	\N
3564	Puqos	09	Puqos, Huamalies	puqos huamalies	0	3	3555	\N	\N
3565	Singa	10	Singa, Huamalies	singa huamalies	0	3	3555	\N	\N
3566	Tantamayo	11	Tantamayo, Huamalies	tantamayo huamalies	0	3	3555	\N	\N
3567	Leoncio Prado	06	Leoncio Prado, Huanuco	leoncio prado huanuco	6	2	3518	\N	\N
3568	Rupa-Rupa	01	Rupa-Rupa, Leoncio Prado	rupa-rupa leoncio prado	0	3	3567	\N	\N
3569	Daniel Alomias Robles	02	Daniel Alomias Robles, Leoncio Prado	daniel alomias robles leoncio prado	0	3	3567	\N	\N
3570	Hermilio Valdizan	03	Hermilio Valdizan, Leoncio Prado	hermilio valdizan leoncio prado	0	3	3567	\N	\N
3571	Jose Crespo y Castillo	04	Jose Crespo y Castillo, Leoncio Prado	jose crespo y castillo leoncio prado	0	3	3567	\N	\N
3572	Luyando	05	Luyando, Leoncio Prado	luyando leoncio prado	0	3	3567	\N	\N
3573	Mariano Damaso Beraun	06	Mariano Damaso Beraun, Leoncio Prado	mariano damaso beraun leoncio prado	0	3	3567	\N	\N
3574	Maraqon	07	Maraqon, Huanuco	maraqon huanuco	3	2	3518	\N	\N
3575	Huacrachuco	01	Huacrachuco, Maraqon	huacrachuco maraqon	0	3	3574	\N	\N
3576	Cholon	02	Cholon, Maraqon	cholon maraqon	0	3	3574	\N	\N
3577	San Buenaventura	03	San Buenaventura, Maraqon	san buenaventura maraqon	0	3	3574	\N	\N
3578	Pachitea	08	Pachitea, Huanuco	pachitea huanuco	4	2	3518	\N	\N
3579	Panao	01	Panao, Pachitea	panao pachitea	0	3	3578	\N	\N
3580	Chaglla	02	Chaglla, Pachitea	chaglla pachitea	0	3	3578	\N	\N
3581	Molino	03	Molino, Pachitea	molino pachitea	0	3	3578	\N	\N
3582	Umari	04	Umari, Pachitea	umari pachitea	0	3	3578	\N	\N
3583	Puerto Inca	09	Puerto Inca, Huanuco	puerto inca huanuco	5	2	3518	\N	\N
3584	Puerto Inca	01	Puerto Inca, Puerto Inca	puerto inca puerto inca	0	3	3583	\N	\N
3585	Codo del Pozuzo	02	Codo del Pozuzo, Puerto Inca	codo del pozuzo puerto inca	0	3	3583	\N	\N
3586	Honoria	03	Honoria, Puerto Inca	honoria puerto inca	0	3	3583	\N	\N
3587	Tournavista	04	Tournavista, Puerto Inca	tournavista puerto inca	0	3	3583	\N	\N
3588	Yuyapichis	05	Yuyapichis, Puerto Inca	yuyapichis puerto inca	0	3	3583	\N	\N
3589	Lauricocha	10	Lauricocha, Huanuco	lauricocha huanuco	7	2	3518	\N	\N
3590	Jesus	01	Jesus, Lauricocha	jesus lauricocha	0	3	3589	\N	\N
3591	Baqos	02	Baqos, Lauricocha	baqos lauricocha	0	3	3589	\N	\N
3592	Jivia	03	Jivia, Lauricocha	jivia lauricocha	0	3	3589	\N	\N
3593	Queropalca	04	Queropalca, Lauricocha	queropalca lauricocha	0	3	3589	\N	\N
3594	Rondos	05	Rondos, Lauricocha	rondos lauricocha	0	3	3589	\N	\N
3595	San Francisco de Asis	06	San Francisco de Asis, Lauricocha	san francisco de asis lauricocha	0	3	3589	\N	\N
4390	Cupi	03	Cupi, Melgar	cupi melgar	0	3	4387	\N	\N
3596	San Miguel de Cauri	07	San Miguel de Cauri, Lauricocha	san miguel de cauri lauricocha	0	3	3589	\N	\N
3597	Yarowilca	11	Yarowilca, Huanuco	yarowilca huanuco	8	2	3518	\N	\N
3598	Chavinillo	01	Chavinillo, Yarowilca	chavinillo yarowilca	0	3	3597	\N	\N
3599	Cahuac	02	Cahuac, Yarowilca	cahuac yarowilca	0	3	3597	\N	\N
3600	Chacabamba	03	Chacabamba, Yarowilca	chacabamba yarowilca	0	3	3597	\N	\N
3601	Chupan	04	Chupan, Yarowilca	chupan yarowilca	0	3	3597	\N	\N
3602	Jacas Chico	05	Jacas Chico, Yarowilca	jacas chico yarowilca	0	3	3597	\N	\N
3603	Obas	06	Obas, Yarowilca	obas yarowilca	0	3	3597	\N	\N
3604	Pampamarca	07	Pampamarca, Yarowilca	pampamarca yarowilca	0	3	3597	\N	\N
3605	Choras	08	Choras, Yarowilca	choras yarowilca	0	3	3597	\N	\N
3606	Ica	11	Ica, Per├║	ica per├║	5	1	2533	\N	\N
3607	Ica	01	Ica, Ica, Ica	ica ica ica	14	2	3606	\N	\N
3608	Ica	01	Ica, Ica	ica ica	0	3	3607	\N	\N
3609	La Tinguiqa	02	La Tinguiqa, Ica	la tinguiqa ica	0	3	3607	\N	\N
3610	Los Aquijes	03	Los Aquijes, Ica	los aquijes ica	0	3	3607	\N	\N
3611	Ocucaje	04	Ocucaje, Ica	ocucaje ica	0	3	3607	\N	\N
3612	Pachacutec	05	Pachacutec, Ica	pachacutec ica	0	3	3607	\N	\N
3613	Parcona	06	Parcona, Ica	parcona ica	0	3	3607	\N	\N
3614	Pueblo Nuevo	07	Pueblo Nuevo, Ica	pueblo nuevo ica	0	3	3607	\N	\N
3615	Salas	08	Salas, Ica	salas ica	0	3	3607	\N	\N
3616	San Jose de los Molinos	09	San Jose de los Molinos, Ica	san jose de los molinos ica	0	3	3607	\N	\N
3617	San Juan Bautista	10	San Juan Bautista, Ica	san juan bautista ica	0	3	3607	\N	\N
3618	Santiago	11	Santiago, Ica	santiago ica	0	3	3607	\N	\N
3619	Subtanjalla	12	Subtanjalla, Ica	subtanjalla ica	0	3	3607	\N	\N
3620	Tate	13	Tate, Ica	tate ica	0	3	3607	\N	\N
3621	Yauca del Rosario  1/	14	Yauca del Rosario  1/, Ica	yauca del rosario  1/ ica	0	3	3607	\N	\N
3622	Chincha	02	Chincha, Ica	chincha ica	11	2	3606	\N	\N
3623	Chincha Alta	01	Chincha Alta, Chincha	chincha alta chincha	0	3	3622	\N	\N
3624	Alto Laran	02	Alto Laran, Chincha	alto laran chincha	0	3	3622	\N	\N
3625	Chavin	03	Chavin, Chincha	chavin chincha	0	3	3622	\N	\N
3626	Chincha Baja	04	Chincha Baja, Chincha	chincha baja chincha	0	3	3622	\N	\N
3627	El Carmen	05	El Carmen, Chincha	el carmen chincha	0	3	3622	\N	\N
3628	Grocio Prado	06	Grocio Prado, Chincha	grocio prado chincha	0	3	3622	\N	\N
3629	Pueblo Nuevo	07	Pueblo Nuevo, Chincha	pueblo nuevo chincha	0	3	3622	\N	\N
3630	San Juan de Yanac	08	San Juan de Yanac, Chincha	san juan de yanac chincha	0	3	3622	\N	\N
3631	San Pedro de Huacarpana	09	San Pedro de Huacarpana, Chincha	san pedro de huacarpana chincha	0	3	3622	\N	\N
3632	Sunampe	10	Sunampe, Chincha	sunampe chincha	0	3	3622	\N	\N
3633	Tambo de Mora	11	Tambo de Mora, Chincha	tambo de mora chincha	0	3	3622	\N	\N
3634	Nazca	03	Nazca, Ica	nazca ica	5	2	3606	\N	\N
3635	Nazca	01	Nazca, Nazca	nazca nazca	0	3	3634	\N	\N
3636	Changuillo	02	Changuillo, Nazca	changuillo nazca	0	3	3634	\N	\N
3637	El Ingenio	03	El Ingenio, Nazca	el ingenio nazca	0	3	3634	\N	\N
3638	Marcona	04	Marcona, Nazca	marcona nazca	0	3	3634	\N	\N
3639	Vista Alegre	05	Vista Alegre, Nazca	vista alegre nazca	0	3	3634	\N	\N
3640	Palpa	04	Palpa, Ica	palpa ica	5	2	3606	\N	\N
3641	Palpa	01	Palpa, Palpa	palpa palpa	0	3	3640	\N	\N
3642	Llipata	02	Llipata, Palpa	llipata palpa	0	3	3640	\N	\N
3643	Rio Grande	03	Rio Grande, Palpa	rio grande palpa	0	3	3640	\N	\N
3644	Santa Cruz	04	Santa Cruz, Palpa	santa cruz palpa	0	3	3640	\N	\N
3645	Tibillo	05	Tibillo, Palpa	tibillo palpa	0	3	3640	\N	\N
3646	Pisco	05	Pisco, Ica	pisco ica	8	2	3606	\N	\N
3647	Pisco	01	Pisco, Pisco	pisco pisco	0	3	3646	\N	\N
3648	Huancano	02	Huancano, Pisco	huancano pisco	0	3	3646	\N	\N
3649	Humay	03	Humay, Pisco	humay pisco	0	3	3646	\N	\N
3650	Independencia	04	Independencia, Pisco	independencia pisco	0	3	3646	\N	\N
3651	Paracas	05	Paracas, Pisco	paracas pisco	0	3	3646	\N	\N
3652	San Andres	06	San Andres, Pisco	san andres pisco	0	3	3646	\N	\N
3653	San Clemente	07	San Clemente, Pisco	san clemente pisco	0	3	3646	\N	\N
3654	Tupac Amaru Inca	08	Tupac Amaru Inca, Pisco	tupac amaru inca pisco	0	3	3646	\N	\N
3655	Junin	12	Junin, Per├║	junin per├║	9	1	2533	\N	\N
3656	Huancayo	01	Huancayo, Junin	huancayo junin	28	2	3655	\N	\N
3657	Huancayo	01	Huancayo, Huancayo	huancayo huancayo	0	3	3656	\N	\N
3658	Carhuacallanga	04	Carhuacallanga, Huancayo	carhuacallanga huancayo	0	3	3656	\N	\N
3659	Chacapampa	05	Chacapampa, Huancayo	chacapampa huancayo	0	3	3656	\N	\N
3660	Chicche	06	Chicche, Huancayo	chicche huancayo	0	3	3656	\N	\N
3661	Chilca	07	Chilca, Huancayo	chilca huancayo	0	3	3656	\N	\N
3662	Chongos Alto	08	Chongos Alto, Huancayo	chongos alto huancayo	0	3	3656	\N	\N
3663	Chupuro	11	Chupuro, Huancayo	chupuro huancayo	0	3	3656	\N	\N
3664	Colca	12	Colca, Huancayo	colca huancayo	0	3	3656	\N	\N
3665	Cullhuas	13	Cullhuas, Huancayo	cullhuas huancayo	0	3	3656	\N	\N
3666	El Tambo	14	El Tambo, Huancayo	el tambo huancayo	0	3	3656	\N	\N
3667	Huacrapuquio	16	Huacrapuquio, Huancayo	huacrapuquio huancayo	0	3	3656	\N	\N
3668	Hualhuas	17	Hualhuas, Huancayo	hualhuas huancayo	0	3	3656	\N	\N
3669	Huancan	19	Huancan, Huancayo	huancan huancayo	0	3	3656	\N	\N
3670	Huasicancha	20	Huasicancha, Huancayo	huasicancha huancayo	0	3	3656	\N	\N
3671	Huayucachi	21	Huayucachi, Huancayo	huayucachi huancayo	0	3	3656	\N	\N
3672	Ingenio	22	Ingenio, Huancayo	ingenio huancayo	0	3	3656	\N	\N
3673	Pariahuanca	24	Pariahuanca, Huancayo	pariahuanca huancayo	0	3	3656	\N	\N
3674	Pilcomayo	25	Pilcomayo, Huancayo	pilcomayo huancayo	0	3	3656	\N	\N
3675	Pucara	26	Pucara, Huancayo	pucara huancayo	0	3	3656	\N	\N
3676	Quichuay	27	Quichuay, Huancayo	quichuay huancayo	0	3	3656	\N	\N
3677	Quilcas	28	Quilcas, Huancayo	quilcas huancayo	0	3	3656	\N	\N
3678	San Agustin	29	San Agustin, Huancayo	san agustin huancayo	0	3	3656	\N	\N
3679	San Jeronimo de Tunan	30	San Jeronimo de Tunan, Huancayo	san jeronimo de tunan huancayo	0	3	3656	\N	\N
3680	Saqo	32	Saqo, Huancayo	saqo huancayo	0	3	3656	\N	\N
3681	Sapallanga	33	Sapallanga, Huancayo	sapallanga huancayo	0	3	3656	\N	\N
3682	Sicaya	34	Sicaya, Huancayo	sicaya huancayo	0	3	3656	\N	\N
3683	Santo Domingo de Acobamba	35	Santo Domingo de Acobamba, Huancayo	santo domingo de acobamba huancayo	0	3	3656	\N	\N
3684	Viques	36	Viques, Huancayo	viques huancayo	0	3	3656	\N	\N
3685	Concepcion	02	Concepcion, Junin	concepcion junin	15	2	3655	\N	\N
3686	Concepcion	01	Concepcion, Concepcion	concepcion concepcion	0	3	3685	\N	\N
3687	Aco	02	Aco, Concepcion	aco concepcion	0	3	3685	\N	\N
3688	Andamarca	03	Andamarca, Concepcion	andamarca concepcion	0	3	3685	\N	\N
3689	Chambara	04	Chambara, Concepcion	chambara concepcion	0	3	3685	\N	\N
3690	Cochas	05	Cochas, Concepcion	cochas concepcion	0	3	3685	\N	\N
3691	Comas	06	Comas, Concepcion	comas concepcion	0	3	3685	\N	\N
3692	Heroinas Toledo	07	Heroinas Toledo, Concepcion	heroinas toledo concepcion	0	3	3685	\N	\N
3693	Manzanares	08	Manzanares, Concepcion	manzanares concepcion	0	3	3685	\N	\N
3694	Mariscal Castilla	09	Mariscal Castilla, Concepcion	mariscal castilla concepcion	0	3	3685	\N	\N
3695	Matahuasi	10	Matahuasi, Concepcion	matahuasi concepcion	0	3	3685	\N	\N
3696	Mito	11	Mito, Concepcion	mito concepcion	0	3	3685	\N	\N
3697	Nueve de Julio	12	Nueve de Julio, Concepcion	nueve de julio concepcion	0	3	3685	\N	\N
3698	Orcotuna	13	Orcotuna, Concepcion	orcotuna concepcion	0	3	3685	\N	\N
3699	San Jose de Quero	14	San Jose de Quero, Concepcion	san jose de quero concepcion	0	3	3685	\N	\N
3700	Santa Rosa de Ocopa	15	Santa Rosa de Ocopa, Concepcion	santa rosa de ocopa concepcion	0	3	3685	\N	\N
3701	Chanchamayo	03	Chanchamayo, Junin	chanchamayo junin	6	2	3655	\N	\N
3702	Chanchamayo	01	Chanchamayo, Chanchamayo	chanchamayo chanchamayo	0	3	3701	\N	\N
3703	Perene	02	Perene, Chanchamayo	perene chanchamayo	0	3	3701	\N	\N
3704	Pichanaqui	03	Pichanaqui, Chanchamayo	pichanaqui chanchamayo	0	3	3701	\N	\N
3705	San Luis de Shuaro	04	San Luis de Shuaro, Chanchamayo	san luis de shuaro chanchamayo	0	3	3701	\N	\N
3706	San Ramon	05	San Ramon, Chanchamayo	san ramon chanchamayo	0	3	3701	\N	\N
3707	Vitoc	06	Vitoc, Chanchamayo	vitoc chanchamayo	0	3	3701	\N	\N
3708	Jauja	04	Jauja, Junin	jauja junin	34	2	3655	\N	\N
3709	Jauja	01	Jauja, Jauja	jauja jauja	0	3	3708	\N	\N
3710	Acolla	02	Acolla, Jauja	acolla jauja	0	3	3708	\N	\N
3711	Apata	03	Apata, Jauja	apata jauja	0	3	3708	\N	\N
3712	Ataura	04	Ataura, Jauja	ataura jauja	0	3	3708	\N	\N
3713	Canchayllo	05	Canchayllo, Jauja	canchayllo jauja	0	3	3708	\N	\N
3714	Curicaca	06	Curicaca, Jauja	curicaca jauja	0	3	3708	\N	\N
3715	El Mantaro	07	El Mantaro, Jauja	el mantaro jauja	0	3	3708	\N	\N
3716	Huamali	08	Huamali, Jauja	huamali jauja	0	3	3708	\N	\N
3717	Huaripampa	09	Huaripampa, Jauja	huaripampa jauja	0	3	3708	\N	\N
3718	Huertas	10	Huertas, Jauja	huertas jauja	0	3	3708	\N	\N
3719	Janjaillo	11	Janjaillo, Jauja	janjaillo jauja	0	3	3708	\N	\N
3720	Julcan	12	Julcan, Jauja	julcan jauja	0	3	3708	\N	\N
3721	Leonor Ordoqez	13	Leonor Ordoqez, Jauja	leonor ordoqez jauja	0	3	3708	\N	\N
3722	Llocllapampa	14	Llocllapampa, Jauja	llocllapampa jauja	0	3	3708	\N	\N
3723	Marco	15	Marco, Jauja	marco jauja	0	3	3708	\N	\N
3724	Masma	16	Masma, Jauja	masma jauja	0	3	3708	\N	\N
3725	Masma Chicche	17	Masma Chicche, Jauja	masma chicche jauja	0	3	3708	\N	\N
3726	Molinos	18	Molinos, Jauja	molinos jauja	0	3	3708	\N	\N
3727	Monobamba	19	Monobamba, Jauja	monobamba jauja	0	3	3708	\N	\N
3728	Muqui	20	Muqui, Jauja	muqui jauja	0	3	3708	\N	\N
3729	Muquiyauyo	21	Muquiyauyo, Jauja	muquiyauyo jauja	0	3	3708	\N	\N
3730	Paca	22	Paca, Jauja	paca jauja	0	3	3708	\N	\N
3731	Paccha	23	Paccha, Jauja	paccha jauja	0	3	3708	\N	\N
3732	Pancan	24	Pancan, Jauja	pancan jauja	0	3	3708	\N	\N
3733	Parco	25	Parco, Jauja	parco jauja	0	3	3708	\N	\N
3734	Pomacancha	26	Pomacancha, Jauja	pomacancha jauja	0	3	3708	\N	\N
3735	Ricran	27	Ricran, Jauja	ricran jauja	0	3	3708	\N	\N
3736	San Lorenzo	28	San Lorenzo, Jauja	san lorenzo jauja	0	3	3708	\N	\N
3737	San Pedro de Chunan	29	San Pedro de Chunan, Jauja	san pedro de chunan jauja	0	3	3708	\N	\N
3738	Sausa	30	Sausa, Jauja	sausa jauja	0	3	3708	\N	\N
3739	Sincos	31	Sincos, Jauja	sincos jauja	0	3	3708	\N	\N
3740	Tunan Marca	32	Tunan Marca, Jauja	tunan marca jauja	0	3	3708	\N	\N
3741	Yauli	33	Yauli, Jauja	yauli jauja	0	3	3708	\N	\N
3742	Yauyos	34	Yauyos, Jauja	yauyos jauja	0	3	3708	\N	\N
3743	Junin	05	Junin, Junin, Junin	junin junin junin	4	2	3655	\N	\N
3744	Junin	01	Junin, Junin	junin junin	0	3	3743	\N	\N
3745	Carhuamayo	02	Carhuamayo, Junin	carhuamayo junin	0	3	3743	\N	\N
3746	Ondores	03	Ondores, Junin	ondores junin	0	3	3743	\N	\N
3747	Ulcumayo	04	Ulcumayo, Junin	ulcumayo junin	0	3	3743	\N	\N
3748	Satipo	06	Satipo, Junin	satipo junin	8	2	3655	\N	\N
3749	Satipo	01	Satipo, Satipo	satipo satipo	0	3	3748	\N	\N
3750	Coviriali	02	Coviriali, Satipo	coviriali satipo	0	3	3748	\N	\N
3751	Llaylla	03	Llaylla, Satipo	llaylla satipo	0	3	3748	\N	\N
3752	Mazamari	04	Mazamari, Satipo	mazamari satipo	0	3	3748	\N	\N
3753	Pampa Hermosa	05	Pampa Hermosa, Satipo	pampa hermosa satipo	0	3	3748	\N	\N
3754	Pangoa	06	Pangoa, Satipo	pangoa satipo	0	3	3748	\N	\N
3755	Rio Negro	07	Rio Negro, Satipo	rio negro satipo	0	3	3748	\N	\N
3756	Rio Tambo	08	Rio Tambo, Satipo	rio tambo satipo	0	3	3748	\N	\N
3757	Tarma	07	Tarma, Junin	tarma junin	9	2	3655	\N	\N
3758	Tarma	01	Tarma, Tarma	tarma tarma	0	3	3757	\N	\N
3759	Acobamba	02	Acobamba, Tarma	acobamba tarma	0	3	3757	\N	\N
3760	Huaricolca	03	Huaricolca, Tarma	huaricolca tarma	0	3	3757	\N	\N
3761	Huasahuasi	04	Huasahuasi, Tarma	huasahuasi tarma	0	3	3757	\N	\N
3762	La Union	05	La Union, Tarma	la union tarma	0	3	3757	\N	\N
3763	Palca	06	Palca, Tarma	palca tarma	0	3	3757	\N	\N
3764	Palcamayo	07	Palcamayo, Tarma	palcamayo tarma	0	3	3757	\N	\N
3765	San Pedro de Cajas	08	San Pedro de Cajas, Tarma	san pedro de cajas tarma	0	3	3757	\N	\N
3766	Tapo	09	Tapo, Tarma	tapo tarma	0	3	3757	\N	\N
3767	Yauli	08	Yauli, Junin	yauli junin	10	2	3655	\N	\N
3768	La Oroya	01	La Oroya, Yauli	la oroya yauli	0	3	3767	\N	\N
3769	Chacapalpa	02	Chacapalpa, Yauli	chacapalpa yauli	0	3	3767	\N	\N
3770	Huay-Huay	03	Huay-Huay, Yauli	huay-huay yauli	0	3	3767	\N	\N
3771	Marcapomacocha	04	Marcapomacocha, Yauli	marcapomacocha yauli	0	3	3767	\N	\N
3772	Morococha	05	Morococha, Yauli	morococha yauli	0	3	3767	\N	\N
3773	Paccha	06	Paccha, Yauli	paccha yauli	0	3	3767	\N	\N
3774	Santa Barbara de Carhuacayan	07	Santa Barbara de Carhuacayan, Yauli	santa barbara de carhuacayan yauli	0	3	3767	\N	\N
3775	Santa Rosa de Sacco	08	Santa Rosa de Sacco, Yauli	santa rosa de sacco yauli	0	3	3767	\N	\N
3776	Suitucancha	09	Suitucancha, Yauli	suitucancha yauli	0	3	3767	\N	\N
3777	Yauli	10	Yauli, Yauli	yauli yauli	0	3	3767	\N	\N
3778	Chupaca	09	Chupaca, Junin	chupaca junin	9	2	3655	\N	\N
3779	Chupaca	01	Chupaca, Chupaca	chupaca chupaca	0	3	3778	\N	\N
3780	Ahuac	02	Ahuac, Chupaca	ahuac chupaca	0	3	3778	\N	\N
3781	Chongos Bajo	03	Chongos Bajo, Chupaca	chongos bajo chupaca	0	3	3778	\N	\N
3782	Huachac	04	Huachac, Chupaca	huachac chupaca	0	3	3778	\N	\N
3783	Huamancaca Chico	05	Huamancaca Chico, Chupaca	huamancaca chico chupaca	0	3	3778	\N	\N
3784	San Juan de Iscos	06	San Juan de Iscos, Chupaca	san juan de iscos chupaca	0	3	3778	\N	\N
3785	San Juan de Jarpa	07	San Juan de Jarpa, Chupaca	san juan de jarpa chupaca	0	3	3778	\N	\N
3786	Tres de Diciembre	08	Tres de Diciembre, Chupaca	tres de diciembre chupaca	0	3	3778	\N	\N
3787	Yanacancha	09	Yanacancha, Chupaca	yanacancha chupaca	0	3	3778	\N	\N
3788	La Libertad	13	La Libertad, Per├║	la libertad per├║	12	1	2533	\N	\N
3789	Trujillo	01	Trujillo, La Libertad	trujillo la libertad	11	2	3788	\N	\N
3790	Trujillo	01	Trujillo, Trujillo	trujillo trujillo	0	3	3789	\N	\N
3791	El Porvenir	02	El Porvenir, Trujillo	el porvenir trujillo	0	3	3789	\N	\N
3792	Florencia de Mora	03	Florencia de Mora, Trujillo	florencia de mora trujillo	0	3	3789	\N	\N
3793	Huanchaco	04	Huanchaco, Trujillo	huanchaco trujillo	0	3	3789	\N	\N
3794	La Esperanza	05	La Esperanza, Trujillo	la esperanza trujillo	0	3	3789	\N	\N
3795	Laredo	06	Laredo, Trujillo	laredo trujillo	0	3	3789	\N	\N
3796	Moche	07	Moche, Trujillo	moche trujillo	0	3	3789	\N	\N
3797	Poroto	08	Poroto, Trujillo	poroto trujillo	0	3	3789	\N	\N
3798	Salaverry	09	Salaverry, Trujillo	salaverry trujillo	0	3	3789	\N	\N
3799	Simbal	10	Simbal, Trujillo	simbal trujillo	0	3	3789	\N	\N
3800	Victor Larco Herrera	11	Victor Larco Herrera, Trujillo	victor larco herrera trujillo	0	3	3789	\N	\N
3801	Ascope	02	Ascope, La Libertad	ascope la libertad	8	2	3788	\N	\N
3802	Ascope	01	Ascope, Ascope	ascope ascope	0	3	3801	\N	\N
3803	Chicama	02	Chicama, Ascope	chicama ascope	0	3	3801	\N	\N
3804	Chocope	03	Chocope, Ascope	chocope ascope	0	3	3801	\N	\N
3805	Magdalena de Cao	04	Magdalena de Cao, Ascope	magdalena de cao ascope	0	3	3801	\N	\N
3806	Paijan	05	Paijan, Ascope	paijan ascope	0	3	3801	\N	\N
3807	Razuri	06	Razuri, Ascope	razuri ascope	0	3	3801	\N	\N
3808	Santiago de Cao	07	Santiago de Cao, Ascope	santiago de cao ascope	0	3	3801	\N	\N
3809	Casa Grande	08	Casa Grande, Ascope	casa grande ascope	0	3	3801	\N	\N
3810	Bolivar	03	Bolivar, La Libertad	bolivar la libertad	6	2	3788	\N	\N
3811	Bolivar	01	Bolivar, Bolivar	bolivar bolivar	0	3	3810	\N	\N
3812	Bambamarca	02	Bambamarca, Bolivar	bambamarca bolivar	0	3	3810	\N	\N
3813	Condormarca	03	Condormarca, Bolivar	condormarca bolivar	0	3	3810	\N	\N
3814	Longotea	04	Longotea, Bolivar	longotea bolivar	0	3	3810	\N	\N
3815	Uchumarca	05	Uchumarca, Bolivar	uchumarca bolivar	0	3	3810	\N	\N
3816	Ucuncha	06	Ucuncha, Bolivar	ucuncha bolivar	0	3	3810	\N	\N
3817	Chepen	04	Chepen, La Libertad	chepen la libertad	3	2	3788	\N	\N
3818	Chepen	01	Chepen, Chepen	chepen chepen	0	3	3817	\N	\N
3819	Pacanga	02	Pacanga, Chepen	pacanga chepen	0	3	3817	\N	\N
3820	Pueblo Nuevo	03	Pueblo Nuevo, Chepen	pueblo nuevo chepen	0	3	3817	\N	\N
3821	Julcan	05	Julcan, La Libertad	julcan la libertad	4	2	3788	\N	\N
3822	Julcan	01	Julcan, Julcan	julcan julcan	0	3	3821	\N	\N
3823	Calamarca	02	Calamarca, Julcan	calamarca julcan	0	3	3821	\N	\N
3824	Carabamba	03	Carabamba, Julcan	carabamba julcan	0	3	3821	\N	\N
3825	Huaso	04	Huaso, Julcan	huaso julcan	0	3	3821	\N	\N
3826	Otuzco	06	Otuzco, La Libertad	otuzco la libertad	10	2	3788	\N	\N
3827	Otuzco	01	Otuzco, Otuzco	otuzco otuzco	0	3	3826	\N	\N
3828	Agallpampa	02	Agallpampa, Otuzco	agallpampa otuzco	0	3	3826	\N	\N
3829	Charat	04	Charat, Otuzco	charat otuzco	0	3	3826	\N	\N
3830	Huaranchal	05	Huaranchal, Otuzco	huaranchal otuzco	0	3	3826	\N	\N
3831	La Cuesta	06	La Cuesta, Otuzco	la cuesta otuzco	0	3	3826	\N	\N
3832	Mache	08	Mache, Otuzco	mache otuzco	0	3	3826	\N	\N
3833	Paranday	10	Paranday, Otuzco	paranday otuzco	0	3	3826	\N	\N
3834	Salpo	11	Salpo, Otuzco	salpo otuzco	0	3	3826	\N	\N
3835	Sinsicap	13	Sinsicap, Otuzco	sinsicap otuzco	0	3	3826	\N	\N
3836	Usquil	14	Usquil, Otuzco	usquil otuzco	0	3	3826	\N	\N
3837	Pacasmayo	07	Pacasmayo, La Libertad	pacasmayo la libertad	5	2	3788	\N	\N
3838	San Pedro de Lloc	01	San Pedro de Lloc, Pacasmayo	san pedro de lloc pacasmayo	0	3	3837	\N	\N
3839	Guadalupe	02	Guadalupe, Pacasmayo	guadalupe pacasmayo	0	3	3837	\N	\N
3840	Jequetepeque	03	Jequetepeque, Pacasmayo	jequetepeque pacasmayo	0	3	3837	\N	\N
3841	Pacasmayo	04	Pacasmayo, Pacasmayo	pacasmayo pacasmayo	0	3	3837	\N	\N
3842	San Jose	05	San Jose, Pacasmayo	san jose pacasmayo	0	3	3837	\N	\N
3843	Pataz	08	Pataz, La Libertad	pataz la libertad	13	2	3788	\N	\N
3844	Tayabamba	01	Tayabamba, Pataz	tayabamba pataz	0	3	3843	\N	\N
3845	Buldibuyo	02	Buldibuyo, Pataz	buldibuyo pataz	0	3	3843	\N	\N
3846	Chillia	03	Chillia, Pataz	chillia pataz	0	3	3843	\N	\N
3847	Huancaspata	04	Huancaspata, Pataz	huancaspata pataz	0	3	3843	\N	\N
3848	Huaylillas	05	Huaylillas, Pataz	huaylillas pataz	0	3	3843	\N	\N
3849	Huayo	06	Huayo, Pataz	huayo pataz	0	3	3843	\N	\N
3850	Ongon	07	Ongon, Pataz	ongon pataz	0	3	3843	\N	\N
3851	Parcoy	08	Parcoy, Pataz	parcoy pataz	0	3	3843	\N	\N
3852	Pataz	09	Pataz, Pataz	pataz pataz	0	3	3843	\N	\N
3853	Pias	10	Pias, Pataz	pias pataz	0	3	3843	\N	\N
3854	Santiago de Challas	11	Santiago de Challas, Pataz	santiago de challas pataz	0	3	3843	\N	\N
3855	Taurija	12	Taurija, Pataz	taurija pataz	0	3	3843	\N	\N
3856	Urpay	13	Urpay, Pataz	urpay pataz	0	3	3843	\N	\N
3857	Sanchez Carrion	09	Sanchez Carrion, La Libertad	sanchez carrion la libertad	8	2	3788	\N	\N
3858	Huamachuco	01	Huamachuco, Sanchez Carrion	huamachuco sanchez carrion	0	3	3857	\N	\N
3859	Chugay	02	Chugay, Sanchez Carrion	chugay sanchez carrion	0	3	3857	\N	\N
3860	Cochorco	03	Cochorco, Sanchez Carrion	cochorco sanchez carrion	0	3	3857	\N	\N
3861	Curgos	04	Curgos, Sanchez Carrion	curgos sanchez carrion	0	3	3857	\N	\N
3862	Marcabal	05	Marcabal, Sanchez Carrion	marcabal sanchez carrion	0	3	3857	\N	\N
3863	Sanagoran	06	Sanagoran, Sanchez Carrion	sanagoran sanchez carrion	0	3	3857	\N	\N
3864	Sarin	07	Sarin, Sanchez Carrion	sarin sanchez carrion	0	3	3857	\N	\N
3865	Sartimbamba	08	Sartimbamba, Sanchez Carrion	sartimbamba sanchez carrion	0	3	3857	\N	\N
3866	Santiago de Chuco	10	Santiago de Chuco, La Libertad	santiago de chuco la libertad	8	2	3788	\N	\N
3867	Santiago de Chuco	01	Santiago de Chuco, Santiago de Chuco	santiago de chuco santiago de chuco	0	3	3866	\N	\N
3868	Angasmarca	02	Angasmarca, Santiago de Chuco	angasmarca santiago de chuco	0	3	3866	\N	\N
3869	Cachicadan	03	Cachicadan, Santiago de Chuco	cachicadan santiago de chuco	0	3	3866	\N	\N
3870	Mollebamba	04	Mollebamba, Santiago de Chuco	mollebamba santiago de chuco	0	3	3866	\N	\N
3871	Mollepata	05	Mollepata, Santiago de Chuco	mollepata santiago de chuco	0	3	3866	\N	\N
3872	Quiruvilca	06	Quiruvilca, Santiago de Chuco	quiruvilca santiago de chuco	0	3	3866	\N	\N
3873	Santa Cruz de Chuca	07	Santa Cruz de Chuca, Santiago de Chuco	santa cruz de chuca santiago de chuco	0	3	3866	\N	\N
3874	Sitabamba	08	Sitabamba, Santiago de Chuco	sitabamba santiago de chuco	0	3	3866	\N	\N
3875	Gran Chimu	11	Gran Chimu, La Libertad	gran chimu la libertad	4	2	3788	\N	\N
3876	Cascas	01	Cascas, Gran Chimu	cascas gran chimu	0	3	3875	\N	\N
3877	Lucma	02	Lucma, Gran Chimu	lucma gran chimu	0	3	3875	\N	\N
3878	Marmot	03	Marmot, Gran Chimu	marmot gran chimu	0	3	3875	\N	\N
3879	Sayapullo	04	Sayapullo, Gran Chimu	sayapullo gran chimu	0	3	3875	\N	\N
3880	Viru	12	Viru, La Libertad	viru la libertad	3	2	3788	\N	\N
3881	Viru	01	Viru, Viru	viru viru	0	3	3880	\N	\N
3882	Chao	02	Chao, Viru	chao viru	0	3	3880	\N	\N
3883	Guadalupito	03	Guadalupito, Viru	guadalupito viru	0	3	3880	\N	\N
3884	Lambayeque	14	Lambayeque, Per├║	lambayeque per├║	3	1	2533	\N	\N
3885	Chiclayo	01	Chiclayo, Lambayeque	chiclayo lambayeque	20	2	3884	\N	\N
3886	Chiclayo	01	Chiclayo, Chiclayo	chiclayo chiclayo	0	3	3885	\N	\N
4391	Llalli	04	Llalli, Melgar	llalli melgar	0	3	4387	\N	\N
3887	Chongoyape	02	Chongoyape, Chiclayo	chongoyape chiclayo	0	3	3885	\N	\N
3888	Eten	03	Eten, Chiclayo	eten chiclayo	0	3	3885	\N	\N
3889	Eten Puerto	04	Eten Puerto, Chiclayo	eten puerto chiclayo	0	3	3885	\N	\N
3890	Jose Leonardo Ortiz	05	Jose Leonardo Ortiz, Chiclayo	jose leonardo ortiz chiclayo	0	3	3885	\N	\N
3891	La Victoria	06	La Victoria, Chiclayo	la victoria chiclayo	0	3	3885	\N	\N
3892	Lagunas	07	Lagunas, Chiclayo	lagunas chiclayo	0	3	3885	\N	\N
3893	Monsefu	08	Monsefu, Chiclayo	monsefu chiclayo	0	3	3885	\N	\N
3894	Nueva Arica	09	Nueva Arica, Chiclayo	nueva arica chiclayo	0	3	3885	\N	\N
3895	Oyotun	10	Oyotun, Chiclayo	oyotun chiclayo	0	3	3885	\N	\N
3896	Picsi	11	Picsi, Chiclayo	picsi chiclayo	0	3	3885	\N	\N
3897	Pimentel	12	Pimentel, Chiclayo	pimentel chiclayo	0	3	3885	\N	\N
3898	Reque	13	Reque, Chiclayo	reque chiclayo	0	3	3885	\N	\N
3899	Santa Rosa	14	Santa Rosa, Chiclayo	santa rosa chiclayo	0	3	3885	\N	\N
3900	Saqa	15	Saqa, Chiclayo	saqa chiclayo	0	3	3885	\N	\N
3901	Cayalt├¡	16	Cayalt├¡, Chiclayo	cayalt├¡ chiclayo	0	3	3885	\N	\N
3902	Patapo	17	Patapo, Chiclayo	patapo chiclayo	0	3	3885	\N	\N
3903	Pomalca	18	Pomalca, Chiclayo	pomalca chiclayo	0	3	3885	\N	\N
3904	Pucal├í	19	Pucal├í, Chiclayo	pucal├í chiclayo	0	3	3885	\N	\N
3905	Tum├ín	20	Tum├ín, Chiclayo	tum├ín chiclayo	0	3	3885	\N	\N
3906	Ferreqafe	02	Ferreqafe, Lambayeque	ferreqafe lambayeque	6	2	3884	\N	\N
3907	Ferreqafe	01	Ferreqafe, Ferreqafe	ferreqafe ferreqafe	0	3	3906	\N	\N
3908	Caqaris	02	Caqaris, Ferreqafe	caqaris ferreqafe	0	3	3906	\N	\N
3909	Incahuasi	03	Incahuasi, Ferreqafe	incahuasi ferreqafe	0	3	3906	\N	\N
3910	Manuel Antonio Mesones Muro	04	Manuel Antonio Mesones Muro, Ferreqafe	manuel antonio mesones muro ferreqafe	0	3	3906	\N	\N
3911	Pitipo	05	Pitipo, Ferreqafe	pitipo ferreqafe	0	3	3906	\N	\N
3912	Pueblo Nuevo	06	Pueblo Nuevo, Ferreqafe	pueblo nuevo ferreqafe	0	3	3906	\N	\N
3913	Lambayeque	03	Lambayeque, Lambayeque, Lambayeque	lambayeque lambayeque lambayeque	12	2	3884	\N	\N
3914	Lambayeque	01	Lambayeque, Lambayeque	lambayeque lambayeque	0	3	3913	\N	\N
3915	Chochope	02	Chochope, Lambayeque	chochope lambayeque	0	3	3913	\N	\N
3916	Illimo	03	Illimo, Lambayeque	illimo lambayeque	0	3	3913	\N	\N
3917	Jayanca	04	Jayanca, Lambayeque	jayanca lambayeque	0	3	3913	\N	\N
3918	Mochumi	05	Mochumi, Lambayeque	mochumi lambayeque	0	3	3913	\N	\N
3919	Morrope	06	Morrope, Lambayeque	morrope lambayeque	0	3	3913	\N	\N
3920	Motupe	07	Motupe, Lambayeque	motupe lambayeque	0	3	3913	\N	\N
3921	Olmos	08	Olmos, Lambayeque	olmos lambayeque	0	3	3913	\N	\N
3922	Pacora	09	Pacora, Lambayeque	pacora lambayeque	0	3	3913	\N	\N
3923	Salas	10	Salas, Lambayeque	salas lambayeque	0	3	3913	\N	\N
3924	San Jose	11	San Jose, Lambayeque	san jose lambayeque	0	3	3913	\N	\N
3925	Tucume	12	Tucume, Lambayeque	tucume lambayeque	0	3	3913	\N	\N
3926	Lima	15	Lima, Per├║	lima per├║	10	1	2533	\N	\N
3927	Lima	01	Lima, Lima, Lima	lima lima lima	43	2	3926	\N	\N
3928	Cercado de Lima	01	Cercado de Lima, Lima	cercado de lima lima	0	3	3927	\N	\N
3929	Ancon	02	Ancon, Lima	ancon lima	0	3	3927	\N	\N
3930	Ate	03	Ate, Lima	ate lima	0	3	3927	\N	\N
3931	Barranco	04	Barranco, Lima	barranco lima	0	3	3927	\N	\N
3932	Bre├▒a	05	Bre├▒a, Lima	brena lima	0	3	3927	\N	\N
3933	Carabayllo	06	Carabayllo, Lima	carabayllo lima	0	3	3927	\N	\N
3934	Chaclacayo	07	Chaclacayo, Lima	chaclacayo lima	0	3	3927	\N	\N
3935	Chorrillos	08	Chorrillos, Lima	chorrillos lima	0	3	3927	\N	\N
3936	Cieneguilla	09	Cieneguilla, Lima	cieneguilla lima	0	3	3927	\N	\N
3937	Comas	10	Comas, Lima	comas lima	0	3	3927	\N	\N
3938	El Agustino	11	El Agustino, Lima	el agustino lima	0	3	3927	\N	\N
3939	Independencia	12	Independencia, Lima	independencia lima	0	3	3927	\N	\N
3940	Jesus Maria	13	Jesus Maria, Lima	jesus maria lima	0	3	3927	\N	\N
3941	La Molina	14	La Molina, Lima	la molina lima	0	3	3927	\N	\N
3942	La Victoria	15	La Victoria, Lima	la victoria lima	0	3	3927	\N	\N
3943	Lince	16	Lince, Lima	lince lima	0	3	3927	\N	\N
3944	Los Olivos	17	Los Olivos, Lima	los olivos lima	0	3	3927	\N	\N
3945	Lurigancho	18	Lurigancho, Lima	lurigancho lima	0	3	3927	\N	\N
3946	Lurin	19	Lurin, Lima	lurin lima	0	3	3927	\N	\N
3947	Magdalena del Mar	20	Magdalena del Mar, Lima	magdalena del mar lima	0	3	3927	\N	\N
3948	Pueblo Libre	21	Pueblo Libre, Lima	pueblo libre lima	0	3	3927	\N	\N
3949	Miraflores	22	Miraflores, Lima	miraflores lima	0	3	3927	\N	\N
3950	Pachacamac	23	Pachacamac, Lima	pachacamac lima	0	3	3927	\N	\N
3951	Pucusana	24	Pucusana, Lima	pucusana lima	0	3	3927	\N	\N
3952	Puente Piedra	25	Puente Piedra, Lima	puente piedra lima	0	3	3927	\N	\N
3953	Punta Hermosa	26	Punta Hermosa, Lima	punta hermosa lima	0	3	3927	\N	\N
3954	Punta Negra	27	Punta Negra, Lima	punta negra lima	0	3	3927	\N	\N
3955	Rimac	28	Rimac, Lima	rimac lima	0	3	3927	\N	\N
3956	San Bartolo	29	San Bartolo, Lima	san bartolo lima	0	3	3927	\N	\N
3957	San Borja	30	San Borja, Lima	san borja lima	0	3	3927	\N	\N
3958	San Isidro	31	San Isidro, Lima	san isidro lima	0	3	3927	\N	\N
3959	San Juan de Lurigancho	32	San Juan de Lurigancho, Lima	san juan de lurigancho lima	0	3	3927	\N	\N
4392	Macari	05	Macari, Melgar	macari melgar	0	3	4387	\N	\N
3960	San Juan de Miraflores	33	San Juan de Miraflores, Lima	san juan de miraflores lima	0	3	3927	\N	\N
3961	San Luis	34	San Luis, Lima	san luis lima	0	3	3927	\N	\N
3962	San Martin de Porres	35	San Martin de Porres, Lima	san martin de porres lima	0	3	3927	\N	\N
3963	San Miguel	36	San Miguel, Lima	san miguel lima	0	3	3927	\N	\N
3964	Santa Anita	37	Santa Anita, Lima	santa anita lima	0	3	3927	\N	\N
3965	Santa Maria del Mar	38	Santa Maria del Mar, Lima	santa maria del mar lima	0	3	3927	\N	\N
3966	Santa Rosa	39	Santa Rosa, Lima	santa rosa lima	0	3	3927	\N	\N
3967	Santiago de Surco	40	Santiago de Surco, Lima	santiago de surco lima	0	3	3927	\N	\N
3968	Surquillo	41	Surquillo, Lima	surquillo lima	0	3	3927	\N	\N
3969	Villa El Salvador	42	Villa El Salvador, Lima	villa el salvador lima	0	3	3927	\N	\N
3970	Villa Maria del Triunfo	43	Villa Maria del Triunfo, Lima	villa maria del triunfo lima	0	3	3927	\N	\N
3971	Barranca	02	Barranca, Lima	barranca lima	5	2	3926	\N	\N
3972	Barranca	01	Barranca, Barranca	barranca barranca	0	3	3971	\N	\N
3973	Paramonga	02	Paramonga, Barranca	paramonga barranca	0	3	3971	\N	\N
3974	Pativilca	03	Pativilca, Barranca	pativilca barranca	0	3	3971	\N	\N
3975	Supe	04	Supe, Barranca	supe barranca	0	3	3971	\N	\N
3976	Supe Puerto	05	Supe Puerto, Barranca	supe puerto barranca	0	3	3971	\N	\N
3977	Cajatambo	03	Cajatambo, Lima	cajatambo lima	5	2	3926	\N	\N
3978	Cajatambo	01	Cajatambo, Cajatambo	cajatambo cajatambo	0	3	3977	\N	\N
3979	Copa	02	Copa, Cajatambo	copa cajatambo	0	3	3977	\N	\N
3980	Gorgor	03	Gorgor, Cajatambo	gorgor cajatambo	0	3	3977	\N	\N
3981	Huancapon	04	Huancapon, Cajatambo	huancapon cajatambo	0	3	3977	\N	\N
3982	Manas	05	Manas, Cajatambo	manas cajatambo	0	3	3977	\N	\N
3983	Canta	04	Canta, Lima	canta lima	7	2	3926	\N	\N
3984	Canta	01	Canta, Canta	canta canta	0	3	3983	\N	\N
3985	Arahuay	02	Arahuay, Canta	arahuay canta	0	3	3983	\N	\N
3986	Huamantanga	03	Huamantanga, Canta	huamantanga canta	0	3	3983	\N	\N
3987	Huaros	04	Huaros, Canta	huaros canta	0	3	3983	\N	\N
3988	Lachaqui	05	Lachaqui, Canta	lachaqui canta	0	3	3983	\N	\N
3989	San Buenaventura	06	San Buenaventura, Canta	san buenaventura canta	0	3	3983	\N	\N
3990	Santa Rosa de Quives	07	Santa Rosa de Quives, Canta	santa rosa de quives canta	0	3	3983	\N	\N
3991	Ca├▒ete	05	Ca├▒ete, Lima	ca├▒ete lima	16	2	3926	\N	\N
3992	San Vicente de Ca├▒ete	01	San Vicente de Ca├▒ete, Ca├▒ete	san vicente de ca├▒ete ca├▒ete	0	3	3991	\N	\N
3993	Asia	02	Asia, Caqete	asia caqete	0	3	3991	\N	\N
3994	Calango	03	Calango, Caqete	calango caqete	0	3	3991	\N	\N
3995	Cerro Azul	04	Cerro Azul, Caqete	cerro azul caqete	0	3	3991	\N	\N
3996	Chilca	05	Chilca, Caqete	chilca caqete	0	3	3991	\N	\N
3997	Coayllo	06	Coayllo, Caqete	coayllo caqete	0	3	3991	\N	\N
3998	Imperial	07	Imperial, Caqete	imperial caqete	0	3	3991	\N	\N
3999	Lunahuana	08	Lunahuana, Caqete	lunahuana caqete	0	3	3991	\N	\N
4000	Mala	09	Mala, Caqete	mala caqete	0	3	3991	\N	\N
4001	Nuevo Imperial	10	Nuevo Imperial, Caqete	nuevo imperial caqete	0	3	3991	\N	\N
4002	Pacaran	11	Pacaran, Caqete	pacaran caqete	0	3	3991	\N	\N
4003	Quilmana	12	Quilmana, Caqete	quilmana caqete	0	3	3991	\N	\N
4004	San Antonio	13	San Antonio, Caqete	san antonio caqete	0	3	3991	\N	\N
4005	San Luis	14	San Luis, Caqete	san luis caqete	0	3	3991	\N	\N
4006	Santa Cruz de Flores	15	Santa Cruz de Flores, Caqete	santa cruz de flores caqete	0	3	3991	\N	\N
4007	Zuqiga	16	Zuqiga, Caqete	zuqiga caqete	0	3	3991	\N	\N
4008	Huaral	06	Huaral, Lima	huaral lima	12	2	3926	\N	\N
4009	Huaral	01	Huaral, Huaral	huaral huaral	0	3	4008	\N	\N
4010	Atavillos Alto	02	Atavillos Alto, Huaral	atavillos alto huaral	0	3	4008	\N	\N
4011	Atavillos Bajo	03	Atavillos Bajo, Huaral	atavillos bajo huaral	0	3	4008	\N	\N
4012	Aucallama	04	Aucallama, Huaral	aucallama huaral	0	3	4008	\N	\N
4013	Chancay	05	Chancay, Huaral	chancay huaral	0	3	4008	\N	\N
4014	Ihuari	06	Ihuari, Huaral	ihuari huaral	0	3	4008	\N	\N
4015	Lampian	07	Lampian, Huaral	lampian huaral	0	3	4008	\N	\N
4016	Pacaraos	08	Pacaraos, Huaral	pacaraos huaral	0	3	4008	\N	\N
4017	San Miguel de Acos	09	San Miguel de Acos, Huaral	san miguel de acos huaral	0	3	4008	\N	\N
4018	Santa Cruz de Andamarca	10	Santa Cruz de Andamarca, Huaral	santa cruz de andamarca huaral	0	3	4008	\N	\N
4019	Sumbilca	11	Sumbilca, Huaral	sumbilca huaral	0	3	4008	\N	\N
4020	Veintisiete de Noviembre	12	Veintisiete de Noviembre, Huaral	veintisiete de noviembre huaral	0	3	4008	\N	\N
4021	Huarochiri	07	Huarochiri, Lima	huarochiri lima	32	2	3926	\N	\N
4022	Matucana	01	Matucana, Huarochiri	matucana huarochiri	0	3	4021	\N	\N
4023	Antioquia	02	Antioquia, Huarochiri	antioquia huarochiri	0	3	4021	\N	\N
4024	Callahuanca	03	Callahuanca, Huarochiri	callahuanca huarochiri	0	3	4021	\N	\N
4025	Carampoma	04	Carampoma, Huarochiri	carampoma huarochiri	0	3	4021	\N	\N
4026	Chicla	05	Chicla, Huarochiri	chicla huarochiri	0	3	4021	\N	\N
4027	Cuenca	06	Cuenca, Huarochiri	cuenca huarochiri	0	3	4021	\N	\N
4028	Huachupampa	07	Huachupampa, Huarochiri	huachupampa huarochiri	0	3	4021	\N	\N
4029	Huanza	08	Huanza, Huarochiri	huanza huarochiri	0	3	4021	\N	\N
4030	Huarochiri	09	Huarochiri, Huarochiri	huarochiri huarochiri	0	3	4021	\N	\N
4031	Lahuaytambo	10	Lahuaytambo, Huarochiri	lahuaytambo huarochiri	0	3	4021	\N	\N
4032	Langa	11	Langa, Huarochiri	langa huarochiri	0	3	4021	\N	\N
4033	Laraos	12	Laraos, Huarochiri	laraos huarochiri	0	3	4021	\N	\N
4034	Mariatana	13	Mariatana, Huarochiri	mariatana huarochiri	0	3	4021	\N	\N
4035	Ricardo Palma	14	Ricardo Palma, Huarochiri	ricardo palma huarochiri	0	3	4021	\N	\N
4036	San Andres de Tupicocha	15	San Andres de Tupicocha, Huarochiri	san andres de tupicocha huarochiri	0	3	4021	\N	\N
4037	San Antonio	16	San Antonio, Huarochiri	san antonio huarochiri	0	3	4021	\N	\N
4038	San Bartolome	17	San Bartolome, Huarochiri	san bartolome huarochiri	0	3	4021	\N	\N
4039	San Damian	18	San Damian, Huarochiri	san damian huarochiri	0	3	4021	\N	\N
4040	San Juan de Iris	19	San Juan de Iris, Huarochiri	san juan de iris huarochiri	0	3	4021	\N	\N
4041	San Juan de Tantaranche	20	San Juan de Tantaranche, Huarochiri	san juan de tantaranche huarochiri	0	3	4021	\N	\N
4042	San Lorenzo de Quinti	21	San Lorenzo de Quinti, Huarochiri	san lorenzo de quinti huarochiri	0	3	4021	\N	\N
4043	San Mateo	22	San Mateo, Huarochiri	san mateo huarochiri	0	3	4021	\N	\N
4044	San Mateo de Otao	23	San Mateo de Otao, Huarochiri	san mateo de otao huarochiri	0	3	4021	\N	\N
4045	San Pedro de Casta	24	San Pedro de Casta, Huarochiri	san pedro de casta huarochiri	0	3	4021	\N	\N
4046	San Pedro de Huancayre	25	San Pedro de Huancayre, Huarochiri	san pedro de huancayre huarochiri	0	3	4021	\N	\N
4047	Sangallaya	26	Sangallaya, Huarochiri	sangallaya huarochiri	0	3	4021	\N	\N
4048	Santa Cruz de Cocachacra	27	Santa Cruz de Cocachacra, Huarochiri	santa cruz de cocachacra huarochiri	0	3	4021	\N	\N
4049	Santa Eulalia	28	Santa Eulalia, Huarochiri	santa eulalia huarochiri	0	3	4021	\N	\N
4050	Santiago de Anchucaya	29	Santiago de Anchucaya, Huarochiri	santiago de anchucaya huarochiri	0	3	4021	\N	\N
4051	Santiago de Tuna	30	Santiago de Tuna, Huarochiri	santiago de tuna huarochiri	0	3	4021	\N	\N
4052	Santo Domingo de los Olleros	31	Santo Domingo de los Olleros, Huarochiri	santo domingo de los olleros huarochiri	0	3	4021	\N	\N
4053	Surco	32	Surco, Huarochiri	surco huarochiri	0	3	4021	\N	\N
4054	Huaura	08	Huaura, Lima	huaura lima	12	2	3926	\N	\N
4055	Huacho	01	Huacho, Huaura	huacho huaura	0	3	4054	\N	\N
4056	Ambar	02	Ambar, Huaura	ambar huaura	0	3	4054	\N	\N
4057	Caleta de Carquin	03	Caleta de Carquin, Huaura	caleta de carquin huaura	0	3	4054	\N	\N
4058	Checras	04	Checras, Huaura	checras huaura	0	3	4054	\N	\N
4059	Hualmay	05	Hualmay, Huaura	hualmay huaura	0	3	4054	\N	\N
4060	Huaura	06	Huaura, Huaura	huaura huaura	0	3	4054	\N	\N
4061	Leoncio Prado	07	Leoncio Prado, Huaura	leoncio prado huaura	0	3	4054	\N	\N
4062	Paccho	08	Paccho, Huaura	paccho huaura	0	3	4054	\N	\N
4063	Santa Leonor	09	Santa Leonor, Huaura	santa leonor huaura	0	3	4054	\N	\N
4064	Santa Maria	10	Santa Maria, Huaura	santa maria huaura	0	3	4054	\N	\N
4065	Sayan	11	Sayan, Huaura	sayan huaura	0	3	4054	\N	\N
4066	Vegueta	12	Vegueta, Huaura	vegueta huaura	0	3	4054	\N	\N
4067	Oyon	09	Oyon, Lima	oyon lima	6	2	3926	\N	\N
4068	Oyon	01	Oyon, Oyon	oyon oyon	0	3	4067	\N	\N
4069	Andajes	02	Andajes, Oyon	andajes oyon	0	3	4067	\N	\N
4070	Caujul	03	Caujul, Oyon	caujul oyon	0	3	4067	\N	\N
4071	Cochamarca	04	Cochamarca, Oyon	cochamarca oyon	0	3	4067	\N	\N
4072	Navan	05	Navan, Oyon	navan oyon	0	3	4067	\N	\N
4073	Pachangara	06	Pachangara, Oyon	pachangara oyon	0	3	4067	\N	\N
4074	Yauyos	10	Yauyos, Lima	yauyos lima	33	2	3926	\N	\N
4075	Yauyos	01	Yauyos, Yauyos	yauyos yauyos	0	3	4074	\N	\N
4076	Alis	02	Alis, Yauyos	alis yauyos	0	3	4074	\N	\N
4077	Ayauca	03	Ayauca, Yauyos	ayauca yauyos	0	3	4074	\N	\N
4078	Ayaviri	04	Ayaviri, Yauyos	ayaviri yauyos	0	3	4074	\N	\N
4079	Azangaro	05	Azangaro, Yauyos	azangaro yauyos	0	3	4074	\N	\N
4080	Cacra	06	Cacra, Yauyos	cacra yauyos	0	3	4074	\N	\N
4081	Carania	07	Carania, Yauyos	carania yauyos	0	3	4074	\N	\N
4082	Catahuasi	08	Catahuasi, Yauyos	catahuasi yauyos	0	3	4074	\N	\N
4083	Chocos	09	Chocos, Yauyos	chocos yauyos	0	3	4074	\N	\N
4084	Cochas	10	Cochas, Yauyos	cochas yauyos	0	3	4074	\N	\N
4085	Colonia	11	Colonia, Yauyos	colonia yauyos	0	3	4074	\N	\N
4086	Hongos	12	Hongos, Yauyos	hongos yauyos	0	3	4074	\N	\N
4087	Huampara	13	Huampara, Yauyos	huampara yauyos	0	3	4074	\N	\N
4088	Huancaya	14	Huancaya, Yauyos	huancaya yauyos	0	3	4074	\N	\N
4089	Huangascar	15	Huangascar, Yauyos	huangascar yauyos	0	3	4074	\N	\N
4090	Huantan	16	Huantan, Yauyos	huantan yauyos	0	3	4074	\N	\N
4091	Huaqec	17	Huaqec, Yauyos	huaqec yauyos	0	3	4074	\N	\N
4092	Laraos	18	Laraos, Yauyos	laraos yauyos	0	3	4074	\N	\N
4093	Lincha	19	Lincha, Yauyos	lincha yauyos	0	3	4074	\N	\N
4094	Madean	20	Madean, Yauyos	madean yauyos	0	3	4074	\N	\N
4095	Miraflores	21	Miraflores, Yauyos	miraflores yauyos	0	3	4074	\N	\N
4096	Omas	22	Omas, Yauyos	omas yauyos	0	3	4074	\N	\N
4097	Putinza	23	Putinza, Yauyos	putinza yauyos	0	3	4074	\N	\N
4098	Quinches	24	Quinches, Yauyos	quinches yauyos	0	3	4074	\N	\N
4099	Quinocay	25	Quinocay, Yauyos	quinocay yauyos	0	3	4074	\N	\N
4100	San Joaquin	26	San Joaquin, Yauyos	san joaquin yauyos	0	3	4074	\N	\N
4101	San Pedro de Pilas	27	San Pedro de Pilas, Yauyos	san pedro de pilas yauyos	0	3	4074	\N	\N
4103	Tauripampa	29	Tauripampa, Yauyos	tauripampa yauyos	0	3	4074	\N	\N
4104	Tomas	30	Tomas, Yauyos	tomas yauyos	0	3	4074	\N	\N
4105	Tupe	31	Tupe, Yauyos	tupe yauyos	0	3	4074	\N	\N
4106	Viqac	32	Viqac, Yauyos	viqac yauyos	0	3	4074	\N	\N
4107	Vitis	33	Vitis, Yauyos	vitis yauyos	0	3	4074	\N	\N
4108	Loreto	16	Loreto, Per├║	loreto per├║	6	1	2533	\N	\N
4109	Maynas	01	Maynas, Loreto	maynas loreto	13	2	4108	\N	\N
4110	Iquitos	01	Iquitos, Maynas	iquitos maynas	0	3	4109	\N	\N
4111	Alto Nanay	02	Alto Nanay, Maynas	alto nanay maynas	0	3	4109	\N	\N
4112	Fernando Lores	03	Fernando Lores, Maynas	fernando lores maynas	0	3	4109	\N	\N
4113	Indiana	04	Indiana, Maynas	indiana maynas	0	3	4109	\N	\N
4114	Las Amazonas	05	Las Amazonas, Maynas	las amazonas maynas	0	3	4109	\N	\N
4115	Mazan	06	Mazan, Maynas	mazan maynas	0	3	4109	\N	\N
4116	Napo	07	Napo, Maynas	napo maynas	0	3	4109	\N	\N
4117	Punchana	08	Punchana, Maynas	punchana maynas	0	3	4109	\N	\N
4118	Putumayo	09	Putumayo, Maynas	putumayo maynas	0	3	4109	\N	\N
4119	Torres Causana	10	Torres Causana, Maynas	torres causana maynas	0	3	4109	\N	\N
4120	Yaquerana	11	Yaquerana, Maynas	yaquerana maynas	0	3	4109	\N	\N
4121	Bel├®n	12	Bel├®n, Maynas	bel├®n maynas	0	3	4109	\N	\N
4122	San Juan Bautista	13	San Juan Bautista, Maynas	san juan bautista maynas	0	3	4109	\N	\N
4123	Alto Amazonas	02	Alto Amazonas, Loreto	alto amazonas loreto	11	2	4108	\N	\N
4124	Yurimaguas	01	Yurimaguas, Alto Amazonas	yurimaguas alto amazonas	0	3	4123	\N	\N
4125	Balsapuerto	02	Balsapuerto, Alto Amazonas	balsapuerto alto amazonas	0	3	4123	\N	\N
4126	Barranca	03	Barranca, Alto Amazonas	barranca alto amazonas	0	3	4123	\N	\N
4127	Cahuapanas	04	Cahuapanas, Alto Amazonas	cahuapanas alto amazonas	0	3	4123	\N	\N
4128	Jeberos	05	Jeberos, Alto Amazonas	jeberos alto amazonas	0	3	4123	\N	\N
4129	Lagunas	06	Lagunas, Alto Amazonas	lagunas alto amazonas	0	3	4123	\N	\N
4130	Manseriche	07	Manseriche, Alto Amazonas	manseriche alto amazonas	0	3	4123	\N	\N
4131	Morona	08	Morona, Alto Amazonas	morona alto amazonas	0	3	4123	\N	\N
4132	Pastaza	09	Pastaza, Alto Amazonas	pastaza alto amazonas	0	3	4123	\N	\N
4133	Santa Cruz	10	Santa Cruz, Alto Amazonas	santa cruz alto amazonas	0	3	4123	\N	\N
4134	Teniente Cesar Lopez Rojas	11	Teniente Cesar Lopez Rojas, Alto Amazonas	teniente cesar lopez rojas alto amazonas	0	3	4123	\N	\N
4135	Loreto	03	Loreto, Loreto	loreto loreto	5	2	4108	\N	\N
4136	Nauta	01	Nauta, Loreto	nauta loreto	0	3	4135	\N	\N
4137	Parinari	02	Parinari, Loreto	parinari loreto	0	3	4135	\N	\N
4138	Tigre	03	Tigre, Loreto	tigre loreto	0	3	4135	\N	\N
4139	Trompeteros	04	Trompeteros, Loreto	trompeteros loreto	0	3	4135	\N	\N
4140	Urarinas	05	Urarinas, Loreto	urarinas loreto	0	3	4135	\N	\N
4141	Mariscal Ramon Castilla	04	Mariscal Ramon Castilla, Loreto	mariscal ramon castilla loreto	4	2	4108	\N	\N
4142	Ramon Castilla	01	Ramon Castilla, Mariscal Ramon Castilla	ramon castilla mariscal ramon castilla	0	3	4141	\N	\N
4143	Pebas	02	Pebas, Mariscal Ramon Castilla	pebas mariscal ramon castilla	0	3	4141	\N	\N
4144	Yavari	03	Yavari, Mariscal Ramon Castilla	yavari mariscal ramon castilla	0	3	4141	\N	\N
4145	San Pablo	04	San Pablo, Mariscal Ramon Castilla	san pablo mariscal ramon castilla	0	3	4141	\N	\N
4146	Requena	05	Requena, Loreto	requena loreto	11	2	4108	\N	\N
4147	Requena	01	Requena, Requena	requena requena	0	3	4146	\N	\N
4148	Alto Tapiche	02	Alto Tapiche, Requena	alto tapiche requena	0	3	4146	\N	\N
4149	Capelo	03	Capelo, Requena	capelo requena	0	3	4146	\N	\N
4150	Emilio San Martin	04	Emilio San Martin, Requena	emilio san martin requena	0	3	4146	\N	\N
4151	Maquia	05	Maquia, Requena	maquia requena	0	3	4146	\N	\N
4152	Puinahua	06	Puinahua, Requena	puinahua requena	0	3	4146	\N	\N
4153	Saquena	07	Saquena, Requena	saquena requena	0	3	4146	\N	\N
4154	Soplin	08	Soplin, Requena	soplin requena	0	3	4146	\N	\N
4155	Tapiche	09	Tapiche, Requena	tapiche requena	0	3	4146	\N	\N
4156	Jenaro Herrera	10	Jenaro Herrera, Requena	jenaro herrera requena	0	3	4146	\N	\N
4157	Yaquerana	11	Yaquerana, Requena	yaquerana requena	0	3	4146	\N	\N
4158	Ucayali	06	Ucayali, Loreto	ucayali loreto	6	2	4108	\N	\N
4159	Contamana	01	Contamana, Ucayali	contamana ucayali	0	3	4158	\N	\N
4160	Inahuaya	02	Inahuaya, Ucayali	inahuaya ucayali	0	3	4158	\N	\N
4161	Padre Marquez	03	Padre Marquez, Ucayali	padre marquez ucayali	0	3	4158	\N	\N
4162	Pampa Hermosa	04	Pampa Hermosa, Ucayali	pampa hermosa ucayali	0	3	4158	\N	\N
4163	Sarayacu	05	Sarayacu, Ucayali	sarayacu ucayali	0	3	4158	\N	\N
4164	Vargas Guerra	06	Vargas Guerra, Ucayali	vargas guerra ucayali	0	3	4158	\N	\N
4165	Madre de Dios	17	Madre de Dios, Per├║	madre de dios per├║	3	1	2533	\N	\N
4166	Tambopata	01	Tambopata, Madre de Dios	tambopata madre de dios	4	2	4165	\N	\N
4167	Tambopata	01	Tambopata, Tambopata	tambopata tambopata	0	3	4166	\N	\N
4168	Inambari	02	Inambari, Tambopata	inambari tambopata	0	3	4166	\N	\N
4169	Las Piedras	03	Las Piedras, Tambopata	las piedras tambopata	0	3	4166	\N	\N
4170	Laberinto	04	Laberinto, Tambopata	laberinto tambopata	0	3	4166	\N	\N
4171	Manu	02	Manu, Madre de Dios	manu madre de dios	4	2	4165	\N	\N
4172	Manu	01	Manu, Manu	manu manu	0	3	4171	\N	\N
4173	Fitzcarrald	02	Fitzcarrald, Manu	fitzcarrald manu	0	3	4171	\N	\N
4174	Madre de Dios	03	Madre de Dios, Manu	madre de dios manu	0	3	4171	\N	\N
4175	Huepetuhe	04	Huepetuhe, Manu	huepetuhe manu	0	3	4171	\N	\N
4176	Tahuamanu	03	Tahuamanu, Madre de Dios	tahuamanu madre de dios	3	2	4165	\N	\N
4177	Iqapari	01	Iqapari, Tahuamanu	iqapari tahuamanu	0	3	4176	\N	\N
4178	Iberia	02	Iberia, Tahuamanu	iberia tahuamanu	0	3	4176	\N	\N
4179	Tahuamanu	03	Tahuamanu, Tahuamanu	tahuamanu tahuamanu	0	3	4176	\N	\N
4180	Moquegua	18	Moquegua, Per├║	moquegua per├║	3	1	2533	\N	\N
4181	Mariscal Nieto	01	Mariscal Nieto, Moquegua	mariscal nieto moquegua	6	2	4180	\N	\N
4182	Moquegua	01	Moquegua, Mariscal Nieto	moquegua mariscal nieto	0	3	4181	\N	\N
4183	Carumas	02	Carumas, Mariscal Nieto	carumas mariscal nieto	0	3	4181	\N	\N
4184	Cuchumbaya	03	Cuchumbaya, Mariscal Nieto	cuchumbaya mariscal nieto	0	3	4181	\N	\N
4185	Samegua	04	Samegua, Mariscal Nieto	samegua mariscal nieto	0	3	4181	\N	\N
4186	San Cristobal	05	San Cristobal, Mariscal Nieto	san cristobal mariscal nieto	0	3	4181	\N	\N
4187	Torata	06	Torata, Mariscal Nieto	torata mariscal nieto	0	3	4181	\N	\N
4188	General Sanchez Cerro	02	General Sanchez Cerro, Moquegua	general sanchez cerro moquegua	11	2	4180	\N	\N
4189	Omate	01	Omate, General Sanchez Cerro	omate general sanchez cerro	0	3	4188	\N	\N
4190	Chojata	02	Chojata, General Sanchez Cerro	chojata general sanchez cerro	0	3	4188	\N	\N
4191	Coalaque	03	Coalaque, General Sanchez Cerro	coalaque general sanchez cerro	0	3	4188	\N	\N
4192	Ichuqa	04	Ichuqa, General Sanchez Cerro	ichuqa general sanchez cerro	0	3	4188	\N	\N
4193	La Capilla	05	La Capilla, General Sanchez Cerro	la capilla general sanchez cerro	0	3	4188	\N	\N
4194	Lloque	06	Lloque, General Sanchez Cerro	lloque general sanchez cerro	0	3	4188	\N	\N
4195	Matalaque	07	Matalaque, General Sanchez Cerro	matalaque general sanchez cerro	0	3	4188	\N	\N
4196	Puquina	08	Puquina, General Sanchez Cerro	puquina general sanchez cerro	0	3	4188	\N	\N
4197	Quinistaquillas	09	Quinistaquillas, General Sanchez Cerro	quinistaquillas general sanchez cerro	0	3	4188	\N	\N
4198	Ubinas	10	Ubinas, General Sanchez Cerro	ubinas general sanchez cerro	0	3	4188	\N	\N
4199	Yunga	11	Yunga, General Sanchez Cerro	yunga general sanchez cerro	0	3	4188	\N	\N
4200	Ilo	03	Ilo, Moquegua	ilo moquegua	3	2	4180	\N	\N
4201	Ilo	01	Ilo, Ilo	ilo ilo	0	3	4200	\N	\N
4202	El Algarrobal	02	El Algarrobal, Ilo	el algarrobal ilo	0	3	4200	\N	\N
4203	Pacocha	03	Pacocha, Ilo	pacocha ilo	0	3	4200	\N	\N
4204	Pasco	19	Pasco, Per├║	pasco per├║	3	1	2533	\N	\N
4205	Pasco	01	Pasco, Pasco	pasco pasco	13	2	4204	\N	\N
4206	Chaupimarca	01	Chaupimarca, Pasco	chaupimarca pasco	0	3	4205	\N	\N
4207	Huachon	02	Huachon, Pasco	huachon pasco	0	3	4205	\N	\N
4208	Huariaca	03	Huariaca, Pasco	huariaca pasco	0	3	4205	\N	\N
4209	Huayllay	04	Huayllay, Pasco	huayllay pasco	0	3	4205	\N	\N
4210	Ninacaca	05	Ninacaca, Pasco	ninacaca pasco	0	3	4205	\N	\N
4211	Pallanchacra	06	Pallanchacra, Pasco	pallanchacra pasco	0	3	4205	\N	\N
4212	Paucartambo	07	Paucartambo, Pasco	paucartambo pasco	0	3	4205	\N	\N
4213	San Fco.De Asis de Yarusyacan	08	San Fco.De Asis de Yarusyacan, Pasco	san fco.de asis de yarusyacan pasco	0	3	4205	\N	\N
4214	Simon Bolivar	09	Simon Bolivar, Pasco	simon bolivar pasco	0	3	4205	\N	\N
4215	Ticlacayan	10	Ticlacayan, Pasco	ticlacayan pasco	0	3	4205	\N	\N
4216	Tinyahuarco	11	Tinyahuarco, Pasco	tinyahuarco pasco	0	3	4205	\N	\N
4217	Vicco	12	Vicco, Pasco	vicco pasco	0	3	4205	\N	\N
4218	Yanacancha	13	Yanacancha, Pasco	yanacancha pasco	0	3	4205	\N	\N
4219	Daniel Alcides Carrion	02	Daniel Alcides Carrion, Pasco	daniel alcides carrion pasco	8	2	4204	\N	\N
4220	Yanahuanca	01	Yanahuanca, Daniel Alcides Carrion	yanahuanca daniel alcides carrion	0	3	4219	\N	\N
4221	Chacayan	02	Chacayan, Daniel Alcides Carrion	chacayan daniel alcides carrion	0	3	4219	\N	\N
4222	Goyllarisquizga	03	Goyllarisquizga, Daniel Alcides Carrion	goyllarisquizga daniel alcides carrion	0	3	4219	\N	\N
4223	Paucar	04	Paucar, Daniel Alcides Carrion	paucar daniel alcides carrion	0	3	4219	\N	\N
4224	San Pedro de Pillao	05	San Pedro de Pillao, Daniel Alcides Carrion	san pedro de pillao daniel alcides carrion	0	3	4219	\N	\N
4225	Santa Ana de Tusi	06	Santa Ana de Tusi, Daniel Alcides Carrion	santa ana de tusi daniel alcides carrion	0	3	4219	\N	\N
4226	Tapuc	07	Tapuc, Daniel Alcides Carrion	tapuc daniel alcides carrion	0	3	4219	\N	\N
4227	Vilcabamba	08	Vilcabamba, Daniel Alcides Carrion	vilcabamba daniel alcides carrion	0	3	4219	\N	\N
4228	Oxapampa	03	Oxapampa, Pasco	oxapampa pasco	7	2	4204	\N	\N
4229	Oxapampa	01	Oxapampa, Oxapampa	oxapampa oxapampa	0	3	4228	\N	\N
4230	Chontabamba	02	Chontabamba, Oxapampa	chontabamba oxapampa	0	3	4228	\N	\N
4231	Huancabamba	03	Huancabamba, Oxapampa	huancabamba oxapampa	0	3	4228	\N	\N
4232	Palcazu	04	Palcazu, Oxapampa	palcazu oxapampa	0	3	4228	\N	\N
4233	Pozuzo	05	Pozuzo, Oxapampa	pozuzo oxapampa	0	3	4228	\N	\N
4234	Puerto Bermudez	06	Puerto Bermudez, Oxapampa	puerto bermudez oxapampa	0	3	4228	\N	\N
4235	Villa Rica	07	Villa Rica, Oxapampa	villa rica oxapampa	0	3	4228	\N	\N
4236	Piura	20	Piura, Per├║	piura per├║	8	1	2533	\N	\N
4237	Piura	01	Piura, Piura, Piura	piura piura piura	9	2	4236	\N	\N
4238	Piura	01	Piura, Piura	piura piura	0	3	4237	\N	\N
4239	Castilla	04	Castilla, Piura	castilla piura	0	3	4237	\N	\N
4240	Catacaos	05	Catacaos, Piura	catacaos piura	0	3	4237	\N	\N
4241	Cura Mori	07	Cura Mori, Piura	cura mori piura	0	3	4237	\N	\N
4242	El Tallan	08	El Tallan, Piura	el tallan piura	0	3	4237	\N	\N
4243	La Arena	09	La Arena, Piura	la arena piura	0	3	4237	\N	\N
4244	La Union	10	La Union, Piura	la union piura	0	3	4237	\N	\N
4245	Las Lomas	11	Las Lomas, Piura	las lomas piura	0	3	4237	\N	\N
4246	Tambo Grande	14	Tambo Grande, Piura	tambo grande piura	0	3	4237	\N	\N
4247	Ayabaca	02	Ayabaca, Piura	ayabaca piura	10	2	4236	\N	\N
4248	Ayabaca	01	Ayabaca, Ayabaca	ayabaca ayabaca	0	3	4247	\N	\N
4249	Frias	02	Frias, Ayabaca	frias ayabaca	0	3	4247	\N	\N
4250	Jilili	03	Jilili, Ayabaca	jilili ayabaca	0	3	4247	\N	\N
4251	Lagunas	04	Lagunas, Ayabaca	lagunas ayabaca	0	3	4247	\N	\N
4252	Montero	05	Montero, Ayabaca	montero ayabaca	0	3	4247	\N	\N
4253	Pacaipampa	06	Pacaipampa, Ayabaca	pacaipampa ayabaca	0	3	4247	\N	\N
4254	Paimas	07	Paimas, Ayabaca	paimas ayabaca	0	3	4247	\N	\N
4255	Sapillica	08	Sapillica, Ayabaca	sapillica ayabaca	0	3	4247	\N	\N
4256	Sicchez	09	Sicchez, Ayabaca	sicchez ayabaca	0	3	4247	\N	\N
4257	Suyo	10	Suyo, Ayabaca	suyo ayabaca	0	3	4247	\N	\N
4258	Huancabamba	03	Huancabamba, Piura	huancabamba piura	8	2	4236	\N	\N
4259	Huancabamba	01	Huancabamba, Huancabamba	huancabamba huancabamba	0	3	4258	\N	\N
4260	Canchaque	02	Canchaque, Huancabamba	canchaque huancabamba	0	3	4258	\N	\N
4261	El Carmen de la Frontera	03	El Carmen de la Frontera, Huancabamba	el carmen de la frontera huancabamba	0	3	4258	\N	\N
4262	Huarmaca	04	Huarmaca, Huancabamba	huarmaca huancabamba	0	3	4258	\N	\N
4263	Lalaquiz	05	Lalaquiz, Huancabamba	lalaquiz huancabamba	0	3	4258	\N	\N
4264	San Miguel de El Faique	06	San Miguel de El Faique, Huancabamba	san miguel de el faique huancabamba	0	3	4258	\N	\N
4265	Sondor	07	Sondor, Huancabamba	sondor huancabamba	0	3	4258	\N	\N
4266	Sondorillo	08	Sondorillo, Huancabamba	sondorillo huancabamba	0	3	4258	\N	\N
4267	Morropon	04	Morropon, Piura	morropon piura	10	2	4236	\N	\N
4268	Chulucanas	01	Chulucanas, Morropon	chulucanas morropon	0	3	4267	\N	\N
4269	Buenos Aires	02	Buenos Aires, Morropon	buenos aires morropon	0	3	4267	\N	\N
4270	Chalaco	03	Chalaco, Morropon	chalaco morropon	0	3	4267	\N	\N
4271	La Matanza	04	La Matanza, Morropon	la matanza morropon	0	3	4267	\N	\N
4272	Morropon	05	Morropon, Morropon	morropon morropon	0	3	4267	\N	\N
4273	Salitral	06	Salitral, Morropon	salitral morropon	0	3	4267	\N	\N
4274	San Juan de Bigote	07	San Juan de Bigote, Morropon	san juan de bigote morropon	0	3	4267	\N	\N
4275	Santa Catalina de Mossa	08	Santa Catalina de Mossa, Morropon	santa catalina de mossa morropon	0	3	4267	\N	\N
4276	Santo Domingo	09	Santo Domingo, Morropon	santo domingo morropon	0	3	4267	\N	\N
4277	Yamango	10	Yamango, Morropon	yamango morropon	0	3	4267	\N	\N
4278	Paita	05	Paita, Piura	paita piura	7	2	4236	\N	\N
4279	Paita	01	Paita, Paita	paita paita	0	3	4278	\N	\N
4280	Amotape	02	Amotape, Paita	amotape paita	0	3	4278	\N	\N
4281	Arenal	03	Arenal, Paita	arenal paita	0	3	4278	\N	\N
4282	Colan	04	Colan, Paita	colan paita	0	3	4278	\N	\N
4283	La Huaca	05	La Huaca, Paita	la huaca paita	0	3	4278	\N	\N
4284	Tamarindo	06	Tamarindo, Paita	tamarindo paita	0	3	4278	\N	\N
4285	Vichayal	07	Vichayal, Paita	vichayal paita	0	3	4278	\N	\N
4286	Sullana	06	Sullana, Piura	sullana piura	8	2	4236	\N	\N
4287	Sullana	01	Sullana, Sullana	sullana sullana	0	3	4286	\N	\N
4288	Bellavista	02	Bellavista, Sullana	bellavista sullana	0	3	4286	\N	\N
4289	Ignacio Escudero	03	Ignacio Escudero, Sullana	ignacio escudero sullana	0	3	4286	\N	\N
4290	Lancones	04	Lancones, Sullana	lancones sullana	0	3	4286	\N	\N
4291	Marcavelica	05	Marcavelica, Sullana	marcavelica sullana	0	3	4286	\N	\N
4292	Miguel Checa	06	Miguel Checa, Sullana	miguel checa sullana	0	3	4286	\N	\N
4293	Querecotillo	07	Querecotillo, Sullana	querecotillo sullana	0	3	4286	\N	\N
4294	Salitral	08	Salitral, Sullana	salitral sullana	0	3	4286	\N	\N
4295	Talara	07	Talara, Piura	talara piura	6	2	4236	\N	\N
4296	Pariqas	01	Pariqas, Talara	pariqas talara	0	3	4295	\N	\N
4297	El Alto	02	El Alto, Talara	el alto talara	0	3	4295	\N	\N
4298	La Brea	03	La Brea, Talara	la brea talara	0	3	4295	\N	\N
4299	Lobitos	04	Lobitos, Talara	lobitos talara	0	3	4295	\N	\N
4300	Los Organos	05	Los Organos, Talara	los organos talara	0	3	4295	\N	\N
4301	Mancora	06	Mancora, Talara	mancora talara	0	3	4295	\N	\N
4302	Sechura	08	Sechura, Piura	sechura piura	6	2	4236	\N	\N
4303	Sechura	01	Sechura, Sechura	sechura sechura	0	3	4302	\N	\N
4304	Bellavista de la Union	02	Bellavista de la Union, Sechura	bellavista de la union sechura	0	3	4302	\N	\N
4305	Bernal	03	Bernal, Sechura	bernal sechura	0	3	4302	\N	\N
4306	Cristo Nos Valga	04	Cristo Nos Valga, Sechura	cristo nos valga sechura	0	3	4302	\N	\N
4307	Vice	05	Vice, Sechura	vice sechura	0	3	4302	\N	\N
4308	Rinconada Llicuar	06	Rinconada Llicuar, Sechura	rinconada llicuar sechura	0	3	4302	\N	\N
4309	Puno	21	Puno, Per├║	puno per├║	13	1	2533	\N	\N
4310	Puno	01	Puno, Puno, Puno	puno puno puno	15	2	4309	\N	\N
4311	Puno	01	Puno, Puno	puno puno	0	3	4310	\N	\N
4312	Acora	02	Acora, Puno	acora puno	0	3	4310	\N	\N
4313	Amantani	03	Amantani, Puno	amantani puno	0	3	4310	\N	\N
4314	Atuncolla	04	Atuncolla, Puno	atuncolla puno	0	3	4310	\N	\N
4315	Capachica	05	Capachica, Puno	capachica puno	0	3	4310	\N	\N
4316	Chucuito	06	Chucuito, Puno	chucuito puno	0	3	4310	\N	\N
4317	Coata	07	Coata, Puno	coata puno	0	3	4310	\N	\N
4318	Huata	08	Huata, Puno	huata puno	0	3	4310	\N	\N
4319	Maqazo	09	Maqazo, Puno	maqazo puno	0	3	4310	\N	\N
4320	Paucarcolla	10	Paucarcolla, Puno	paucarcolla puno	0	3	4310	\N	\N
4321	Pichacani	11	Pichacani, Puno	pichacani puno	0	3	4310	\N	\N
4322	Plateria	12	Plateria, Puno	plateria puno	0	3	4310	\N	\N
4323	San Antonio	13	San Antonio, Puno	san antonio puno	0	3	4310	\N	\N
4324	Tiquillaca	14	Tiquillaca, Puno	tiquillaca puno	0	3	4310	\N	\N
4325	Vilque	15	Vilque, Puno	vilque puno	0	3	4310	\N	\N
4326	Azangaro	02	Azangaro, Puno	azangaro puno	15	2	4309	\N	\N
4327	Azangaro	01	Azangaro, Azangaro	azangaro azangaro	0	3	4326	\N	\N
4328	Achaya	02	Achaya, Azangaro	achaya azangaro	0	3	4326	\N	\N
4329	Arapa	03	Arapa, Azangaro	arapa azangaro	0	3	4326	\N	\N
4330	Asillo	04	Asillo, Azangaro	asillo azangaro	0	3	4326	\N	\N
4331	Caminaca	05	Caminaca, Azangaro	caminaca azangaro	0	3	4326	\N	\N
4332	Chupa	06	Chupa, Azangaro	chupa azangaro	0	3	4326	\N	\N
4333	Jose Domingo Choquehuanca	07	Jose Domingo Choquehuanca, Azangaro	jose domingo choquehuanca azangaro	0	3	4326	\N	\N
4334	Muqani	08	Muqani, Azangaro	muqani azangaro	0	3	4326	\N	\N
4335	Potoni	09	Potoni, Azangaro	potoni azangaro	0	3	4326	\N	\N
4336	Saman	10	Saman, Azangaro	saman azangaro	0	3	4326	\N	\N
4337	San Anton	11	San Anton, Azangaro	san anton azangaro	0	3	4326	\N	\N
4338	San Jose	12	San Jose, Azangaro	san jose azangaro	0	3	4326	\N	\N
4339	San Juan de Salinas	13	San Juan de Salinas, Azangaro	san juan de salinas azangaro	0	3	4326	\N	\N
4340	Santiago de Pupuja	14	Santiago de Pupuja, Azangaro	santiago de pupuja azangaro	0	3	4326	\N	\N
4341	Tirapata	15	Tirapata, Azangaro	tirapata azangaro	0	3	4326	\N	\N
4342	Carabaya	03	Carabaya, Puno	carabaya puno	10	2	4309	\N	\N
4343	Macusani	01	Macusani, Carabaya	macusani carabaya	0	3	4342	\N	\N
4344	Ajoyani	02	Ajoyani, Carabaya	ajoyani carabaya	0	3	4342	\N	\N
4345	Ayapata	03	Ayapata, Carabaya	ayapata carabaya	0	3	4342	\N	\N
4346	Coasa	04	Coasa, Carabaya	coasa carabaya	0	3	4342	\N	\N
4347	Corani	05	Corani, Carabaya	corani carabaya	0	3	4342	\N	\N
4348	Crucero	06	Crucero, Carabaya	crucero carabaya	0	3	4342	\N	\N
4349	Ituata	07	Ituata, Carabaya	ituata carabaya	0	3	4342	\N	\N
4350	Ollachea	08	Ollachea, Carabaya	ollachea carabaya	0	3	4342	\N	\N
4351	San Gaban	09	San Gaban, Carabaya	san gaban carabaya	0	3	4342	\N	\N
4352	Usicayos	10	Usicayos, Carabaya	usicayos carabaya	0	3	4342	\N	\N
4353	Chucuito	04	Chucuito, Puno	chucuito puno	7	2	4309	\N	\N
4354	Juli	01	Juli, Chucuito	juli chucuito	0	3	4353	\N	\N
4355	Desaguadero	02	Desaguadero, Chucuito	desaguadero chucuito	0	3	4353	\N	\N
4356	Huacullani	03	Huacullani, Chucuito	huacullani chucuito	0	3	4353	\N	\N
4357	Kelluyo	04	Kelluyo, Chucuito	kelluyo chucuito	0	3	4353	\N	\N
4358	Pisacoma	05	Pisacoma, Chucuito	pisacoma chucuito	0	3	4353	\N	\N
4359	Pomata	06	Pomata, Chucuito	pomata chucuito	0	3	4353	\N	\N
4360	Zepita	07	Zepita, Chucuito	zepita chucuito	0	3	4353	\N	\N
4361	El Collao	05	El Collao, Puno	el collao puno	5	2	4309	\N	\N
4362	Ilave	01	Ilave, El Collao	ilave el collao	0	3	4361	\N	\N
4363	Capazo	02	Capazo, El Collao	capazo el collao	0	3	4361	\N	\N
4364	Pilcuyo	03	Pilcuyo, El Collao	pilcuyo el collao	0	3	4361	\N	\N
4365	Santa Rosa	04	Santa Rosa, El Collao	santa rosa el collao	0	3	4361	\N	\N
4366	Conduriri	05	Conduriri, El Collao	conduriri el collao	0	3	4361	\N	\N
4367	Huancane	06	Huancane, Puno	huancane puno	8	2	4309	\N	\N
4368	Huancane	01	Huancane, Huancane	huancane huancane	0	3	4367	\N	\N
4369	Cojata	02	Cojata, Huancane	cojata huancane	0	3	4367	\N	\N
4370	Huatasani	03	Huatasani, Huancane	huatasani huancane	0	3	4367	\N	\N
4371	Inchupalla	04	Inchupalla, Huancane	inchupalla huancane	0	3	4367	\N	\N
4372	Pusi	05	Pusi, Huancane	pusi huancane	0	3	4367	\N	\N
4373	Rosaspata	06	Rosaspata, Huancane	rosaspata huancane	0	3	4367	\N	\N
4374	Taraco	07	Taraco, Huancane	taraco huancane	0	3	4367	\N	\N
4375	Vilque Chico	08	Vilque Chico, Huancane	vilque chico huancane	0	3	4367	\N	\N
4376	Lampa	07	Lampa, Puno	lampa puno	10	2	4309	\N	\N
4377	Lampa	01	Lampa, Lampa	lampa lampa	0	3	4376	\N	\N
4378	Cabanilla	02	Cabanilla, Lampa	cabanilla lampa	0	3	4376	\N	\N
4379	Calapuja	03	Calapuja, Lampa	calapuja lampa	0	3	4376	\N	\N
4380	Nicasio	04	Nicasio, Lampa	nicasio lampa	0	3	4376	\N	\N
4381	Ocuviri	05	Ocuviri, Lampa	ocuviri lampa	0	3	4376	\N	\N
4382	Palca	06	Palca, Lampa	palca lampa	0	3	4376	\N	\N
4383	Paratia	07	Paratia, Lampa	paratia lampa	0	3	4376	\N	\N
4384	Pucara	08	Pucara, Lampa	pucara lampa	0	3	4376	\N	\N
4385	Santa Lucia	09	Santa Lucia, Lampa	santa lucia lampa	0	3	4376	\N	\N
4386	Vilavila	10	Vilavila, Lampa	vilavila lampa	0	3	4376	\N	\N
4387	Melgar	08	Melgar, Puno	melgar puno	9	2	4309	\N	\N
4388	Ayaviri	01	Ayaviri, Melgar	ayaviri melgar	0	3	4387	\N	\N
4389	Antauta	02	Antauta, Melgar	antauta melgar	0	3	4387	\N	\N
4393	Nuqoa	06	Nuqoa, Melgar	nuqoa melgar	0	3	4387	\N	\N
4394	Orurillo	07	Orurillo, Melgar	orurillo melgar	0	3	4387	\N	\N
4395	Santa Rosa	08	Santa Rosa, Melgar	santa rosa melgar	0	3	4387	\N	\N
4396	Umachiri	09	Umachiri, Melgar	umachiri melgar	0	3	4387	\N	\N
4397	Moho	09	Moho, Puno	moho puno	4	2	4309	\N	\N
4398	Moho	01	Moho, Moho	moho moho	0	3	4397	\N	\N
4399	Conima	02	Conima, Moho	conima moho	0	3	4397	\N	\N
4400	Huayrapata	03	Huayrapata, Moho	huayrapata moho	0	3	4397	\N	\N
4401	Tilali	04	Tilali, Moho	tilali moho	0	3	4397	\N	\N
4402	San Antonio de Putina	10	San Antonio de Putina, Puno	san antonio de putina puno	5	2	4309	\N	\N
4403	Putina	01	Putina, San Antonio de Putina	putina san antonio de putina	0	3	4402	\N	\N
4404	Ananea	02	Ananea, San Antonio de Putina	ananea san antonio de putina	0	3	4402	\N	\N
4405	Pedro Vilca Apaza	03	Pedro Vilca Apaza, San Antonio de Putina	pedro vilca apaza san antonio de putina	0	3	4402	\N	\N
4406	Quilcapuncu	04	Quilcapuncu, San Antonio de Putina	quilcapuncu san antonio de putina	0	3	4402	\N	\N
4407	Sina	05	Sina, San Antonio de Putina	sina san antonio de putina	0	3	4402	\N	\N
4408	San Roman	11	San Roman, Puno	san roman puno	4	2	4309	\N	\N
4409	Juliaca	01	Juliaca, San Roman	juliaca san roman	0	3	4408	\N	\N
4410	Cabana	02	Cabana, San Roman	cabana san roman	0	3	4408	\N	\N
4411	Cabanillas	03	Cabanillas, San Roman	cabanillas san roman	0	3	4408	\N	\N
4412	Caracoto	04	Caracoto, San Roman	caracoto san roman	0	3	4408	\N	\N
4413	Sandia	12	Sandia, Puno	sandia puno	9	2	4309	\N	\N
4414	Sandia	01	Sandia, Sandia	sandia sandia	0	3	4413	\N	\N
4415	Cuyocuyo	02	Cuyocuyo, Sandia	cuyocuyo sandia	0	3	4413	\N	\N
4416	Limbani	03	Limbani, Sandia	limbani sandia	0	3	4413	\N	\N
4417	Patambuco	04	Patambuco, Sandia	patambuco sandia	0	3	4413	\N	\N
4418	Phara	05	Phara, Sandia	phara sandia	0	3	4413	\N	\N
4419	Quiaca	06	Quiaca, Sandia	quiaca sandia	0	3	4413	\N	\N
4420	San Juan del Oro	07	San Juan del Oro, Sandia	san juan del oro sandia	0	3	4413	\N	\N
4421	Yanahuaya	08	Yanahuaya, Sandia	yanahuaya sandia	0	3	4413	\N	\N
4422	Alto Inambari	09	Alto Inambari, Sandia	alto inambari sandia	0	3	4413	\N	\N
4423	Yunguyo	13	Yunguyo, Puno	yunguyo puno	7	2	4309	\N	\N
4424	Yunguyo	01	Yunguyo, Yunguyo	yunguyo yunguyo	0	3	4423	\N	\N
4425	Anapia	02	Anapia, Yunguyo	anapia yunguyo	0	3	4423	\N	\N
4426	Copani	03	Copani, Yunguyo	copani yunguyo	0	3	4423	\N	\N
4427	Cuturapi	04	Cuturapi, Yunguyo	cuturapi yunguyo	0	3	4423	\N	\N
4428	Ollaraya	05	Ollaraya, Yunguyo	ollaraya yunguyo	0	3	4423	\N	\N
4429	Tinicachi	06	Tinicachi, Yunguyo	tinicachi yunguyo	0	3	4423	\N	\N
4430	Unicachi	07	Unicachi, Yunguyo	unicachi yunguyo	0	3	4423	\N	\N
4431	San Martin	22	San Martin, Per├║	san martin per├║	10	1	2533	\N	\N
4432	Moyobamba	01	Moyobamba, San Martin	moyobamba san martin	6	2	4431	\N	\N
4433	Moyobamba	01	Moyobamba, Moyobamba	moyobamba moyobamba	0	3	4432	\N	\N
4434	Calzada	02	Calzada, Moyobamba	calzada moyobamba	0	3	4432	\N	\N
4435	Habana	03	Habana, Moyobamba	habana moyobamba	0	3	4432	\N	\N
4436	Jepelacio	04	Jepelacio, Moyobamba	jepelacio moyobamba	0	3	4432	\N	\N
4437	Soritor	05	Soritor, Moyobamba	soritor moyobamba	0	3	4432	\N	\N
4438	Yantalo	06	Yantalo, Moyobamba	yantalo moyobamba	0	3	4432	\N	\N
4439	Bellavista	02	Bellavista, San Martin	bellavista san martin	6	2	4431	\N	\N
4440	Bellavista	01	Bellavista, Bellavista	bellavista bellavista	0	3	4439	\N	\N
4441	Alto Biavo	02	Alto Biavo, Bellavista	alto biavo bellavista	0	3	4439	\N	\N
4442	Bajo Biavo	03	Bajo Biavo, Bellavista	bajo biavo bellavista	0	3	4439	\N	\N
4443	Huallaga	04	Huallaga, Bellavista	huallaga bellavista	0	3	4439	\N	\N
4444	San Pablo	05	San Pablo, Bellavista	san pablo bellavista	0	3	4439	\N	\N
4445	San Rafael	06	San Rafael, Bellavista	san rafael bellavista	0	3	4439	\N	\N
4446	El Dorado	03	El Dorado, San Martin	el dorado san martin	5	2	4431	\N	\N
4447	San Jose de Sisa	01	San Jose de Sisa, El Dorado	san jose de sisa el dorado	0	3	4446	\N	\N
4448	Agua Blanca	02	Agua Blanca, El Dorado	agua blanca el dorado	0	3	4446	\N	\N
4449	San Martin	03	San Martin, El Dorado	san martin el dorado	0	3	4446	\N	\N
4450	Santa Rosa	04	Santa Rosa, El Dorado	santa rosa el dorado	0	3	4446	\N	\N
4451	Shatoja	05	Shatoja, El Dorado	shatoja el dorado	0	3	4446	\N	\N
4452	Huallaga	04	Huallaga, San Martin	huallaga san martin	6	2	4431	\N	\N
4453	Saposoa	01	Saposoa, Huallaga	saposoa huallaga	0	3	4452	\N	\N
4454	Alto Saposoa	02	Alto Saposoa, Huallaga	alto saposoa huallaga	0	3	4452	\N	\N
4455	El Eslabon	03	El Eslabon, Huallaga	el eslabon huallaga	0	3	4452	\N	\N
4456	Piscoyacu	04	Piscoyacu, Huallaga	piscoyacu huallaga	0	3	4452	\N	\N
4457	Sacanche	05	Sacanche, Huallaga	sacanche huallaga	0	3	4452	\N	\N
4458	Tingo de Saposoa	06	Tingo de Saposoa, Huallaga	tingo de saposoa huallaga	0	3	4452	\N	\N
4459	Lamas	05	Lamas, San Martin	lamas san martin	11	2	4431	\N	\N
4460	Lamas	01	Lamas, Lamas	lamas lamas	0	3	4459	\N	\N
4461	Alonso de Alvarado	02	Alonso de Alvarado, Lamas	alonso de alvarado lamas	0	3	4459	\N	\N
4462	Barranquita	03	Barranquita, Lamas	barranquita lamas	0	3	4459	\N	\N
4463	Caynarachi	04	Caynarachi, Lamas	caynarachi lamas	0	3	4459	\N	\N
4464	Cuqumbuqui	05	Cuqumbuqui, Lamas	cuqumbuqui lamas	0	3	4459	\N	\N
4465	Pinto Recodo	06	Pinto Recodo, Lamas	pinto recodo lamas	0	3	4459	\N	\N
4466	Rumisapa	07	Rumisapa, Lamas	rumisapa lamas	0	3	4459	\N	\N
4467	San Roque de Cumbaza	08	San Roque de Cumbaza, Lamas	san roque de cumbaza lamas	0	3	4459	\N	\N
4468	Shanao	09	Shanao, Lamas	shanao lamas	0	3	4459	\N	\N
4469	Tabalosos	10	Tabalosos, Lamas	tabalosos lamas	0	3	4459	\N	\N
4470	Zapatero	11	Zapatero, Lamas	zapatero lamas	0	3	4459	\N	\N
4471	Mariscal Caceres	06	Mariscal Caceres, San Martin	mariscal caceres san martin	5	2	4431	\N	\N
4472	Juanjui	01	Juanjui, Mariscal Caceres	juanjui mariscal caceres	0	3	4471	\N	\N
4473	Campanilla	02	Campanilla, Mariscal Caceres	campanilla mariscal caceres	0	3	4471	\N	\N
4474	Huicungo	03	Huicungo, Mariscal Caceres	huicungo mariscal caceres	0	3	4471	\N	\N
4475	Pachiza	04	Pachiza, Mariscal Caceres	pachiza mariscal caceres	0	3	4471	\N	\N
4476	Pajarillo	05	Pajarillo, Mariscal Caceres	pajarillo mariscal caceres	0	3	4471	\N	\N
4477	Picota	07	Picota, San Martin	picota san martin	10	2	4431	\N	\N
4478	Picota	01	Picota, Picota	picota picota	0	3	4477	\N	\N
4479	Buenos Aires	02	Buenos Aires, Picota	buenos aires picota	0	3	4477	\N	\N
4480	Caspisapa	03	Caspisapa, Picota	caspisapa picota	0	3	4477	\N	\N
4481	Pilluana	04	Pilluana, Picota	pilluana picota	0	3	4477	\N	\N
4482	Pucacaca	05	Pucacaca, Picota	pucacaca picota	0	3	4477	\N	\N
4483	San Cristobal	06	San Cristobal, Picota	san cristobal picota	0	3	4477	\N	\N
4484	San Hilarion	07	San Hilarion, Picota	san hilarion picota	0	3	4477	\N	\N
4485	Shamboyacu	08	Shamboyacu, Picota	shamboyacu picota	0	3	4477	\N	\N
4486	Tingo de Ponasa	09	Tingo de Ponasa, Picota	tingo de ponasa picota	0	3	4477	\N	\N
4487	Tres Unidos	10	Tres Unidos, Picota	tres unidos picota	0	3	4477	\N	\N
4488	Rioja	08	Rioja, San Martin	rioja san martin	9	2	4431	\N	\N
4489	Rioja	01	Rioja, Rioja	rioja rioja	0	3	4488	\N	\N
4490	Awajun	02	Awajun, Rioja	awajun rioja	0	3	4488	\N	\N
4491	Elias Soplin Vargas	03	Elias Soplin Vargas, Rioja	elias soplin vargas rioja	0	3	4488	\N	\N
4492	Nueva Cajamarca	04	Nueva Cajamarca, Rioja	nueva cajamarca rioja	0	3	4488	\N	\N
4493	Pardo Miguel	05	Pardo Miguel, Rioja	pardo miguel rioja	0	3	4488	\N	\N
4494	Posic	06	Posic, Rioja	posic rioja	0	3	4488	\N	\N
4495	San Fernando	07	San Fernando, Rioja	san fernando rioja	0	3	4488	\N	\N
4496	Yorongos	08	Yorongos, Rioja	yorongos rioja	0	3	4488	\N	\N
4497	Yuracyacu	09	Yuracyacu, Rioja	yuracyacu rioja	0	3	4488	\N	\N
4498	San Martin	09	San Martin, San Martin	san martin san martin	14	2	4431	\N	\N
4499	Tarapoto	01	Tarapoto, San Martin	tarapoto san martin	0	3	4498	\N	\N
4500	Alberto Leveau	02	Alberto Leveau, San Martin	alberto leveau san martin	0	3	4498	\N	\N
4501	Cacatachi	03	Cacatachi, San Martin	cacatachi san martin	0	3	4498	\N	\N
4502	Chazuta	04	Chazuta, San Martin	chazuta san martin	0	3	4498	\N	\N
4503	Chipurana	05	Chipurana, San Martin	chipurana san martin	0	3	4498	\N	\N
4504	El Porvenir	06	El Porvenir, San Martin	el porvenir san martin	0	3	4498	\N	\N
4505	Huimbayoc	07	Huimbayoc, San Martin	huimbayoc san martin	0	3	4498	\N	\N
4506	Juan Guerra	08	Juan Guerra, San Martin	juan guerra san martin	0	3	4498	\N	\N
4507	La Banda de Shilcayo	09	La Banda de Shilcayo, San Martin	la banda de shilcayo san martin	0	3	4498	\N	\N
4508	Morales	10	Morales, San Martin	morales san martin	0	3	4498	\N	\N
4509	Papaplaya	11	Papaplaya, San Martin	papaplaya san martin	0	3	4498	\N	\N
4510	San Antonio	12	San Antonio, San Martin	san antonio san martin	0	3	4498	\N	\N
4511	Sauce	13	Sauce, San Martin	sauce san martin	0	3	4498	\N	\N
4512	Shapaja	14	Shapaja, San Martin	shapaja san martin	0	3	4498	\N	\N
4513	Tocache	10	Tocache, San Martin	tocache san martin	5	2	4431	\N	\N
4514	Tocache	01	Tocache, Tocache	tocache tocache	0	3	4513	\N	\N
4515	Nuevo Progreso	02	Nuevo Progreso, Tocache	nuevo progreso tocache	0	3	4513	\N	\N
4516	Polvora	03	Polvora, Tocache	polvora tocache	0	3	4513	\N	\N
4517	Shunte	04	Shunte, Tocache	shunte tocache	0	3	4513	\N	\N
4518	Uchiza	05	Uchiza, Tocache	uchiza tocache	0	3	4513	\N	\N
4519	Tacna	23	Tacna, Per├║	tacna per├║	4	1	2533	\N	\N
4520	Tacna	01	Tacna, Tacna, Tacna	tacna tacna tacna	10	2	4519	\N	\N
4521	Tacna	01	Tacna, Tacna	tacna tacna	0	3	4520	\N	\N
4522	Alto de la Alianza	02	Alto de la Alianza, Tacna	alto de la alianza tacna	0	3	4520	\N	\N
4523	Calana	03	Calana, Tacna	calana tacna	0	3	4520	\N	\N
4524	Ciudad Nueva	04	Ciudad Nueva, Tacna	ciudad nueva tacna	0	3	4520	\N	\N
4525	Inclan	05	Inclan, Tacna	inclan tacna	0	3	4520	\N	\N
4526	Pachia	06	Pachia, Tacna	pachia tacna	0	3	4520	\N	\N
4527	Palca	07	Palca, Tacna	palca tacna	0	3	4520	\N	\N
4528	Pocollay	08	Pocollay, Tacna	pocollay tacna	0	3	4520	\N	\N
4529	Sama	09	Sama, Tacna	sama tacna	0	3	4520	\N	\N
4530	Cor Gregorio Albarrac├¡n	10	Cor Gregorio Albarrac├¡n, Tacna	cor gregorio albarrac├¡n tacna	0	3	4520	\N	\N
4531	Candarave	02	Candarave, Tacna	candarave tacna	6	2	4519	\N	\N
4532	Candarave	01	Candarave, Candarave	candarave candarave	0	3	4531	\N	\N
4533	Cairani	02	Cairani, Candarave	cairani candarave	0	3	4531	\N	\N
4534	Camilaca	03	Camilaca, Candarave	camilaca candarave	0	3	4531	\N	\N
4535	Curibaya	04	Curibaya, Candarave	curibaya candarave	0	3	4531	\N	\N
4536	Huanuara	05	Huanuara, Candarave	huanuara candarave	0	3	4531	\N	\N
4537	Quilahuani	06	Quilahuani, Candarave	quilahuani candarave	0	3	4531	\N	\N
4538	Jorge Basadre	03	Jorge Basadre, Tacna	jorge basadre tacna	3	2	4519	\N	\N
4539	Locumba	01	Locumba, Jorge Basadre	locumba jorge basadre	0	3	4538	\N	\N
4540	Ilabaya	02	Ilabaya, Jorge Basadre	ilabaya jorge basadre	0	3	4538	\N	\N
4541	Ite	03	Ite, Jorge Basadre	ite jorge basadre	0	3	4538	\N	\N
4542	Tarata	04	Tarata, Tacna	tarata tacna	8	2	4519	\N	\N
4543	Tarata	01	Tarata, Tarata	tarata tarata	0	3	4542	\N	\N
4544	Chucatamani	02	Chucatamani, Tarata	chucatamani tarata	0	3	4542	\N	\N
4545	Estique	03	Estique, Tarata	estique tarata	0	3	4542	\N	\N
4546	Estique-Pampa	04	Estique-Pampa, Tarata	estique-pampa tarata	0	3	4542	\N	\N
4547	Sitajara	05	Sitajara, Tarata	sitajara tarata	0	3	4542	\N	\N
4548	Susapaya	06	Susapaya, Tarata	susapaya tarata	0	3	4542	\N	\N
4549	Tarucachi	07	Tarucachi, Tarata	tarucachi tarata	0	3	4542	\N	\N
4550	Ticaco	08	Ticaco, Tarata	ticaco tarata	0	3	4542	\N	\N
4551	Tumbes	24	Tumbes, Per├║	tumbes per├║	3	1	2533	\N	\N
4552	Tumbes	01	Tumbes, Tumbes, Tumbes	tumbes tumbes tumbes	6	2	4551	\N	\N
4553	Tumbes	01	Tumbes, Tumbes	tumbes tumbes	0	3	4552	\N	\N
4554	Corrales	02	Corrales, Tumbes	corrales tumbes	0	3	4552	\N	\N
4555	La Cruz	03	La Cruz, Tumbes	la cruz tumbes	0	3	4552	\N	\N
4556	Pampas de Hospital	04	Pampas de Hospital, Tumbes	pampas de hospital tumbes	0	3	4552	\N	\N
4557	San Jacinto	05	San Jacinto, Tumbes	san jacinto tumbes	0	3	4552	\N	\N
4558	San Juan de la Virgen	06	San Juan de la Virgen, Tumbes	san juan de la virgen tumbes	0	3	4552	\N	\N
4559	Contralmirante Villar	02	Contralmirante Villar, Tumbes	contralmirante villar tumbes	2	2	4551	\N	\N
4560	Zorritos	01	Zorritos, Contralmirante Villar	zorritos contralmirante villar	0	3	4559	\N	\N
4561	Casitas	02	Casitas, Contralmirante Villar	casitas contralmirante villar	0	3	4559	\N	\N
4562	Zarumilla	03	Zarumilla, Tumbes	zarumilla tumbes	4	2	4551	\N	\N
4563	Zarumilla	01	Zarumilla, Zarumilla	zarumilla zarumilla	0	3	4562	\N	\N
4564	Aguas Verdes	02	Aguas Verdes, Zarumilla	aguas verdes zarumilla	0	3	4562	\N	\N
4565	Matapalo	03	Matapalo, Zarumilla	matapalo zarumilla	0	3	4562	\N	\N
4566	Papayal	04	Papayal, Zarumilla	papayal zarumilla	0	3	4562	\N	\N
4567	Ucayali	25	Ucayali, Per├║	ucayali per├║	4	1	2533	\N	\N
4568	Coronel Portillo	01	Coronel Portillo, Ucayali	coronel portillo ucayali	6	2	4567	\N	\N
4569	Calleria	01	Calleria, Coronel Portillo	calleria coronel portillo	0	3	4568	\N	\N
4570	Campoverde	02	Campoverde, Coronel Portillo	campoverde coronel portillo	0	3	4568	\N	\N
4571	Iparia	03	Iparia, Coronel Portillo	iparia coronel portillo	0	3	4568	\N	\N
4572	Masisea	04	Masisea, Coronel Portillo	masisea coronel portillo	0	3	4568	\N	\N
4573	Yarinacocha	05	Yarinacocha, Coronel Portillo	yarinacocha coronel portillo	0	3	4568	\N	\N
4574	Nueva Requena	06	Nueva Requena, Coronel Portillo	nueva requena coronel portillo	0	3	4568	\N	\N
4575	Atalaya	02	Atalaya, Ucayali	atalaya ucayali	4	2	4567	\N	\N
4576	Raymondi	01	Raymondi, Atalaya	raymondi atalaya	0	3	4575	\N	\N
4577	Sepahua	02	Sepahua, Atalaya	sepahua atalaya	0	3	4575	\N	\N
4578	Tahuania	03	Tahuania, Atalaya	tahuania atalaya	0	3	4575	\N	\N
4579	Yurua	04	Yurua, Atalaya	yurua atalaya	0	3	4575	\N	\N
4580	Padre Abad	03	Padre Abad, Ucayali	padre abad ucayali	3	2	4567	\N	\N
4581	Padre Abad	01	Padre Abad, Padre Abad	padre abad padre abad	0	3	4580	\N	\N
4582	Irazola	02	Irazola, Padre Abad	irazola padre abad	0	3	4580	\N	\N
4583	Curimana	03	Curimana, Padre Abad	curimana padre abad	0	3	4580	\N	\N
4584	Purus	04	Purus, Ucayali	purus ucayali	1	2	4567	\N	\N
4585	Purus	01	Purus, Purus	purus purus	0	3	4584	\N	\N
4586	Afghanist├ín	00	Afghanist├ín	afghanist├ín	0	0	0	\N	\N
4587	Albania	00	Albania	albania	0	0	0	\N	\N
4588	Alemania	00	Alemania	alemania	0	0	0	\N	\N
4589	Andorra	00	Andorra	andorra	0	0	0	\N	\N
4590	Angola	00	Angola	angola	0	0	0	\N	\N
4591	Anguilla	00	Anguilla	anguilla	0	0	0	\N	\N
4592	Antigua y Barbuda	00	Antigua y Barbuda	antigua y barbuda	0	0	0	\N	\N
4593	Arabia Saudita	00	Arabia Saudita	arabia saudita	0	0	0	\N	\N
4594	Argelia	00	Argelia	argelia	0	0	0	\N	\N
4595	Argentina	00	Argentina	argentina	0	0	0	\N	\N
4596	Armenia	00	Armenia	armenia	0	0	0	\N	\N
4597	Australia	00	Australia	australia	0	0	0	\N	\N
4598	Austria	00	Austria	austria	0	0	0	\N	\N
4599	Azerbay├ín	00	Azerbay├ín	azerbay├ín	0	0	0	\N	\N
4600	Bahamas	00	Bahamas	bahamas	0	0	0	\N	\N
4601	Bahrein	00	Bahrein	bahrein	0	0	0	\N	\N
4602	Bangladesh	00	Bangladesh	bangladesh	0	0	0	\N	\N
4603	Barbados	00	Barbados	barbados	0	0	0	\N	\N
4604	Belar├║s	00	Belar├║s	belar├║s	0	0	0	\N	\N
4605	B├®lgica	00	B├®lgica	b├®lgica	0	0	0	\N	\N
4606	Belice	00	Belice	belice	0	0	0	\N	\N
4607	Benin	00	Benin	benin	0	0	0	\N	\N
4608	Bhut├ín	00	Bhut├ín	bhut├ín	0	0	0	\N	\N
4609	Birmania	00	Birmania	birmania	0	0	0	\N	\N
4610	Bolivia	00	Bolivia	bolivia	0	0	0	\N	\N
4611	Bosnia-Herzegovina	00	Bosnia-Herzegovina	bosnia-herzegovina	0	0	0	\N	\N
4612	Botswana	00	Botswana	botswana	0	0	0	\N	\N
4613	Brasil	00	Brasil	brasil	0	0	0	\N	\N
4614	Brunei	00	Brunei	brunei	0	0	0	\N	\N
4615	Bulgaria	00	Bulgaria	bulgaria	0	0	0	\N	\N
4616	Burkina Faso	00	Burkina Faso	burkina faso	0	0	0	\N	\N
4617	Burundi	00	Burundi	burundi	0	0	0	\N	\N
4618	Cabo Verde	00	Cabo Verde	cabo verde	0	0	0	\N	\N
4619	Camboya	00	Camboya	camboya	0	0	0	\N	\N
4620	Camer├║n	00	Camer├║n	camer├║n	0	0	0	\N	\N
4621	Canad├í	00	Canad├í	canad├í	0	0	0	\N	\N
4622	Chad	00	Chad	chad	0	0	0	\N	\N
4623	Chile	00	Chile	chile	0	0	0	\N	\N
4624	China	00	China	china	0	0	0	\N	\N
4625	Chipre	00	Chipre	chipre	0	0	0	\N	\N
4626	Colombia	00	Colombia	colombia	0	0	0	\N	\N
4627	Comoras	00	Comoras	comoras	0	0	0	\N	\N
4628	Congo	00	Congo	congo	0	0	0	\N	\N
4629	Corea del Norte	00	Corea del Norte	corea del norte	0	0	0	\N	\N
4630	Corea del Sur	00	Corea del Sur	corea del sur	0	0	0	\N	\N
4631	Costa de Marfil	00	Costa de Marfil	costa de marfil	0	0	0	\N	\N
4632	Costa Rica	00	Costa Rica	costa rica	0	0	0	\N	\N
4633	Croacia	00	Croacia	croacia	0	0	0	\N	\N
4634	Cuba	00	Cuba	cuba	0	0	0	\N	\N
4635	Dinamarca	00	Dinamarca	dinamarca	0	0	0	\N	\N
4636	Djibouti	00	Djibouti	djibouti	0	0	0	\N	\N
4637	Ecuador	00	Ecuador	ecuador	0	0	0	\N	\N
4638	Egipto	00	Egipto	egipto	0	0	0	\N	\N
4639	El Salvador	00	El Salvador	el salvador	0	0	0	\N	\N
4640	Emiratos Arabes Unidos	00	Emiratos Arabes Unidos	emiratos arabes unidos	0	0	0	\N	\N
4641	Eritrea	00	Eritrea	eritrea	0	0	0	\N	\N
4642	Eslovaquia	00	Eslovaquia	eslovaquia	0	0	0	\N	\N
4643	Eslovenia	00	Eslovenia	eslovenia	0	0	0	\N	\N
4644	Espa├▒a	00	Espa├▒a	espa├▒a	0	0	0	\N	\N
4645	Estados Unidos	00	Estados Unidos	estados unidos	0	0	0	\N	\N
4646	Estonia	00	Estonia	estonia	0	0	0	\N	\N
4647	Etiopia	00	Etiopia	etiopia	0	0	0	\N	\N
4648	Fiji	00	Fiji	fiji	0	0	0	\N	\N
4649	Filipinas	00	Filipinas	filipinas	0	0	0	\N	\N
4650	Finlandia	00	Finlandia	finlandia	0	0	0	\N	\N
4651	Francia	00	Francia	francia	0	0	0	\N	\N
4652	Gabon	00	Gabon	gabon	0	0	0	\N	\N
4653	Gambia	00	Gambia	gambia	0	0	0	\N	\N
4654	Georgia	00	Georgia	georgia	0	0	0	\N	\N
4655	Ghana	00	Ghana	ghana	0	0	0	\N	\N
4656	Grecia	00	Grecia	grecia	0	0	0	\N	\N
4657	Granada	00	Granada	granada	0	0	0	\N	\N
4658	Guatemala	00	Guatemala	guatemala	0	0	0	\N	\N
4659	Guinea	00	Guinea	guinea	0	0	0	\N	\N
4660	Guinea-Bissau	00	Guinea-Bissau	guinea-bissau	0	0	0	\N	\N
4661	Guinea Ecuatorial	00	Guinea Ecuatorial	guinea ecuatorial	0	0	0	\N	\N
4662	Guyana	00	Guyana	guyana	0	0	0	\N	\N
4663	Haiti	00	Haiti	haiti	0	0	0	\N	\N
4664	Honduras	00	Honduras	honduras	0	0	0	\N	\N
4665	Hungria	00	Hungria	hungria	0	0	0	\N	\N
4666	Islandia	00	Islandia	islandia	0	0	0	\N	\N
4667	India	00	India	india	0	0	0	\N	\N
4668	Indonesia	00	Indonesia	indonesia	0	0	0	\N	\N
4669	Iran	00	Iran	iran	0	0	0	\N	\N
4670	Iraq	00	Iraq	iraq	0	0	0	\N	\N
4671	Irlanda	00	Irlanda	irlanda	0	0	0	\N	\N
4672	Israel	00	Israel	israel	0	0	0	\N	\N
4673	Italia	00	Italia	italia	0	0	0	\N	\N
4674	Jamaica	00	Jamaica	jamaica	0	0	0	\N	\N
4675	Jap├│n	00	Jap├│n	jap├│n	0	0	0	\N	\N
4676	Jordania	00	Jordania	jordania	0	0	0	\N	\N
4677	Kazajst├ín	00	Kazajst├ín	kazajst├ín	0	0	0	\N	\N
4678	Kenia	00	Kenia	kenia	0	0	0	\N	\N
4679	Kirguist├ín	00	Kirguist├ín	kirguist├ín	0	0	0	\N	\N
4680	Kiribati	00	Kiribati	kiribati	0	0	0	\N	\N
4681	Kuwait	00	Kuwait	kuwait	0	0	0	\N	\N
4682	Laos	00	Laos	laos	0	0	0	\N	\N
4683	Letonia	00	Letonia	letonia	0	0	0	\N	\N
4684	Libano	00	Libano	libano	0	0	0	\N	\N
4685	Lesotho	00	Lesotho	lesotho	0	0	0	\N	\N
4686	Liberia	00	Liberia	liberia	0	0	0	\N	\N
4687	Libia	00	Libia	libia	0	0	0	\N	\N
4688	Liechtenstein	00	Liechtenstein	liechtenstein	0	0	0	\N	\N
4689	Lituania	00	Lituania	lituania	0	0	0	\N	\N
4690	Luxemburgo	00	Luxemburgo	luxemburgo	0	0	0	\N	\N
4691	Macedonia	00	Macedonia	macedonia	0	0	0	\N	\N
4692	Madagascar	00	Madagascar	madagascar	0	0	0	\N	\N
4693	Malawi	00	Malawi	malawi	0	0	0	\N	\N
4694	Malasia	00	Malasia	malasia	0	0	0	\N	\N
4695	Maldivas	00	Maldivas	maldivas	0	0	0	\N	\N
4696	Mali	00	Mali	mali	0	0	0	\N	\N
4697	Malta	00	Malta	malta	0	0	0	\N	\N
4698	Marruecos	00	Marruecos	marruecos	0	0	0	\N	\N
4699	Marshall	00	Marshall	marshall	0	0	0	\N	\N
4700	Mauricio	00	Mauricio	mauricio	0	0	0	\N	\N
4701	Mauritania	00	Mauritania	mauritania	0	0	0	\N	\N
4702	M├®xico	00	M├®xico	m├®xico	0	0	0	\N	\N
4703	Micronesia	00	Micronesia	micronesia	0	0	0	\N	\N
4704	Moldova	00	Moldova	moldova	0	0	0	\N	\N
4705	M├│naco	00	M├│naco	m├│naco	0	0	0	\N	\N
4706	Mongolia	00	Mongolia	mongolia	0	0	0	\N	\N
4707	Mozambique	00	Mozambique	mozambique	0	0	0	\N	\N
4708	Namibia	00	Namibia	namibia	0	0	0	\N	\N
4709	Naur├║	00	Naur├║	naur├║	0	0	0	\N	\N
4710	Nepal	00	Nepal	nepal	0	0	0	\N	\N
4711	Nicaragua	00	Nicaragua	nicaragua	0	0	0	\N	\N
4712	Niger	00	Niger	niger	0	0	0	\N	\N
4713	Nigeria	00	Nigeria	nigeria	0	0	0	\N	\N
4714	Noruega	00	Noruega	noruega	0	0	0	\N	\N
4715	Nueva Zelandia	00	Nueva Zelandia	nueva zelandia	0	0	0	\N	\N
4716	Om├ín	00	Om├ín	om├ín	0	0	0	\N	\N
4717	Pa├¡ses Bajos	00	Pa├¡ses Bajos	pa├¡ses bajos	0	0	0	\N	\N
4718	Pakist├ín	00	Pakist├ín	pakist├ín	0	0	0	\N	\N
4719	Palau	00	Palau	palau	0	0	0	\N	\N
4720	Panam├í	00	Panam├í	panam├í	0	0	0	\N	\N
4721	Pap├║a-Nueva Guinea	00	Pap├║a-Nueva Guinea	pap├║a-nueva guinea	0	0	0	\N	\N
4722	Paraguay	00	Paraguay	paraguay	0	0	0	\N	\N
4723	Polonia	00	Polonia	polonia	0	0	0	\N	\N
4724	Portugal	00	Portugal	portugal	0	0	0	\N	\N
4725	Qatar	00	Qatar	qatar	0	0	0	\N	\N
4726	Reino Unido	00	Reino Unido	reino unido	0	0	0	\N	\N
4727	Rep. Centroafricana	00	Rep. Centroafricana	rep. centroafricana	0	0	0	\N	\N
4728	Rep. Checa	00	Rep. Checa	rep. checa	0	0	0	\N	\N
4729	Rep. Dominicana	00	Rep. Dominicana	rep. dominicana	0	0	0	\N	\N
4730	Ruanda	00	Ruanda	ruanda	0	0	0	\N	\N
4731	Rumania	00	Rumania	rumania	0	0	0	\N	\N
4732	Rusia	00	Rusia	rusia	0	0	0	\N	\N
4733	Salomon Islands	00	Salomon Islands	salomon islands	0	0	0	\N	\N
4734	Samoa	00	Samoa	samoa	0	0	0	\N	\N
4735	San Marino	00	San Marino	san marino	0	0	0	\N	\N
4736	San Crist├│bal-Nevis	00	San Crist├│bal-Nevis	san crist├│bal-nevis	0	0	0	\N	\N
4737	Santa Luc├¡a	00	Santa Luc├¡a	santa luc├¡a	0	0	0	\N	\N
4738	Santa Sede (Vaticano)	00	Santa Sede (Vaticano)	santa sede (vaticano)	0	0	0	\N	\N
4739	S├úo Tom├® y Principe	00	S├úo Tom├® y Principe	s├úo tom├® y principe	0	0	0	\N	\N
4740	St. Vincente las Grenadinas	00	St. Vincente las Grenadinas	st. vincente las grenadinas	0	0	0	\N	\N
4741	Senegal	00	Senegal	senegal	0	0	0	\N	\N
4742	Seychelles	00	Seychelles	seychelles	0	0	0	\N	\N
4743	Sierra Leona	00	Sierra Leona	sierra leona	0	0	0	\N	\N
4744	Singapur	00	Singapur	singapur	0	0	0	\N	\N
4745	Siria	00	Siria	siria	0	0	0	\N	\N
4746	Somalia	00	Somalia	somalia	0	0	0	\N	\N
4747	Sri Lanka	00	Sri Lanka	sri lanka	0	0	0	\N	\N
4748	Sud├ífrica	00	Sud├ífrica	sud├ífrica	0	0	0	\N	\N
4749	Sud├ín	00	Sud├ín	sud├ín	0	0	0	\N	\N
4750	Suecia	00	Suecia	suecia	0	0	0	\N	\N
4751	Suiza	00	Suiza	suiza	0	0	0	\N	\N
4752	Suriname	00	Suriname	suriname	0	0	0	\N	\N
4753	Swazilandia	00	Swazilandia	swazilandia	0	0	0	\N	\N
4754	Tailandia	00	Tailandia	tailandia	0	0	0	\N	\N
4755	Taiw├ín	00	Taiw├ín	taiw├ín	0	0	0	\N	\N
4756	Tanzania	00	Tanzania	tanzania	0	0	0	\N	\N
4757	Tayikist├ín	00	Tayikist├ín	tayikist├ín	0	0	0	\N	\N
4758	Togo	00	Togo	togo	0	0	0	\N	\N
4759	Tonga	00	Tonga	tonga	0	0	0	\N	\N
4760	Trinidad y Tabago	00	Trinidad y Tabago	trinidad y tabago	0	0	0	\N	\N
4761	T├║nez	00	T├║nez	t├║nez	0	0	0	\N	\N
4762	Turkmenistan	00	Turkmenistan	turkmenistan	0	0	0	\N	\N
4763	Turquia	00	Turquia	turquia	0	0	0	\N	\N
4764	Tuvalu	00	Tuvalu	tuvalu	0	0	0	\N	\N
4765	Ucraina	00	Ucraina	ucraina	0	0	0	\N	\N
4766	Uganda	00	Uganda	uganda	0	0	0	\N	\N
4767	Uruguay	00	Uruguay	uruguay	0	0	0	\N	\N
4768	Uzbekist├ín	00	Uzbekist├ín	uzbekist├ín	0	0	0	\N	\N
4769	Vanuatu	00	Vanuatu	vanuatu	0	0	0	\N	\N
4770	Venezuela	00	Venezuela	venezuela	0	0	0	\N	\N
4771	Vietnam	00	Vietnam	vietnam	0	0	0	\N	\N
4772	Y├®men	00	Y├®men	y├®men	0	0	0	\N	\N
4773	Yugoslavia	00	Yugoslavia	yugoslavia	0	0	0	\N	\N
4774	Zambia	00	Zambia	zambia	0	0	0	\N	\N
4775	Zimbabwe	00	Zimbabwe	zimbabwe	0	0	0	\N	\N
4777	antofagasta		Antofagasta	antofagasta	9	1	4623	\N	\N
4778	atacama		Atacama	atacama	9	1	4623	\N	\N
4779	Ays├®n del general carlos 		Ays├®n del general carlos 	ays├®n del general carlos 	10	1	4623	\N	\N
4780	b├¡o - b├¡o		B├¡o - b├¡o	b├¡o - b├¡o	54	1	4623	\N	\N
4781	coquimbo		Coquimbo	coquimbo	15	1	4623	\N	\N
4782	La araucan├¡a		La araucan├¡a	la araucan├¡a	32	1	4623	\N	\N
4783	Libertador general bernar		Libertador general bernar	libertador general bernar	33	1	4623	\N	\N
4784	Los lagos		Los lagos	los lagos	42	1	4623	\N	\N
4785	Magallanes y la ant├írtica		Magallanes y la ant├írtica	magallanes y la ant├írtica	11	1	4623	\N	\N
4786	Maule		Maule	maule	30	1	4623	\N	\N
4787	Metropolitana de Santiago		Metropolitana de Santiago	metropolitana de santiago	53	1	4623	\N	\N
4788	Tarapac├í		Tarapac├í	tarapaca	11	1	4623	\N	\N
4789	Valpara├¡so		Valpara├¡so	valpara├¡so	39	1	4623	\N	\N
4790	Antofagasta		Antofagasta	antofagasta	4	2	4777	\N	\N
4791	El loa		El loa	el loa	3	2	4777	\N	\N
4792	Tocopilla		Tocopilla	tocopilla	2	2	4777	\N	\N
4793	Cha├▒aral		Cha├▒aral	cha├▒aral	2	2	4778	\N	\N
4794	Copiap├│		Copiap├│	copiap├│	3	2	4778	\N	\N
4795	Huasco		Huasco	huasco	4	2	4778	\N	\N
4796	Ays├®n		Ays├®n	ays├®n	3	2	4779	\N	\N
4797	Capit├ín prat		Capit├ín prat	capit├ín prat	3	2	4779	\N	\N
4798	Coyhaique		Coyhaique	coyhaique	2	2	4779	\N	\N
4799	General Carrera		General Carrera	general carrera	2	2	4779	\N	\N
4800	Arauco		Arauco	arauco	7	2	4780	\N	\N
4801	Bio-Bio		Bio-Bio	bio-bio	14	2	4780	\N	\N
4802	Concepci├│n		Concepci├│n	concepci├│n	12	2	4780	\N	\N
4803	├æuble		├æuble	├▒uble	21	2	4780	\N	\N
4804	Choapa		Choapa	choapa	4	2	4781	\N	\N
4805	Elqui		Elqui	elqui	6	2	4781	\N	\N
4806	Limar├¡		Limar├¡	limar├¡	5	2	4781	\N	\N
4807	Caut├¡n		Caut├¡n	caut├¡n	21	2	4782	\N	\N
4808	Malleco		Malleco	malleco	11	2	4782	\N	\N
4809	Cachapoal		Cachapoal	cachapoal	17	2	4783	\N	\N
4810	Cardenal Caro		Cardenal Caro	cardenal caro	6	2	4783	\N	\N
4811	Colchagua		Colchagua	colchagua	10	2	4783	\N	\N
4812	Chilo├®		Chilo├®	chilo├®	10	2	4784	\N	\N
4813	Llanquihue		Llanquihue	llanquihue	9	2	4784	\N	\N
4814	Osorno		Osorno	osorno	7	2	4784	\N	\N
4815	Palena		Palena	palena	4	2	4784	\N	\N
4816	Valdivia		Valdivia	valdivia	12	2	4784	\N	\N
4817	Ant├írtica Chilena		Ant├írtica Chilena	ant├írtica chilena	2	2	4785	\N	\N
4818	Magallanes		Magallanes	magallanes	4	2	4785	\N	\N
4819	Tierra del Fuego		Tierra del Fuego	tierra del fuego	3	2	4785	\N	\N
4820	Ultima Esperanza		Ultima Esperanza	ultima esperanza	2	2	4785	\N	\N
4821	Cauquenes		Cauquenes	cauquenes	3	2	4786	\N	\N
4822	Curic├│		Curic├│	curic├│	9	2	4786	\N	\N
4823	Linares		Linares	linares	8	2	4786	\N	\N
4824	Talca		Talca	talca	10	2	4786	\N	\N
4825	Chacabuco		Chacabuco	chacabuco	3	2	4787	\N	\N
4826	Cordillera		Cordillera	cordillera	3	2	4787	\N	\N
4827	Maipo		Maipo	maipo	4	2	4787	\N	\N
4828	Melipilla		Melipilla	melipilla	5	2	4787	\N	\N
4829	Santiago		Santiago	santiago	33	2	4787	\N	\N
4830	Talagante		Talagante	talagante	5	2	4788	\N	\N
4831	Arica		Arica	arica	2	2	4788	\N	\N
4832	Iquique		Iquique	iquique	7	2	4788	\N	\N
4833	Parinacota		Parinacota	parinacota	2	2	4788	\N	\N
4834	Isla de Pascua		Isla de Pascua	isla de pascua	1	2	4789	\N	\N
4835	La Calera		La Calera	la calera	1	2	4789	\N	\N
4836	Los Andes		Los Andes	los andes	4	2	4789	\N	\N
4837	Petorca		Petorca	petorca	5	2	4789	\N	\N
4838	Quillota		Quillota	quillota	7	2	4789	\N	\N
4839	San Antonio		San Antonio	san antonio	6	2	4789	\N	\N
4840	San Felipe de Aconcagua		San Felipe de Aconcagua	san felipe de aconcagua	6	2	4789	\N	\N
4841	Valpara├¡so		Valpara├¡so	valpara├¡so	9	2	4789	\N	\N
4842	antofagasta		Antofagasta	antofagasta	1	3	4790	\N	\N
4843	mejillones		Mejillones	mejillones	1	3	4790	\N	\N
4844	sierra gorda		Sierra gorda	sierra gorda	1	3	4790	\N	\N
4845	taltal		Taltal	taltal	1	3	4790	\N	\N
4846	calama		Calama	calama	1	3	4791	\N	\N
4847	ollague		Ollague	ollague	1	3	4791	\N	\N
4848	san pedro de atacama		San pedro de atacama	san pedro de atacama	1	3	4791	\N	\N
4849	mar├¡a elena		Mar├¡a elena	mar├¡a elena	1	3	4792	\N	\N
4850	tocopilla		Tocopilla	tocopilla	1	3	4792	\N	\N
4851	cha├▒aral		Cha├▒aral	cha├▒aral	1	3	4793	\N	\N
4852	diego de almagro		Diego de almagro	diego de almagro	1	3	4793	\N	\N
4853	caldera		Caldera	caldera	1	3	4794	\N	\N
4854	copiap├│		Copiap├│	copiap├│	1	3	4794	\N	\N
4855	tierra amarilla		Tierra amarilla	tierra amarilla	1	3	4794	\N	\N
4856	alto del carmen		Alto del carmen	alto del carmen	1	3	4795	\N	\N
4857	freirina		Freirina	freirina	1	3	4795	\N	\N
4858	huasco		Huasco	huasco	1	3	4795	\N	\N
4859	vallenar		Vallenar	vallenar	1	3	4795	\N	\N
4860	ays├®n		Ays├®n	ays├®n	1	3	4796	\N	\N
4861	cisnes		Cisnes	cisnes	1	3	4796	\N	\N
4862	guaitecas		Guaitecas	guaitecas	1	3	4796	\N	\N
4863	cochrane		Cochrane	cochrane	1	3	4797	\N	\N
4864	o'higgins		O'higgins	o'higgins	1	3	4797	\N	\N
4865	tortel		Tortel	tortel	1	3	4797	\N	\N
4866	coyhaique		Coyhaique	coyhaique	1	3	4798	\N	\N
4867	lago verde		Lago verde	lago verde	1	3	4798	\N	\N
4868	chile chico		Chile chico	chile chico	1	3	4799	\N	\N
4869	r├¡o ib├ínez		R├¡o ib├ínez	r├¡o ib├ínez	1	3	4799	\N	\N
4870	arauco		Arauco	arauco	1	3	4800	\N	\N
4871	ca├▒ete		Ca├▒ete	ca├▒ete	1	3	4800	\N	\N
4872	contulmo		Contulmo	contulmo	1	3	4800	\N	\N
4873	curanilahue		Curanilahue	curanilahue	1	3	4800	\N	\N
4874	lebu		Lebu	lebu	1	3	4800	\N	\N
4875	los alamos		Los alamos	los alamos	1	3	4800	\N	\N
4876	tirua		Tirua	tirua	1	3	4800	\N	\N
4877	alto b├¡ob├¡o		Alto b├¡ob├¡o	alto b├¡ob├¡o	1	3	4801	\N	\N
4878	antuco		Antuco	antuco	1	3	4801	\N	\N
4879	cabrero		Cabrero	cabrero	1	3	4801	\N	\N
4880	laja		Laja	laja	1	3	4801	\N	\N
4881	los angeles		Los angeles	los angeles	1	3	4801	\N	\N
4882	mulch├®n		Mulch├®n	mulch├®n	1	3	4801	\N	\N
4883	nacimiento		Nacimiento	nacimiento	1	3	4801	\N	\N
4884	negrete		Negrete	negrete	1	3	4801	\N	\N
4885	quilaco		Quilaco	quilaco	1	3	4801	\N	\N
4886	quilleco		Quilleco	quilleco	1	3	4801	\N	\N
4887	san rosendo		San rosendo	san rosendo	1	3	4801	\N	\N
4888	santa b├írbara		Santa b├írbara	santa b├írbara	1	3	4801	\N	\N
4889	tucapel		Tucapel	tucapel	1	3	4801	\N	\N
4890	yumbel		Yumbel	yumbel	1	3	4801	\N	\N
4891	chiguayante		Chiguayante	chiguayante	1	3	4802	\N	\N
4892	concepci├│n		Concepci├│n	concepci├│n	1	3	4802	\N	\N
4893	coronel		Coronel	coronel	1	3	4802	\N	\N
4894	florida		Florida	florida	1	3	4802	\N	\N
4895	hualp├®n		Hualp├®n	hualp├®n	1	3	4802	\N	\N
4896	hualqui		Hualqui	hualqui	1	3	4802	\N	\N
4897	lota		Lota	lota	1	3	4802	\N	\N
4898	penco		Penco	penco	1	3	4802	\N	\N
4899	san pedro de la paz		San pedro de la paz	san pedro de la paz	1	3	4802	\N	\N
4900	santa juana		Santa juana	santa juana	1	3	4802	\N	\N
4901	talcahuano		Talcahuano	talcahuano	1	3	4802	\N	\N
4902	tom├®		Tom├®	tom├®	1	3	4802	\N	\N
4903	bulnes		Bulnes	bulnes	1	3	4803	\N	\N
4904	chill├ín		Chill├ín	chill├ín	1	3	4803	\N	\N
4905	chillan viejo		Chillan viejo	chillan viejo	1	3	4803	\N	\N
4906	cobquecura		Cobquecura	cobquecura	1	3	4803	\N	\N
4907	coelemu		Coelemu	coelemu	1	3	4803	\N	\N
4908	coihueco		Coihueco	coihueco	1	3	4803	\N	\N
4909	el carmen		El carmen	el carmen	1	3	4803	\N	\N
4910	ninhue		Ninhue	ninhue	1	3	4803	\N	\N
4911	├▒iqu├®n		├æiqu├®n	├▒iqu├®n	1	3	4803	\N	\N
4912	pemuco		Pemuco	pemuco	1	3	4803	\N	\N
4913	pinto		Pinto	pinto	1	3	4803	\N	\N
4914	portezuelo		Portezuelo	portezuelo	1	3	4803	\N	\N
4915	quill├│n		Quill├│n	quill├│n	1	3	4803	\N	\N
4916	quirihue		Quirihue	quirihue	1	3	4803	\N	\N
4917	ranquil		Ranquil	ranquil	1	3	4803	\N	\N
4918	san carlos		San carlos	san carlos	1	3	4803	\N	\N
4919	san fabi├ín		San fabi├ín	san fabi├ín	1	3	4803	\N	\N
4920	san ignacio		San ignacio	san ignacio	1	3	4803	\N	\N
4921	san nicol├ís		San nicol├ís	san nicol├ís	1	3	4803	\N	\N
4922	trehuaco		Trehuaco	trehuaco	1	3	4803	\N	\N
4923	yungay		Yungay	yungay	1	3	4803	\N	\N
4924	canela		Canela	canela	1	3	4804	\N	\N
4925	illapel		Illapel	illapel	1	3	4804	\N	\N
4926	los vilos		Los vilos	los vilos	1	3	4804	\N	\N
4927	salamanca		Salamanca	salamanca	1	3	4804	\N	\N
4928	andacollo		Andacollo	andacollo	1	3	4805	\N	\N
4929	coquimbo		Coquimbo	coquimbo	1	3	4805	\N	\N
4930	la higuera		La higuera	la higuera	1	3	4805	\N	\N
4931	la serena		La serena	la serena	1	3	4805	\N	\N
4932	paihuano		Paihuano	paihuano	1	3	4805	\N	\N
4933	vicu├▒a		Vicu├▒a	vicu├▒a	1	3	4805	\N	\N
4934	combarbal├í		Combarbal├í	combarbal├í	1	3	4806	\N	\N
4935	monte patria		Monte patria	monte patria	1	3	4806	\N	\N
4936	ovalle		Ovalle	ovalle	1	3	4806	\N	\N
4937	punitaqui		Punitaqui	punitaqui	1	3	4806	\N	\N
4938	r├¡o hurtado		R├¡o hurtado	r├¡o hurtado	1	3	4806	\N	\N
4939	carahue		Carahue	carahue	1	3	4807	\N	\N
4940	cholchol		Cholchol	cholchol	1	3	4807	\N	\N
4941	cunco		Cunco	cunco	1	3	4807	\N	\N
4942	curarrehue		Curarrehue	curarrehue	1	3	4807	\N	\N
4943	freire		Freire	freire	1	3	4807	\N	\N
4944	galvarino		Galvarino	galvarino	1	3	4807	\N	\N
4945	gorbea		Gorbea	gorbea	1	3	4807	\N	\N
4946	lautaro		Lautaro	lautaro	1	3	4807	\N	\N
4947	loncoche		Loncoche	loncoche	1	3	4807	\N	\N
4948	melipeuco		Melipeuco	melipeuco	1	3	4807	\N	\N
4949	nueva imperial		Nueva imperial	nueva imperial	1	3	4807	\N	\N
4950	padre las casas		Padre las casas	padre las casas	1	3	4807	\N	\N
4951	perquenco		Perquenco	perquenco	1	3	4807	\N	\N
4952	pitrufqu├®n		Pitrufqu├®n	pitrufqu├®n	1	3	4807	\N	\N
4953	puc├│n		Puc├│n	puc├│n	1	3	4807	\N	\N
4954	saavedra		Saavedra	saavedra	1	3	4807	\N	\N
4955	temuco		Temuco	temuco	1	3	4807	\N	\N
4956	teodoro schmidt		Teodoro schmidt	teodoro schmidt	1	3	4807	\N	\N
4957	tolt├®n		Tolt├®n	tolt├®n	1	3	4807	\N	\N
4958	vilc├║n		Vilc├║n	vilc├║n	1	3	4807	\N	\N
4959	villarrica		Villarrica	villarrica	1	3	4807	\N	\N
4960	angol		Angol	angol	1	3	4808	\N	\N
4961	collipulli		Collipulli	collipulli	1	3	4808	\N	\N
4962	curacaut├¡n		Curacaut├¡n	curacaut├¡n	1	3	4808	\N	\N
4963	ercilla		Ercilla	ercilla	1	3	4808	\N	\N
4964	lonquimay		Lonquimay	lonquimay	1	3	4808	\N	\N
4965	los sauces		Los sauces	los sauces	1	3	4808	\N	\N
4966	lumaco		Lumaco	lumaco	1	3	4808	\N	\N
4967	pur├®n		Pur├®n	pur├®n	1	3	4808	\N	\N
4968	renaico		Renaico	renaico	1	3	4808	\N	\N
4969	traigu├®n		Traigu├®n	traigu├®n	1	3	4808	\N	\N
4970	victoria		Victoria	victoria	1	3	4808	\N	\N
4971	idgua		idgua	idgua	1	3	4809	\N	\N
4972	coinco		Coinco	coinco	1	3	4809	\N	\N
4973	coltauco		Coltauco	coltauco	1	3	4809	\N	\N
4974	do├▒ihue		Do├▒ihue	do├▒ihue	1	3	4809	\N	\N
4975	graneros		Graneros	graneros	1	3	4809	\N	\N
4976	las cabras		Las cabras	las cabras	1	3	4809	\N	\N
4977	machal├¡		Machal├¡	machal├¡	1	3	4809	\N	\N
4978	malloa		Malloa	malloa	1	3	4809	\N	\N
4979	mostazal		Mostazal	mostazal	1	3	4809	\N	\N
4980	olivar		Olivar	olivar	1	3	4809	\N	\N
4981	peumo		Peumo	peumo	1	3	4809	\N	\N
4982	pichidegua		Pichidegua	pichidegua	1	3	4809	\N	\N
4983	quinta de tilcoco		Quinta de tilcoco	quinta de tilcoco	1	3	4809	\N	\N
4984	rancagua		Rancagua	rancagua	1	3	4809	\N	\N
4985	rengo		Rengo	rengo	1	3	4809	\N	\N
4986	requinoa		Requinoa	requinoa	1	3	4809	\N	\N
4987	san vicente		San vicente	san vicente	1	3	4809	\N	\N
4988	la estrella		La estrella	la estrella	1	3	4810	\N	\N
4989	litueche		Litueche	litueche	1	3	4810	\N	\N
4990	marchigue		Marchigue	marchigue	1	3	4810	\N	\N
4991	navidad		Navidad	navidad	1	3	4810	\N	\N
4992	paredones		Paredones	paredones	1	3	4810	\N	\N
4993	pichilemu		Pichilemu	pichilemu	1	3	4810	\N	\N
4994	ch├®pica		Ch├®pica	ch├®pica	1	3	4811	\N	\N
4995	chimbarongo		Chimbarongo	chimbarongo	1	3	4811	\N	\N
4996	lolol		Lolol	lolol	1	3	4811	\N	\N
4997	nancagua		Nancagua	nancagua	1	3	4811	\N	\N
4998	palmilla		Palmilla	palmilla	1	3	4811	\N	\N
4999	peralillo		Peralillo	peralillo	1	3	4811	\N	\N
5000	placilla		Placilla	placilla	1	3	4811	\N	\N
5001	pumanque		Pumanque	pumanque	1	3	4811	\N	\N
5002	san fernando		San fernando	san fernando	1	3	4811	\N	\N
5003	santa cruz		Santa cruz	santa cruz	1	3	4811	\N	\N
5004	ancud		Ancud	ancud	1	3	4812	\N	\N
5005	castro		Castro	castro	1	3	4812	\N	\N
5006	chonchi		Chonchi	chonchi	1	3	4812	\N	\N
5007	curaco de v├®lez		Curaco de v├®lez	curaco de v├®lez	1	3	4812	\N	\N
5008	dalcahue		Dalcahue	dalcahue	1	3	4812	\N	\N
5009	puqueld├│n		Puqueld├│n	puqueld├│n	1	3	4812	\N	\N
5010	queil├®n		Queil├®n	queil├®n	1	3	4812	\N	\N
5011	quell├│n		Quell├│n	quell├│n	1	3	4812	\N	\N
5012	quemchi		Quemchi	quemchi	1	3	4812	\N	\N
5013	quinchao		Quinchao	quinchao	1	3	4812	\N	\N
5014	calbuco		Calbuco	calbuco	1	3	4813	\N	\N
5015	cocham├│		Cocham├│	cocham├│	1	3	4813	\N	\N
5016	fresia		Fresia	fresia	1	3	4813	\N	\N
5017	frutillar		Frutillar	frutillar	1	3	4813	\N	\N
5018	llanquihue		Llanquihue	llanquihue	1	3	4813	\N	\N
5019	los muermos		Los muermos	los muermos	1	3	4813	\N	\N
5020	maull├¡n		Maull├¡n	maull├¡n	1	3	4813	\N	\N
5021	puerto montt		Puerto montt	puerto montt	1	3	4813	\N	\N
5022	puerto varas		Puerto varas	puerto varas	1	3	4813	\N	\N
5023	osorno		Osorno	osorno	1	3	4814	\N	\N
5024	puerto octay		Puerto octay	puerto octay	1	3	4814	\N	\N
5025	purranque		Purranque	purranque	1	3	4814	\N	\N
5026	puyehue		Puyehue	puyehue	1	3	4814	\N	\N
5027	r├¡o negro		R├¡o negro	r├¡o negro	1	3	4814	\N	\N
5028	san juan de la costa		San juan de la costa	san juan de la costa	1	3	4814	\N	\N
5029	san pablo		San pablo	san pablo	1	3	4814	\N	\N
5030	chait├®n		Chait├®n	chait├®n	1	3	4815	\N	\N
5031	futaleuf├║		Futaleuf├║	futaleuf├║	1	3	4815	\N	\N
5032	hualaihue		Hualaihue	hualaihue	1	3	4815	\N	\N
5033	palena		Palena	palena	1	3	4815	\N	\N
5034	corral		Corral	corral	1	3	4816	\N	\N
5035	futrono		Futrono	futrono	1	3	4816	\N	\N
5036	la uni├│n		La uni├│n	la uni├│n	1	3	4816	\N	\N
5037	lago ranco		Lago ranco	lago ranco	1	3	4816	\N	\N
5038	lanco		Lanco	lanco	1	3	4816	\N	\N
5039	los lagos		Los lagos	los lagos	1	3	4816	\N	\N
5040	m├ífil		M├ífil	m├ífil	1	3	4816	\N	\N
5041	mariquina		Mariquina	mariquina	1	3	4816	\N	\N
5042	paillaco		Paillaco	paillaco	1	3	4816	\N	\N
5043	panguipulli		Panguipulli	panguipulli	1	3	4816	\N	\N
5044	r├¡o bueno		R├¡o bueno	r├¡o bueno	1	3	4816	\N	\N
5045	valdivia		Valdivia	valdivia	1	3	4816	\N	\N
5046	ant├írtica		Ant├írtica	ant├írtica	1	3	4817	\N	\N
5047	cabo de hornos		Cabo de hornos	cabo de hornos	1	3	4817	\N	\N
5048	laguna blanca		Laguna blanca	laguna blanca	1	3	4818	\N	\N
5049	punta arenas		Punta arenas	punta arenas	1	3	4818	\N	\N
5050	rio verde		Rio verde	rio verde	1	3	4818	\N	\N
5051	san gregorio		San gregorio	san gregorio	1	3	4818	\N	\N
5052	porvenir		Porvenir	porvenir	1	3	4819	\N	\N
5053	primavera		Primavera	primavera	1	3	4819	\N	\N
5054	timaukel		Timaukel	timaukel	1	3	4819	\N	\N
5055	natales		Natales	natales	1	3	4820	\N	\N
5056	torres del paine		Torres del paine	torres del paine	1	3	4820	\N	\N
5057	cauquenes		Cauquenes	cauquenes	1	3	4821	\N	\N
5058	chanco		Chanco	chanco	1	3	4821	\N	\N
5059	pelluhue		Pelluhue	pelluhue	1	3	4821	\N	\N
5060	curic├│		Curic├│	curic├│	1	3	4822	\N	\N
5061	huala├▒├®		Huala├▒├®	huala├▒├®	1	3	4822	\N	\N
5062	licant├®n		Licant├®n	licant├®n	1	3	4822	\N	\N
5063	molina		Molina	molina	1	3	4822	\N	\N
5064	rauco		Rauco	rauco	1	3	4822	\N	\N
5065	romeral		Romeral	romeral	1	3	4822	\N	\N
5066	sagrada familia		Sagrada familia	sagrada familia	1	3	4822	\N	\N
5067	teno		Teno	teno	1	3	4822	\N	\N
5068	vichuqu├®n		Vichuqu├®n	vichuqu├®n	1	3	4822	\N	\N
5069	colb├║n		Colb├║n	colb├║n	1	3	4823	\N	\N
5070	linares		Linares	linares	1	3	4823	\N	\N
5071	longav├¡		Longav├¡	longav├¡	1	3	4823	\N	\N
5072	parral		Parral	parral	1	3	4823	\N	\N
5073	retiro		Retiro	retiro	1	3	4823	\N	\N
5074	san javier		San javier	san javier	1	3	4823	\N	\N
5075	villa alegre		Villa alegre	villa alegre	1	3	4823	\N	\N
5076	yerbas buenas		Yerbas buenas	yerbas buenas	1	3	4823	\N	\N
5077	constituci├│n		Constituci├│n	constituci├│n	1	3	4824	\N	\N
5078	curepto		Curepto	curepto	1	3	4824	\N	\N
5079	empedrado		Empedrado	empedrado	1	3	4824	\N	\N
5080	maule		Maule	maule	1	3	4824	\N	\N
5081	pelarco		Pelarco	pelarco	1	3	4824	\N	\N
5082	pencahue		Pencahue	pencahue	1	3	4824	\N	\N
5083	r├¡o claro		R├¡o claro	r├¡o claro	1	3	4824	\N	\N
5084	san clemente		San clemente	san clemente	1	3	4824	\N	\N
5085	san rafael		San rafael	san rafael	1	3	4824	\N	\N
5086	talca		Talca	talca	1	3	4824	\N	\N
5087	colina		Colina	colina	1	3	4825	\N	\N
5088	lampa		Lampa	lampa	1	3	4825	\N	\N
5089	tiltil		Tiltil	tiltil	1	3	4825	\N	\N
5090	pirque		Pirque	pirque	1	3	4826	\N	\N
5091	puente alto		Puente alto	puente alto	1	3	4826	\N	\N
5092	san jos├® de maipo		San jos├® de maipo	san jos├® de maipo	1	3	4826	\N	\N
5093	buin		Buin	buin	1	3	4827	\N	\N
5094	calera de tango		Calera de tango	calera de tango	1	3	4827	\N	\N
5095	paine		Paine	paine	1	3	4827	\N	\N
5096	san bernardo		San bernardo	san bernardo	1	3	4827	\N	\N
5097	alhu├®		Alhu├®	alhu├®	1	3	4828	\N	\N
5098	curacav├¡		Curacav├¡	curacav├¡	1	3	4828	\N	\N
5099	mar├¡a pinto		Mar├¡a pinto	mar├¡a pinto	1	3	4828	\N	\N
5100	melipilla		Melipilla	melipilla	1	3	4828	\N	\N
5101	san pedro		San pedro	san pedro	1	3	4828	\N	\N
5102	cerrillos		Cerrillos	cerrillos	1	3	4829	\N	\N
5103	cerro navia		Cerro navia	cerro navia	1	3	4829	\N	\N
5104	conchal├¡		Conchal├¡	conchal├¡	1	3	4829	\N	\N
5105	el bosque		El bosque	el bosque	1	3	4829	\N	\N
5106	estacion central		Estacion central	estacion central	1	3	4829	\N	\N
5107	huechuraba		Huechuraba	huechuraba	1	3	4829	\N	\N
5108	independencia		Independencia	independencia	1	3	4829	\N	\N
5109	la cisterna		La cisterna	la cisterna	1	3	4829	\N	\N
5110	la florida		La florida	la florida	1	3	4829	\N	\N
5111	la granja		La granja	la granja	1	3	4829	\N	\N
5112	la pintana		La pintana	la pintana	1	3	4829	\N	\N
5113	la reina		La reina	la reina	1	3	4829	\N	\N
5114	las condes		Las condes	las condes	1	3	4829	\N	\N
5115	lo barnechea		Lo barnechea	lo barnechea	1	3	4829	\N	\N
5116	lo espejo		Lo espejo	lo espejo	1	3	4829	\N	\N
5117	lo prado		Lo prado	lo prado	1	3	4829	\N	\N
5118	macul		Macul	macul	1	3	4829	\N	\N
5119	maip├║		Maip├║	maip├║	1	3	4829	\N	\N
5120	├▒u├▒oa		├æu├▒oa	├▒u├▒oa	1	3	4829	\N	\N
5121	pedro aguirre cerda		Pedro aguirre cerda	pedro aguirre cerda	1	3	4829	\N	\N
5122	pe├▒alol├®n		Pe├▒alol├®n	pe├▒alol├®n	1	3	4829	\N	\N
5123	providencia		Providencia	providencia	1	3	4829	\N	\N
5124	pudahuel		Pudahuel	pudahuel	1	3	4829	\N	\N
5125	puente alto		Puente alto	puente alto	1	3	4829	\N	\N
5126	quilicura		Quilicura	quilicura	1	3	4829	\N	\N
5127	quinta normal		Quinta normal	quinta normal	1	3	4829	\N	\N
5128	recoleta		Recoleta	recoleta	1	3	4829	\N	\N
5129	renca		Renca	renca	1	3	4829	\N	\N
5130	san joaqu├¡n		San joaqu├¡n	san joaqu├¡n	1	3	4829	\N	\N
5131	san miguel		San miguel	san miguel	1	3	4829	\N	\N
5132	san ram├│n		San ram├│n	san ram├│n	1	3	4829	\N	\N
5133	santiago-centro		Santiago-centro	santiago-centro	1	3	4829	\N	\N
5134	vitacura		Vitacura	vitacura	1	3	4829	\N	\N
5135	el monte		El monte	el monte	1	3	4830	\N	\N
5136	isla de maipo		Isla de maipo	isla de maipo	1	3	4830	\N	\N
5137	padre hurtado		Padre hurtado	padre hurtado	1	3	4830	\N	\N
5138	pe├▒aflor		Pe├▒aflor	pe├▒aflor	1	3	4830	\N	\N
5139	talagante		Talagante	talagante	1	3	4830	\N	\N
5140	arica		Arica	arica	1	3	4831	\N	\N
5141	camarones		Camarones	camarones	1	3	4831	\N	\N
5142	alto hospicio		Alto hospicio	alto hospicio	1	3	4832	\N	\N
5143	cami├▒a		Cami├▒a	cami├▒a	1	3	4832	\N	\N
5144	colchane		Colchane	colchane	1	3	4832	\N	\N
5145	huara		Huara	huara	1	3	4832	\N	\N
5146	iquique		Iquique	iquique	1	3	4832	\N	\N
5147	pica		Pica	pica	1	3	4832	\N	\N
5148	pozo almonte		Pozo almonte	pozo almonte	1	3	4832	\N	\N
5149	general lagos		General lagos	general lagos	1	3	4833	\N	\N
5150	putre		Putre	putre	1	3	4833	\N	\N
5151	isla de pascua		Isla de pascua	isla de pascua	1	3	4834	\N	\N
5152	la calera		La calera	la calera	1	3	4835	\N	\N
5153	calle larga		Calle larga	calle larga	1	3	4836	\N	\N
5154	los andes		Los andes	los andes	1	3	4836	\N	\N
5155	rinconada		Rinconada	rinconada	1	3	4836	\N	\N
5156	san esteban		San esteban	san esteban	1	3	4836	\N	\N
5157	cabildo		Cabildo	cabildo	1	3	4837	\N	\N
5158	la ligua		La ligua	la ligua	1	3	4837	\N	\N
5159	papudo		Papudo	papudo	1	3	4837	\N	\N
5160	petorca		Petorca	petorca	1	3	4837	\N	\N
5161	zapallar		Zapallar	zapallar	1	3	4837	\N	\N
5162	calera		Calera	calera	1	3	4838	\N	\N
5163	hijuelas		Hijuelas	hijuelas	1	3	4838	\N	\N
5164	la cruz		La cruz	la cruz	1	3	4838	\N	\N
5165	limache		Limache	limache	1	3	4838	\N	\N
5166	nogales		Nogales	nogales	1	3	4838	\N	\N
5167	olmu├®		Olmu├®	olmu├®	1	3	4838	\N	\N
5168	quillota		Quillota	quillota	1	3	4838	\N	\N
5169	algarrobo		Algarrobo	algarrobo	1	3	4839	\N	\N
5170	cartagena		Cartagena	cartagena	1	3	4839	\N	\N
5171	el quisco		El quisco	el quisco	1	3	4839	\N	\N
5172	el tabo		El tabo	el tabo	1	3	4839	\N	\N
5173	san antonio		San antonio	san antonio	1	3	4839	\N	\N
5174	santo domingo		Santo domingo	santo domingo	1	3	4839	\N	\N
5175	catemu		Catemu	catemu	1	3	4840	\N	\N
5176	llayllay		Llayllay	llayllay	1	3	4840	\N	\N
5177	panquehue		Panquehue	panquehue	1	3	4840	\N	\N
5178	putaendo		Putaendo	putaendo	1	3	4840	\N	\N
5179	san felipe		San felipe	san felipe	1	3	4840	\N	\N
5180	santa mar├¡a		Santa mar├¡a	santa mar├¡a	1	3	4840	\N	\N
5181	casablanca		Casablanca	casablanca	1	3	4841	\N	\N
5182	concon		Concon	concon	1	3	4841	\N	\N
5183	juan fern├índez		Juan fern├índez	juan fern├índez	1	3	4841	\N	\N
5184	puchuncav├¡		Puchuncav├¡	puchuncav├¡	1	3	4841	\N	\N
5185	quilpu├®		Quilpu├®	quilpu├®	1	3	4841	\N	\N
5186	quintero		Quintero	quintero	1	3	4841	\N	\N
5187	valpara├¡so		Valpara├¡so	valpara├¡so	1	3	4841	\N	\N
5188	villa alemana		Villa alemana	villa alemana	1	3	4841	\N	\N
5189	vi├▒a del mar		Vi├▒a del mar	vi├▒a del mar	1	3	4841	\N	\N
5190	alabama		Alabama	alabama	\N	\N	4645	\N	\N
5191	alaska		Alaska	alaska	\N	\N	4645	\N	\N
5192	arizona		Arizona	arizona	\N	\N	4645	\N	\N
5193	arkansas		Arkansas	arkansas	\N	\N	4645	\N	\N
5194	california		California	california	\N	\N	4645	\N	\N
5195	carolina del norte		Carolina del norte	carolina-del-norte	\N	\N	4645	\N	\N
5196	carolina del sur		Carolina del sur	carolina-del-sur	\N	\N	4645	\N	\N
5197	colorado		Colorado	colorado	\N	\N	4645	\N	\N
5198	connecticut		Connecticut	connecticut	\N	\N	4645	\N	\N
5199	dakota del norte		Dakota del norte	dakota-del-norte	\N	\N	4645	\N	\N
5200	delaware		Delaware	delaware	\N	\N	4645	\N	\N
5201	florida		Florida	florida	\N	\N	4645	\N	\N
5202	georgia		Georgia	georgia	\N	\N	4645	\N	\N
5203	haw├íi		Haw├íi	haw├íi	\N	\N	4645	\N	\N
5204	idaho		Idaho	idaho	\N	\N	4645	\N	\N
5205	illinois		Illinois	illinois	\N	\N	4645	\N	\N
5206	illinois		Illinois	illinois	\N	\N	4645	\N	\N
5207	indiana		Indiana	indiana	\N	\N	4645	\N	\N
5208	lowa		Lowa	lowa	\N	\N	4645	\N	\N
5209	kansas		Kansas	kansas	\N	\N	4645	\N	\N
5210	kentucky		Kentucky	kentucky	\N	\N	4645	\N	\N
5211	luisiana		Luisiana	luisiana	\N	\N	4645	\N	\N
5212	maine		Maine	maine	\N	\N	4645	\N	\N
5213	maryland		Maryland	maryland	\N	\N	4645	\N	\N
5214	massachusetts		Massachusetts	massachusetts	\N	\N	4645	\N	\N
5215	michigan		Michigan	michigan	\N	\N	4645	\N	\N
5216	minnesota		Minnesota	minnesota	\N	\N	4645	\N	\N
5217	misisipi		Misisipi	misisipi	\N	\N	4645	\N	\N
5218	misuri		Misuri	misuri	\N	\N	4645	\N	\N
5219	montana		Montana	montana	\N	\N	4645	\N	\N
5220	nebraska		Nebraska	nebraska	\N	\N	4645	\N	\N
5221	nevada		Nevada	nevada	\N	\N	4645	\N	\N
5222	nueva jersey		Nueva Jersey	nueva-jersey	\N	\N	4645	\N	\N
5223	nueva york		Nueva York	nueva-york	\N	\N	4645	\N	\N
5224	nuevo hampshire		Nuevo Hampshire	nuevo-hampshire	\N	\N	4645	\N	\N
5225	nuevo mexico		Nuevo Mexico	nuevo-mexico	\N	\N	4645	\N	\N
5226	ohio		Ohio	ohio	\N	\N	4645	\N	\N
5227	oklahoma		Oklahoma	oklahoma	\N	\N	4645	\N	\N
5228	oregon		Oregon	oregon	\N	\N	4645	\N	\N
5229	pensilvania		Pensilvania	pensilvania	\N	\N	4645	\N	\N
5230	rhode island		Rhode Island	rhode-island	\N	\N	4645	\N	\N
5231	tennesse 		Tennesse	tennesse	\N	\N	4645	\N	\N
5232	texas		Texas	texas	\N	\N	4645	\N	\N
5233	utah		Utah	utah	\N	\N	4645	\N	\N
5234	vermont		Vermont	vermont	\N	\N	4645	\N	\N
5235	virginia		Virginia	virginia	\N	\N	4645	\N	\N
5236	virginia occidental		Virginia Occidental	virginia-occidental	\N	\N	4645	\N	\N
5237	washington		Washington	washington	\N	\N	4645	\N	\N
5238	wisconsin		Wisconsin	wisconsin	\N	\N	4645	\N	\N
5239	wyoming		Wyoming	wyoming	\N	\N	4645	\N	\N
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users (id, name, email, email_verified_at, password, remember_token, created_at, updated_at, custom_fields, avatar_url) FROM stdin;
1	Admin	admin@agrologistics.com	2024-12-15 19:26:20	$2y$12$15BKSTDOQ.ffTXocZFLaFeAVCjmiSB6T7trp/OnjHLMG2b5Ha6iVG	L3VyAu2XZD	2024-12-15 19:26:21	2024-12-15 19:26:21	\N	\N
\.


--
-- Data for Name: warehouses; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.warehouses (id, name, address, zone_id, created_at, updated_at) FROM stdin;
1	Almac├®n Barranca	Av. Grau 123, Barranca	2	\N	\N
2	Almac├®n Callej├│n de Huaylas	Jr. Huascar├ín 456, Huaraz	1	\N	\N
3	Almac├®n Chep├®n	Av. La Libertad 789, Chep├®n	6	\N	\N
4	Almac├®n Chiclayo	Jr. El├¡as Aguirre 101, Chiclayo	6	\N	\N
5	Almac├®n Chimbote	Av. Jos├® Pardo 202, Chimbote	4	\N	\N
6	Almac├®n Guadalupe	Jr. Independencia 303, Guadalupe	6	\N	\N
7	Almac├®n Huaral	Av. Circunvalaci├│n Sur 404, Huaral	3	\N	\N
8	Almac├®n Jequetepeque	Av. Principal 505, Jequetepeque	6	\N	\N
9	Almac├®n Trujillo	Jr. Pizarro 606, Trujillo	5	\N	\N
\.


--
-- Data for Name: zones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.zones (id, name, ubigeo_id, created_at, updated_at) FROM stdin;
1	Ancash	2625	\N	\N
2	Barranca	3971	\N	\N
3	Huaral	4008	\N	\N
4	Lima	3926	\N	\N
5	Trujillo	3789	\N	\N
6	Valle Jequetepeque	3839	\N	\N
\.


--
-- Name: advanced_sale_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.advanced_sale_details_id_seq', 1, false);


--
-- Name: advanced_sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.advanced_sales_id_seq', 1, false);


--
-- Name: article_transfer_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_transfer_details_id_seq', 1, false);


--
-- Name: article_transfers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.article_transfers_id_seq', 1, false);


--
-- Name: articles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.articles_id_seq', 30, true);


--
-- Name: bank_accounts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.bank_accounts_id_seq', 6, true);


--
-- Name: banks_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.banks_id_seq', 3, true);


--
-- Name: batches_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.batches_id_seq', 1410, true);


--
-- Name: cash_movements_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.cash_movements_id_seq', 60, true);


--
-- Name: concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.concepts_id_seq', 42, true);


--
-- Name: customer_amortization_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_amortization_details_id_seq', 1, false);


--
-- Name: customer_amortizations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_amortizations_id_seq', 1, false);


--
-- Name: customer_credits_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customer_credits_id_seq', 40, true);


--
-- Name: customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.customers_id_seq', 40, true);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: group_of_concepts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.group_of_concepts_id_seq', 9, true);


--
-- Name: inventories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.inventories_id_seq', 269, true);


--
-- Name: jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.jobs_id_seq', 1, false);


--
-- Name: lines_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.lines_id_seq', 10, true);


--
-- Name: loan_of_merchandise_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loan_of_merchandise_details_id_seq', 1, false);


--
-- Name: loan_of_merchandises_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.loan_of_merchandises_id_seq', 1, false);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.migrations_id_seq', 37, true);


--
-- Name: money_transfers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.money_transfers_id_seq', 30, true);


--
-- Name: payment_receipts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.payment_receipts_id_seq', 646, true);


--
-- Name: purchase_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchase_details_id_seq', 1410, true);


--
-- Name: purchases_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.purchases_id_seq', 282, true);


--
-- Name: sale_details_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sale_details_id_seq', 1446, true);


--
-- Name: sales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sales_id_seq', 294, true);


--
-- Name: sellers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.sellers_id_seq', 13, true);


--
-- Name: suppliers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.suppliers_id_seq', 20, true);


--
-- Name: taking_times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.taking_times_id_seq', 576, true);


--
-- Name: type_of_customers_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.type_of_customers_id_seq', 4, true);


--
-- Name: ubigeos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.ubigeos_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.users_id_seq', 1, true);


--
-- Name: warehouses_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.warehouses_id_seq', 9, true);


--
-- Name: zones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.zones_id_seq', 6, true);


--
-- Name: advanced_sale_details advanced_sale_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sale_details
    ADD CONSTRAINT advanced_sale_details_pkey PRIMARY KEY (id);


--
-- Name: advanced_sales advanced_sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales
    ADD CONSTRAINT advanced_sales_pkey PRIMARY KEY (id);


--
-- Name: article_transfer_details article_transfer_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfer_details
    ADD CONSTRAINT article_transfer_details_pkey PRIMARY KEY (id);


--
-- Name: article_transfers article_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfers
    ADD CONSTRAINT article_transfers_pkey PRIMARY KEY (id);


--
-- Name: articles articles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_pkey PRIMARY KEY (id);


--
-- Name: bank_accounts bank_accounts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_pkey PRIMARY KEY (id);


--
-- Name: banks banks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.banks
    ADD CONSTRAINT banks_pkey PRIMARY KEY (id);


--
-- Name: batches batches_code_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_code_unique UNIQUE (code);


--
-- Name: batches batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_pkey PRIMARY KEY (id);


--
-- Name: cache_locks cache_locks_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache_locks
    ADD CONSTRAINT cache_locks_pkey PRIMARY KEY (key);


--
-- Name: cache cache_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cache
    ADD CONSTRAINT cache_pkey PRIMARY KEY (key);


--
-- Name: cash_movements cash_movements_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_movements
    ADD CONSTRAINT cash_movements_pkey PRIMARY KEY (id);


--
-- Name: concepts concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concepts
    ADD CONSTRAINT concepts_pkey PRIMARY KEY (id);


--
-- Name: customer_amortization_details customer_amortization_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortization_details
    ADD CONSTRAINT customer_amortization_details_pkey PRIMARY KEY (id);


--
-- Name: customer_amortizations customer_amortizations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortizations
    ADD CONSTRAINT customer_amortizations_pkey PRIMARY KEY (id);


--
-- Name: customer_credits customer_credits_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_credits
    ADD CONSTRAINT customer_credits_pkey PRIMARY KEY (id);


--
-- Name: customers customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- Name: failed_jobs failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- Name: group_of_concepts group_of_concepts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.group_of_concepts
    ADD CONSTRAINT group_of_concepts_pkey PRIMARY KEY (id);


--
-- Name: inventories inventories_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_pkey PRIMARY KEY (id);


--
-- Name: job_batches job_batches_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.job_batches
    ADD CONSTRAINT job_batches_pkey PRIMARY KEY (id);


--
-- Name: jobs jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.jobs
    ADD CONSTRAINT jobs_pkey PRIMARY KEY (id);


--
-- Name: lines lines_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.lines
    ADD CONSTRAINT lines_pkey PRIMARY KEY (id);


--
-- Name: loan_of_merchandise_details loan_of_merchandise_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandise_details
    ADD CONSTRAINT loan_of_merchandise_details_pkey PRIMARY KEY (id);


--
-- Name: loan_of_merchandises loan_of_merchandises_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandises
    ADD CONSTRAINT loan_of_merchandises_pkey PRIMARY KEY (id);


--
-- Name: migrations migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- Name: money_transfers money_transfers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.money_transfers
    ADD CONSTRAINT money_transfers_pkey PRIMARY KEY (id);


--
-- Name: password_reset_tokens password_reset_tokens_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.password_reset_tokens
    ADD CONSTRAINT password_reset_tokens_pkey PRIMARY KEY (email);


--
-- Name: payment_receipts payment_receipts_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.payment_receipts
    ADD CONSTRAINT payment_receipts_pkey PRIMARY KEY (id);


--
-- Name: purchase_details purchase_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_details
    ADD CONSTRAINT purchase_details_pkey PRIMARY KEY (id);


--
-- Name: purchases purchases_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_pkey PRIMARY KEY (id);


--
-- Name: sale_details sale_details_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_details
    ADD CONSTRAINT sale_details_pkey PRIMARY KEY (id);


--
-- Name: sales sales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_pkey PRIMARY KEY (id);


--
-- Name: sellers sellers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_pkey PRIMARY KEY (id);


--
-- Name: sessions sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sessions
    ADD CONSTRAINT sessions_pkey PRIMARY KEY (id);


--
-- Name: suppliers suppliers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_pkey PRIMARY KEY (id);


--
-- Name: taking_times taking_times_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.taking_times
    ADD CONSTRAINT taking_times_pkey PRIMARY KEY (id);


--
-- Name: type_of_customers type_of_customers_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.type_of_customers
    ADD CONSTRAINT type_of_customers_pkey PRIMARY KEY (id);


--
-- Name: ubigeos ubigeos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.ubigeos
    ADD CONSTRAINT ubigeos_pkey PRIMARY KEY (id);


--
-- Name: users users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- Name: warehouses warehouses_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_pkey PRIMARY KEY (id);


--
-- Name: zones zones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zones
    ADD CONSTRAINT zones_pkey PRIMARY KEY (id);


--
-- Name: jobs_queue_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX jobs_queue_index ON public.jobs USING btree (queue);


--
-- Name: sessions_last_activity_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_last_activity_index ON public.sessions USING btree (last_activity);


--
-- Name: sessions_user_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX sessions_user_id_index ON public.sessions USING btree (user_id);


--
-- Name: advanced_sale_details advanced_sale_details_advanced_sale_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sale_details
    ADD CONSTRAINT advanced_sale_details_advanced_sale_id_foreign FOREIGN KEY (advanced_sale_id) REFERENCES public.advanced_sales(id) ON DELETE CASCADE;


--
-- Name: advanced_sale_details advanced_sale_details_inventary_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sale_details
    ADD CONSTRAINT advanced_sale_details_inventary_id_foreign FOREIGN KEY (inventary_id) REFERENCES public.inventories(id) ON DELETE CASCADE;


--
-- Name: advanced_sales advanced_sales_bank_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales
    ADD CONSTRAINT advanced_sales_bank_account_id_foreign FOREIGN KEY (bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: advanced_sales advanced_sales_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales
    ADD CONSTRAINT advanced_sales_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: advanced_sales advanced_sales_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales
    ADD CONSTRAINT advanced_sales_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE CASCADE;


--
-- Name: advanced_sales advanced_sales_seller_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales
    ADD CONSTRAINT advanced_sales_seller_id_foreign FOREIGN KEY (seller_id) REFERENCES public.sellers(id) ON DELETE CASCADE;


--
-- Name: advanced_sales advanced_sales_warehouse_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.advanced_sales
    ADD CONSTRAINT advanced_sales_warehouse_id_foreign FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: article_transfer_details article_transfer_details_article_transfer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfer_details
    ADD CONSTRAINT article_transfer_details_article_transfer_id_foreign FOREIGN KEY (article_transfer_id) REFERENCES public.article_transfers(id) ON DELETE CASCADE;


--
-- Name: article_transfer_details article_transfer_details_inventary_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfer_details
    ADD CONSTRAINT article_transfer_details_inventary_id_foreign FOREIGN KEY (inventary_id) REFERENCES public.inventories(id) ON DELETE CASCADE;


--
-- Name: article_transfers article_transfers_warehouse_destination_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfers
    ADD CONSTRAINT article_transfers_warehouse_destination_id_foreign FOREIGN KEY (warehouse_destination_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: article_transfers article_transfers_warehouse_origin_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.article_transfers
    ADD CONSTRAINT article_transfers_warehouse_origin_id_foreign FOREIGN KEY (warehouse_origin_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: articles articles_line_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.articles
    ADD CONSTRAINT articles_line_id_foreign FOREIGN KEY (line_id) REFERENCES public.lines(id) ON DELETE CASCADE;


--
-- Name: bank_accounts bank_accounts_bank_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.bank_accounts
    ADD CONSTRAINT bank_accounts_bank_id_foreign FOREIGN KEY (bank_id) REFERENCES public.banks(id) ON DELETE CASCADE;


--
-- Name: batches batches_inventory_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.batches
    ADD CONSTRAINT batches_inventory_id_foreign FOREIGN KEY (inventory_id) REFERENCES public.inventories(id) ON DELETE CASCADE;


--
-- Name: cash_movements cash_movements_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.cash_movements
    ADD CONSTRAINT cash_movements_account_id_foreign FOREIGN KEY (account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: concepts concepts_group_of_concept_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.concepts
    ADD CONSTRAINT concepts_group_of_concept_id_foreign FOREIGN KEY (group_of_concept_id) REFERENCES public.group_of_concepts(id) ON DELETE CASCADE;


--
-- Name: customer_amortization_details customer_amortization_details_customer_amortization_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortization_details
    ADD CONSTRAINT customer_amortization_details_customer_amortization_id_foreign FOREIGN KEY (customer_amortization_id) REFERENCES public.customer_amortizations(id) ON DELETE CASCADE;


--
-- Name: customer_amortization_details customer_amortization_details_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortization_details
    ADD CONSTRAINT customer_amortization_details_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE CASCADE;


--
-- Name: customer_amortizations customer_amortizations_bank_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortizations
    ADD CONSTRAINT customer_amortizations_bank_account_id_foreign FOREIGN KEY (bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: customer_amortizations customer_amortizations_credit_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortizations
    ADD CONSTRAINT customer_amortizations_credit_customer_id_foreign FOREIGN KEY (credit_customer_id) REFERENCES public.customer_credits(id) ON DELETE CASCADE;


--
-- Name: customer_amortizations customer_amortizations_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_amortizations
    ADD CONSTRAINT customer_amortizations_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE CASCADE;


--
-- Name: customer_credits customer_credits_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_credits
    ADD CONSTRAINT customer_credits_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: customer_credits customer_credits_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_credits
    ADD CONSTRAINT customer_credits_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE SET NULL;


--
-- Name: customer_credits customer_credits_seller_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customer_credits
    ADD CONSTRAINT customer_credits_seller_id_foreign FOREIGN KEY (seller_id) REFERENCES public.sellers(id) ON DELETE CASCADE;


--
-- Name: customers customers_manager_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_manager_id_foreign FOREIGN KEY (manager_id) REFERENCES public.sellers(id) ON DELETE CASCADE;


--
-- Name: customers customers_type_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_type_id_foreign FOREIGN KEY (type_id) REFERENCES public.type_of_customers(id) ON DELETE CASCADE;


--
-- Name: customers customers_ubigeo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_ubigeo_id_foreign FOREIGN KEY (ubigeo_id) REFERENCES public.ubigeos(id) ON DELETE CASCADE;


--
-- Name: customers customers_zone_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_zone_id_foreign FOREIGN KEY (zone_id) REFERENCES public.zones(id) ON DELETE CASCADE;


--
-- Name: inventories inventories_article_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_article_id_foreign FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: inventories inventories_warehouse_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.inventories
    ADD CONSTRAINT inventories_warehouse_id_foreign FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: loan_of_merchandise_details loan_of_merchandise_details_inventary_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandise_details
    ADD CONSTRAINT loan_of_merchandise_details_inventary_id_foreign FOREIGN KEY (inventary_id) REFERENCES public.inventories(id) ON DELETE CASCADE;


--
-- Name: loan_of_merchandise_details loan_of_merchandise_details_loan_of_merchandise_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandise_details
    ADD CONSTRAINT loan_of_merchandise_details_loan_of_merchandise_id_foreign FOREIGN KEY (loan_of_merchandise_id) REFERENCES public.loan_of_merchandises(id) ON DELETE CASCADE;


--
-- Name: loan_of_merchandises loan_of_merchandises_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandises
    ADD CONSTRAINT loan_of_merchandises_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: loan_of_merchandises loan_of_merchandises_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandises
    ADD CONSTRAINT loan_of_merchandises_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE CASCADE;


--
-- Name: loan_of_merchandises loan_of_merchandises_seller_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandises
    ADD CONSTRAINT loan_of_merchandises_seller_id_foreign FOREIGN KEY (seller_id) REFERENCES public.sellers(id) ON DELETE CASCADE;


--
-- Name: loan_of_merchandises loan_of_merchandises_warehouse_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.loan_of_merchandises
    ADD CONSTRAINT loan_of_merchandises_warehouse_id_foreign FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: money_transfers money_transfers_destination_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.money_transfers
    ADD CONSTRAINT money_transfers_destination_account_id_foreign FOREIGN KEY (destination_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: money_transfers money_transfers_source_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.money_transfers
    ADD CONSTRAINT money_transfers_source_account_id_foreign FOREIGN KEY (source_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: purchase_details purchase_details_article_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_details
    ADD CONSTRAINT purchase_details_article_id_foreign FOREIGN KEY (article_id) REFERENCES public.articles(id) ON DELETE CASCADE;


--
-- Name: purchase_details purchase_details_purchase_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchase_details
    ADD CONSTRAINT purchase_details_purchase_id_foreign FOREIGN KEY (purchase_id) REFERENCES public.purchases(id) ON DELETE CASCADE;


--
-- Name: purchases purchases_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE CASCADE;


--
-- Name: purchases purchases_supplier_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_supplier_id_foreign FOREIGN KEY (supplier_id) REFERENCES public.suppliers(id) ON DELETE CASCADE;


--
-- Name: purchases purchases_warehouse_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.purchases
    ADD CONSTRAINT purchases_warehouse_id_foreign FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: sale_details sale_details_batch_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_details
    ADD CONSTRAINT sale_details_batch_id_foreign FOREIGN KEY (batch_id) REFERENCES public.batches(id) ON DELETE CASCADE;


--
-- Name: sale_details sale_details_sale_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sale_details
    ADD CONSTRAINT sale_details_sale_id_foreign FOREIGN KEY (sale_id) REFERENCES public.sales(id) ON DELETE CASCADE;


--
-- Name: sales sales_bank_account_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_bank_account_id_foreign FOREIGN KEY (bank_account_id) REFERENCES public.bank_accounts(id) ON DELETE CASCADE;


--
-- Name: sales sales_customer_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_customer_id_foreign FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON DELETE CASCADE;


--
-- Name: sales sales_payment_receipt_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_payment_receipt_id_foreign FOREIGN KEY (payment_receipt_id) REFERENCES public.payment_receipts(id) ON DELETE CASCADE;


--
-- Name: sales sales_seller_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_seller_id_foreign FOREIGN KEY (seller_id) REFERENCES public.sellers(id) ON DELETE CASCADE;


--
-- Name: sales sales_warehouse_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sales
    ADD CONSTRAINT sales_warehouse_id_foreign FOREIGN KEY (warehouse_id) REFERENCES public.warehouses(id) ON DELETE CASCADE;


--
-- Name: sellers sellers_ubigeo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.sellers
    ADD CONSTRAINT sellers_ubigeo_id_foreign FOREIGN KEY (ubigeo_id) REFERENCES public.ubigeos(id) ON DELETE CASCADE;


--
-- Name: suppliers suppliers_ubigeo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.suppliers
    ADD CONSTRAINT suppliers_ubigeo_id_foreign FOREIGN KEY (ubigeo_id) REFERENCES public.ubigeos(id) ON DELETE CASCADE;


--
-- Name: warehouses warehouses_zone_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.warehouses
    ADD CONSTRAINT warehouses_zone_id_foreign FOREIGN KEY (zone_id) REFERENCES public.zones(id) ON DELETE CASCADE;


--
-- Name: zones zones_ubigeo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.zones
    ADD CONSTRAINT zones_ubigeo_id_foreign FOREIGN KEY (ubigeo_id) REFERENCES public.ubigeos(id) ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

