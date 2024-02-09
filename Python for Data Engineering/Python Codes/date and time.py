from datetime import datetime,timedelta

#Current Date and Time

current_datetime = datetime.now()
print(current_datetime)

#Formatting Dates

current_datetime = datetime.now()
formatted_date = current_datetime.strftime("%Y-%m-%d %H:%M:%S")
print(formatted_date)


current_datetime = datetime.now()
one_week_ago = current_datetime - timedelta(weeks=1)
print(one_week_ago)