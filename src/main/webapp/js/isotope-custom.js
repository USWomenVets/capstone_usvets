/**
 * Created by Calcious on 2/3/17.
 */

//ISOTOPE GRID SORTING
(function() {
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
    $('.sort-button').on('click', 'button', function () {
        var sortValue = $(this).attr('data-sort-value');
        $grid.isotope({sortBy: sortValue});
    });
})();