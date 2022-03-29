document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items
const addPlace = (e) => {
  const favoriteInput = document.querySelector(".favorite-input"); 
  // retrieve the input from the text form
  const favoriteThing = favoriteInput.value;
  // assign input to a new variable
  favoriteInput.value = "";
// reset the input to blank after saving 

  const li = document.createElement("li");
  li.textContent = favoriteThing;
  // create a new list item and assign the favorite input to it, saving as a variable

  const favoritesList = document.getElementById("sf-places");
  favoritesList.appendChild(li);
  // retrieve the favorites list and add the newly created list item to the list
};

const listSubmitButton = document.querySelector(".favorite-submit");
listSubmitButton.addEventListener("click", addPlace);
// retrieve the list submit button and save it to a variable.
// then, set it to update items upon submit




  // adding new photos

  // --- your code here!



});
