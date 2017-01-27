
<script src="/js/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.17.1/locale/af.js"></script>
<script src="/js/isotope-docs.min.js"></script>
<script src="/js/foundation.js"></script>
<script src="/js/what-input.js"></script>
<script src="/js/app.js"></script>
<script src="/js/geolocate.js"></script>
<script src="/js/timeOfDay.js"></script>




<%--ISOTOPE GRID SORTING--%>

<script>
    var $grid = $('.grid').isotope({
        itemSelector: '.element-item',
        layoutMode: 'fitRows',
        getSortData: {
            username: '.username',
            date: '.date',
            title: '.title',
            category: '[data-category]',
            weight: function (itemElem) {
                var weight = $(itemElem).find('.weight').text();
                return parseFloat(weight.replace(/[\(\)]/g, ''));
            }
        }
    });

    // bind sort button click
    $('.sort-by-button-group').on('click', 'button', function () {
        var sortValue = $(this).attr('data-sort-value');
        $grid.isotope({sortBy: sortValue});
    });

</script>
