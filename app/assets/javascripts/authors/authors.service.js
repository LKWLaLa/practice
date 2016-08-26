var API_URL ='http://localhost:3000'

angular
  .module('app')
  .service('AuthorsService', AuthorsService);


function AuthorsService($http) {

  services = {
    getAuthors: getAuthors
  }

  return services;
  
  
  function getAuthors() {
    return $http.get(API_URL + '/authors')
      .then(getAuthorsSuccessful);
  }

  function getAuthorsSuccessful(response) {
    return response.data
  }

};



