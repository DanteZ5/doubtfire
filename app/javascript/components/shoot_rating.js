function shootRating() {
  console.log("hello form shootRating");
  const stars = document.querySelectorAll("[data-rating]");
  stars.forEach((star) => {
    star.addEventListener("click", (event) => {
      const url = event.currentTarget.dataset.url;
      window.location = url;
    });
  });
}

export { shootRating };
