--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE students;
--
-- Name: students; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE students WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE students OWNER TO freecodecamp;

\connect students

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
-- Name: courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.courses (
    course_id integer NOT NULL,
    course character varying(100) NOT NULL
);


ALTER TABLE public.courses OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.courses_course_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.courses_course_id_seq OWNER TO freecodecamp;

--
-- Name: courses_course_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.courses_course_id_seq OWNED BY public.courses.course_id;


--
-- Name: majors; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors (
    major_id integer NOT NULL,
    major character varying(50) NOT NULL
);


ALTER TABLE public.majors OWNER TO freecodecamp;

--
-- Name: majors_courses; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.majors_courses (
    major_id integer NOT NULL,
    course_id integer NOT NULL
);


ALTER TABLE public.majors_courses OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.majors_major_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.majors_major_id_seq OWNER TO freecodecamp;

--
-- Name: majors_major_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.majors_major_id_seq OWNED BY public.majors.major_id;


--
-- Name: students; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.students (
    student_id integer NOT NULL,
    first_name character varying(50) NOT NULL,
    last_name character varying(50) NOT NULL,
    major_id integer,
    gpa numeric(2,1)
);


ALTER TABLE public.students OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.students_student_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.students_student_id_seq OWNER TO freecodecamp;

--
-- Name: students_student_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.students_student_id_seq OWNED BY public.students.student_id;


--
-- Name: courses course_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses ALTER COLUMN course_id SET DEFAULT nextval('public.courses_course_id_seq'::regclass);


--
-- Name: majors major_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors ALTER COLUMN major_id SET DEFAULT nextval('public.majors_major_id_seq'::regclass);


--
-- Name: students student_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students ALTER COLUMN student_id SET DEFAULT nextval('public.students_student_id_seq'::regclass);


--
-- Data for Name: courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.courses VALUES (44, 'Data Structures and Algorithms');
INSERT INTO public.courses VALUES (45, 'Web Programming');
INSERT INTO public.courses VALUES (46, 'Database Systems');
INSERT INTO public.courses VALUES (47, 'Computer Networks');
INSERT INTO public.courses VALUES (48, 'SQL');
INSERT INTO public.courses VALUES (49, 'Machine Learning');
INSERT INTO public.courses VALUES (50, 'Computer Systems');
INSERT INTO public.courses VALUES (51, 'Web Applications');
INSERT INTO public.courses VALUES (52, 'Artificial Intelligence');
INSERT INTO public.courses VALUES (53, 'Python');
INSERT INTO public.courses VALUES (54, 'Object-Oriented Programming');
INSERT INTO public.courses VALUES (55, 'Calculus');
INSERT INTO public.courses VALUES (56, 'Game Architecture');
INSERT INTO public.courses VALUES (57, 'Algorithms');
INSERT INTO public.courses VALUES (58, 'UNIX');
INSERT INTO public.courses VALUES (59, 'Server Administration');
INSERT INTO public.courses VALUES (60, 'Network Security');


--
-- Data for Name: majors; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors VALUES (57, 'Database Administration');
INSERT INTO public.majors VALUES (58, 'Web Development');
INSERT INTO public.majors VALUES (59, 'Data Science');
INSERT INTO public.majors VALUES (60, 'Network Engineering');
INSERT INTO public.majors VALUES (61, 'Computer Programming');
INSERT INTO public.majors VALUES (62, 'Game Design');
INSERT INTO public.majors VALUES (63, 'System Administration');


--
-- Data for Name: majors_courses; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.majors_courses VALUES (57, 44);
INSERT INTO public.majors_courses VALUES (58, 45);
INSERT INTO public.majors_courses VALUES (57, 46);
INSERT INTO public.majors_courses VALUES (59, 44);
INSERT INTO public.majors_courses VALUES (60, 47);
INSERT INTO public.majors_courses VALUES (57, 48);
INSERT INTO public.majors_courses VALUES (59, 49);
INSERT INTO public.majors_courses VALUES (60, 50);
INSERT INTO public.majors_courses VALUES (61, 47);
INSERT INTO public.majors_courses VALUES (57, 51);
INSERT INTO public.majors_courses VALUES (62, 52);
INSERT INTO public.majors_courses VALUES (59, 53);
INSERT INTO public.majors_courses VALUES (61, 54);
INSERT INTO public.majors_courses VALUES (63, 50);
INSERT INTO public.majors_courses VALUES (62, 55);
INSERT INTO public.majors_courses VALUES (58, 44);
INSERT INTO public.majors_courses VALUES (59, 55);
INSERT INTO public.majors_courses VALUES (58, 54);
INSERT INTO public.majors_courses VALUES (62, 56);
INSERT INTO public.majors_courses VALUES (63, 47);
INSERT INTO public.majors_courses VALUES (62, 57);
INSERT INTO public.majors_courses VALUES (63, 58);
INSERT INTO public.majors_courses VALUES (63, 59);
INSERT INTO public.majors_courses VALUES (61, 50);
INSERT INTO public.majors_courses VALUES (61, 53);
INSERT INTO public.majors_courses VALUES (60, 60);
INSERT INTO public.majors_courses VALUES (58, 51);
INSERT INTO public.majors_courses VALUES (60, 57);


--
-- Data for Name: students; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.students VALUES (113, 'Rhea', 'Kellems', 57, 2.5);
INSERT INTO public.students VALUES (114, 'Emma', 'Gilbert', NULL, NULL);
INSERT INTO public.students VALUES (115, 'Kimberly', 'Whitley', 58, 3.8);
INSERT INTO public.students VALUES (116, 'Jimmy', 'Felipe', 57, 3.7);
INSERT INTO public.students VALUES (117, 'Kyle', 'Stimson', NULL, 2.8);
INSERT INTO public.students VALUES (118, 'Casares', 'Hijo', 62, 4.0);
INSERT INTO public.students VALUES (119, 'Noe', 'Savage', NULL, 3.6);
INSERT INTO public.students VALUES (120, 'Sterling', 'Boss', 62, 3.9);
INSERT INTO public.students VALUES (121, 'Brian', 'Davis', NULL, 2.3);
INSERT INTO public.students VALUES (122, 'Kaija', 'Uronen', 62, 3.7);
INSERT INTO public.students VALUES (123, 'Faye', 'Conn', 62, 2.1);
INSERT INTO public.students VALUES (124, 'Efren', 'Reilly', 58, 3.9);
INSERT INTO public.students VALUES (125, 'Danh', 'Nhung', NULL, 2.4);
INSERT INTO public.students VALUES (126, 'Maxine', 'Hagenes', 57, 2.9);
INSERT INTO public.students VALUES (127, 'Larry', 'Saunders', 59, 2.2);
INSERT INTO public.students VALUES (128, 'Karl', 'Kuhar', 58, NULL);
INSERT INTO public.students VALUES (129, 'Lieke', 'Hazenveld', 62, 3.5);
INSERT INTO public.students VALUES (130, 'Obie', 'Hilpert', 58, NULL);
INSERT INTO public.students VALUES (131, 'Peter', 'Booysen', NULL, 2.9);
INSERT INTO public.students VALUES (132, 'Nathan', 'Turner', 57, 3.3);
INSERT INTO public.students VALUES (133, 'Gerald', 'Osiki', 59, 2.2);
INSERT INTO public.students VALUES (134, 'Vanya', 'Hassanah', 62, 4.0);
INSERT INTO public.students VALUES (135, 'Roxelana', 'Florescu', 57, 3.2);
INSERT INTO public.students VALUES (136, 'Helene', 'Parker', 59, 3.4);
INSERT INTO public.students VALUES (137, 'Mariana', 'Russel', 58, 1.8);
INSERT INTO public.students VALUES (138, 'Ajit', 'Dhungel', NULL, 3.0);
INSERT INTO public.students VALUES (139, 'Mehdi', 'Vandenberghe', 57, 1.9);
INSERT INTO public.students VALUES (140, 'Dejon', 'Howell', 58, 4.0);
INSERT INTO public.students VALUES (141, 'Aliya', 'Gulgowski', 63, 2.6);
INSERT INTO public.students VALUES (142, 'Ana', 'Tupajic', 59, 3.1);
INSERT INTO public.students VALUES (143, 'Hugo', 'Duran', NULL, 3.8);


--
-- Name: courses_course_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.courses_course_id_seq', 60, true);


--
-- Name: majors_major_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.majors_major_id_seq', 63, true);


--
-- Name: students_student_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.students_student_id_seq', 143, true);


--
-- Name: courses courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.courses
    ADD CONSTRAINT courses_pkey PRIMARY KEY (course_id);


--
-- Name: majors_courses majors_courses_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_pkey PRIMARY KEY (major_id, course_id);


--
-- Name: majors majors_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors
    ADD CONSTRAINT majors_pkey PRIMARY KEY (major_id);


--
-- Name: students students_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_pkey PRIMARY KEY (student_id);


--
-- Name: majors_courses majors_courses_course_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_course_id_fkey FOREIGN KEY (course_id) REFERENCES public.courses(course_id);


--
-- Name: majors_courses majors_courses_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.majors_courses
    ADD CONSTRAINT majors_courses_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- Name: students students_major_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.students
    ADD CONSTRAINT students_major_id_fkey FOREIGN KEY (major_id) REFERENCES public.majors(major_id);


--
-- PostgreSQL database dump complete
--

