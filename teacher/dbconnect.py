import pymysql.cursors
config = {
'host':'127.0.0.1',
'port':3306,
'user':'root',
'password':'password',
#'db':'musicschool',
#'charset':'utf8mb4',
'cursorclass':pymysql.cursors.DictCursor,
}

# Connect to the database
connection = pymysql.connect(**config)
