# Olympian API

## Setup

## Endpoints

### Olympians
#### Request
`/api/v1/olympians`
https://guarded-cove-30771.herokuapp.com/api/v1/olympians

####  Response
```
[
    {
        "id": 1,
        "name": "Andreea Aanei",
        "team": "Romania",
        "sex": "F",
        "age": 22,
        "weight": 125,
        "sport_id": 1,
        "medal_count": 0,
        "created_at": "2019-11-03T23:52:08.036Z",
        "updated_at": "2019-11-03T23:52:08.036Z"
    },
    {
        "id": 2,
        "name": "Nstor Abad Sanjun",
        "team": "Spain",
        "sex": "M",
        "age": 23,
        "weight": 64,
        "sport_id": 2,
        "medal_count": 0,
        "created_at": "2019-11-03T23:52:08.109Z",
        "updated_at": "2019-11-03T23:52:08.109Z"
    }
    ]

```
### Youngest Olympian
#### Request
`/api/v1/olympians?age=youngest`

https://guarded-cove-30771.herokuapp.com/api/v1/olympians?age=youngest

#### Response
```
{
    "id": 2194,
    "name": "Ana Iulia Dascl",
    "team": "Romania",
    "sex": "F",
    "age": 13,
    "weight": 60,
    "sport_id": 18,
    "medal_count": 0,
    "created_at": "2019-11-03T23:52:47.073Z",
    "updated_at": "2019-11-03T23:52:47.073Z"
}
```

### Oldest Olympian
#### Request
`/api/v1/olympians?age=oldest`

https://guarded-cove-30771.herokuapp.com/api/v1/olympians?age=oldest
#### Response
```
{
    "id": 1325,
    "name": "Julie Brougham",
    "team": "New Zealand",
    "sex": "F",
    "age": 62,
    "weight": 48,
    "sport_id": 8,
    "medal_count": 0,
    "created_at": "2019-11-03T23:52:30.890Z",
    "updated_at": "2019-11-03T23:52:30.890Z"
}
```
### Olympian Stats
#### Request
`/api/v1/olympian_stats`
https://guarded-cove-30771.herokuapp.com/api/v1/olympian_stats
#### Response

```
{
    "olympian_stats": {
        "total_competing_olympians": 2850,
        "average_weight": {
            "unit": "kg",
            "male_olympians": 78,
            "female_olympians": 61
        },
        "average_age": 26
    }
}
```
### Events
#### Request
`/api/v1/events`
https://guarded-cove-30771.herokuapp.com/api/v1/events
#### Response
```
{
    "Archery": [
        "Archery Women's Individual",
        "Archery Women's Team",
        "Archery Men's Individual",
        "Archery Men's Team"
    ],
    "Athletics": [
        "Athletics Men's 5,000 metres",
        "Athletics Men's 400 metres",
        "Athletics Men's 10,000 metres",
        "Athletics Women's 200 metres",
        "Athletics Men's Decathlon",
        "Athletics Men's Marathon",
        "Athletics Women's Shot Put",
        "Athletics Women's 400 metres",
        "Athletics Men's Shot Put",
        "Athletics Women's Marathon",
        "Athletics Men's 100 metres",
        "Athletics Women's 100 metres",
        "Athletics Women's 4 x 100 metres Relay",
        "Athletics Men's 200 metres",
        "Athletics Men's 4 x 100 metres Relay",
        "Athletics Men's High Jump",
        "Athletics Men's Triple Jump",
        "Athletics Women's Heptathlon",
        "Athletics Women's Javelin Throw",
        "Athletics Women's Pole Vault",
        "Athletics Women's 20 kilometres Walk",
        "Athletics Women's 3,000 metres Steeplechase",
        "Athletics Men's 3,000 metres Steeplechase",
        "Athletics Women's 800 metres",
        "Athletics Women's 1,500 metres",
        "Athletics Men's Discus Throw",
        "Athletics Men's 1,500 metres",
        "Athletics Men's 400 metres Hurdles",
        "Athletics Women's Long Jump",
        "Athletics Men's 110 metres Hurdles",
        "Athletics Women's 100 metres Hurdles",
        "Athletics Women's 5,000 metres",
        "Athletics Men's 4 x 400 metres Relay",
        "Athletics Men's Long Jump",
        "Athletics Men's 800 metres",
        "Athletics Women's High Jump",
        "Athletics Men's Javelin Throw",
        "Athletics Women's 4 x 400 metres Relay",
        "Athletics Women's 400 metres Hurdles",
        "Athletics Women's Discus Throw",
        "Athletics Men's Hammer Throw",
        "Athletics Women's 10,000 metres",
        "Athletics Men's 50 kilometres Walk",
        "Athletics Men's 20 kilometres Walk",
        "Athletics Men's Pole Vault",
        "Athletics Women's Triple Jump",
        "Athletics Women's Hammer Throw"
    ],
    "Badminton": [
        "Badminton Men's Singles",
        "Badminton Mixed Doubles",
        "Badminton Men's Doubles",
        "Badminton Women's Singles",
        "Badminton Women's Doubles"
    ],
    "Basketball": [
        "Basketball Men's Basketball",
        "Basketball Women's Basketball"
    ],
    "Beach Volleyball": [
        "Beach Volleyball Women's Beach Volleyball",
        "Beach Volleyball Men's Beach Volleyball"
    ]
  }
```
### Medalists

#### Request
`/api/v1/events/10/medalists`

https://guarded-cove-30771.herokuapp.com/api/v1/events/10/medalists
#### Response
```
{
    "Taekwondo Women's Flyweight": [
        {
            "Bronze": {
                "id": 5,
                "name": "Patimat Abakarova",
                "team": "Azerbaijan",
                "sex": "F",
                "age": 21,
                "weight": 49,
                "sport_id": 5,
                "medal_count": 1,
                "created_at": "2019-11-03T23:52:08.261Z",
                "updated_at": "2019-11-03T23:52:08.261Z"
            }
        },
        {
            "Silver": {
                "id": 1113,
                "name": "Tijana Bogdanovi",
                "team": "Serbia",
                "sex": "F",
                "age": 18,
                "weight": 52,
                "sport_id": 5,
                "medal_count": 1,
                "created_at": "2019-11-03T23:52:27.414Z",
                "updated_at": "2019-11-03T23:52:27.414Z"
            }
        }
    ]
}
```


## Schema
