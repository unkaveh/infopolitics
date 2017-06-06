var controller = new ScrollMagic.Controller();

// build scene
$("#intro")
      .velocity("transition.slideDownIn", { drag: 500 });

setTimeout(function () {
    /* Will run in parallel starting at the 1500ms mark. */
    $(".first-words")
        .velocity("transition.slideDownIn", { opacity: 100 }, { drag: 500 });
}, 1200);


