<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DonDatHang.aspx.cs" Inherits="Lab02.DonDatHang" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/bootstrap.rtl.min.css" rel="stylesheet" />
</head>
<body>
           <form id="form1" runat="server">
        <div class="w-50 m-auto border border-primary p-2 " >
            <div class="col-md-12">
                 <div class="row">
                     <div class="col-md-12 text-center bg-success">
                         ĐƠN ĐẶT HÀNG
             </div>
           </div>
         </div>
     
            <br />
            <div class="row mb-2">
                <div class="col-3">
                    Khách hàng:
                </div>
            <div class="col-9">
                <asp:TextBox runat="server" CssClass="form-control" ID="txtKH"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvKhachHang" runat="server" ControlToValidate="txtKH" ErrorMessage="Vui long nhap ten khoa" Text="(*)" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
            <div class="row mb-2">
                <div class="col-3">
                    Địa chỉ:
                </div>
            <div class="col-9">
                <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvDiaChi" runat="server" ControlToValidate="txtDiaChi" ErrorMessage="Vui long nhap dia chi" Text="(*)" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
            <div class="row mb-2">
                <div class="col-3">
                    Mã số thuế:
                </div>
            <div class="col-9">
                <asp:TextBox ID="txtMST" runat="server" CssClass="form-control"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvMST" runat="server" ControlToValidate="txtMST" ErrorMessage="Vui long nhap ma so thue" Text="(*)" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </div>
    </div>
                       <div class="row mb-2">
            <div class="col-md-6">
               <h5><p class="text-success">Chọn các loại bánh sau:</p></h5>

                <br />
                <asp:DropDownList ID="ddlBanh" runat="server"></asp:DropDownList>

                <br />
                <div class="form-inline">
                 Số lượng:<asp:TextBox ID="txtSoLuong" runat="server" Width="150px" CssClass="form-control"></asp:TextBox>cái
                </div>
                <asp:RequiredFieldValidator ID="rfvSoLuong" runat="server" ErrorMessage=" Vui long nhap so " ControlToValidate="txtSoLuong" Text="(*)" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvSoLuong" runat="server" ErrorMessage="So luong khong dung" ControlToValidate="txtSoLuong" Text="(*)" Operator="GreaterThan" Type="Double" ForeColor="Red"></asp:CompareValidator>

                <br />
                <asp:Button ID="btnThem" runat="server" OnClick="btnThem_Click" Text=">" Width="37px" />

                </div>
            <div class="col-md-6 border-top border-right border-bottom border-primary">
                    Danh sách bánh được đặt:

                <br />
                <asp:ListBox ID="lstBanh" SelectionMode="Multiple" runat="server" Width="70%"></asp:ListBox>

                <asp:ImageButton ID="btnXoa" ImageUrl="~/image/tải xuống.jpg" Width="30" Height="30" OnClick="btnXoa_Click" runat="server" />
               
    </div>
</div>
       <div class="row mb-2">
        <div class="col-md-12 text-center">
            <asp:Button ID="btnIn" runat="server" OnClick="btnIn_Click" Text="In Đơn Đặt Hàng"/>
    </div>
           <asp:ValidationSummary ID="vsThongBaoLoi" runat="server" ForeColor="Red" />
</div>
            <asp:Label ID="lbKetQua" runat="server" ForeColor="Red"></asp:Label>
     </div>
         
           
    </form>
</body>
</html>