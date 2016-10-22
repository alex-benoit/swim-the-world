      function initMap(swimRouteCoordinates, perc) {

        var map = new google.maps.Map(document.getElementById('map'), {
          //zoom: 10,
          //center: swimRouteCoordinates[0],
          //mapTypeId: 'terrain'
        });

        var bounds = new google.maps.LatLngBounds();
        for (var i = 0; i < swimRouteCoordinates.length; i++)
        {
            var pt = new google.maps.LatLng(swimRouteCoordinates[i].lat, swimRouteCoordinates[i].lng);
            bounds.extend(pt);
        }
        map.fitBounds(bounds);

        var swimRoute = new google.maps.Polyline({
          path: swimRouteCoordinates,
          geodesic: true, 
          strokeColor: '#0901AF',
          strokeOpacity: 0.7,
          strokeWeight: 4,
          zIndex: 1
        });

        swimRoute.setMap(map);

        if (perc > 0)
        {
          var swimCompleteCoordinates = createCompleteCoordinates(swimRouteCoordinates, perc);

          var swimComplete = new google.maps.Polyline({
            path: swimCompleteCoordinates,
            geodesic: true,
            strokeColor: '#CC010F',
            strokeOpacity: 1.0,
            strokeWeight: 4,
            zIndex: 2
          });

          swimComplete.setMap(map);
        }
      }

      function createCompleteCoordinates(route, perc)
      {
        var completedCoords = [];
        completedCoords.push(route[0]);
        var lastAddedCompletedDist = 0;

        var totalDist = calc2dDistance(route);
        var completedDist = totalDist * perc;

        var curCoordIndex = 1;
        do
        {
          var nextCoord = route[curCoordIndex];
          var testCoords = completedCoords.slice();
          testCoords.push(nextCoord);
          
          var testDistance = calc2dDistance(testCoords);
          if (testDistance > completedDist)
          {
            var curAddedSegmentDist = get2dDistance(route[curCoordIndex - 1], route[curCoordIndex]);
            var outstandingDistPerc = (completedDist - lastAddedCompletedDist) / curAddedSegmentDist;
            completedCoords.push(calcNext2dCoord(route[curCoordIndex - 1], route[curCoordIndex], outstandingDistPerc));
            break;
          }
          else if (testDistance == completedDist)
          {
            break;
          }
          else
          {
            completedCoords.push(route[curCoordIndex]);
            lastAddedCompletedDist = calc2dDistance(completedCoords);
          }
          curCoordIndex++;
        }
        while (true)

        return completedCoords;
      }

      function calcNext2dCoord(startCoord, futureCoord, perc)
      {
        var nextLatDiff = (futureCoord.lat - startCoord.lat) * perc;
        var nextLngDiff = (futureCoord.lng - startCoord.lng) * perc;

        return {lat: startCoord.lat + nextLatDiff, lng: startCoord.lng + nextLngDiff};
      }

      function calcDistance(coords) {
        var total = 0;
        for (var i = 0; i < coords.length - 1; i++)
        {
          total += getDistance(coords[i], coords[i+1]);
        }
        return total;
      }

      function calc2dDistance(coords) {
        var total = 0;
        for (var i = 0; i < coords.length - 1; i++)
        {
          total += get2dDistance(coords[i], coords[i+1]);
        }
        return total;
      }

      function rad(x) {
        return x * Math.PI / 180;
      };

      function get2dDistance(p1, p2) {
        var d = Math.sqrt( (p1.lat-p2.lat)*(p1.lat-p2.lat) + (p1.lng-p2.lng)*(p1.lng-p2.lng) );

        return d;
      }

      function getDistance(p1, p2) {
        var R = 6378137; // Earth?s mean radius in meter
        var dLat = rad(p2.lat - p1.lat);
        var dLong = rad(p2.lng - p1.lng);
        var a = Math.sin(dLat / 2) * Math.sin(dLat / 2) +
          Math.cos(rad(p1.lat)) * Math.cos(rad(p2.lat)) *
          Math.sin(dLong / 2) * Math.sin(dLong / 2);
        var c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        var d = R * c;
        return d; // returns the distance in meter
      };