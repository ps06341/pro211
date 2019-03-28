/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

(function ($) {
    
    $(document).ready(function () {
        $('#data-table-basic').DataTable({
            "columnDefs": [
                {"orderable": false, "targets": 0},
                {"orderable": false, "targets": 1},
                {"orderable": false, "targets": 2},
                {"orderable": false, "targets": 3}
            ],
            "lengthMenu": [[5, 10, 15, 20, -1], [20, 40, 60, 80, 100]],
            "language": {
                "lengthMenu": " _MENU_ ",
//                "info": "Hiển thị hàng _START_ đến _END_ của _TOTAL_ hàng",
                "info": "",
                "zeroRecords":    "Không tìm thấy mặt hàng cần tìm",
                "infoFiltered": ""
                
            }

        });

        $('#cssmenu ul ul li:odd').addClass('odd');
        $('#cssmenu ul ul li:even').addClass('even');
        $('#cssmenu > ul > li > a').click(function () {
            $('#cssmenu li').removeClass('active');
            $(this).closest('li').addClass('active');
            var checkElement = $(this).next();
            if ((checkElement.is('ul')) && (checkElement.is(':visible'))) {
                $(this).closest('li').removeClass('active');
                checkElement.slideUp('normal');
            }
            if ((checkElement.is('ul')) && (!checkElement.is(':visible'))) {
                $('#cssmenu ul ul:visible').slideUp('normal');
                checkElement.slideDown('normal');
            }
            if ($(this).closest('li').find('ul').children().length == 0) {
                return true;
            } else {
                return false;
            }
        });

    });
})(jQuery);

$(function () {
    $("a[data-lang]").click(function () {
        var lang = $(this).attr("data-lang");
        $.get("home/index.htm?language=" + lang, function () {
            location.reload();
        });
        return false;
    });
});




