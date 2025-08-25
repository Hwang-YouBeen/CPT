create table users (
                       id bigserial primary key,
                       email varchar(255) not null unique,
                       name varchar(100),
                       major varchar(100),
                       student_no varchar(50),
                       role varchar(20) not null default 'USER',
                       created_at timestamptz not null default now()
);

create table email_verification (
                                    id bigserial primary key,
                                    email varchar(255) not null,
                                    token varchar(255) not null unique,
                                    expires_at timestamptz not null,
                                    used boolean not null default false,
                                    created_at timestamptz not null default now()
);

create index idx_email_verification_email on email_verification(email);