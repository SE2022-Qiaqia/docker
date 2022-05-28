/*
 Navicat Premium Data Transfer

 Source Server         : VM-Ubuntu
 Source Server Type    : PostgreSQL
 Source Server Version : 140002
 Source Host           : 192.168.5.144:5432
 Source Catalog        : course-system
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 140002
 File Encoding         : 65001

 Date: 28/05/2022 22:55:13
*/


-- ----------------------------
-- Sequence structure for colleges_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "colleges_id_seq";
CREATE SEQUENCE "colleges_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for course_commons_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "course_commons_id_seq";
CREATE SEQUENCE "course_commons_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for course_schedules_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "course_schedules_id_seq";
CREATE SEQUENCE "course_schedules_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for course_specifics_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "course_specifics_id_seq";
CREATE SEQUENCE "course_specifics_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for semesters_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "semesters_id_seq";
CREATE SEQUENCE "semesters_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for settings_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "settings_id_seq";
CREATE SEQUENCE "settings_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for student_courses_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "student_courses_id_seq";
CREATE SEQUENCE "student_courses_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "users_id_seq";
CREATE SEQUENCE "users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for colleges
-- ----------------------------
DROP TABLE IF EXISTS "colleges";
CREATE TABLE "colleges" (
  "id" int8 NOT NULL DEFAULT nextval('colleges_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of colleges
-- ----------------------------
INSERT INTO "colleges" VALUES (1, '2022-05-28 12:21:30.367832+00', '2022-05-28 12:21:30.367832+00', NULL, '<未分配学院>');
INSERT INTO "colleges" VALUES (2, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '数学院');
INSERT INTO "colleges" VALUES (4, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '物理学院');
INSERT INTO "colleges" VALUES (6, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '化学院');
INSERT INTO "colleges" VALUES (8, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '生物学院');
INSERT INTO "colleges" VALUES (10, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '计算机科学学院');
INSERT INTO "colleges" VALUES (12, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '软件学院');
INSERT INTO "colleges" VALUES (14, '2022-05-28 12:21:30.415981+00', '2022-05-28 12:21:30.415981+00', NULL, '电子工程学院');

-- ----------------------------
-- Table structure for course_commons
-- ----------------------------
DROP TABLE IF EXISTS "course_commons";
CREATE TABLE "course_commons" (
  "id" int8 NOT NULL DEFAULT nextval('course_commons_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "credits" numeric,
  "hours" int8,
  "college_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of course_commons
-- ----------------------------
INSERT INTO "course_commons" VALUES (1, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '高等数学', 5, 60, 2);
INSERT INTO "course_commons" VALUES (2, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '线性代数', 3, 60, 2);
INSERT INTO "course_commons" VALUES (3, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '概率论与数理统计', 3, 60, 2);
INSERT INTO "course_commons" VALUES (4, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '大学物理', 5, 60, 4);
INSERT INTO "course_commons" VALUES (5, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '量子物理', 3, 60, 4);
INSERT INTO "course_commons" VALUES (7, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '无机化学', 3, 60, 6);
INSERT INTO "course_commons" VALUES (8, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '大学生物', 2, 60, 8);
INSERT INTO "course_commons" VALUES (9, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '计算机科学导论', 3, 48, 10);
INSERT INTO "course_commons" VALUES (10, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '嵌入式系统', 3.5, 48, 10);
INSERT INTO "course_commons" VALUES (11, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '数据结构', 3.5, 48, 10);
INSERT INTO "course_commons" VALUES (12, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '数据结构', 3, 48, 12);
INSERT INTO "course_commons" VALUES (13, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, 'JavaEE企业级应用开发', 3, 48, 12);
INSERT INTO "course_commons" VALUES (14, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '电路分析', 3, 48, 14);
INSERT INTO "course_commons" VALUES (15, '2022-05-28 12:21:39.911629+00', '2022-05-28 12:21:39.911629+00', NULL, '数字电子技术', 3, 48, 14);
INSERT INTO "course_commons" VALUES (6, '2022-05-28 12:21:39.911629+00', '2022-05-28 14:13:39.804999+00', NULL, '有机化学', 3, 60, 6);

-- ----------------------------
-- Table structure for course_schedules
-- ----------------------------
DROP TABLE IF EXISTS "course_schedules";
CREATE TABLE "course_schedules" (
  "id" int8 NOT NULL DEFAULT nextval('course_schedules_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "day_of_week" int8,
  "hours_id" int8,
  "hours_count" int8,
  "start_week_id" int8,
  "end_week_id" int8
)
;

-- ----------------------------
-- Records of course_schedules
-- ----------------------------
INSERT INTO "course_schedules" VALUES (1, '2022-05-28 12:21:39.946667+00', '2022-05-28 12:21:39.946667+00', NULL, 3, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (2, '2022-05-28 12:21:39.946667+00', '2022-05-28 12:21:39.946667+00', NULL, 5, 1, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (3, '2022-05-28 12:21:39.966474+00', '2022-05-28 12:21:39.966474+00', NULL, 3, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (4, '2022-05-28 12:21:39.966474+00', '2022-05-28 12:21:39.966474+00', NULL, 5, 1, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (5, '2022-05-28 12:21:39.985744+00', '2022-05-28 12:21:39.985744+00', NULL, 2, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (6, '2022-05-28 12:21:39.985744+00', '2022-05-28 12:21:39.985744+00', NULL, 4, 1, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (7, '2022-05-28 12:21:40.005594+00', '2022-05-28 12:21:40.005594+00', NULL, 2, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (8, '2022-05-28 12:21:40.005594+00', '2022-05-28 12:21:40.005594+00', NULL, 4, 1, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (9, '2022-05-28 12:21:40.02623+00', '2022-05-28 12:21:40.02623+00', NULL, 2, 1, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (10, '2022-05-28 12:21:40.047249+00', '2022-05-28 12:21:40.047249+00', NULL, 2, 6, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (11, '2022-05-28 12:21:40.063728+00', '2022-05-28 12:21:40.063728+00', NULL, 2, 6, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (12, '2022-05-28 12:21:40.07987+00', '2022-05-28 12:21:40.07987+00', NULL, 2, 1, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (13, '2022-05-28 12:21:40.095575+00', '2022-05-28 12:21:40.095575+00', NULL, 1, 1, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (14, '2022-05-28 12:21:40.111265+00', '2022-05-28 12:21:40.111265+00', NULL, 1, 3, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (15, '2022-05-28 12:21:40.128017+00', '2022-05-28 12:21:40.128017+00', NULL, 1, 6, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (16, '2022-05-28 12:21:40.142841+00', '2022-05-28 12:21:40.142841+00', NULL, 2, 6, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (17, '2022-05-28 12:21:40.158182+00', '2022-05-28 12:21:40.158182+00', NULL, 1, 1, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (18, '2022-05-28 12:21:40.173265+00', '2022-05-28 12:21:40.173265+00', NULL, 2, 1, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (19, '2022-05-28 12:21:40.188682+00', '2022-05-28 12:21:40.188682+00', NULL, 5, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (20, '2022-05-28 12:21:40.20312+00', '2022-05-28 12:21:40.20312+00', NULL, 5, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (21, '2022-05-28 12:21:40.218386+00', '2022-05-28 12:21:40.218386+00', NULL, 5, 3, 2, 1, 16);
INSERT INTO "course_schedules" VALUES (22, '2022-05-28 12:21:40.233192+00', '2022-05-28 12:21:40.233192+00', NULL, 5, 5, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (23, '2022-05-28 12:21:40.25155+00', '2022-05-28 12:21:40.25155+00', NULL, 4, 5, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (24, '2022-05-28 12:21:40.266554+00', '2022-05-28 12:21:40.266554+00', NULL, 3, 1, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (25, '2022-05-28 12:21:40.281987+00', '2022-05-28 12:21:40.281987+00', NULL, 3, 6, 5, 1, 16);
INSERT INTO "course_schedules" VALUES (26, '2022-05-28 12:21:40.296852+00', '2022-05-28 12:21:40.296852+00', NULL, 3, 6, 5, 1, 16);
INSERT INTO "course_schedules" VALUES (27, '2022-05-28 12:21:40.312837+00', '2022-05-28 12:21:40.312837+00', NULL, 4, 6, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (28, '2022-05-28 12:21:40.327963+00', '2022-05-28 12:21:40.327963+00', NULL, 4, 6, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (29, '2022-05-28 12:21:40.343606+00', '2022-05-28 12:21:40.343606+00', NULL, 4, 11, 3, 1, 16);
INSERT INTO "course_schedules" VALUES (30, '2022-05-28 12:21:40.358157+00', '2022-05-28 12:21:40.358157+00', NULL, 4, 11, 3, 1, 16);

-- ----------------------------
-- Table structure for course_specific_course_schedule
-- ----------------------------
DROP TABLE IF EXISTS "course_specific_course_schedule";
CREATE TABLE "course_specific_course_schedule" (
  "course_specific_id" int8 NOT NULL,
  "course_schedule_id" int8 NOT NULL
)
;

-- ----------------------------
-- Records of course_specific_course_schedule
-- ----------------------------
INSERT INTO "course_specific_course_schedule" VALUES (1, 1);
INSERT INTO "course_specific_course_schedule" VALUES (1, 2);
INSERT INTO "course_specific_course_schedule" VALUES (2, 3);
INSERT INTO "course_specific_course_schedule" VALUES (2, 4);
INSERT INTO "course_specific_course_schedule" VALUES (3, 5);
INSERT INTO "course_specific_course_schedule" VALUES (3, 6);
INSERT INTO "course_specific_course_schedule" VALUES (4, 7);
INSERT INTO "course_specific_course_schedule" VALUES (4, 8);
INSERT INTO "course_specific_course_schedule" VALUES (5, 9);
INSERT INTO "course_specific_course_schedule" VALUES (6, 10);
INSERT INTO "course_specific_course_schedule" VALUES (7, 11);
INSERT INTO "course_specific_course_schedule" VALUES (8, 12);
INSERT INTO "course_specific_course_schedule" VALUES (9, 13);
INSERT INTO "course_specific_course_schedule" VALUES (10, 14);
INSERT INTO "course_specific_course_schedule" VALUES (11, 15);
INSERT INTO "course_specific_course_schedule" VALUES (12, 16);
INSERT INTO "course_specific_course_schedule" VALUES (13, 17);
INSERT INTO "course_specific_course_schedule" VALUES (14, 18);
INSERT INTO "course_specific_course_schedule" VALUES (15, 19);
INSERT INTO "course_specific_course_schedule" VALUES (16, 20);
INSERT INTO "course_specific_course_schedule" VALUES (17, 21);
INSERT INTO "course_specific_course_schedule" VALUES (18, 22);
INSERT INTO "course_specific_course_schedule" VALUES (19, 23);
INSERT INTO "course_specific_course_schedule" VALUES (20, 24);
INSERT INTO "course_specific_course_schedule" VALUES (21, 25);
INSERT INTO "course_specific_course_schedule" VALUES (22, 26);
INSERT INTO "course_specific_course_schedule" VALUES (23, 27);
INSERT INTO "course_specific_course_schedule" VALUES (24, 28);
INSERT INTO "course_specific_course_schedule" VALUES (25, 29);
INSERT INTO "course_specific_course_schedule" VALUES (26, 30);

-- ----------------------------
-- Table structure for course_specifics
-- ----------------------------
DROP TABLE IF EXISTS "course_specifics";
CREATE TABLE "course_specifics" (
  "id" int8 NOT NULL DEFAULT nextval('course_specifics_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "course_common_id" int8 NOT NULL,
  "teacher_id" int8 NOT NULL,
  "location" text COLLATE "pg_catalog"."default",
  "quota" int8,
  "quota_used" int8,
  "semester_id" int8
)
;

-- ----------------------------
-- Records of course_specifics
-- ----------------------------
INSERT INTO "course_specifics" VALUES (1, '2022-05-28 12:21:39.944017+00', '2022-05-28 12:21:39.944017+00', NULL, 1, 2, 'A105', 80, 0, 1);
INSERT INTO "course_specifics" VALUES (2, '2022-05-28 12:21:39.964951+00', '2022-05-28 12:21:39.964951+00', NULL, 1, 3, 'A106', 80, 0, 1);
INSERT INTO "course_specifics" VALUES (3, '2022-05-28 12:21:39.984232+00', '2022-05-28 12:21:39.984232+00', NULL, 1, 3, 'A106', 80, 0, 1);
INSERT INTO "course_specifics" VALUES (4, '2022-05-28 12:21:40.00408+00', '2022-05-28 12:21:40.00408+00', NULL, 2, 2, 'A105', 80, 0, 1);
INSERT INTO "course_specifics" VALUES (5, '2022-05-28 12:21:40.024572+00', '2022-05-28 12:21:40.024572+00', NULL, 2, 3, 'A105', 80, 0, 1);
INSERT INTO "course_specifics" VALUES (6, '2022-05-28 12:21:40.045185+00', '2022-05-28 12:21:40.045185+00', NULL, 3, 2, 'A105', 80, 0, 1);
INSERT INTO "course_specifics" VALUES (7, '2022-05-28 12:21:40.062662+00', '2022-05-28 12:21:40.062662+00', NULL, 4, 4, 'B105', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (8, '2022-05-28 12:21:40.079355+00', '2022-05-28 12:21:40.079355+00', NULL, 4, 5, 'B105', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (10, '2022-05-28 12:21:40.110757+00', '2022-05-28 12:21:40.110757+00', NULL, 5, 4, 'B104', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (12, '2022-05-28 12:21:40.14232+00', '2022-05-28 12:21:40.14232+00', NULL, 6, 7, 'A203', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (13, '2022-05-28 12:21:40.157673+00', '2022-05-28 12:21:40.157673+00', NULL, 7, 6, 'A204', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (14, '2022-05-28 12:21:40.172749+00', '2022-05-28 12:21:40.172749+00', NULL, 7, 7, 'A203', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (15, '2022-05-28 12:21:40.188075+00', '2022-05-28 12:21:40.188075+00', NULL, 8, 8, 'A207', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (16, '2022-05-28 12:21:40.202612+00', '2022-05-28 12:21:40.202612+00', NULL, 9, 9, 'A208', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (18, '2022-05-28 12:21:40.232675+00', '2022-05-28 12:21:40.232675+00', NULL, 11, 9, 'A208', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (19, '2022-05-28 12:21:40.249591+00', '2022-05-28 12:21:40.249591+00', NULL, 11, 10, 'A208', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (20, '2022-05-28 12:21:40.266048+00', '2022-05-28 12:21:40.266048+00', NULL, 10, 10, 'A208', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (21, '2022-05-28 12:21:40.281471+00', '2022-05-28 12:21:40.281471+00', NULL, 13, 11, 'A310', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (22, '2022-05-28 12:21:40.296333+00', '2022-05-28 12:21:40.296333+00', NULL, 13, 12, 'A311', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (23, '2022-05-28 12:21:40.31233+00', '2022-05-28 12:21:40.31233+00', NULL, 14, 13, 'A302', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (24, '2022-05-28 12:21:40.327456+00', '2022-05-28 12:21:40.327456+00', NULL, 14, 14, 'A303', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (25, '2022-05-28 12:21:40.34309+00', '2022-05-28 12:21:40.34309+00', NULL, 15, 13, 'A302', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (26, '2022-05-28 12:21:40.357652+00', '2022-05-28 12:21:40.357652+00', NULL, 15, 14, 'A303', 40, 0, 1);
INSERT INTO "course_specifics" VALUES (9, '2022-05-28 12:21:40.095071+00', '2022-05-28 13:59:53.440809+00', NULL, 5, 5, 'B106', 40, 1, 1);
INSERT INTO "course_specifics" VALUES (17, '2022-05-28 12:21:40.217879+00', '2022-05-28 14:00:01.56122+00', NULL, 9, 10, 'A209', 40, 1, 1);
INSERT INTO "course_specifics" VALUES (11, '2022-05-28 12:21:40.12751+00', '2022-05-28 14:02:59.503961+00', NULL, 6, 6, 'A204', 40, 1, 1);

-- ----------------------------
-- Table structure for semesters
-- ----------------------------
DROP TABLE IF EXISTS "semesters";
CREATE TABLE "semesters" (
  "id" int8 NOT NULL DEFAULT nextval('semesters_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "year" int8,
  "term" int8
)
;

-- ----------------------------
-- Records of semesters
-- ----------------------------
INSERT INTO "semesters" VALUES (1, '2022-05-28 12:21:39.919714+00', '2022-05-28 12:21:39.919714+00', NULL, 2022, 1);
INSERT INTO "semesters" VALUES (2, '2022-05-28 14:50:59.796769+00', '2022-05-28 14:50:59.796769+00', NULL, 2022, 2);

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS "settings";
CREATE TABLE "settings" (
  "id" int8 NOT NULL DEFAULT nextval('settings_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "name" text COLLATE "pg_catalog"."default",
  "value" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO "settings" VALUES (1, '2022-05-28 12:21:39.927934+00', '2022-05-28 12:21:39.927934+00', NULL, 'current_semester', '1');
INSERT INTO "settings" VALUES (3, '2022-05-28 13:48:30.367317+00', '2022-05-28 14:36:51.698492+00', NULL, 'enable_register', 'true');

-- ----------------------------
-- Table structure for student_courses
-- ----------------------------
DROP TABLE IF EXISTS "student_courses";
CREATE TABLE "student_courses" (
  "id" int8 NOT NULL DEFAULT nextval('student_courses_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "student_id" int8,
  "course_id" int8,
  "course_status" int8,
  "score" numeric
)
;

-- ----------------------------
-- Records of student_courses
-- ----------------------------
INSERT INTO "student_courses" VALUES (1, '2022-05-28 13:59:53.395208+00', '2022-05-28 13:59:53.395208+00', NULL, 201988888888, 9, 0, 0);
INSERT INTO "student_courses" VALUES (2, '2022-05-28 14:00:01.558714+00', '2022-05-28 14:00:01.558714+00', NULL, 201988888888, 17, 0, 0);
INSERT INTO "student_courses" VALUES (3, '2022-05-28 14:02:59.50154+00', '2022-05-28 14:02:59.50154+00', NULL, 201988888888, 11, 0, 0);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "id" int8 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "created_at" timestamptz(6),
  "updated_at" timestamptz(6),
  "deleted_at" timestamptz(6),
  "username" text COLLATE "pg_catalog"."default" NOT NULL,
  "real_name" text COLLATE "pg_catalog"."default" NOT NULL,
  "password" text COLLATE "pg_catalog"."default" NOT NULL,
  "role" int8 NOT NULL,
  "college_id" int8 NOT NULL,
  "entrance_year" int8
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO "users" VALUES (2, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'MathTeacher1', '数学教师1', '$2a$12$b2epU1VVVzUvVryGN1K98uJf9kw6skv8syAM6CMAqoMJ.Gee5Wdeq', 100, 2, 2019);
INSERT INTO "users" VALUES (3, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'MathTeacher2', '数学教师2', '$2a$12$.5DOYRYhihqB1w3UGq0nJOZOUYwl82loyHxhZH1OgDrsc.TVTePZW', 100, 2, 2019);
INSERT INTO "users" VALUES (4, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'PhysicalTeacher1', '物理教师1', '$2a$12$hTOU4ob3BKwpSG9Cy1Ha5..XPVd1F7awSuifVc3rmFF6Vn1JzmGrW', 100, 4, 2019);
INSERT INTO "users" VALUES (5, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'PhysicalTeacher2', '物理教师2', '$2a$12$v5H9SOe2mfiig/9l8SCeXeqfBelcmpTOzK./..e7wfFrZJj4XFkwO', 100, 4, 2019);
INSERT INTO "users" VALUES (6, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'ChemistryTeacher1', '化学教师1', '$2a$12$lvYXj3eSesGLrW2T3k/Y1u/NoeJdItG1Q4.R9GyJgpwhfjbsuL3nW', 100, 6, 2019);
INSERT INTO "users" VALUES (7, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'ChemistryTeacher2', '化学教师2', '$2a$12$qi3f9fgQNOb1BhXTrttGreW6ITqco2tKoVqzFU.vEx7vuFw1Pb9SO', 100, 6, 2019);
INSERT INTO "users" VALUES (8, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'BiologyTeacher1', '生物教师1', '$2a$12$pq02dP7ojOYIYTX8oT3wpecRfl5L9CDmfve440fnlmGyVZ1ny95xC', 100, 8, 2019);
INSERT INTO "users" VALUES (9, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'ComputerScienceTeacher1', '计算机科学教师1', '$2a$12$h.cHLe2Gxz49k1SppOTMcea04Uu.epw9AHoDzl98NnrSdzLGc0AQy', 100, 10, 2019);
INSERT INTO "users" VALUES (10, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'ComputerScienceTeacher2', '计算机科学教师2', '$2a$12$.f0T6qLMjQnbO0h9ilFk8OHa2MLPqrPtdA4rDaXmwsobhIsK8qRrm', 100, 10, 2019);
INSERT INTO "users" VALUES (11, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'SoftwareEngineeringTeacher1', '软件工程教师1', '$2a$12$1k0/mV16OuB7xlxaw6ljAe9LPGgUUba.1ne8apyPqBV.ReKxr7/gC', 100, 12, 2019);
INSERT INTO "users" VALUES (12, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'SoftwareEngineeringTeacher2', '软件工程教师2', '$2a$12$fhnTV8.IlVhmbSXg2iAofu4I0bfJnKdgfmlASiiCFxSehM0rKQ0Om', 100, 12, 2019);
INSERT INTO "users" VALUES (13, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'ElectronicEngineeringTeacher1', '电子工程教师1', '$2a$12$R1al121fKuFNvjTzPSTWH.s7vhq7/d9mE56J.bmGCebwfLYpzTFOq', 100, 14, 2019);
INSERT INTO "users" VALUES (14, '2022-05-28 12:21:39.896311+00', '2022-05-28 12:21:39.896311+00', NULL, 'ElectronicEngineeringTeacher2', '电子工程教师2', '$2a$12$dQiMeUm48ZhzXrE3JTlMzu5.WbTSg54t2pVRwKfcxAnhdtYsKNaxG', 100, 14, 2019);
INSERT INTO "users" VALUES (1, '2022-05-28 12:21:31.053739+00', '2022-05-28 13:45:28.602996+00', NULL, 'admin', '关丽媛', '$2a$12$PMlp28vEsizBuUjnwC.F3uPBLhkRDzH3Na65RSrzGIBxE4G0eLMY6', 200, 1, 2000);
INSERT INTO "users" VALUES (201988888888, '2022-05-28 13:59:44.037127+00', '2022-05-28 14:02:26.49259+00', NULL, 'SalHe', 'SalHeLi', '$2a$12$g7pxC/OvYNvfiOsKa8BLbedT/T7BEyHqBDSCRY8jgiTp5AuZAQfp2', 0, 10, 2019);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "colleges_id_seq"
OWNED BY "colleges"."id";
SELECT setval('"colleges_id_seq"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "course_commons_id_seq"
OWNED BY "course_commons"."id";
SELECT setval('"course_commons_id_seq"', 16, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "course_schedules_id_seq"
OWNED BY "course_schedules"."id";
SELECT setval('"course_schedules_id_seq"', 31, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "course_specifics_id_seq"
OWNED BY "course_specifics"."id";
SELECT setval('"course_specifics_id_seq"', 27, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "semesters_id_seq"
OWNED BY "semesters"."id";
SELECT setval('"semesters_id_seq"', 3, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "settings_id_seq"
OWNED BY "settings"."id";
SELECT setval('"settings_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "student_courses_id_seq"
OWNED BY "student_courses"."id";
SELECT setval('"student_courses_id_seq"', 4, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "users_id_seq"
OWNED BY "users"."id";
SELECT setval('"users_id_seq"', 15, true);

-- ----------------------------
-- Indexes structure for table colleges
-- ----------------------------
CREATE INDEX "idx_colleges_deleted_at" ON "colleges" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table colleges
-- ----------------------------
ALTER TABLE "colleges" ADD CONSTRAINT "colleges_name_key" UNIQUE ("name");

-- ----------------------------
-- Primary Key structure for table colleges
-- ----------------------------
ALTER TABLE "colleges" ADD CONSTRAINT "colleges_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table course_commons
-- ----------------------------
CREATE INDEX "idx_course_commons_deleted_at" ON "course_commons" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table course_commons
-- ----------------------------
ALTER TABLE "course_commons" ADD CONSTRAINT "course_commons_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table course_schedules
-- ----------------------------
CREATE INDEX "idx_course_schedules_deleted_at" ON "course_schedules" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table course_schedules
-- ----------------------------
ALTER TABLE "course_schedules" ADD CONSTRAINT "course_schedules_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table course_specific_course_schedule
-- ----------------------------
ALTER TABLE "course_specific_course_schedule" ADD CONSTRAINT "course_specific_course_schedule_pkey" PRIMARY KEY ("course_specific_id", "course_schedule_id");

-- ----------------------------
-- Indexes structure for table course_specifics
-- ----------------------------
CREATE INDEX "idx_course_specifics_deleted_at" ON "course_specifics" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table course_specifics
-- ----------------------------
ALTER TABLE "course_specifics" ADD CONSTRAINT "course_specifics_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table semesters
-- ----------------------------
CREATE INDEX "idx_semesters_deleted_at" ON "semesters" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table semesters
-- ----------------------------
ALTER TABLE "semesters" ADD CONSTRAINT "semesters_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table settings
-- ----------------------------
CREATE INDEX "idx_settings_deleted_at" ON "settings" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table settings
-- ----------------------------
ALTER TABLE "settings" ADD CONSTRAINT "settings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table student_courses
-- ----------------------------
CREATE INDEX "idx_student_courses_deleted_at" ON "student_courses" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table student_courses
-- ----------------------------
ALTER TABLE "student_courses" ADD CONSTRAINT "student_courses_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table users
-- ----------------------------
CREATE INDEX "idx_users_deleted_at" ON "users" USING btree (
  "deleted_at" "pg_catalog"."timestamptz_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "users" ADD CONSTRAINT "users_username_key" UNIQUE ("username");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table course_commons
-- ----------------------------
ALTER TABLE "course_commons" ADD CONSTRAINT "fk_course_commons_college" FOREIGN KEY ("college_id") REFERENCES "colleges" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table course_specific_course_schedule
-- ----------------------------
ALTER TABLE "course_specific_course_schedule" ADD CONSTRAINT "fk_course_specific_course_schedule_course_schedule" FOREIGN KEY ("course_schedule_id") REFERENCES "course_schedules" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "course_specific_course_schedule" ADD CONSTRAINT "fk_course_specific_course_schedule_course_specific" FOREIGN KEY ("course_specific_id") REFERENCES "course_specifics" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table course_specifics
-- ----------------------------
ALTER TABLE "course_specifics" ADD CONSTRAINT "fk_course_commons_course_specifics" FOREIGN KEY ("course_common_id") REFERENCES "course_commons" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "course_specifics" ADD CONSTRAINT "fk_course_specifics_semester" FOREIGN KEY ("semester_id") REFERENCES "semesters" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "course_specifics" ADD CONSTRAINT "fk_course_specifics_teacher" FOREIGN KEY ("teacher_id") REFERENCES "users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table student_courses
-- ----------------------------
ALTER TABLE "student_courses" ADD CONSTRAINT "fk_student_courses_course" FOREIGN KEY ("course_id") REFERENCES "course_specifics" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "student_courses" ADD CONSTRAINT "fk_student_courses_student" FOREIGN KEY ("student_id") REFERENCES "users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table users
-- ----------------------------
ALTER TABLE "users" ADD CONSTRAINT "fk_users_college" FOREIGN KEY ("college_id") REFERENCES "colleges" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
