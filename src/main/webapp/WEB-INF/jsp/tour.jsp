<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<jsp:include page="header.jsp"/>
<html lang="ru">
<body>

<form action="selectedTours.jsp">
  <h1>Select criteria for tour search!</h1>

    <label for="day">Departure day</label>
    <input type="date" id="day" name="day">

    <h4>Number of nights</h4>
    <input type="number" min="7" max="21" name="nights" value="14">

<form>
  <select>
    <option selected>Select departure city</option>
    <option value="1">Minsk</option>
    <option value="2">Kiev</option>
    <option value="3">Vilnius</option>
  </select>

  <select>
    <option selected>Select arrival city</option>
    <option value="1">Dubai</option>
    <option value="2">Budva</option>
    <option value="3">Alanya</option>
  </select>
</form>

  <h4>Transport</h4>

    <input name="radio" type="radio" id="plane" checked>
    <label for="plane">Plane</label><br>
    <input name="radio" type="radio" id="train">
    <label for="train">Train</label><br>
    <input name="radio" type="radio"id="bus">
    <label for="bus">Bus</label>

  <h4>Food</h4>

    <input name="radio" type="radio" id="1" checked>
    <label for="1">All inclusive</label><br>
    <input name="radio" type="radio" id="2">
    <label for="2">Breakfast</label><br>
    <input name="radio" type="radio" id="3">
    <label for="3">Without food</label>

<form>
  <h4>Amount of adults</h4>
  <input type="number" min="1" name="adults" value="1">


  <h4>Amount of children</h4>
  <input type="number" name="children" value="0">
</form>

  <input type="submit" value="Filter">
</form>
</body>
</html>