<%@ page import="java.util.ArrayList"%>
<%@ page import="com.MovieApp.MovieApp.Entity.Movies"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Homepage</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/styles/dashboard.css">
</head>
<body>
	<header class="main-header">
    <img src="https://i.pinimg.com/736x/e5/db/f2/e5dbf27053bcb6c8a4b187244d44078a.jpg" alt="Logo">
    <button onclick="window.location.href='${pageContext.request.contextPath}/user/userprofile'">Profile</button>
</header>

	<main id="main-body">
		<section id="main-container">
			<h1>Movies</h1>

			<div class="card-container">
				<%
                ArrayList<Movies> movieList = (ArrayList<Movies>) request.getAttribute("movieList");
                if (movieList != null && !movieList.isEmpty()) {
                    for (Movies movie : movieList) {
                %>
				<div class="box" onclick="GoToMovieInfo(<%= movie.getMovieId() %>)">
					<img src="<%=movie.getMovieImageUrl()%>"
						alt="<%=movie.getTitle()%>"> <b><%=movie.getTitle()%></b>
					<h4>
						Genre:
						<%=movie.getGenre()%></h4>
					<h4>
						Language:
						<%=movie.getLanguage()%></h4>
				</div>
				<%
                    }
                } else {
                %>
				<p>No movies found.</p>
				<%
                }
                %>
			</div>
		</section>
	</main>

	<footer> &copy; 2025 MovieApp. All rights reserved. </footer>

	<script>
        function GoToMovieInfo(movieId) {
            window.location.href = '/Movieprofile/' + movieId;
        }
    </script>
</body>
</html>
