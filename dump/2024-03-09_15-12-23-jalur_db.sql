--
-- PostgreSQL database dump
--

-- Dumped from database version 13.13
-- Dumped by pg_dump version 13.13

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

--
-- Data for Name: billings; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.billings (id, record_id, user_id, status, record_date, payments, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- Data for Name: glampings; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.glampings (id, name, description, images, date, "time", created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: halls; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.halls (id, name, addres, description, start_work_time, end_work_time, created_at, updated_at) FROM stdin;
2	Зал тренировок	Лянгасова,30	Зал рассчитан на 12 человек(для практик)\r\n8 человек(для тренировок)	09:00:00	22:00:00	2024-02-14 18:04:31	2024-02-14 18:04:46
3	Зал практик	Лянгасова, 30	Зал рассчитан на 10 человек для практик\r\n7 человек для тренировок	09:00:00	22:00:00	2024-02-14 18:06:02	2024-02-14 18:06:02
\.


--
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.migrations (id, migration, batch) FROM stdin;
27	2014_10_12_000000_create_users_table	1
28	2014_10_12_100000_create_password_reset_tokens_table	1
29	2019_08_19_000000_create_failed_jobs_table	1
30	2019_12_14_000001_create_personal_access_tokens_table	1
31	2023_12_30_122856_create_type_workouts_table	1
32	2023_12_30_123634_create_workouts_table	1
33	2023_12_30_124308_create_schedule_times_table	1
34	2023_12_30_124403_create_halls_table	1
35	2023_12_30_124454_create_glampings_table	1
36	2023_12_30_124652_create_schedules_table	1
37	2023_12_30_124958_create_records_table	1
38	2024_01_18_104051_create_user_targets_table	1
39	2024_01_19_131102_create_billings_table	1
\.


--
-- Data for Name: password_reset_tokens; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.password_reset_tokens (email, token, created_at) FROM stdin;
\.


--
-- Data for Name: personal_access_tokens; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.personal_access_tokens (id, tokenable_type, tokenable_id, name, token, abilities, last_used_at, expires_at, created_at, updated_at) FROM stdin;
83	App\\Models\\User	28	user_token	415785b7acaf5a79e406edbc53cb9738603973b6c0eebf468ab4e1dd94aa05be	["*"]	\N	\N	2024-02-29 17:31:23	2024-02-29 17:31:23
84	App\\Models\\User	29	user_token	6c51cb8be18328b034e6823f9c8572407ad3dd87c900fa964f19738ea5eae9de	["*"]	\N	\N	2024-02-29 17:38:15	2024-02-29 17:38:15
\.


--
-- Data for Name: schedule_times; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.schedule_times (id, start_time, created_at, updated_at) FROM stdin;
1	09:00:00	2024-02-14 18:02:46	2024-02-14 18:02:46
\.


--
-- Data for Name: type_workouts; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.type_workouts (id, name, created_at, updated_at) FROM stdin;
2	Практика	2024-02-14 17:47:40	2024-02-14 17:47:40
3	Тренировка	2024-02-14 17:48:03	2024-02-14 17:48:03
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.users (id, first_name, last_name, middle_name, age, birth_date, role, gender, image, description, weight, height, size_cloth, phone, email, code, password_admin, remember_token, created_at, updated_at) FROM stdin;
1	Тестовый	Администратор	\N	\N	\N	Администратор	Мужчина	\N	\N	\N	\N	\N	+7 (999) 999-99-99	\N	\N	$2y$12$M04GREbIDOPr4lHTtM6kXuK4TrCKaWGS7WzRfkI.UYM17n.QrPPzW	\N	2024-02-06 09:56:56	2024-02-06 09:56:56
2	Юлия	Баранова	Сергеевна	33	1990-12-05	Тренер	Женщина	uploads/BZW976hfXpVZxOBI9KcRdzT32TcHsqtJzDpYhpCc.png	валотваыслодвадоваы	\N	\N	46	+7 (950) 452-91-41	iulchabaranova@yandex.ru	\N	\N	\N	2024-02-06 16:20:35	2024-02-06 16:20:35
3	Юлия	Суркова	Евгеньевна	\N	1990-01-25	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (963) 017-59-70	yusurkova2014@gmail.com	\N	\N	\N	2024-02-11 16:01:55	2024-02-11 16:01:55
4	Юлия	Чулкова	Александровна	\N	1988-09-04	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (950) 445-88-34	chulkova.yuliya2022@yandex.ru	\N	\N	\N	2024-02-14 16:00:23	2024-02-14 16:00:23
5	Алина	Насырова	Сергеевна	\N	2001-09-09	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (982) 236-20-64	olinanasyrova@gmail.com	\N	\N	\N	2024-02-14 16:05:56	2024-02-14 16:05:56
6	Юлия	Сидорунина	Александровна	\N	1982-01-28	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (912) 595-02-65	la-da82.82@mail.ru	\N	\N	\N	2024-02-14 16:08:36	2024-02-14 16:08:36
7	Анастасия	Полех/Никитина	Леонидовна	\N	1988-12-26	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (952) 265-63-35	a-2612nikitina@yandex.ru	\N	\N	\N	2024-02-14 16:11:12	2024-02-14 16:12:05
8	Светлана	Полякова	Анатольевна	\N	1988-10-12	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (961) 758-58-28	Polyakovasa@mail.ru	\N	\N	\N	2024-02-14 16:14:21	2024-02-14 16:14:21
9	Анастасия	Кисурина	Андреевна	\N	1991-02-24	Тренер	Женщина	uploads/xyACZRkghJft3B7g93zKLy7aqKyCphMTEkTTS6eh.jpg	Инструктор по направлениям — хатха - йога, кундалини йога, детская йога.\r\nВ работе Настя помогает людям принять себя, своё тело и состояние.\r\n\r\nНа ее занятиях вы обретете душевное равновесие, внутреннее спокойствие и энергию на действия во вне. \r\n\r\nНастю согревает осознание того, что через йогу она помогает людям преисполниться любовью к себе и миру. \r\n\r\nА ещё, Анастасия любит читать, увлекалась танцами и играет на музыкальных инструментах 🥁	\N	\N	42	+7 (999) 125-50-58	\N	\N	\N	\N	2024-02-14 16:34:44	2024-02-14 16:34:44
10	Анна	Ходыкина	Александровна	\N	1985-07-08	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (902) 643-85-82	nushahod.ne@gmail.com	\N	\N	\N	2024-02-14 17:14:09	2024-02-14 17:14:09
11	Любовь	Кулакова	Сергеевна	\N	1984-11-22	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (952) 333-78-75	kulakova.lyubov.84@mail.ru	\N	\N	\N	2024-02-14 17:21:28	2024-02-14 17:21:28
12	Анна	Брюханова	Валерьевна	\N	1978-05-02	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (952) 641-06-16	anna_gala@bk.ru	\N	\N	\N	2024-02-14 17:22:56	2024-02-14 17:22:56
13	Елена	Хайбулаева	Сабирзяновна	\N	1983-04-11	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (950) 461-09-24	Ekhajbulaeva@yandex.ru	\N	\N	\N	2024-02-14 17:26:38	2024-02-14 17:26:38
14	Наталья	Зиянгирова	Анатольевна	\N	0078-09-07	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (902) 630-41-41	Naturelca@mail.ru	\N	\N	\N	2024-02-14 17:28:04	2024-02-14 17:28:04
15	Лариса	Лэмперт	Олеговна	\N	1976-08-18	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (912) 785-68-60	larisalempert47156@gmail.com	\N	\N	\N	2024-02-14 17:29:10	2024-02-14 17:29:10
16	Анна	Кардапольцева	Ивановна	\N	1998-06-04	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (922) 640-71-31	nutik98@mail.ru	\N	\N	\N	2024-02-14 17:31:36	2024-02-14 17:31:36
17	Ольга	Москаленко	Николаевна	\N	1985-06-03	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (902) 479-30-76	Omoskalenko85@yandex.ru	\N	\N	\N	2024-02-14 17:32:50	2024-02-14 17:32:50
18	Юлия	Носкова	Олеговна	\N	1984-10-17	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (908) 258-15-09	1984noskova@mail.ru	\N	\N	\N	2024-02-14 17:33:55	2024-02-14 17:33:55
19	Елена	Лопаева	Леонидовна	\N	1984-11-23	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (902) 641-57-65	ymkamag@yandex.ru	\N	\N	\N	2024-02-14 17:37:54	2024-02-14 17:37:54
20	Полина	Суслова	Александровна	\N	2001-07-23	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (919) 461-84-24	polyasuslova230@icloud.com	\N	\N	\N	2024-02-14 17:39:24	2024-02-14 17:39:24
21	Дмитриус	Легендарус	\N	21	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+7 (123) 123-12-31	\N	\N	\N	\N	2024-02-15 17:59:06	2024-02-15 17:59:06
24	Чмо	Чмошное	\N	33	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+7 (126) 312-31-23	\N	\N	\N	\N	2024-02-16 10:42:19	2024-02-16 10:42:19
26	Чмо	Чмошное	\N	123	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+7 (812) 312-31-23	\N	\N	\N	\N	2024-02-16 10:42:47	2024-02-16 10:42:47
22	Дмитрий	Ванюков	\N	21	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+7 (913) 745-84-96	\N	$2y$12$LUMA1/hm.BAwBma5prYACeUTf.Vbakk1n5wRAn/1YKmYvHnMGMXaq	\N	\N	2024-02-15 18:12:24	2024-03-09 06:55:39
30	Мда	Нет	\N	9	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+7 (953) 866-99-25	\N	$2y$12$JRgDdsoCrr41x8bhwLBWFe9keRLzzhUFY0F2HV/BdXj/3JU8WD3dG	\N	\N	2024-02-29 17:37:12	2024-02-29 17:37:22
23	Владимир	Чернорус	\N	32	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+1 (231) 231-23-12	\N	\N	\N	\N	2024-02-16 10:27:14	2024-02-16 10:27:14
27	эээ	аааа	\N	42	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+7 (666) 666-66-66	\N	\N	\N	\N	2024-02-29 17:06:38	2024-02-29 17:06:38
28	Виталий	Квантов	\N	19	\N	Клиент	Мужчина	\N	\N	\N	\N	\N	+5 (555) 555-55-55	\N	$2y$12$24To5RaPSt5TQ8vfY0yKSOyl.UCWlS5dK4yaXcxvspLfs987hl3nK	\N	\N	2024-02-29 17:31:05	2024-02-29 17:31:17
29	Ага	Да	\N	7	\N	Клиент	Женщина	\N	\N	\N	\N	\N	+7 (911) 111-11-11	\N	$2y$12$IRmnfAHExEWSUBbKYi1TAOCBEZAbEjPk68n8FF3gRvwzzKOAp6wlW	\N	\N	2024-02-29 17:36:22	2024-02-29 17:37:54
\.


--
-- Data for Name: workouts; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.workouts (id, type_workout_id, name, description, images, created_at, updated_at) FROM stdin;
6	3	Хатха йога	Хатха-йога — это практика, которая объединяет асаны, дыхательные упражнения, медитацию и концентрацию внимания 🌙🌤️  \r\nПроисходит кардинальное очищение тела от ненужных продуктов обмена веществ. \r\nУравновешиваются положительный и отрицательный полюса энергии. \r\nПроисходит оздоровление всего организма в целом.  \r\nХатха-йога заботится о чистоте тела, способствуя сбалансированному обмену веществ в организме и своевременному удалению продуктов обмена.   \r\n🧘‍♀️ Посредством йоги тело может достигнуть такой степени чистоты, что перестанет подвергаться болезням и старению.	[{"name": "uploads/qMz9spVVlA68yVrHKzOeTVDacG42PJ4ge4a9kp7w.jpg"}]	2024-02-21 10:59:28	2024-02-21 10:59:28
7	3	Танцевальная терапия	Танцевальная терапия - это занятие, на котором мы развиваем пластику и гибкость, избавляемся от зажатости и скованности, учимся принимать и любить свое тело.	[{"name": "uploads/ETnjSBjmM73zDUKFfbJRYQcPthWFviPIBR5l9B2z.jpg"}]	2024-02-21 11:09:29	2024-02-21 11:09:29
8	3	Йога нидра	Почти целый час в шавасане(лежа на спине в неподвижном состоянии)  и в медитации, который позволяет тотально расслабиться, очутиться в состоянии между сном и бодрствованием, отключить все мысли в голове 🧘‍♀️✨	[{"name": "uploads/WeRGV2VnS07qsVvSsnimBOKVokFd0youBlU5g8rY.jpg"}]	2024-02-21 11:17:04	2024-02-21 11:17:04
9	3	Кундалини йога	Кундалини йога направлена на осознание тонких энергий и активацию энергетических центров во всем теле🕯️✨\r\n\r\nЗанятие включает в себя комплекс необъятных чудес: мантропение, энергетический танец каошики, медитации и, конечно, крийи (упражнения) 🧘‍♀️\r\n\r\nКундалини-йога стимулирует жизненную силу, балансирует ум, развивает дух.\r\nОна способствует мгновенному обретению ясности, работает как мощнейший антистресс.	[{"name": "uploads/f3PaxTn3boF425afOgGPeGsKLskXE3IQyawvUyNa.jpg"}]	2024-02-21 11:28:30	2024-02-21 11:28:30
10	2	ЖЕНСКОЕ ЗДОРОВЬЕ	Мягкое направление, которое оздоравливает весь организм в целом, укрепляет мышцы тазового дна, работает над правильным дыханием, включает в себя суставную гимнастику.\r\n\r\nИдеально подойдёт для тех, кто давно не занимался или просто для любителей мягких занятий без силовых нагрузок. \r\n\r\nПомимо оздоравливающего эффекта, улучшается контакт с телом, высвобождаются зажимы.	[{"name": "uploads/v07bTfaONms0BjSGYcJrCLTkjLkLFlaNi2fGTsSL.jpg"}]	2024-02-21 11:32:45	2024-02-21 11:32:45
11	3	ФУНКЦИОНАЛЬНАЯ ТРЕНИРОВКА +МФР	Система занятий, которые гармонично развивают силу, выносливость, гибкость, координацию. \r\n\r\nВ функциональном тренинге используются многосуставные упражнения на все тело, близкие к движениям повседневной жизни. \r\n\r\nЦель - общее укрепление организма, создание хорошей физической формы, приумножение здоровья.	[{"name": "uploads/3K0BHN7ZUrutxX754zTCQi8WG4qda55fmV36UuaJ.jpg"}]	2024-02-21 11:36:08	2024-02-21 11:36:08
12	3	МФР+ РАСТЯЖКА	МФР (миофасциальный релиз) – это самомассаж с помощью оборудования и собственных рук, который способствует расслаблению мышц и скольжению фасций, что обеспечивает качественное движение тела. А это, в свою очередь, улучшает качество жизни человека.\r\n\r\nЧерез движение(динамическую растяжку) мы развиваем мобильность и гибкость суставов, постепенно увеличивая амплитуду движений, что даст вам возможность использовать эти качества, как в быту, так и ваших спортивных/танцевальных хобби.\r\n                                            \r\nВ сочетании эти 2 направления дополняют друг друга и делают тренировку максимально эффективной. МФР отлично подготавливает связки и мышцы для дальнейшей работы.	[{"name": "uploads/7lf3eUGtx3bqZVxWIGD38pQ9sV8gGhTkHx0cxbt2.jpg"}]	2024-02-21 11:56:12	2024-02-21 11:56:12
13	3	Йога FLOW	Yoga flow — это современный авторский стиль практики йоги в потоке, где асаны непрерывно сменяют одна другую.\r\nАсаны — положение тела, которое удобно и устойчиво.\r\nНа тренировках обычно выполняются более короткие связки из 3-4 асан. Сама практика непрерывного движения позволяет лучше проработать мышцы, не даёт провисать на связках, что многие делают с непривычки в статичных асанах.	[{"name": "uploads/XaekvcmB3nR6Pim35WnggyxizHmJZW5wFz5JLTQj.jpg"}]	2024-02-21 11:59:12	2024-02-21 11:59:12
14	2	Йога ХАТХА pro	Это занятие для тех, кто уже практикует йогу Хатха, знает основные асаны, дыхание. Кто хочет продолжать развивать свое тело, усложняя асаны и нагрузку.	[{"name": "uploads/VM0iMyrvzvsBo1aqxYatjKodDiIlU4e6otT1YWjv.jpg"}]	2024-02-21 12:04:45	2024-02-21 12:04:45
15	2	Групповое гвоздестояние/медитация	Гвоздестояние — древняя индийская практика осознанности, во время которой человек работает с психикой через взаимодействие с телом 🪔  \r\nНа групповой практике положительное действие гвоздестояния усиливается благодаря общей энергии участников.   Гвоздестояние пробивает все блоки, как на физическом, так и на энергетическом уровне. Помогает высвободить энергию и наполниться ресурсом.  \r\nРегулярная практика улучшает качество сна, пропадает бессонница, повышается иммунитет, улучшается психо-эмоциональное состояние.	[{"name": "uploads/dvq27aDNYg4GLako8SAQZlXZBoeVM8yOM7QBDKwA.jpg"}]	2024-02-21 12:08:56	2024-02-21 12:08:56
16	2	Групповая медитация	Групповая медитация — это лёгкая наполняющая практика, направленная на очищение и гармонизацию. \r\n\r\nДля каждой групповой медитации мы выбираем тему. Например: \r\n\r\n• Любовь и благодарность\r\n• Исполнение желаний\r\n• Наполнение ресурсом \r\n\r\nГрупповое поле усиливает положительное действие медитации. Вы сбалансируете своё состояние, наполнитесь легкостью и спокойствием.	[{"name": "uploads/6ovAAnygcc7vSjcocb2OOZkk6Xm7Td0ppnm2z74X.jpg"}]	2024-02-21 12:12:22	2024-02-21 12:12:22
17	2	Тренинг гвоздестояние "Финансовое благополучие"	Тренинг гвоздестояния "Финансовое благополучие" 💭  \r\nДеньги - это материализованная энергия. Они очень ясно отражают установки, паттерны, убеждения человека. Часто именно из-за проблем внутри, мы не имеет материального достатка. \r\n 〰️ Во время тренинга мы будем активно работать над установками, которые блокируют поступление финансов.  Обнаружив негативные установки мы перезапишем  и создадим новые нейронные связи, которые направлены на изобилие и богатство.  Благодаря новым паттернам мышления и установкам, мы сможем привлекать больше финансовых возможностей в свою жизнь \r\n✨  Заменить и зафиксировать новые нейронные связи нам помогут гвозди, на которых мы будем стоять. Этот инструмент в считанные минуты открывает доступ в самую глубь подсознания, что будет максимально эффективно для изменений.  Создадим ясные и сильные связи между нашими мыслями, эмоциями и финансовым успехом.   Жизнь в изобилии и достатке начинается с работы над собой и своей энергией 🤍	[{"name": "uploads/yVxhCILzakT8dDXTxQdawjcvbeFaP8AZHY3hmUMi.jpg"}]	2024-02-21 12:15:48	2024-02-21 12:15:48
18	2	Индивидуальное гвоздестояние	Гвоздестояние — древняя индийская практика осознанности, во время которой человек работает с психикой через взаимодействие с телом 🪔  \r\nСтояние на гвоздях воздействует на человека на нескольких уровнях: \r\n 1. На уровне физики - активируется каждая точка на стопах, в связи с этим, происходит тотальное исцеление на клеточном уровне. Гвозди включают человека в момент «здесь и сейчас». Тотальное расслабление сознания. \r\n 2. На уровне психики - гвозди создают для человека состояние «квантового скачка» в любой сфере жизни. Если вы имеете чёткое намерение, вставая на гвозди, оно реализуется на 1000% \r\n 3. На духовном уровне - происходит очищение родовой системы.  \r\n⚪ Мы мягко с поддержкой и сопровождением отправляемся в путешествии к истинному Я 🤍💭	[{"name": "uploads/6RSP5GqR8EMeX3JcHvMQLG8UmIJnXP4z38pUFKzO.jpg"}]	2024-02-21 12:19:09	2024-02-21 12:19:09
19	2	Проведение девичника	Желаете нетривиально отметить свой праздник?\r\n\r\n• День рождения\r\n• Девичник \r\n• Или просто женские посиделки с подругами \r\n\r\nМы организуем программу индивидуально под ваш запрос. В неё может входить: \r\n\r\n•  Гвоздестояние\r\n•  Медитация \r\n•  Энергопрактики\r\n•  Трансформационная игра "Лабиринт лотоса" \r\n•  Карта желаний и многое другое	[{"name": "uploads/FFOerRzh1yY0qpiEdJGxAQ7FSB2M7qTs8OazOr6I.jpg"}]	2024-02-21 12:21:33	2024-02-21 12:21:33
20	3	Корпоративная йога	Корпоративная йога — это уникальная услуга, которая позволит вашим сотрудникам оторваться от повседневной рутины и вложиться в собственное здоровье и благополучие 🧘‍♀️   Что вы получите:  ◽️Смена деятельности и переключение от рутины, что способствует повышению концентрации и снижению стресса  ◽️Улучшение общего самочувствия и физической формы, что способствует эффективности и продуктивности сотрудников  ◽️Особенно полезно для офисных сотрудников, которые проводят долгие часы за компьютерами и испытывают нагрузку на спину и шею.	[{"name": "uploads/zQla0hmQ4510LBsB4atfzfEfwm0Y64CiVMbIYiFF.jpg"}]	2024-02-21 12:25:13	2024-02-21 12:25:13
21	2	Энерготерапия	Энерготерапевтическая сессия 🧘‍♀️\r\n✨  Представьте, в вашей жизни есть какая-то ситуация, которая вас беспокоит. Она может быть связана с любой сферой - финансы, отношения, здоровье.   Часто причина этих проблем - в нашем энергетическом теле. Исцелив его, можно разрешить проблему и на внешнем уровне. \r\n  ⚪️ Как проходит встреча?  Предварительно мы с вами созвонимся на 15 минут. Вы опишите ваш запрос, я расскажу, как я смогу вам помочь. А вы почувствуете, насколько вам комфортно и насколько я - ваш проводник.   На встрече вместе с вами мы определим запрос. Он должен касаться только вас и вашей жизни. Я помогаю в его формулировке, ведь осознать его часто бывает не просто.   Дальше начинается работа в режиме тотального расслабления, для этого я погружаю вас в особое состояние спокойствия и умиротворения.   Моя задача как проводника провести вас максимально комфортно, кратчайшим путём и найти корневую причину всей ситуации, устранить, исцелить и создать новую нейронную сеть.  В зависимости от ситуации и задачи, я применяю различные инструменты, такие как медитация, гвозди, сканирование энергетических блоков и другие, чтобы получить максимальный эффект.  \r\n⚪️ 1,5 часа	[{"name": "uploads/jSpeagCYLCDKu8v5HQJWFD2EX9oKEPBUjF7URQ3O.jpg"}]	2024-02-21 12:30:12	2024-02-21 12:30:12
\.


--
-- Data for Name: schedules; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.schedules (id, hall_id, workout_id, couch_id, schedule_time_id, date, count_record, created_at, updated_at) FROM stdin;
1	2	6	2	1	2024-03-10 00:00:00	15	2024-03-09 07:20:22	2024-03-09 07:20:22
2	2	7	9	1	2024-03-10 00:00:00	15	2024-03-09 07:21:03	2024-03-09 07:21:03
\.


--
-- Data for Name: records; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.records (id, user_id, schedule_id, created_at, updated_at) FROM stdin;
\.


--
-- Data for Name: user_targets; Type: TABLE DATA; Schema: public; Owner: raptor
--

COPY public.user_targets (id, user_id, collection, created_at, updated_at) FROM stdin;
\.


--
-- Name: billings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.billings_id_seq', 1, false);


--
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.failed_jobs_id_seq', 1, false);


--
-- Name: glampings_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.glampings_id_seq', 1, false);


--
-- Name: halls_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.halls_id_seq', 3, true);


--
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.migrations_id_seq', 39, true);


--
-- Name: personal_access_tokens_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.personal_access_tokens_id_seq', 91, true);


--
-- Name: records_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.records_id_seq', 1, false);


--
-- Name: schedule_times_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.schedule_times_id_seq', 1, true);


--
-- Name: schedules_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.schedules_id_seq', 2, true);


--
-- Name: type_workouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.type_workouts_id_seq', 4, true);


--
-- Name: user_targets_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.user_targets_id_seq', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.users_id_seq', 30, true);


--
-- Name: workouts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: raptor
--

SELECT pg_catalog.setval('public.workouts_id_seq', 21, true);


--
-- PostgreSQL database dump complete
--

