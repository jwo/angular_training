AngulaRails.factory "Book", ($resource) ->
  $resource("/books/:id", { id: "@id" }, {
    update: { method: 'PUT' }
  })
