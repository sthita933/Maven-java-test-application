<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Prime Video UI</title>

<style>
body {
    margin: 0;
    font-family: Arial, sans-serif;
    background-color: #0f171e;
    color: white;
}

/* Navbar */
.navbar {
    display: flex;
    justify-content: space-between;
    align-items: center;
    padding: 15px 30px;
    background-color: #0f171e;
}

.navbar h2 {
    color: #00a8e1;
}

.nav-links a {
    margin: 0 15px;
    color: white;
    text-decoration: none;
}

.nav-links a:hover {
    color: #00a8e1;
}

/* Hero Banner */
.banner {
    height: 400px;
    background: url('images/banner.jpg') no-repeat center center/cover;
    display: flex;
    flex-direction: column;
    justify-content: center;
    padding-left: 50px;
}

.banner h1 {
    font-size: 50px;
}

.banner button {
    padding: 10px 20px;
    margin-top: 15px;
    background-color: #00a8e1;
    border: none;
    color: white;
    cursor: pointer;
}

/* Movie Row */
.row {
    margin: 20px;
}

.row h3 {
    margin-bottom: 10px;
}

.row-posters {
    display: flex;
    overflow-x: scroll;
}

.row-posters img {
    width: 200px;
    margin-right: 10px;
    transition: transform 0.3s;
}

.row-posters img:hover {
    transform: scale(1.1);
}

/* Hide scrollbar */
.row-posters::-webkit-scrollbar {
    display: none;
}
</style>

</head>
<body>

<!-- Navbar -->
<div class="navbar">
    <h2>Prime Video</h2>
    <div class="nav-links">
        <a href="#">Home</a>
        <a href="#">TV Shows</a>
        <a href="#">Movies</a>
        <a href="#">My Stuff</a>
    </div>
</div>

<!-- Banner -->
<div class="banner">
    <h1>Welcome to Prime</h1>
    <p>Watch the latest movies, shows and more</p>
    <button>Watch Now</button>
</div>

<!-- Movie Rows -->
<div class="row">
    <h3>Trending Now</h3>
    <div class="row-posters">
        <img src="images/movie1.jpg">
        <img src="images/movie2.jpg">
        <img src="images/movie3.jpg">
        <img src="images/movie4.jpg">
    </div>
</div>

<div class="row">
    <h3>Top Rated</h3>
    <div class="row-posters">
        <img src="images/movie5.jpg">
        <img src="images/movie6.jpg">
        <img src="images/movie7.jpg">
        <img src="images/movie8.jpg">
    </div>
</div>

<div class="row">
    <h3>Recommended</h3>
    <div class="row-posters">
        <img src="images/movie9.jpg">
        <img src="images/movie10.jpg">
        <img src="images/movie11.jpg">
        <img src="images/movie12.jpg">
    </div>
</div>

</body>
</html>
