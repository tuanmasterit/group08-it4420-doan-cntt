<%@ Control language="C#" Inherits="DotNetNuke.Modules.mMenuLeft.mMenuLeft" CodeFile="mMenuLeft.ascx.cs" AutoEventWireup="true"%>
<div>
    <ul id="accordion">
        <li>Chức năng cá nhân</li>
        <ul>
            <li><a href="#">Thông tin cá nhân</a></li>
            <li><a href="#">Thay đổi mật khẩu</a></li>
            <li><a href="#">Xem diễn biến lương</a></li>
            <li><a href="#">Khen thưởng,kỷ luật</a></li>
        </ul>
        <li>Chức năng quản lý</li>
        <ul>
            <li><a href="#">Quản lý người dùng</a></li>
            <li><a href="#">Quản lý đơn vị, phòng ban</a></li>
        </ul>
        <li>Khoa Viện</li>
        <ul>
            <li><a href="#">Viện CNTT&TT</a></li>
            <li><a href="#">Viện Cơ khí</a></li>
            <li><a href="#">Viện ĐTVT</a></li>
            <li><a href="#">Viện Điện</a></li>
            <li><a href="#">Viện CN Hóa Học</a></li>
            <li><a href="#">Khoa Ngoại ngữ</a></li>
            <li><a href="#">Khoa Toán Tin</a></li>
        </ul>
        <li>Tìm kiếm</li>
        <ul>
            <li><a href="#">Phòng ban</a></li>
            <li><a href="#">Nhân sự</a></li>
        </ul>
        <li>Liên Kết</li>
        <ul>
            <li><a href="#">Trang ĐH BKHN</a></li>
            <li><a href="#">Dân trí</a></li>
        </ul>
    </ul>
</div>
<!-- End Right Menu-->
<script type="text/javascript">
    $("#accordion > li").click(function () {

        if (false == $(this).next().is(':visible')) {
            $('#accordion > ul').slideUp(300);
        }
        $(this).next().slideToggle(300);
    });

    $('#accordion > ul:eq(0)').show();

</script>