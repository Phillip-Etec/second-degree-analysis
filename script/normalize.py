
# weapon
# victim ethnicity
# perpretator ethnicity
# state
# crime_type
# agency_type
# relationship
def get_values(atribute, cursor, quantity):
    query = f"""select distinct {atribute} from assassinatos
                order by {atribute};"""
    
    cursor.execute(query)
    if(quantity < 1):
        temp = cursor.fetchall()
    elif(quantity == 1):
        temp = cursor.fetchone()
    else:
        temp = cursor.fetchmany(quantity)
    data = []
    for i in temp:
        data.append(i[0])

    return tuple(data)

def get_dict(atribute, cursor, quantity):
    query = f"""select distinct {atribute} from assassinatos
                order by {atribute};"""
    
    cursor.execute(query)
    if(quantity < 1):
        temp = cursor.fetchall()
    elif(quantity == 1):
        temp = cursor.fetchone()
    else:
        temp = cursor.fetchmany(quantity)
    data = []
    for i in temp:
        data.append(i[0])

    return tuple(data)

def full_get_cities(cursor, quantity):
    temp = get_values("state", cursor, -1)
    estados = dict()
    i = 1
    for item in temp:
        estados[item] = str(i)
        i = i+1
    
    atributes = "city, state"
    query = f"""SELECT DISTINCT {atributes} FROM assassinatos
                ORDER BY {atributes};"""
    
    cursor.execute(query)
    if(quantity < 1):
        temp = cursor.fetchall()
    elif(quantity == 1):
        temp = cursor.fetchone()
    else:
        temp = cursor.fetchmany(quantity)
    # print(temp[0][1])
    data = []
    # print(estados)
    for i in temp:
        # print(i[1])
        _id = estados[i[1]]
        data.append(tuple( (i[0], _id) ))

    return tuple(data)

def full_get_agencies(cursor, quantity):
    temp = get_values("agency_type", cursor, -1)
    tipos = dict()
    i = 1
    for item in temp:
        tipos[item] = str(i)
        i = i+1
    
    atributes = "agency_code, agency_name, agency_type"
    query = f"""SELECT DISTINCT {atributes} FROM assassinatos
                ORDER BY {atributes};"""
    
    cursor.execute(query)
    if(quantity < 1):
        temp = cursor.fetchall()
    elif(quantity == 1):
        temp = cursor.fetchone()
    else:
        temp = cursor.fetchmany(quantity)
    # print(temp)
    data = []
    # print(tipos)
    for i in temp:
        # print(i[1])
        _id = tipos[i[2]]
        data.append(tuple((i[0], i[1], _id) ))

    return tuple(data)
