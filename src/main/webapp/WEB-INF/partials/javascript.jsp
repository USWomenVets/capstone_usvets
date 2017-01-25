
<script src="/js/jquery.js"></script>
<script src="/js/foundation.js"></script>
<script src="/js/what-input.js"></script>
<script src="/js/app.js"></script>
<script src="/js/geolocate.js"></script>
<script src="/js/timeOfDay.js"></script>
<script src="/js/isotope-docs.min.js"></script>



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

    // change is-checked class on buttons
    $('.button-group').each(function (i, buttonGroup) {
        var $buttonGroup = $(buttonGroup);
        $buttonGroup.on('click', 'button', function () {
            $buttonGroup.find('.is-checked').removeClass('is-checked');
            $(this).addClass('is-checked');
        });
    });
</script>