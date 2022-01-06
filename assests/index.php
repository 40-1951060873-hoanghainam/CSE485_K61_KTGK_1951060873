<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <h3 class = "text-center mt-5">DANH SÁCH GIẢNG VIÊN</h3>
        <div >
            <button class = "btn btn-primary">Thêm</button>
        </div>
        <table class="table mt-3">
            <thead>
                <tr>
                <th scope="col">MÃ GIẢNG VIÊN</th>
                <th scope="col">HỌ VÀ TÊN</th>
                <th scope="col">NGÀY SINH</th>
                <th scope="col">GIỚI TÍNH</th>
                <th scope="col">TRÌNH ĐỘ</th>
                <th scope="col">CHUYÊN MÔN</th>
                <th scope="col">HỌC HÀM</th>
                <th scope="col">HỌC VỊ</th>
                <th scope="col">CƠ QUAN</th>
                <th scope="col">SỬA</th>
                <th scope="col">XÓA</th>
                </tr>
            </thead>
            <tbody>

                <?php
                    //B1:
                    $conn = mysqli_connect('localhost','root','','1951060873_university');
                    if(!$conn){
                        die("Kết nối thất bại");
                    }
                    //B2
                    $sql = "SELECT * FROM GIANGVIEN";
                    $result = mysqli_query($conn, $sql);
                    //B3
                    if(mysqli_num_rows($result)>0){
                        while($row = mysqli_fetch_assoc($result)){
                ?>
                            <tr>
                                <th scope="row"><?php echo $row['MAGV']; ?></th>
                                <td><?php echo $row['HOVATEN']; ?></td>
                                <td><?php echo $row['NGAYSINH']; ?></td>
                                <td><?php echo $row['GIOITINH']; ?></td>
                                <td><?php echo $row['TRINHDO']; ?></td>
                                <td><?php echo $row['CHUYENMON']; ?></td>
                                <td><?php echo $row['HOCHAM']; ?></td>
                                <td><?php echo $row['HOCVI']; ?></td>
                                <td><?php echo $row['COQUAN']; ?></td>
                                <td><a href=""><i class="bi bi-pencil-square"></i></a></td>
                                <td><a href=""><i class="bi bi-trash"></i></a>/td>
                            </tr>
                <?php
                        }
                    }
                ?>

                

            </tbody>
        </table>
    </div>




    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>