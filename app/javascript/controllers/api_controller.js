fetch('https://api.nomics.com/v1/markets?key=593b60162027f5aff13f819449ec81903cfda092')
  .then(checkStatus)
  .then(response => response.json())
  .then(data => {
    console.log(data);
  })
  .catch((error) => {
    console.log('There was an error', error);
  });


function checkStatus(response) {
  if (response.ok) {
    return response;
  }

  let error = new Error(response.statusText);
  error.response = response;
  return Promise.reject(error);
}
