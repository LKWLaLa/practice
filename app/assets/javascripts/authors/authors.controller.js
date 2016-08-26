angular
  .module('app')
  .controller('AuthorsController', AuthorsController);

function AuthorsController(AuthorsService) {

  var vm = this;

  vm.authors = [];

  activate();

  function activate() {
    return getAuthors()
  }

  function getAuthors() {
    return AuthorsService.getAuthors()
      .then(setAuthors);

    function setAuthors(data) {
      vm.authors = data;
      return vm.authors;
    }
  }

}


