jQuery(document).on 'turbolinks:load', ->
  $('.pickup-companies-slider').slick({
    slidesToShow: 3,
    slidesToScroll: 3,
  })

jQuery(document).on 'turbolinks:load', ->
  $('.featured-stories-slider').slick({
    accessibility: true,
    autoplay: true,
    autoplaySpeed: 3000,
    speed: 400,
    pauseOnHover: true,
    pauseOnDotsHover: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    dots: true,
    prevArrow: '<div class="slider-arrow-left fa fa-angle-left"></div>',
    nextArrow: '<div class="slider-arrow-right fa fa-angle-right"></div>',
    centerMode: true,
    centerPadding: '220px'
  })
