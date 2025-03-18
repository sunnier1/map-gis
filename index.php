<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Before After - Search Location</title>
    <link rel="stylesheet" href="style.css">
    <style>
        .container {
            width: 100%;
            margin: 0 auto;
            text-align: center;
        }
        .search-bar {
            margin-bottom: 20px;
        }
        .search-bar input {
            padding: 10px;
            font-size: 16px;
            border: 1px solid #ccc;
            border-radius: 14px;
            width: 60%;
        }
        .search-bar button {
            padding: 10px 20px;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .before-after {
            margin-top: 80px;
            display: flex;
            gap: 30px;
            justify-content: space-between;
        }
        .before, .after {
            width: 60%;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .after h2 {
            margin-top: 100px;
            width: 60%;
            margin-left: 20%;
            color: rgb(159, 159, 159);
        }
        .top-bar {
            width: 100%;
            height: 50px;
            background-color: #4CAF50;
            display: flex;
            top: 0;
            left: 0;
            position: absolute;
            align-items: center;
            color: #fff;
            justify-content: center;
        }
        #beforeMap {
            height: 820px;
        }
        .criteria {
            border-radius: 20px;
            margin-top: 20px;
            display: block;
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.8);
        }
        .info {
            padding: 30px 30px;
            text-align: justify;
        }
        h1 {
            justify-content: center;
        }
    </style>
</head>
<body>
    <div class="top-bar"><h2>My Project</h2></div>
    <div class="container">
        <div class="before-after">
            <div class="before">
                <div id="beforeMap"></div>
            </div>
            <div class="after">
                <div class="search-bar">
                    <input type="text" id="search-input" placeholder="Search City...">
                    <button type="button" id="search-btn">Search</button>
                </div>
                <h2 id="search-message">Enter the city you want to find the best location for residence</h2>
                <div class="criteria" id="criteria"></div>
            </div>
        </div>
    </div>
<script>
    let map;
    let geocoder;
    let locations = [];

    function initMap() {
        map = new google.maps.Map(document.getElementById('beforeMap'), {
            center: {lat: 0.5439753618208772,  lng:  115.36939192279345},
            zoom: 7,
            mapId: 'DEMO_MAP_ID',
        });

        fetch('get_locations.php')
            .then(response => response.json())
            .then(data => {
                locations = data;
                locations.forEach(location => {
                    const marker = new google.maps.Marker({
                        position: {lat: parseFloat(location.latitude), lng: parseFloat(location.longitude)},
                        map: map,
                        title: location.city
                    });

                    marker.addListener('click', function() {
                        console.log('Marker clicked at:', marker.getPosition().toString());
                        addSupermarketMarker(marker, location);
                    });
                });
            })
            .catch(error => {
                console.error('Error fetching locations:', error);
            });

        geocoder = new google.maps.Geocoder();
    }

    function geocodeAddress(geocoder, resultMap) {
        const address = document.getElementById('search-input').value.trim().toLowerCase();
        const matchedLocation = locations.find(location => location.city.toLowerCase() === address);
        const searchMessageElement = document.getElementById('search-message');
        const criteriaElement = document.getElementById('criteria');

        if (matchedLocation) {
            const location = { lat: parseFloat(matchedLocation.latitude), lng: parseFloat(matchedLocation.longitude) };
            resultMap.setCenter(location);
            resultMap.setZoom(15);
            new google.maps.Marker({
                map: resultMap,
                position: location
            });
            addSupermarketMarker(null, matchedLocation);
        } else {
            searchMessageElement.textContent = "No Result";
            criteriaElement.innerHTML = '';
        }
    }

    function addSupermarketMarker(marker, location) {
        const criteriaElement = document.getElementById('criteria');
        const searchMessageElement = document.getElementById('search-message');
        criteriaElement.innerHTML = `
            <h1>${location.province}</h1>
            <h3>${location.city}</h3>
            <h4>${location.address}</h4>
            <p>Longitude: ${location.longitude}</p>
            <p>Latitude: ${location.latitude}</p>
            <p class="info">Analysis Criteria: ${location.description}</p>
        `;
        searchMessageElement.style.display = 'none';
    }

    document.getElementById('search-btn').addEventListener('click', function() {
        geocodeAddress(geocoder, map);
    });

    document.getElementById('search-input').addEventListener('keyup', function(event) {
        if (event.key === "Enter") { 
            geocodeAddress(geocoder, map);
        }
    });

</script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyD7QAE6HwgC5efAQkc327FMlFhWO7Jlark&callback=initMap"></script>
</body>
</html>
