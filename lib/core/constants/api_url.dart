class ApiUrl {
  // Base route
  // static const baseURL =
  //     'https://netflix-backend-production-8413.up.railway.app/';

  static const baseURL = 'http://172.18.112.1:5000/';

  static const apiV = 'api/v1/';

  // Sign up route
  static const signUp = '${apiV}auth/signup';

  // Sign in route
  static const signIn = '${apiV}auth/signin';

  // Trending movies route
  static const trendingMovies = '${apiV}movie/trending';
}
